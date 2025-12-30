
import os
import re
import glob
import json
import subprocess
import argparse
import random
import shutil
from tqdm import tqdm
from transformers import AutoTokenizer, AutoModelForCausalLM
import torch
from spectral_trust import GSPDiagnosticsFramework, GSPConfig

# Configuration
# Run from root, but execute lean files in their src dir
MINIF2F_SRC = "data/minif2f/lean/src" 
VALID_PATH = f"{MINIF2F_SRC}/valid.lean"
TEST_PATH = f"{MINIF2F_SRC}/test.lean"
OUTPUT_BASE = "data/proofs_minif2f"

MODEL_NAME = "meta-llama/Meta-Llama-3.1-8B-Instruct"

def parse_problems(file_path):
    """
    Parses a Lean file and extracts theorem statements.
    Returns list of dicts: {'name': str, 'statement': str, 'header': str}
    """
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()

    # Regex to find theorems
    # Matches: theorem <name> ... :=
    # We capture the full signature including imports if possible, but mainly the theorem block
    # Simple approach: split by "theorem " and parse until ":="
    
    problems = []
    
    # Pattern: theorem \s+ (name) \s+ (args) : (type) :=
    pattern = re.compile(r"theorem\s+([a-zA-Z0-9_]+)([\s\S]*?):=", re.MULTILINE)
    
    matches = list(pattern.finditer(content))
    
    for i, m in enumerate(matches):
        name = m.group(1)
        full_statement = m.group(0) # "theorem name ... :="
        
        problems.append({
            "name": name,
            "statement": full_statement,
            "provenance": file_path
        })
        
    return problems

def generate_proof(model, tokenizer, statement):
    """
    Prompt model to generate a proof for the statement.
    """
    prompt = f"""/- You are a Lean 4 expert. Complete the following proof. -/
import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

{statement}
begin
"""
    inputs = tokenizer(prompt, return_tensors="pt").to(model.device)
    
    # Generate
    with torch.no_grad():
        outputs = model.generate(
            **inputs, 
            max_new_tokens=256,
            temperature=0.7,
            top_p=0.9,
            do_sample=True,
            pad_token_id=tokenizer.eos_token_id
        )
        
    generated_text = tokenizer.decode(outputs[0], skip_special_tokens=True)
    
    # Extract the part after "begin"
    if "begin" in generated_text:
        proof_part = generated_text.split("begin")[1]
    else:
        proof_part = generated_text # Fallback
        
    # Cut off at "end" if present
    if "end" in proof_part:
        proof_part = proof_part.split("end")[0]
        
    full_code = f"""import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

{statement}
begin
{proof_part}
end
"""
    return full_code

def verify_proof(proof_code, name, problem_idx, lean_cmd="lean"):
    """
    Save to file and run lean.
    """
    # Create temp file in src/ to find imports
    filename = f"attempt_{name}_{problem_idx}.lean"
    filepath = os.path.join(MINIF2F_SRC, filename)
    
    with open(filepath, "w", encoding="utf-8") as f:
        f.write(proof_code)
        
    try:
        # Command: lean <file>
        cmd = [lean_cmd, filename]
        result = subprocess.run(
            cmd, 
            cwd=MINIF2F_SRC,
            capture_output=True, 
            encoding='utf-8',
            errors='replace', # Fallback for safety
            timeout=30
        )
        
        is_valid = (result.returncode == 0)
        return is_valid, result.stderr
        
    except FileNotFoundError:
        print(f"Warning: '{lean_cmd}' command not found. Cannot verify.")
        return None, "Lean not installed"
    except subprocess.TimeoutExpired:
        return False, "Timeout"
    finally:
        pass

def analyze_metrics(framework, proof_code):
    try:
        analysis = framework.analyze_text(proof_code, save_results=False)
        layer_metrics = []
        if 'layer_diagnostics' in analysis and analysis['layer_diagnostics']:
            for layer_idx, diag in enumerate(analysis['layer_diagnostics']):
                metrics = {
                    "layer": layer_idx,
                    "fiedler_value": float(getattr(diag, "fiedler_value")) if getattr(diag, "fiedler_value") is not None else None,
                    "energy": float(getattr(diag, "energy")) if getattr(diag, "energy") is not None else None,
                    "smoothness": float(getattr(diag, "smoothness_index")) if getattr(diag, "smoothness_index") is not None else None,
                    "entropy": float(getattr(diag, "spectral_entropy")) if getattr(diag, "spectral_entropy") is not None else None,
                    "hfer": float(getattr(diag, "hfer")) if getattr(diag, "hfer") is not None else None
                }
                layer_metrics.append(metrics)
        return layer_metrics
    except Exception as e:
        print(f"Spectral analysis failed: {e}")
        return []

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--model", default=MODEL_NAME)
    parser.add_argument("--count", type=int, default=10, help="Attempts per problem")
    parser.add_argument("--limit", type=int, default=10, help="Max problems to process")
    parser.add_argument("--lean-path", default="lean", help="Path to lean executable")
    parser.add_argument("--offline", action="store_true", help="Use local cached models only")
    args = parser.parse_args()
    
    print(f"Loading model {args.model}...")
    tokenizer = AutoTokenizer.from_pretrained(args.model, local_files_only=args.offline)
    model = AutoModelForCausalLM.from_pretrained(
        args.model, 
        torch_dtype=torch.bfloat16, 
        device_map="cuda",
        local_files_only=args.offline
    )
    
    # Initialize separate spectral framework (re-uses model in theory if configured right, 
    # but GSP loads its own. To save memory we should share, but GSP class is rigid.
    # Hack: use the same model object for GSP if possible or just rely on shared memory mapping if offline)
    # Actually, GSPDiagnosticsFramework loads model by name. This will cause double VRAM usage!
    # Valid concern. 
    # Alternative: Use "extract_metrics_only" approach if we had one.
    # For now, let's instantiate the config but maybe we need to be careful with VRAM.
    # The user has 4080 Super (16GB), 1B model is tiny (<2GB). 8B is ~16GB (fp16).
    # If running 8B, double loading will OOM.
    # If running 1B, it's fine.
    
    # Load problems
    problems = parse_problems(VALID_PATH)
    print(f"Loaded {len(problems)} problems from {VALID_PATH}")
    
    # Shuffle and limit
    random.shuffle(problems)
    problems = problems[:args.limit]
    
    os.makedirs(f"{OUTPUT_BASE}/valid", exist_ok=True)
    os.makedirs(f"{OUTPUT_BASE}/invalid", exist_ok=True)
    os.makedirs(f"{OUTPUT_BASE}/unverified", exist_ok=True)
    
    stats = {"valid": 0, "invalid": 0, "unverified": 0}
    
    for prob in tqdm(problems, desc="Problems"):
        # print(f"Processing {prob['name']}...")
        
        for attempt_idx in range(args.count):
            try:
                proof_code = generate_proof(model, tokenizer, prob['statement'])
                is_valid, log = verify_proof(proof_code, prob['name'], attempt_idx, lean_cmd=args.lean_path)
                
                src_file = os.path.join(MINIF2F_SRC, f"attempt_{prob['name']}_{attempt_idx}.lean")
                
                if is_valid is None:
                    # Lean missing
                    dest = f"{OUTPUT_BASE}/unverified/{prob['name']}_{attempt_idx}.lean"
                    stats["unverified"] += 1
                elif is_valid:
                    dest = f"{OUTPUT_BASE}/valid/{prob['name']}_{attempt_idx}.lean"
                    stats["valid"] += 1
                else:
                    dest = f"{OUTPUT_BASE}/invalid/{prob['name']}_{attempt_idx}.lean"
                    stats["invalid"] += 1
                    
                if os.path.exists(src_file):
                    shutil.move(src_file, dest)
                    
            except Exception as e:
                print(f"Error gen/verifying {prob['name']}: {e}")
                
    print(f"Generation Complete.")
    print(f"Valid: {stats['valid']}")
    print(f"Invalid: {stats['invalid']}")
    print(f"Unverified: {stats['unverified']}")

if __name__ == "__main__":
    main()

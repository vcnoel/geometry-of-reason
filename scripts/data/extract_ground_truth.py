import os
import re

SOURCE_FILES = [
    "data/minif2f/lean/src/valid.lean",
    "data/minif2f/lean/src/test.lean"
]
OUTPUT_DIR = "data/proofs_minif2f/valid_ground_truth"

def extract_proofs():
    os.makedirs(OUTPUT_DIR, exist_ok=True)
    count = 0
    
    # Common imports
    imports = """import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

"""

    for path in SOURCE_FILES:
        with open(path, 'r', encoding='utf-8') as f:
            content = f.read()
            
        # Regex to find theorems
        # Capture name, args+type, and body
        # Pattern: theorem \s+ (name) \s+ (signature) := \s+ begin \s+ (body) \s+ end
        # We need to be careful with multiline
        
        # Simpler manual parsing to handle nested begins/ends if necessary (though MiniF2F is usually simple)
        # But regex split by "theorem" is robust enough for this level.
        
        chunks = re.split(r'theorem\s+', content)
        
        for chunk in chunks[1:]:
            if ":=" not in chunk: continue
            
            try:
                # header includes name and signature
                header_part, body_part = chunk.split(":=", 1)
                
                # Extract name (first word of header)
                name = header_part.strip().split()[0]
                
                # Check for sorry
                if "sorry" in body_part:
                    continue
                    
                # Reconstruct full file content
                # "theorem " + header + " :=" + body
                # We need to cut off at the next theorem start? No, split consumed the delimiter.
                # But we cut off at the end of the proof. 
                # The split by 'theorem' leaves trailing content from previous file parts effectively attached to previous?
                # No, split removes 'theorem'.
                # The issue is 'chunk' contains everything until next 'theorem'.
                # So it contains this theorem AND any text/comments after it.
                # We should trim it. Usually ends with 'end'.
                
                if "end" in body_part:
                    # Find the LAST end? Or logic based.
                    # MiniF2F proofs end with 'end'.
                    # Let's assume standard formatting.
                    proof_body = body_part.split("end", 1)[0] + "end"
                else:
                    proof_body = body_part
                
                full_code = imports + "theorem " + header_part + ":=" + proof_body
                
                out_path = os.path.join(OUTPUT_DIR, f"{name}.lean")
                with open(out_path, "w", encoding="utf-8") as f:
                    f.write(full_code)
                
                count += 1
                
            except Exception as e:
                print(f"Skipping chunk due to error: {e}")
                
    print(f"Extracted {count} valid ground truth proofs to {OUTPUT_DIR}")

if __name__ == "__main__":
    extract_proofs()

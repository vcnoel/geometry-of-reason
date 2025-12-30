import json
import numpy as np
import scipy.stats as stats
import os

def cohen_d(x, y):
    nx = len(x)
    ny = len(y)
    dof = nx + ny - 2
    if dof <= 0: return 0
    return (np.mean(x) - np.mean(y)) / np.sqrt(((nx-1)*np.std(x, ddof=1) ** 2 + (ny-1)*np.std(y, ddof=1) ** 2) / dof)

def analyze_model_corrected(model_name, results_file, list_b_file):
    print(f"\n{'='*80}")
    print(f"  FULL STATISTICAL ANALYSIS: {model_name} (CORRECTED LABELS)")
    print(f"{'='*80}")
    
    # 1. Load Original Data
    if not os.path.exists(results_file):
        print(f"Error: {results_file} not found.")
        return
    with open(results_file, 'r') as f:
        data = json.load(f)

    # 2. Load List B (The "Hidden Gems" - Invalid labeled, but likely Valid)
    list_b_filenames = set()
    if os.path.exists(list_b_file):
        with open(list_b_file, 'r') as f:
            list_b = json.load(f)
            list_b_filenames = set(item['file'] for item in list_b)
    else:
        print(f"Warning: {list_b_file} not found. No relabeling will occur.")

    # 3. Relabel Data
    valid_samples = []
    invalid_samples = []
    
    # Process Original Valid
    for item in data["valid"]:
        valid_samples.append(item)
        
    # Process Original Invalid
    reclaimed = 0
    for item in data["invalid"]:
        if item['file'] in list_b_filenames:
            valid_samples.append(item)
            reclaimed += 1
        else:
            invalid_samples.append(item)
            
    print(f"Original: {len(data['valid'])} Valid, {len(data['invalid'])} Invalid")
    print(f"Corrected: {len(valid_samples)} Valid, {len(invalid_samples)} Invalid (Reclaimed {reclaimed})")
    
    # 4. Compute Stats for All Layers/Metrics
    metrics = ["hfer", "fiedler_value", "smoothness", "entropy", "energy"]
    num_layers = len(data["valid"][0]["trajectory"])
    
    results = []
    
    for layer in range(num_layers):
        for metric in metrics:
            # Extract values
            v_vals = [s["trajectory"][layer][metric] for s in valid_samples if s["trajectory"][layer][metric] is not None]
            i_vals = [s["trajectory"][layer][metric] for s in invalid_samples if s["trajectory"][layer][metric] is not None]
            
            if len(v_vals) < 2 or len(i_vals) < 2:
                continue
                
            # Mann-Whitney U
            stat, p = stats.mannwhitneyu(v_vals, i_vals)
            # Cohen's d
            d = cohen_d(v_vals, i_vals)
            
            # Accuracy (Optimal Threshold)
            all_vals = np.concatenate([v_vals, i_vals])
            thresholds = np.unique(np.percentile(all_vals, np.linspace(0, 100, 50)))
            best_acc = 0
            
            # Check both directions (< and >)
            for t in thresholds:
                # Direction 1: Valid < T
                tp = sum(1 for x in v_vals if x < t)
                tn = sum(1 for x in i_vals if x >= t)
                acc1 = (tp + tn) / len(all_vals)
                
                # Direction 2: Valid > T
                tp2 = sum(1 for x in v_vals if x > t)
                tn2 = sum(1 for x in i_vals if x <= t)
                acc2 = (tp2 + tn2) / len(all_vals)
                
                best_acc = max(best_acc, acc1, acc2)
            
            results.append({
                "layer": layer,
                "metric": metric,
                "p": p,
                "d": d,
                "acc": best_acc,
                "mu_v": np.mean(v_vals),
                "mu_i": np.mean(i_vals)
            })
            
    # 5. Sort and Report Top 5
    results.sort(key=lambda x: x["p"])
    
    print("\nTOP 10 DISCRIMINATORS (Corrected):")
    print(f"{'Metric':<15} {'Layer':<6} {'p-value':<12} {'Cohen d':<8} {'Accuracy':<8} {'Valid µ':<10} {'Invalid µ':<10}")
    print("-" * 80)
    for r in results[:10]:
        print(f"{r['metric']:<15} {r['layer']:<6} {r['p']:.2e}   {r['d']:>6.2f}   {r['acc']*100:>5.1f}%   {r['mu_v']:<10.3f} {r['mu_i']:<10.3f}")
        
    return results

if __name__ == "__main__":
    analyze_model_corrected("Llama-3.2-1B", "experiment_results_Llama-3.2-1B-Instruct.json", "analysis/1B_list_b_confident_invalid.json")
    analyze_model_corrected("Llama-3.2-3B", "experiment_results_Llama-3.2-3B-Instruct.json", "analysis/3B_list_b_confident_invalid.json")
    analyze_model_corrected("Meta-Llama-3.1-8B", "experiment_results_Meta-Llama-3.1-8B-Instruct.json", "analysis/8B_list_b_confident_invalid.json")
    analyze_model_corrected("Qwen2.5-7B", "experiment_results_Qwen2.5-7B-Instruct.json", "analysis/Qwen7B_list_b_confident_invalid.json")

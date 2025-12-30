import os
import shutil
import glob
import random

SRC_VALID = "data/proofs_minif2f/valid_ground_truth"
SRC_INVALID = "data/proofs_minif2f/invalid"
DEST = "data/experiment_ready"

def prepare():
    if os.path.exists(DEST):
        shutil.rmtree(DEST)
    
    os.makedirs(os.path.join(DEST, "valid"))
    os.makedirs(os.path.join(DEST, "invalid"))
    
    # Copy ALL valid proofs
    valid_files = glob.glob(os.path.join(SRC_VALID, "*.lean"))
    print(f"Copying {len(valid_files)} valid proofs...")
    for f in valid_files:
        shutil.copy(f, os.path.join(DEST, "valid"))
        
    # Copy subset of invalid (300) to maintain balance
    invalid_files = glob.glob(os.path.join(SRC_INVALID, "*.lean"))
    random.seed(42)
    selected_invalid = random.sample(invalid_files, min(len(invalid_files), 300))
    
    print(f"Copying {len(selected_invalid)} invalid proofs...")
    for f in selected_invalid:
        shutil.copy(f, os.path.join(DEST, "invalid"))
        
    print(f"Dataset ready at {DEST} (FULL DATASET: {len(valid_files)} Valid, {len(selected_invalid)} Invalid)")

if __name__ == "__main__":
    prepare()

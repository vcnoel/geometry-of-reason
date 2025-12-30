import requests
import os

url = "https://github.com/leanprover/elan/releases/latest/download/elan-init.exe"
dest = "elan-init.exe"

print(f"Downloading {url}...")
try:
    response = requests.get(url, stream=True)
    response.raise_for_status()
    with open(dest, "wb") as f:
        for chunk in response.iter_content(chunk_size=8192):
            f.write(chunk)
    print("Download success.")
except Exception as e:
    print(f"Download failed: {e}")

#!/bin/bash

# Script needs to run as sudo for nvidia-smi settings to take effect.
[ "$UID" -eq 0 ] || exec sudo bash "$0" "$@"

echo "[+] Stopping lightdm service"
service lightdm stop
echo "[+] Installing NVIDIA"

sh NVIDIA-Linux-x86_64-384.98.run -s
echo "[+] Installing CUDA - This takes a while"

sh cuda_9.1.85_387.26_linux --silent --override
echo "[+] Completed"

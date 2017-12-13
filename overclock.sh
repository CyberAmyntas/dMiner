#!/bin/bash

# Script needs to run as sudo for nvidia-smi settings to take effect.
[ "$UID" -eq 0 ] || exec sudo bash "$0" "$@"

memoryOffset="800"
GPUGraphicsClockOffset="100"

nvidia-smi -pm 1

# Set the power limit for each card (note this value is in watts, not percent!
nvidia-smi -i 0,1,2,3,4,5,6,7,8 -pl 120

nvidia-settings -a [gpu:0]/GpuPowerMizerMode=1
nvidia-settings -a [gpu:0]/GPUMemoryTransferRateOffset[2]=$memoryOffset
nvidia-settings -a [gpu:0]/GPUGraphicsClockOffset[2]=$GPUGraphicsClockOffset
nvidia-settings -a [gpu:0]/GPUFanControlState=1
nvidia-settings -a [fan:0]/GPUTargetFanSpeed=100

nvidia-settings -a [gpu:1]/GpuPowerMizerMode=1
nvidia-settings -a [gpu:1]/GPUMemoryTransferRateOffset[2]=$memoryOffset
nvidia-settings -a [gpu:1]/GPUGraphicsClockOffset[2]=$GPUGraphicsClockOffset
nvidia-settings -a [gpu:1]/GPUFanControlState=1
nvidia-settings -a [fan:1]/GPUTargetFanSpeed=100

nvidia-settings -a [gpu:2]/GpuPowerMizerMode=1
nvidia-settings -a [gpu:2]/GPUMemoryTransferRateOffset[2]=$memoryOffset
nvidia-settings -a [gpu:2]/GPUGraphicsClockOffset[2]=$GPUGraphicsClockOffset
nvidia-settings -a [gpu:2]/GPUFanControlState=1
nvidia-settings -a [fan:2]/GPUTargetFanSpeed=100

nvidia-settings -a [gpu:3]/GpuPowerMizerMode=1
nvidia-settings -a [gpu:3]/GPUMemoryTransferRateOffset[2]=$memoryOffset
nvidia-settings -a [gpu:3]/GPUGraphicsClockOffset[2]=$GPUGraphicsClockOffset
nvidia-settings -a [gpu:3]/GPUFanControlState=1
nvidia-settings -a [fan:3]/GPUTargetFanSpeed=100

nvidia-settings -a [gpu:4]/GpuPowerMizerMode=1
nvidia-settings -a [gpu:4]/GPUMemoryTransferRateOffset[2]=$memoryOffset
nvidia-settings -a [gpu:4]/GPUGraphicsClockOffset[2]=$GPUGraphicsClockOffset
nvidia-settings -a [gpu:4]/GPUFanControlState=1
nvidia-settings -a [fan:4]/GPUTargetFanSpeed=100

nvidia-settings -a [gpu:5]/GpuPowerMizerMode=1
nvidia-settings -a [gpu:5]/GPUMemoryTransferRateOffset[2]=$memoryOffset
nvidia-settings -a [gpu:5]/GPUGraphicsClockOffset[2]=$GPUGraphicsClockOffset
nvidia-settings -a [gpu:5]/GPUFanControlState=1
nvidia-settings -a [fan:5]/GPUTargetFanSpeed=100

nvidia-settings -a [gpu:6]/GpuPowerMizerMode=1
nvidia-settings -a [gpu:6]/GPUMemoryTransferRateOffset[2]=$memoryOffset
nvidia-settings -a [gpu:6]/GPUGraphicsClockOffset[2]=$GPUGraphicsClockOffset
nvidia-settings -a [gpu:6]/GPUFanControlState=1
nvidia-settings -a [fan:6]/GPUTargetFanSpeed=100

nvidia-settings -a [gpu:7]/GpuPowerMizerMode=1
nvidia-settings -a [gpu:7]/GPUMemoryTransferRateOffset[2]=$memoryOffset
nvidia-settings -a [gpu:7]/GPUGraphicsClockOffset[2]=$GPUGraphicsClockOffset
nvidia-settings -a [gpu:7]/GPUFanControlState=1
nvidia-settings -a [fan:7]/GPUTargetFanSpeed=100

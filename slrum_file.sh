#!/bin/sh
#SBATCH -N 1
#SBATCH --ntasks-per-node=40
#SBATCH --job-name=dl
#SBATCH --error=dl_err
#SBATCH --output=dl_out
#SBATCH --partition=cpu

python3 p3_weight_quantization.py

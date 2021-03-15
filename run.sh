#!/bin/bash

#SBATCH --job-name=batch
#SBATCH --time=100:00:00
#SBATCH --mem=32G
#SBATCH --cpus-per-task=4
#SBATCH --error=slurm/%A_%a.err.txt
#SBATCH --output=slurm/%A_%a.out.txt

echo $(date +"%x %r")

config_path="$1"

source ${config_path}

echo ${batchName}

echo ${batchArray[$SLURM_ARRAY_TASK_ID]}

# Do things here

echo $(date +"%x %r")
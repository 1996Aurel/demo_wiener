#!/bin/bash 
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --job-name=test_bunya
#SBATCH --time=1:00:00
#SBATCH --qos=gpu
#SBATCH --partition=gpu_cuda
#SBATCH --gres=gpu:nvidia_a100_80gb_pcie_1g.10gb:1
#SBATCH --account=a_auto_mr_disease
#SBATCH -o slurm-%j.output
#SBATCH -e slurm-%j.error

module load anaconda3/2023.09-0 
conda init bash
source activate /scratch/user/uqaamar/demo_env

python main.py

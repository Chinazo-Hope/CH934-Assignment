#!/bin/bash
#SBATCH --account=teaching
#SBATCH --partition=teaching
#SBATCH --job-name=PENCEN_16core
#SBATCH --output=slurm-%j.out
#SBATCH --ntasks=16
#SBATCH --nodes=1
#SBATCH --time=01:30:00
#SBATCH --mem=16G

module purge
module load gaussian/g16
/opt/software/scripts/job_prologue.sh

export GAUSS_SCRDIR=$SLURM_SUBMIT_DIR

g16 PENCEN_16cores.com

/opt/software/scripts/job_epilogue.sh


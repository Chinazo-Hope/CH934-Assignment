#!/bin/bash
#SBATCH --account=teaching
#SBATCH --partition=teaching
#SBATCH --job-name=TETCEN_4core
#SBATCH --output=slurm-%j.out
#SBATCH --ntasks=4
#SBATCH --nodes=1
#SBATCH --time=01:30:00
#SBATCH --mem=16G

module purge
module load gaussian/g16
/opt/software/scripts/job_prologue.sh

export GAUSS_SCRDIR=$SLURM_SUBMIT_DIR

g16 TETCEN_4cores.com

/opt/software/scripts/job_epilogue.sh


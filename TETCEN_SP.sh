#!/bin/bash
#SBATCH --account=teaching
#SBATCH --partition=teaching
#SBATCH --ntasks=2 --nodes=1
#SBATCH --time=01:30:00
#SBATCH --job-name=TETCEN_SP
#SBATCH --output=slurm-%j.out
#SBATCH --mem=16G

module purge
module load gaussian/g16
/opt/software/scripts/job_prologue.sh

export GAUSS_SCRDIR=$SLURM_SUBMIT_DIR

g16 Molecule_TETCEN_SP.com

/opt/software/scripts/job_epilogue.sh

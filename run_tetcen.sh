#!/bin/bash
#SBATCH --job-name=tetcen
#SBATCH --output=tetcen_output.log
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --time=01:00:00
#SBATCH --mem=2G

module load gaussian/g16
g16 < Molecule_TETCEN_SP.com > Molecule_TETCEN_SP.log


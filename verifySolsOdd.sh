#!/bin/bash

# COMMANDS FOR SBATCH
# name of the job
#SBATCH -J verifySolutionsOdd

#job resource specifications
#SBATCH -p share
#SBATCH --mem=5G
#SBATCH -c 4
#SBATCH --time=24:00:00

# files to write to
#SBATCH -o stdOutput.out
#SBATCH -e stdError.err



python DetFormulaConsole.py > pythonOutput.out

#!/bin/bash

# COMMANDS FOR SBATCH
#SBATCH -J verifySolutionsOdd	# job name 
#SBATCH -p share 				# partition

#SBATCH -o stdOutput.out		# file for standard output
#SBATCH -e stdError.err			# file for standard error

#SBATCH --mem=10G		# memory to reserve
#SBATCH -c 4

module load python

python DetFormulaConsole.py > pythonOutput.out


#!/bin/bash

# HOW TO USE:
# Put the onePoint.sh in the same folder as 
# OnePointFuncConsole.py and run the following command
# 		sbatch onePoint.sh 

# You can also run this without sbatch to run it on your 
# computer (using onePoint.sh $N $L $delta ${init conditions})

# EXAMPLE COMMAND:
# 	sbatch 



# SBATCH COMMANDS 
# name of the job
#SBATCH -J dipoleFixedJulia

#job resource specifications
#SBATCH -p share
#SBATCH --mem=5G
#SBATCH -c 4
#SBATCH --time=24:00:00

# files to write to
#SBATCH -o "dipolefixedStdOut (job %j).txt"
#SBATCH -e "dipolefixedStdError (job %j).txt"


# load python yay 
module load julia

# creating a virtual display buffer (server doesn't have a 
# display, which pyplot needs, so we mimic one)
Xvfb :5 &
export DISPLAY=:5
XvfbPID=$(ps | grep Xvfb | grep -E -o ^[[:blank:]]*[[:digit:]]+ | grep -E -o [[:digit:]]+)



# run the thing 
julia axel_computations_fixed_dipole(1).ipynb $@

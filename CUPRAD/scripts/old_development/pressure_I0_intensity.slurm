#!/bin/bash
#SBATCH -J pressure-I0-scan
#SBATCH --nodes=1
#SBATCH --constraint=[HSW24|BDW28]
#SBATCH --ntasks=1
#SBATCH --time=20:00:00
#SBATCH --output pressure-I0-scan-%J.output

module purge
module load intelpython3/2019.3

python $CUPRAD_PYTHON/pressure_I0_intensity.py -here -nodisplay

#!/bin/bash
#SBATCH -J coherence-maps
#SBATCH --nodes=1
#SBATCH --constraint=[HSW24|BDW28]
#SBATCH --ntasks=1
#SBATCH --time=01:00:00
#SBATCH --output coherence-maps-%J.output

module purge
module load intelpython3/2019.3

python $PYTHON_CUPRAD/coherence_map_XUVshift.py -here -nodisplay
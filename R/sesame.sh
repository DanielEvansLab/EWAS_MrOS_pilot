#!/bin/bash -l

#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=20G
#SBATCH --time=8:00:00
#SBATCH --output=out/sesame.out
#SBATCH --job-name="sesame"
#SBATCH --mail-user=danev1@gmail.com
#SBATCH --mail-type=ALL
#SBATCH -p batch


cd $SLURM_SUBMIT_DIR

hostname

echo "rmarkdown::render('sesame.Rmd')" | R --slave


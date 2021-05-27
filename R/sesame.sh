#!/bin/bash -l

#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=40G
#SBATCH --time=1-10:00:00
#SBATCH --output=out/sesame.out
#SBATCH --job-name="sesame"
#SBATCH --mail-user=danev1@gmail.com
#SBATCH --mail-type=ALL
#SBATCH -p batch


cd $SLURM_SUBMIT_DIR

hostname
module unload R
module load R/4.0.3_gcc-8.3.0

Rscript -e 'rmarkdown::render("sesame.Rmd")'

module unload R/4.0.3_gcc-8.3.0
module load R


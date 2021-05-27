#!/bin/bash -l

#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=10G
#SBATCH --time=2:00:00
#SBATCH --output=out/vcfmerge.out
#SBATCH --job-name="vcfmerge"
#SBATCH --mail-user=danev1@gmail.com
#SBATCH --mail-type=ALL
#SBATCH -p evanslab


cd $SLURM_SUBMIT_DIR

cd ../data/vcf/single/
hostname
module load samtools

bgzip *.vcf

module unload samtools

#module load bcftools
#bcftools merge -o ../multi/multEWAS.vcf *.vcf.gz
#../data/vcf/multi/
#module unload bcftools


#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 00:30:00
#SBATCH -J fastqc_after_trim
#SBATCH --mail-type=ALL
#SBATCH --mail-user vendela.andersson.3023@student.uu.se

# Loading modules
module load bioinfo-tools
module load FastQC

# Performing quality control with fastQC
fastqc -o ~/genome_analysis/analyses/06_trimmomatic/try_three -f fastq \
~/genome_analysis/analyses/06_trimmomatic/try_three/output_forward_paired.fq.gz \
~/genome_analysis/analyses/06_trimmomatic/try_three/output_reverse_paired.fq.gz


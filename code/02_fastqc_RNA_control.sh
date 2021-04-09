#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 03:00:00
#SBATCH -J fastqc_RNA_control
#SBATCH --mail-type=ALL
#SBATCH --mail-user vendela.andersson.3023@student.uu.se

# Performing quality control with fastQC
fastqc -o ~/genome_analysis/analyses/02_fastqc_RNA_control -f fastqc 


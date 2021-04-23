#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 01:00:00
#SBATCH -J bwa_index
#SBATCH --mail-type=ALL
#SBATCH --mail-user vendela.andersson.3023@student.uu.se

# Load modules
module load bioinfo-tools
module load bwa

# Create bwa index
bwa index ~/genome_analysis/analyses/01_genome_assembly/assembly.contigs.fasta

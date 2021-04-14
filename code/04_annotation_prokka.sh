#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 01:00:00
#SBATCH -J annotation_prokka
#SBATCH --mail-type=ALL
#SBATCH --mail-user vendela.andersson.3023@student.uu.se

# Load modules
module load bioinfo-tools
module load prokka

# Run quast on genome assembly
prokka --outdir ~/genome_analysis/analyses/04_annotation_prokka --prefix annotation ~/genome_analysis/analyses/01_genome_assembly/assembly.contigs.fasta

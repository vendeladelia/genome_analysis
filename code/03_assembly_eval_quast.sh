#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 01:00:00
#SBATCH -J assembly_eval_quast
#SBATCH --mail-type=ALL
#SBATCH --mail-user vendela.andersson.3023@student.uu.se

# Load modules
module load bioinfo-tools
module load quast

# Run quast on genome assembly
quast.py -o ~/genome_analysis/analyses/03_assembly_eval_quast/ -R ~/genome_analysis/data/reference_genome/GCF_010120755.1_ASM1012075v1_genomic.fna.gz -G ~/genome_analysis/data/reference_genome/GCF_010120755.1_ASM1012075v1_genomic.gff ~/genome_analysis/analyses/01_genome_assembly/assembly.contigs.fasta 

#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 01:00:00
#SBATCH -J assembly_eval_quast
#SBATCH --mail-type=ALL
#SBATCH --mail-user vendela.andersson.3023@student.uu.se

# Run quast on genome assembly
python quast.py -o ~/genome_analysis/analyses/03_assembly_eval_quast/ ~/genome_analysis/analyses/01_genome_assembly/assembly.contigs.fasta

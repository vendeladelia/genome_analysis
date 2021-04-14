#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 01:00:00
#SBATCH -J synteny_blastn
#SBATCH --mail-type=ALL
#SBATCH --mail-user vendela.andersson.3023@student.uu.se

# Load modules
module load bioinfo-tools
module load blast

# Run quast on genome assembly
blastn -subject ~/genome_analysis/data/related_genome/GCF_000393015.1_Ente_faec_T5_V1_genomic.fna -query ~/genome_analysis/analyses/01_genome_assembly/assembly.contigs.fasta -out ~/genome_analysis/analyses/05_synteny_blastn/synteny_blastn.out

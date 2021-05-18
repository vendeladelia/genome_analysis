#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 01:00:00
#SBATCH -J assembly_eval_mummerplot
#SBATCH --mail-type=ALL
#SBATCH --mail-user vendela.andersson.3023@student.uu.se

# Load modules
module load bioinfo-tools
module load MUMmer

# Run mummer
cd ~/genome_analysis/analyses/03_assembly_eval_mummerplot/

mummer -mum -b -c ~/genome_analysis/data/correct_ref_genome/GCF_001750885.1_ASM175088v1_cds_from_genomic.fna \
~/genome_analysis/analyses/01_genome_assembly/assembly.contigs.fasta > ~/genome_analysis/analyses/03_assembly_eval_mummerplot/corr_ref_assembly_subplots.mums

mummerplot --png -p corr_ref_assembly_subplots -R ~/genome_analysis/data/correct_ref_genome/GCF_001750885.1_ASM175088v1_cds_from_genomic.fna \
-Q ~/genome_analysis/analyses/01_genome_assembly/assembly.contigs.fasta ~/genome_analysis/analyses/03_assembly_eval_mummerplot/corr_ref_assembly_subplots.mums 

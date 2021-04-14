#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 03:00:00
#SBATCH -J fastqc_RNA_BH_control
#SBATCH --mail-type=ALL
#SBATCH --mail-user vendela.andersson.3023@student.uu.se

# Loading modules
module load bioinfo-tools
module load FastQC

# Performing quality control with fastQC
fastqc -o ~/genome_analysis/analyses/02_fastqc_RNA_control/RNA_BH_fastqc -f fastq \
~/genome_analysis/data/raw_data/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797972_pass_1.fastq.gz \
~/genome_analysis/data/raw_data/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797972_pass_2.fastq.gz

fastqc -o ~/genome_analysis/analyses/02_fastqc_RNA_control/RNA_BH_fastqc -f fastq \
~/genome_analysis/data/raw_data/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797973_pass_1.fastq.gz \
~/genome_analysis/data/raw_data/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797973_pass_2.fastq.gz

fastqc -o ~/genome_analysis/analyses/02_fastqc_RNA_control/RNA_BH_fastqc -f fastq \
~/genome_analysis/data/raw_data/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797974_pass_1.fastq.gz \
~/genome_analysis/data/raw_data/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797974_pass_2.fastq.gz

 

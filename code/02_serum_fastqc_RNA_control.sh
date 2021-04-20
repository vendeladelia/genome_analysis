#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 03:00:00
#SBATCH -J fastqc_RNA_serum_control
#SBATCH --mail-type=ALL
#SBATCH --mail-user vendela.andersson.3023@student.uu.se

# Loading modules
module load bioinfo-tools
module load FastQC

# Performing quality control with fastQC
fastqc -o ~/genome_analysis/analyses/02_fastqc_RNA_control/RNA_Serum_fastqc -f fastq \
~/genome_analysis/data/raw_data/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR1797969_pass_1.fastq.gz ~/genome_analysis/data/raw_data/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR1797969_pass_2.fastq.gz

fastqc -o ~/genome_analysis/analyses/02_fastqc_RNA_control/RNA_Serum_fastqc -f fastq \
~/genome_analysis/data/raw_data/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR1797970_pass_1.fastq.gz ~/genome_analysis/data/raw_data/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR1797970_pass_2.fastq.gz

fastqc -o ~/genome_analysis/analyses/02_fastqc_RNA_control/RNA_Serum_fastqc -f fastq \
~/genome_analysis/data/raw_data/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR1797971_pass_1.fastq.gz ~/genome_analysis/data/raw_data/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR1797971_pass_2.fastq.gz



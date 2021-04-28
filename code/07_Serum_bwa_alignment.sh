#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 05:00:00
#SBATCH -J Serum_bwa_alignment
#SBATCH --mail-type=ALL
#SBATCH --mail-user vendela.andersson.3023@student.uu.se

# Load modules
module load bioinfo-tools
module load bwa
module load samtools


# Perform bwa aln alignment Serum
cd ~/genome_analysis/data/raw_data/transcriptomics_data/RNA-Seq_Serum
for i in trim_paired*
do
        bwa aln ~/genome_analysis/analyses/01_genome_assembly/assembly.contigs.fasta $i > ~/genome_analysis/analyses/07_bwa_alignment/Serum_aln/${i}.sai
done

# Perform bwa sampe alignment Serum
for i in {69..71}
do
        bwa sampe ~/genome_analysis/analyses/01_genome_assembly/assembly.contigs.fasta \
        ~/genome_analysis/analyses/07_bwa_alignment/Serum_aln/trim_paired_ERR17979${i}* \
        ~/genome_analysis/data/raw_data/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR17979${i}* \
	| samtools sort -o ~/genome_analysis/analyses/07_bwa_alignment/Serum_sampe/bwa_aligned_ERR17979${i}.bam
done



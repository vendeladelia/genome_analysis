#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 10:00:00
#SBATCH -J BH_htseq_count
#SBATCH --mail-type=ALL
#SBATCH --mail-user vendela.andersson.3023@student.uu.se

# Load modules
module load bioinfo-tools
module load htseq
module load samtools

# Create bam index for bam-files
for i in ~/genome_analysis/analyses/07_bwa_alignment/BH_sampe/*.bam
do
	samtools index $i ${i}.bai
done

# Run HTSeq
cd ~/genome_analysis/analyses/08_htseq_count/
htseq-count -f bam -r pos \
~/genome_analysis/analyses/07_bwa_alignment/BH_sampe/*.bam \
~/genome_analysis/analyses/04_annotation_prokka/annotation_trim.gff

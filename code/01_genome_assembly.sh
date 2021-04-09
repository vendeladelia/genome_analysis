#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 08:00:00
#SBATCH -J genome_assembly
#SBATCH --mail-type=ALL
#SBATCH --mail-user vendela.andersson.3023@student.uu.se

# Load modules
module load bioinfo-tools
module load canu

# Performing assembly with Canu
canu \
-p assembly -d ~/genome_analysis/analyses/01_genome_assembly/ \
genomeSize=3m \
-pacbio ~/genome_analysis/data/raw_data/genomics_data/PacBio/m1310*




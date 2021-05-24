#Loading data
bh_depth <- read.table("~/genome_analysis/analyses/07_bwa_alignment/BH_sampe/72_depth.tsv")
se_depth <- read.table("~/genome_analysis/analyses/07_bwa_alignment/Serum_sampe/69_depth.tsv")

png("BH_coverage.png")
plot(bh_depth[c(1:100000),c(2)], bh_depth[c(1:100000),c(3)], xlab="Position", ylab="Coverage",
     main="Distribution of coverage for one BH replicate, first 100 000 positions")
dev.off()

png("Serum_coverage.png")
plot(se_depth[c(1:100000),c(2)], se_depth[c(1:100000),c(3)], xlab="Position", ylab="Coverage",
     main="Distribution of coverage for one Serum replicate, first 100 000 positions")
dev.off()

Step 1: the sequence mapping and calculation of G-quadruplex in each feature region.

nohup Rscript promoter2000_G-quadruplex.R &
nohup Rscript promoter1500_G-quadruplex.R &
nohup Rscript promoter1000_G-quadruplex.R &
nohup Rscript promoter500_G-quadruplex.R &
nohup Rscript TSS500_G-quadruplex.R &
nohup Rscript 5UTR_G-quadruplex.R &
nohup Rscript 3UTR_G-quadruplex.R &
nohup Rscript gene_G-quadruplex.R &
nohup Rscript intergenic_G-quadruplex.R &
nohup Rscript exon_G-quadruplex.R &
nohup Rscript CDS_G-quadruplex.R &
nohup Rscript intron_G-quadruplex.R &


Step 2: G-quadruplex in all feature regions under stress condition.

nohup Rscript DEG_drought_G-quadruplex.R &
nohup Rscript DEG_NaCl_G-quadruplex.R &
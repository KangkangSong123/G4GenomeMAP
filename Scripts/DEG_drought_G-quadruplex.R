###the sequence mapping and calculation of G-quadruplex in all feature regions under drought stress condition 

###If you use this R script in your article,
###please cite our article:
###The Characterization of G-quadruplexes in Tobacco Genome and Their Function under Abiotic Stress


diff_D = read.csv("diff_D.csv", encoding="UTF-8")
diff_D$gene = substr(diff_D$gene, 1, 21)
diff_D = diff_D[diff_D$group != 'NOT_CHANGE',]



#############################################################promoter2000
gff_promoter = read.table('promoter2000_G-quadruplex',sep = '\t',header = T,check.names = F, quote='')
gff_promoter$gene_id = substr(gff_promoter$attributes, 4, 24)
gff_promoter2 = gff_promoter[1, ][-1, ]
n = 1
for (i in 1:nrow(diff_D)){
  for (j in 1:nrow(gff_promoter)){
    if (diff_D$gene[i] == gff_promoter$gene_id[j]){
      gff_promoter2[n, ] = gff_promoter[j, ]
      gff_promoter2$group[n] = diff_D$group[i]
      n = n + 1
    }
  }
}

DEG_GQ_promoter = gff_promoter2
rm(gff_promoter, gff_promoter2, i, j, n)
write.table (DEG_GQ_promoter, file ="DEG_promoter2000_G-quadruplex", sep ="\t", row.names = FALSE, col.names =TRUE, quote = FALSE)





#############################################################promoter1500
gff_promoter_1500 = read.table('promoter1500_G-quadruplex',sep = '\t',header = T,check.names = F, quote='')
gff_promoter_1500$gene_id = substr(gff_promoter_1500$attributes, 4, 24)
gff_promoter_15002 = gff_promoter_1500[1, ][-1, ]
n = 1
for (i in 1:nrow(diff_D)){
  for (j in 1:nrow(gff_promoter_1500)){
    if (diff_D$gene[i] == gff_promoter_1500$gene_id[j]){
      gff_promoter_15002[n, ] = gff_promoter_1500[j, ]
      gff_promoter_15002$group[n] = diff_D$group[i]
      n = n + 1
    }
  }
}

DEG_GQ_promoter_1500 = gff_promoter_15002
rm(gff_promoter_1500, gff_promoter15002, i, j, n)
write.table (DEG_GQ_promoter_1500, file ="DEG_promoter1500_G-quadruplex", sep ="\t", row.names = FALSE, col.names =TRUE, quote = FALSE)





#############################################################promoter1000
gff_promoter_1000 = read.table('promoter1000_G-quadruplex',sep = '\t',header = T,check.names = F, quote='')
gff_promoter_1000$gene_id = substr(gff_promoter_1000$attributes, 4, 24)
gff_promoter_10002 = gff_promoter_1000[1, ][-1, ]
n = 1
for (i in 1:nrow(diff_D)){
  for (j in 1:nrow(gff_promoter_1000)){
    if (diff_D$gene[i] == gff_promoter_1000$gene_id[j]){
      gff_promoter_10002[n, ] = gff_promoter_1000[j, ]
      gff_promoter_10002$group[n] = diff_D$group[i]
      n = n + 1
    }
  }
}

DEG_GQ_promoter_1000 = gff_promoter_10002
rm(gff_promoter_1000, gff_promoter_10002, i, j, n)
write.table (DEG_GQ_promoter_1000, file ="DEG_promoter1000_G-quadruplex", sep ="\t", row.names = FALSE, col.names =TRUE, quote = FALSE)





#############################################################promoter500
gff_promoter_500 = read.table('promoter500_G-quadruplex',sep = '\t',header = T,check.names = F, quote='')
gff_promoter_500$gene_id = substr(gff_promoter_500$attributes, 4, 24)
gff_promoter_5002 = gff_promoter_500[1, ][-1, ]
n = 1
for (i in 1:nrow(diff_D)){
  for (j in 1:nrow(gff_promoter_500)){
    if (diff_D$gene[i] == gff_promoter_500$gene_id[j]){
      gff_promoter_5002[n, ] = gff_promoter_500[j, ]
      gff_promoter_5002$group[n] = diff_D$group[i]
      n = n + 1
    }
  }
}

DEG_GQ_promoter_500 = gff_promoter_5002
rm(gff_promoter_500, gff_promoter_5002, i, j, n)
write.table (DEG_GQ_promoter_500, file ="promoter500_G-quadruplex", sep ="\t", row.names = FALSE, col.names =TRUE, quote = FALSE)




#############################################################TSS500
gff_TSS_updown500 = read.table('TSS500_G-quadruplex',sep = '\t',header = T,check.names = F, quote='')
gff_TSS_updown500$gene_id = substr(gff_TSS_updown500$attributes, 4, 24)
gff_TSS_updown5002 = gff_TSS_updown500[1, ][-1, ]
n = 1
for (i in 1:nrow(diff_D)){
  for (j in 1:nrow(gff_TSS_updown500)){
    if (diff_D$gene[i] == gff_TSS_updown500$gene_id[j]){
      gff_TSS_updown5002[n, ] = gff_TSS_updown500[j, ]
      gff_TSS_updown5002$group[n] = diff_D$group[i]
      n = n + 1
    }
  }
}

DEG_GQ_TSS_updown500 = gff_TSS_updown5002
rm(gff_TSS_updown500, gff_TSS_updown5002, i, j, n)
write.table (DEG_GQ_TSS_updown500, file ="TSS500_G-quadruplex", sep ="\t", row.names = FALSE, col.names =TRUE, quote = FALSE)





#############################################################5UTR
gff_5UTR = read.table('5UTR_G-quadruplex',sep = '\t',header = T,check.names = F, quote='')
gff_5UTR$gene_id = substr(gff_5UTR$attributes, 4, 24)
gff_5UTR2 = gff_5UTR[1, ][-1, ]
n = 1
for (i in 1:nrow(diff_D)){
  for (j in 1:nrow(gff_5UTR)){
    if (diff_D$gene[i] == gff_5UTR$gene_id[j]){
      gff_5UTR2[n, ] = gff_5UTR[j, ]
      gff_5UTR2$group[n] = diff_D$group[i]
      n = n + 1
    }
  }
}

DEG_GQ_5UTR = gff_5UTR2
rm(gff_5UTR, gff_5UTR2, i, j, n)
write.table (DEG_GQ_5UTR, file ="DEG_5UTR_G-quadruplex", sep ="\t", row.names = FALSE, col.names =TRUE, quote = FALSE)





#############################################################3UTR
gff_3UTR = read.table('3UTR_G-quadruplex',sep = '\t',header = T,check.names = F, quote='')
gff_3UTR$gene_id = substr(gff_3UTR$attributes, 4, 24)
gff_3UTR2 = gff_3UTR[1, ][-1, ]
n = 1
for (i in 1:nrow(diff_D)){
  for (j in 1:nrow(gff_3UTR)){
    if (diff_D$gene[i] == gff_3UTR$gene_id[j]){
      gff_3UTR2[n, ] = gff_3UTR[j, ]
      gff_3UTR2$group[n] = diff_D$group[i]
      n = n + 1
    }
  }
}

DEG_GQ_3UTR = gff_3UTR2
rm(gff_3UTR, gff_3UTR2, i, j, n)
write.table (DEG_GQ_3UTR, file ="DEG_3UTR_G-quadruplex", sep ="\t", row.names = FALSE, col.names =TRUE, quote = FALSE)






#############################################################exon
gff_exon = read.table('exon_G-quadruplex',sep = '\t',header = T,check.names = F, quote='')
gff_exon$gene_id = substr(gff_exon$attributes, 4, 24)
gff_exon2 = gff_exon[1, ][-1, ]
n = 1
for (i in 1:nrow(diff_D)){
  for (j in 1:nrow(gff_exon)){
    if (diff_D$gene[i] == gff_exon$gene_id[j]){
      gff_exon2[n, ] = gff_exon[j, ]
      gff_exon2$group[n] = diff_D$group[i]
      n = n + 1
    }
  }
}

DEG_GQ_exon = gff_exon2
rm(gff_exon, gff_exon2, i, j, n)
write.table (DEG_GQ_exon, file ="DEG_exon_G-quadruplex", sep ="\t", row.names = FALSE, col.names =TRUE, quote = FALSE)



#############################################################CDS
gff_CDS = read.table('CDS_G-quadruplex',sep = '\t',header = T,check.names = F, quote='')
gff_CDS$gene_id = substr(gff_CDS$attributes, 4, 24)
gff_CDS2 = gff_CDS[1, ][-1, ]
n = 1
for (i in 1:nrow(diff_D)){
  for (j in 1:nrow(gff_CDS)){
    if (diff_D$gene[i] == gff_CDS$gene_id[j]){
      gff_CDS2[n, ] = gff_CDS[j, ]
      gff_CDS2$group[n] = diff_D$group[i]
      n = n + 1
    }
  }
}

DEG_GQ_CDS = gff_CDS2
rm(gff_CDS, gff_CDS2, i, j, n)
write.table (DEG_GQ_CDS, file ="DEG_CDS_G-quadruplex", sep ="\t", row.names = FALSE, col.names =TRUE, quote = FALSE)







############################################################intron
gff_intron = read.table('intron_G-quadruplex',sep = '\t',header = T,check.names = F, quote='')
gff_intron$gene_id = substr(gff_intron$attributes, 4, 24)
gff_intron2 = gff_intron[1, ][-1, ]
n = 1
for (i in 1:nrow(diff_D)){
  for (j in 1:nrow(gff_intron)){
    if (diff_D$gene[i] == gff_intron$gene_id[j]){
      gff_intron2[n, ] = gff_intron[j, ]
      gff_intron2$group[n] = diff_D$group[i]
      n = n + 1
    }
  }
}

DEG_GQ_intron = gff_intron2
rm(gff_intron, gff_intron2, i, j, n)
write.table (DEG_GQ_intron, file ="DEG_intron_G-quadruplex", sep ="\t", row.names = FALSE, col.names =TRUE, quote = FALSE)




#############################################################gene
gff_gene = read.table('gene_G-quadruplex',sep = '\t',header = T,check.names = F, quote='')
gff_gene$gene_id = substr(gff_gene$attributes, 4, 24)
gff_gene2 = gff_gene[1, ][-1, ]
n = 1
for (i in 1:nrow(diff_D)){
  for (j in 1:nrow(gff_gene)){
    if (diff_D$gene[i] == gff_gene$gene_id[j]){
      gff_gene2[n, ] = gff_gene[j, ]
      gff_gene2$group[n] = diff_D$group[i]
      n = n + 1
    }
  }
}

DEG_GQ_gene = gff_gene2
rm(gff_gene, gff_gene2, i, j, n)
write.table (DEG_GQ_gene, file ="DEG_gene_G-quadruplex", sep ="\t", row.names = FALSE, col.names =TRUE, quote = FALSE)



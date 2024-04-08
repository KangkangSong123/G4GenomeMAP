###the sequence mapping and calculation of G-quadruplex in promoter_1500

###If you use this R script in your article,
###please cite our article:
###The Characterization of G-quadruplexes in Tobacco Genome and Their Function under Abiotic Stress



##Whole genome G-quadruplex information containing genome coordinates:
##(**grouped.csv files were obtained through G4Hunter)
Nt01 = read.csv("01grouped.csv", sep = '\t', encoding="UTF-8")
Nt01$ID_Chr = "Nt01"
Nt01 = Nt01[, c(8,1,2,3,4,5,6,7)]

Nt02 = read.csv("02grouped.csv", sep = '\t', encoding="UTF-8")
Nt02$ID_Chr = "Nt02"
Nt02 = Nt02[, c(8,1,2,3,4,5,6,7)]

Nt03 = read.csv("03grouped.csv", sep = '\t', encoding="UTF-8")
Nt03$ID_Chr = "Nt03"
Nt03 = Nt03[, c(8,1,2,3,4,5,6,7)]

Nt04 = read.csv("04grouped.csv", sep = '\t', encoding="UTF-8")
Nt04$ID_Chr = "Nt04"
Nt04 = Nt04[, c(8,1,2,3,4,5,6,7)]

Nt05 = read.csv("05grouped.csv", sep = '\t', encoding="UTF-8")
Nt05$ID_Chr = "Nt05"
Nt05 = Nt05[, c(8,1,2,3,4,5,6,7)]

Nt06 = read.csv("06grouped.csv", sep = '\t', encoding="UTF-8")
Nt06$ID_Chr = "Nt06"
Nt06 = Nt06[, c(8,1,2,3,4,5,6,7)]

Nt07 = read.csv("07grouped.csv", sep = '\t', encoding="UTF-8")
Nt07$ID_Chr = "Nt07"
Nt07 = Nt07[, c(8,1,2,3,4,5,6,7)]

Nt08 = read.csv("08grouped.csv", sep = '\t', encoding="UTF-8")
Nt08$ID_Chr = "Nt08"
Nt08 = Nt08[, c(8,1,2,3,4,5,6,7)]

Nt09 = read.csv("09grouped.csv", sep = '\t', encoding="UTF-8")
Nt09$ID_Chr = "Nt09"
Nt09 = Nt09[, c(8,1,2,3,4,5,6,7)]

Nt10 = read.csv("10grouped.csv", sep = '\t', encoding="UTF-8")
Nt10$ID_Chr = "Nt10"
Nt10 = Nt10[, c(8,1,2,3,4,5,6,7)]

Nt11 = read.csv("11grouped.csv", sep = '\t', encoding="UTF-8")
Nt11$ID_Chr = "Nt11"
Nt11 = Nt11[, c(8,1,2,3,4,5,6,7)]

Nt12 = read.csv("12grouped.csv", sep = '\t', encoding="UTF-8")
Nt12$ID_Chr = "Nt12"
Nt12 = Nt12[, c(8,1,2,3,4,5,6,7)]

Nt13 = read.csv("13grouped.csv", sep = '\t', encoding="UTF-8")
Nt13$ID_Chr = "Nt13"
Nt13 = Nt13[, c(8,1,2,3,4,5,6,7)]

Nt14 = read.csv("14grouped.csv", sep = '\t', encoding="UTF-8")
Nt14$ID_Chr = "Nt14"
Nt14 = Nt14[, c(8,1,2,3,4,5,6,7)]

Nt15 = read.csv("15grouped.csv", sep = '\t', encoding="UTF-8")
Nt15$ID_Chr = "Nt15"
Nt15 = Nt15[, c(8,1,2,3,4,5,6,7)]

Nt16 = read.csv("16grouped.csv", sep = '\t', encoding="UTF-8")
Nt16$ID_Chr = "Nt16"
Nt16 = Nt16[, c(8,1,2,3,4,5,6,7)]

Nt17 = read.csv("17grouped.csv", sep = '\t', encoding="UTF-8")
Nt17$ID_Chr = "Nt17"
Nt17 = Nt17[, c(8,1,2,3,4,5,6,7)]

Nt18 = read.csv("18grouped.csv", sep = '\t', encoding="UTF-8")
Nt18$ID_Chr = "Nt18"
Nt18 = Nt18[, c(8,1,2,3,4,5,6,7)]

Nt19 = read.csv("19grouped.csv", sep = '\t', encoding="UTF-8")
Nt19$ID_Chr = "Nt19"
Nt19 = Nt19[, c(8,1,2,3,4,5,6,7)]

Nt20 = read.csv("20grouped.csv", sep = '\t', encoding="UTF-8")
Nt20$ID_Chr = "Nt20"
Nt20 = Nt20[, c(8,1,2,3,4,5,6,7)]

Nt21 = read.csv("21grouped.csv", sep = '\t', encoding="UTF-8")
Nt21$ID_Chr = "Nt21"
Nt21 = Nt21[, c(8,1,2,3,4,5,6,7)]


Nt22 = read.csv("22grouped.csv", sep = '\t', encoding="UTF-8")
Nt22$ID_Chr = "Nt22"
Nt22 = Nt22[, c(8,1,2,3,4,5,6,7)]


Nt23 = read.csv("23grouped.csv", sep = '\t', encoding="UTF-8")
Nt23$ID_Chr = "Nt23"
Nt23 = Nt23[, c(8,1,2,3,4,5,6,7)]

Nt24 = read.csv("24grouped.csv", sep = '\t', encoding="UTF-8")
Nt24$ID_Chr = "Nt24"
Nt24 = Nt24[, c(8,1,2,3,4,5,6,7)]

G4Hunter = rbind(Nt01, Nt02, Nt03,Nt04,Nt05,Nt06,Nt07,Nt08,Nt09,Nt10,Nt11,Nt12,Nt13,Nt14,Nt15,Nt16,Nt17,Nt18,Nt19,Nt20,Nt21,Nt22,Nt23,Nt24)

rm(Nt01, Nt02, Nt03,Nt04,Nt05,Nt06,Nt07,Nt08,Nt09,Nt10,Nt11,Nt12,Nt13,Nt14,Nt15,Nt16,Nt17,Nt18,Nt19,Nt20,Nt21,Nt22,Nt23,Nt24)


G4Hunter$end = NA
colnames(G4Hunter)[3] = 'start'
G4Hunter = G4Hunter[,c(1,2,3,9,4,5,6,7,8)]
G4Hunter$end = G4Hunter$start + G4Hunter$LENGTH -1

G4Hunter$start = G4Hunter$start + 1
G4Hunter$end = G4Hunter$end + 1






######################### promoter_1500 annotation information containing genome coordinates:
mygff = read.table('gene_models_Chr_2017.gff',sep = '\t',header = F,check.names = F)
colnames(mygff) = c('seq_id','source','type','start','end','score','strand','phase','attributes')


gff_gene = mygff[which(grepl('gene', mygff$type)), ] 
gff_gene = gff_gene[, c(1,3,4,5,7,9)]

gff_promoter = gff_gene
gff_promoter$type = 'promoter'
rm(gff_gene)

gff_promoter$start_promoter = NA
gff_promoter$end_promoter = NA

for (i in 1:nrow(gff_promoter)){
  if (gff_promoter$strand[i] == '+'){
    gff_promoter$start_promoter[i] = gff_promoter$start[i] - 1500
    gff_promoter$end_promoter[i] = gff_promoter$start[i] - 1
  }
  if (gff_promoter$strand[i] == '-'){
    gff_promoter$start_promoter[i] = gff_promoter$end[i] + 1
    gff_promoter$end_promoter[i] = gff_promoter$end[i] + 1500
    
  }
}


gff_promoter = gff_promoter[,c(1,2,7,8,5,6)]


names(gff_promoter)[names(gff_promoter) == 'start_promoter'] = 'start'
names(gff_promoter)[names(gff_promoter) == 'end_promoter'] = 'end'





##the sequence mapping and calculation of G-quadruplex in promoter_1500:
##(based on the genome coordinates of G-quadruplex and genome coordinates of promoter_1500)
gff_promoter$GQnumber = 0

gff_promoter$TemplateStrand = 0
gff_promoter$CodingStrand = 0
gff_promoter$SCORE_TemplateStrand = NA
gff_promoter$SCORE_CodingStrand = NA

for (i in 1:nrow(gff_promoter)){
  
  for (j in 1: nrow(G4Hunter)){
    
    if (gff_promoter$seq_id[i] == G4Hunter$ID_Chr[j]){
      
      
      if (min(gff_promoter$end[i], G4Hunter$end[j]) >= max(gff_promoter$start[i], G4Hunter$start[j])){
       
        if (gff_promoter$strand[i] == '+' & G4Hunter$SCORE[j] > 0){
          gff_promoter$TemplateStrand[i] = gff_promoter$TemplateStrand[i] + 1
          gff_promoter$GQnumber[i] = gff_promoter$GQnumber[i] + 1
          gff_promoter$SCORE_TemplateStrand[i] = paste(gff_promoter$SCORE_TemplateStrand[i], G4Hunter$SCORE[j], sep = ", ") 
          
          
        }  
        if (gff_promoter$strand[i] == '+' & G4Hunter$SCORE[j] < 0){
          gff_promoter$CodingStrand[i] = gff_promoter$CodingStrand[i] + 1
          gff_promoter$GQnumber[i] = gff_promoter$GQnumber[i] + 1
          gff_promoter$SCORE_CodingStrand[i] = paste(gff_promoter$SCORE_CodingStrand[i], G4Hunter$SCORE[j], sep = ", ") 
        }
        if (gff_promoter$strand[i] == '-'  & G4Hunter$SCORE[j] > 0){
          gff_promoter$CodingStrand[i] = gff_promoter$CodingStrand[i] + 1
          gff_promoter$GQnumber[i] = gff_promoter$GQnumber[i] + 1
          gff_promoter$SCORE_CodingStrand[i] = paste(gff_promoter$SCORE_CodingStrand[i], G4Hunter$SCORE[j], sep = ", ") 
        }
        if (gff_promoter$strand[i] == '-'  & G4Hunter$SCORE[j] < 0){
          gff_promoter$TemplateStrand[i] = gff_promoter$TemplateStrand[i] + 1
          gff_promoter$GQnumber[i] = gff_promoter$GQnumber[i] + 1
          gff_promoter$SCORE_TemplateStrand[i] = paste(gff_promoter$SCORE_TemplateStrand[i], G4Hunter$SCORE[j], sep = ", ") 
          
        }
        
        
        
      }
    }
  }
} 



write.table (gff_promoter, file ="promoter1500_G-quadruplex", sep ="\t", row.names = FALSE, col.names =TRUE, quote = FALSE)



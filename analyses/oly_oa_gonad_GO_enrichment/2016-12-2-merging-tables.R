### NOTE: Before Step 1, I converted OlyO_v6_transcriptome.fa to a .tab file using Galaxy ###

#Step 1: Upload data
diffexpressedgenes <- read.table("/Users/yaamini/Documents/yaaminiv-fish546-2016/analyses/11-29-oly-oa-gonad-DESeq2/alltreatments_DEG.tab", row.names = NULL) #tab file of differentially expressed genes in O.lurida between control and ocean acidification conditions
full_transcriptome <- read.table(file = "/Users/yaamini/Documents/yaaminiv-fish546-2016/data/OlyO_v6_transcriptome_contigsonly.tabular", header = FALSE, col.names = c("contig", "sequence")) #tab file of full O. lurida transcriptome from Galaxy

#Step 2: Add column names to differentially expressed genes
install.packages("data.table")
library(data.table)
setDT(diffexpressedgenes) #convert row names to a separate column in diffexpressedgenes
colnames(diffexpressedgenes) <- c("contig", "baseMean", "log2FoldChange", "lfcSE", "stat", "pvalue", "padj")
head(diffexpressedgenes) #confirm addition of column names

#Step 4: Merge differentially expressed genes with Uniprot information
alltreatments_DEG_Uniprot <- merge(x = diffexpressedgenes, y = full_transcriptome, by = "contig") #merge two dataframes together
head(alltreatments_DEG_Uniprot) #confirm merge

#Step 5: Write out alltreatments_DEG_Uniprot as a tab file. Remove row and column names using "row.names" and "col.names" arguments
write.table(alltreatments_DEG_Uniprot, "/Users/yaamini/Documents/yaaminiv-fish546-2016/data/alltreatments_DEG_Uniprot.tab", row.names = F)
write.table(alltreatments_DEG_Uniprot, "/Users/yaamini/Documents/yaaminiv-fish546-2016/data/alltreatments_DEG_Uniprot_nohead.tab", col.names = F, row.names = F) #write out a separate version with no column headers

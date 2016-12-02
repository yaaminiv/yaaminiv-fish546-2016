### NOTE: Before Step 1, I converted OlyO_v6_transcriptome.fa to a .tab file using Galaxy ###

#Step 1: Upload data
full_transcriptome <- read.table("") #tab file of full O.lurida transcriptome
diffexpressedgenes <- read.table("/Users/yaamini/Documents/yaaminiv-fish546-2016/analyses/11-29-oly-oa-gonad-DESeq2/alltreatments_DEG.tab") #tab file of differentially expressed genes in O.lurida between control and ocean acidification conditions

#Step 2: Add column names to the full transcriptome
colnames(full_transcriptome) <- c("contig", "sequence") #add column names to full_transcriptome
head(full_transcriptome) #confirm addition of column names

#Step 3: Add column names to differentially expressed genes
install.packages("data.table")
library(data.table)
setDT(diffexpressedgenes, keep.rownames = TRUE) #convert row names to a separate column in diffexpressedgenes
colnames(diffexpressedgenes) <- c("contig", "baseMean", "log2FoldChange", "lfcSE", "stat", "pvalue", "padj")
head(diffexpressedgenes) #confirm addition of column names

#Step 4: Merge differentially expressed genes with Uniprot information
alltreatments_DEG_Uniprot <- merge(x = diffexpressedgenes, y = full_transcriptome, by = "contig") #merge two dataframes together

#Step 5: Write out alltreatments_DEG_Uniprot as a tab file. Remove row and column names using "row.names" and "col.names" arguments
write.table(alltreatments_DEG_Uniprot, "/Users/yaamini/Documents/yaaminiv-fish546-2016/data/alltreatments_DEG.tab", col.names = F, row.names = F)
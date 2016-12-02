### NOTE: Before Step 8, I uploaded the Phel_transcriptome.fasta file and converted it into a .tab file using Galaxy ###

#Step 8: Merge two datatables modified from Galaxy
full_transcriptome <- read.table("Galaxy8-[Phel_transcriptome.tab].tabular") #tab file of full seastar transcriptome
diffexpressedgenes <- read.table("Phel_DEGlist.tab") #tab file of differentially expressed genes in seastars with wasting disease

colnames(full_transcriptome) <- c("contig", "sequence") #add column names to full_transcriptome
head(full_transcriptome) #confirm addition of column names

install.packages("data.table")
library(data.table)
setDT(diffexpressedgenes, keep.rownames = TRUE) #convert row names to a separate column in diffexpressedgenes
colnames(diffexpressedgenes) <- c("contig", "baseMean", "log2FoldChange", "lfcSE", "stat", "pvalue", "padj")
head(diffexpressedgenes) #confirm addition of column names

Phel_diffexpressed_transcriptome <- merge(x = diffexpressedgenes, y = full_transcriptome, by = "contig") #merge two dataframes together

#Step 9: Remove all columns that are not "contig" and "sequence" (ie. remove "baseMean", "log2FoldChange", "lfcSE", "stat", "pvalue", "padj")

Phel_diffexpressed_transcriptome$baseMean <- NULL
Phel_diffexpressed_transcriptome$log2FoldChange <- NULL
Phel_diffexpressed_transcriptome$lfcSE <- NULL
Phel_diffexpressed_transcriptome$stat <- NULL
Phel_diffexpressed_transcriptome$pvalue <- NULL
Phel_diffexpressed_transcriptome$padj <- NULL
head(Phel_diffexpressed_transcriptome) #confirm column removal

#Step 10: Write out Phel_diffexpressed_transcritpome as a tab file. Need to remove row and column names using "row.names" and "col.names" arguments
write.table(Phel_diffexpressed_transcriptome, "Phel_diffexpressed_transcriptome.tab", col.names = F, row.names = F)
?write.table

### NOTE: The Phel_diffexpressed_transcriptome.tab file will be converted into a fasta file so I can use it as a database in BLAST ###
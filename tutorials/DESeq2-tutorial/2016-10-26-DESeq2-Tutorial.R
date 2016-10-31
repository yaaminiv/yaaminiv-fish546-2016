#Step 1: Instal DESeq2 and Load Package
source("http://bioconductor.org/biocLite.R")
biocLite("DESeq2")
browseVignettes("DESeq2")
library(DESeq2)

#Step 2: Read in data for tutorial
data <- read.table("Phel_countdata.txt", header = T, sep = "\t")
rownames(data) <- data$Feature
data <- data[,-1]

#Step 3: Build objects, specify which columns are in which group
deseq2.colData <- data.frame(condition=factor(c(rep("Treated", 3), rep("Control", 3))), type=factor(rep("single-read", 6)))
rownames(deseq2.colData) <- colnames(data)
deseq2.dds <- DESeqDataSetFromMatrix(countData = data, colData = deseq2.colData, design = ~ condition)

#Step 4: Run analysis and confirm results
deseq2.dds <- DESeq(deseq2.dds)
deseq2.res <- results(deseq2.dds)
deseq2.res <- deseq2.res[order(rownames(deseq2.res)), ]
head(deseq2.res)

#Step 5: Count number of hits with adjusted p-value less than 0.05
dim(deseq2.res[!is.na(deseq2.res$padj) & deseq2.res$padj <= 0.05, ])

#Step 6: Create plot
tmp <- deseq2.res
#The main plot
plot(tmp$baseMean, tmp$log2FoldChange, pch=20, cex=0.45, ylim=c(-3, 3), log="x", col="darkgray", main="DEG Virus Exposure  (pval <= 0.05)", xlab="mean of normalized counts", ylab="Log2 Fold Change")
#Getting the significant points and plotting them again so they're a different color
tmp.sig <- deseq2.res[!is.na(deseq2.res$padj) & deseq2.res$padj <= 0.05, ]
points(tmp.sig$baseMean, tmp.sig$log2FoldChange, pch=20, cex=0.45, col="violetred")
# 2 FC lines
abline(h=c(-1,1), col="blue")

#Step 7: Create table with differentially expressed contigs
write.table(tmp.sig, "Phel_DEGlist.tab", row.names = T)

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
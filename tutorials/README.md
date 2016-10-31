# `tutorials` Subdirectory Structure
This subdirectory hosts tutorials that walk the reader through several different bioinformatic analyses. Tutorials included are:

`BLAST-tutorial`
`2016-10-11-Blast-Tutorial-Part-1.ipynb`
- Downloading data
- Downloading Uniprot database
`2016-10-11-Blast-Tutorial-Part-2.ipynb`
- How to create a BLAST database
- Script for running BLAST analysis
`data` (hosted in `.gitignore`)
- Uniprot data files
- Sample transcriptome (`Oly-transcriptome-2k.fa`)

`DESeq2-tutorial`
`2016-10-26-DESeq2-Tutorial.R`
- How to run DESeq2 in R to analyze differential expression
`2016-10-26-DESeq2-Tutorial-Part-2.ipynb`
- Taking results from R and running a BLAST on differentially expressed sequences
`data` (hosted in `.gitignore`)
- Sample count data (`Phel_countdata.txt`)
- Sample differentially expressed sequences (`Phel_DEGlist.tab`)
- Sample transcriptome (`Phel_transcriptome.fasta`)
- Files created using Galaxy (`Galaxy*.tabular`)
     - explanation of file creation in `2016-10-26-DESeq2-Tutorial.R`
- Sample BLAST databse from `Phel_transcriptome.fasta`

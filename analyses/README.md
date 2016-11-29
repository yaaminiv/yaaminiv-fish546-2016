# `analyses` Subdirectory Structure
This subdirectory hosts the output of all analyses completed. It is divided into the following categories:

[`oly_oa_gonad_FASTQC`](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/oly_oa_gonad_FASTQC)

*O. lurida* analysis reports from FastQC interactive application. Each `.fastq` file (ex. filtered_106A_Female_Mix...) has its own folder and `.html` file with analysis results. Screenshot previews (`.png` files) of FastQC analysis reports also included for each `.fastq` file.

[`oly_oa_gonad_FASTQC_commandline`](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/oly_oa_gonad_FastQC_commandline)

*O. lurida* analysis reports generated using FastQC in the command line. Same structure as the `oly_oa_gonad_FASTQC` category, but without screenshots.

[`oly_oa_gonad_multiqc`](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/oly_oa_gonad_MultiQC)

FastQC analyses compiled into one report using MultiQC. One folder with analysis output, and an .html file with visual results.

[blastx output](https://raw.githubusercontent.com/yaaminiv/yaaminiv-fish546-2016/master/analyses/blastx-11-14-best-matches) for best matches between O. lurida transcriptome and Uniprot database with gene ontology information

`kallisto quant` analysis results
Each `.fastq` file has its own folder that stores `kallisto quant` output
 - [kallisto-female-106](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/kallisto-female-106): count data for Female_106 .fastq file
 - [kallisto-male-106](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/kallisto-male-106): count data for Male_106 .fastq file
 - [kallisto-female-108](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/kallisto-female-108): count data for Female_108 .fastq file
 - [kallisto-male-108](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/kallisto-male-108): count data for Male_106 .fastq file
  
[`oly_oa_gonad_DESeq2`](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/oly_oa_gonad_DESeq2)

R scripts, graphs and `.tab` files associated with DeSeq2 analysis. Each comparison (all treatments, various pairwise comparisons) have their own R script that runs through DESeq2 analysis and generates a graph and `.tab` file for differentially expressed genes at a given level of significance.

11-29-2016 `kallisto quant` analysis results
Each `.fastq` file has its own folder that stores `kallisto quant` output
  - [11-29-kallisto-female-106](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/11-29-kallisto-female-106): revised count data for Female_106 .fastq file
  - [11-29-kallisto-male-106](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/11-29-kallisto-male-106): revised count data for Male_106 .fastq file
  - [11-29-kallisto-female-108](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/11-29-kallisto-female-108): revised count data for Female_108 .fastq file
  - [11-29-kallisto-male-108](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/11-29-kallisto-male-108): revised count data for Male_106 .fastq file
  
[`11-29-oly-oa-gonad-DESeq2`](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/11-29-oly-oa-gonad-DESeq2) 

Revised R scripts, graphs and `.tab` files associated with DeSeq2 analysis.

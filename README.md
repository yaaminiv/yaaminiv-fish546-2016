# Annotation of *Ostrea lurida* transcriptome

For my project, I will analyze four different Olympic oyster (*Ostrea lurida*) gonad nucleotide sequences with accompanying quality scores (.fastq files). These sequences are from male and female specimens, exposed to either control or ocean acidification conditions. I also have a previously assembled *O. lurida* transcriptome for comparison.

**My goal is to annotate the *O.lurida* transcriptome using the gonad nucleotide information, and understand how ocean acidification conditions affect differential expression in *O. lurida* gonads**.

### Objectives

1. Identify differential expression between samples exposed to control and ocean acidification conditions
2. Characterize gene ontology information associated with differential gene expression
3. Understand basic bioninformatic analysis techniques (FastQC, MultiQC, BLAST, etc.)
4. Create reproducible protocols for anlaysis
5. Produce a written report of findings

### Project Timeline

**Week 3**: 
- [Run FastQC analysis](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/notebooks/2016-10-19-oly-gonad-OA-part-1-FASTQC-results.ipynb)

**Week 4**: 
- [Run MultiQC analysis](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/notebooks/2016-10-13-oly-gonad-OA-part-1.ipynb)
- [Begin to trim sequences to improve quality](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/notebooks/2016-10-13-oly-gonad-OA-part-1.ipynb) (in progress as of 2016-11-04, completion date TBD)

**Week 5-6**: 
- [Run BLAST against specialized transcriptome from Uniprot database](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/notebooks/2016-10-28-oly-gonad-OA-part-2-BLAST.ipynb)
- [Run Kallisto for count data](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/notebooks/2016-11-04-oly-gonad-OA-part3-kallisto.ipynb)

**Week 7**:
- [Analyze data files for differential expression using DESeq2](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/notebooks/2016-11-11-oly-gonad-OA-part4-differential-expression.ipynb)

**Week 8**
- [Rerun `kallisto quant` and DESeq2 with new values](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/notebooks/2016-11-29-oly-gonad-OA-part5-rerun-kallisto-and-DESeq2.ipynb)

**Week 9**
- [Gene enrichment analysis](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/notebooks/2016-11-30-oly-gonad-OA-part6-enrichment-analysis.ipynb)

**Week 10**
- [Interpret gene enrichment output from DAVID](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/notebooks/2016-12-12-oly-gonad-OA-part7-REVIGO.ipynb)

### Directory Structure
For more information regarding each subdirectory, see that subdirectory's `README.md` file

[`data/`](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/data)

Some files in [`.gitignore`](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/.gitignore), but directory on local machine includes the following files:

> *O. lurida* .fastq files

> *O. lurida* transcriptome

> [`kallisto quant` count data (.txt files)](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/data/2016-11-16_count_data)

> [`kallisto quant` count data from 11-29-2016 (.txt files)](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/data/2016-11-29_count_data)

[`analyses/`](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses)
> [oly_oa_gonad_FASTQC](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/oly_oa_gonad_FASTQC): *O. lurida* analysis reports from FastQC interactive application

> [oly_oa_gonad_FASTQC_commandline](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/oly_oa_gonad_FastQC_commandline): *O. lurida* analysis reports generated using FastQC in the command line

> [oly_oa_gonad_multiqc](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/oly_oa_gonad_MultiQC): FastQC analyses compiled into one report using MultiQC

> [oly_oa_gonad_blastx](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/oly_oa_gonad_blastx): Best matches between *O. lurida* transcriptome and Uniprot database with gene ontology information

> [irrelevant analyses](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/irrelevant-analyses): Folder with analyses not used in final results

 - `kallisto quant` analysis results
   - [kallisto-female-106](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/irrelevant-analyses/kallisto-female-106): count data for Female_106 .fastq file
   - [kallisto-male-106](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/irrelevant-analyses/kallisto-male-106): count data for Male_106 .fastq file
   - [kallisto-female-108](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/irrelevant-analyses/kallisto-female-108): count data for Female_108 .fastq file
   - [kallisto-male-108](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/irrelevant-analyses/kallisto-male-108): count data for Male_108 .fastq file
  
 - [oly_oa_gonad_DESeq2](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/oly_oa_gonad_DESeq2): R scripts, graphs and .tab files associated with DeSeq2 analysis

 - 11-29-2016 `kallisto quant` analysis results
   - [11-29-kallisto-female-106](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/irrelevant-analyses/11-29-kallisto-female-106): revised count data for Female_106 .fastq file
   - [11-29-kallisto-male-106](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/irrelevant-analyses/11-29-kallisto-male-106): revised count data for Male_106 .fastq file
   - [11-29-kallisto-female-108](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/irrelevant-analyses/11-29-kallisto-female-108): revised count data for Female_108 .fastq file
   - [11-29-kallisto-male-108](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/irrelevant-analyses/11-29-kallisto-male-108): revised count data for Male_106 .fastq file

 - irrelevant DESeq2 files from 11-29-2016
  - R scripts
    - [female 106 vs. female 108](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/analyses/irrelevant-analyses/2016-11-29-female106-female108-DESeq2.R)
    - [male 106 vs. male 108](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/analyses/irrelevant-analyses/2016-11-29-male106-male108-DESeq2.R)
    - [female 106 vs. male 106](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/analyses/irrelevant-analyses/2016-11-29-female106-male106-DESeq2.R)
    - [female 108 vs. male 108](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/analyses/irrelevant-analyses/2016-11-29-female108-male108-DESeq2.R)
  - DESeq2 plots
    - [female 106 vs. female 108](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/analyses/irrelevant-analyses/female106-female108.png)
    - [male 106 vs. male 108](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/analyses/irrelevant-analyses/male106-male108.png)
    - [female 106 vs. male 106](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/analyses/irrelevant-analyses/female106-male106.png)
    - [female 108 vs. male 108](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/analyses/irrelevant-analyses/female108-male108.png)
  
> [11-29-oly-oa-gonad-DESeq2](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/11-29-oly-oa-gonad-DESeq2): revised R scripts, graphs and .tab files associated with DeSeq2 analysis

> [oly_oa_gonad_GO_enrichment](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/oly_oa_gonad_GO_enrichment): Files, scripts and images associated with gene enrichment analysis in DAVID

> [oly_oa_gonad_REVIGO](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/oly_oa_gonad_REVIGO): Scatterplots, tree maps, R scripts and term tables generated using REVIGO

[`results/`](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/results)

> [blastx](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/results/1-blastx): Matched contigs in *O. lurida* transcriptome with Uniprot Database and gene ontology information

> [Differentially expressed genes from DESeq2](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/results/2-DESeq2-differentially-expressed-genes): `.tab` file with genes and `.png` DESeq2 plot

> [Gene enrichment analyses from DAVID](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/results/3-DAVID-gene-enrichment): `.tab` file with differentially expressed genes with associated sequences and Uniprot information, `.txt` files with Uniprot Accession codes, and several Functional Annotation tables from DAVID

> [Gene ontology analysis in REVIGO](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/results/4-REVIGO-gene-ontology): Scatterplots, tree maps and tables for biological processes, cellular components and molecular function GO terms

[`scripts/`](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/scripts)
> [script used in bash scripting tutorial](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/scripts/quiz7.sh)

[`tutorials/`](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/tutorials)
> [BLAST tutorial + acccompanying data files](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/tutorials/BLAST-tutorial)

> [DESeq2 tutorial + acccompanying data files](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/tutorials/DESeq2-tutorial)

> [CoGe tutorial + accompanying files](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/tutorials/COGE-tutorial)

> [Bash scripting tutorial + accompanying files](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/tutorials/bash-scripting-tutorial)

[`notebooks/`](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/notebooks)
> Jupyter (iPython) notebooks that detail reproducible methods used for data analysis

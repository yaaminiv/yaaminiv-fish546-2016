# Annotation of *Ostrea lurida* transcriptome: analysis of gonads in control and ocean acidification conditions

For my project, I analyzed four different Olympic oyster (*Ostrea lurida*) gonad nucleotide sequences with accompanying quality scores (.fastq files). These sequences are from male and female specimens, exposed to either control or ocean acidification conditions. I also had a previously assembled *O. lurida* transcriptome for comparison.

**My goal was to annotate the *O.lurida* transcriptome using the gonad nucleotide information, and understand how ocean acidification conditions affect differential expression in *O. lurida* gonads**.

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

[`data/`](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/data): Data used for project analyses

Some files in [`.gitignore`](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/.gitignore), but directory on local machine includes the following files:

> *O. lurida* .fastq files

> *O. lurida* transcriptome

> [`kallisto quant` count data (.txt files)](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/data/2016-11-16_count_data)

> [`kallisto quant` count data from 11-29-2016 (.txt files)](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/data/2016-11-29_count_data)

[`analyses/`](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses): Output for multiple analyses
> [oly_oa_gonad_FASTQC](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/oly_oa_gonad_FASTQC): *O. lurida* analysis reports from FastQC interactive application

> [oly_oa_gonad_FASTQC_commandline](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/oly_oa_gonad_FastQC_commandline): *O. lurida* analysis reports generated using FastQC in the command line

> [oly_oa_gonad_multiqc](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/oly_oa_gonad_MultiQC): FastQC analyses compiled into one report using MultiQC

> [oly_oa_gonad_blastx](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/oly_oa_gonad_blastx): Best matches between *O. lurida* transcriptome and Uniprot database with gene ontology information

> [irrelevant analyses](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/irrelevant-analyses): Folder with analyses not used to generate final results. Includes DESeq2 output from pairwise comparisons and DESeq2 output from 2016-11-16.

> [11-29-oly-oa-gonad-DESeq2](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/11-29-oly-oa-gonad-DESeq2): revised R scripts, graphs and .tab files associated with DeSeq2 analysis

> [oly_oa_gonad_GO_enrichment](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/oly_oa_gonad_GO_enrichment): Files, scripts and images associated with gene enrichment analysis in DAVID

> [oly_oa_gonad_REVIGO](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/oly_oa_gonad_REVIGO): Scatterplots, tree maps, R scripts and term tables generated using REVIGO

[`results/`](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/results): Overall project results

> [blastx](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/results/1-blastx): Matched contigs in *O. lurida* transcriptome with Uniprot Database and gene ontology information

> [Differentially expressed genes from DESeq2](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/results/2-DESeq2-differentially-expressed-genes): `.tab` file with genes and `.png` DESeq2 plot

> [Gene enrichment analyses from DAVID](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/results/3-DAVID-gene-enrichment): `.tab` file with differentially expressed genes with associated sequences and Uniprot information, `.txt` files with Uniprot Accession codes, and several Functional Annotation tables from DAVID

> [Gene ontology analysis in REVIGO](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/results/4-REVIGO-gene-ontology): Scatterplots, tree maps and tables for biological processes, cellular components and molecular function GO terms

[`scripts/`](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/scripts): Subdirectory with scripts used in project

[`tutorials/`](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/tutorials): Step-by-step tutorials for different programs
> [BLAST tutorial + acccompanying data files](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/tutorials/BLAST-tutorial)

> [DESeq2 tutorial + acccompanying data files](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/tutorials/DESeq2-tutorial)

> [CoGe tutorial + accompanying files](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/tutorials/COGE-tutorial)

> [Bash scripting tutorial + accompanying files](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/tutorials/bash-scripting-tutorial)

[`notebooks/`](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/notebooks): Jupyter notebooks that detail reproducible methods used for data analysis

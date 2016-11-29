# Annotation of *Ostrea lurida* transcriptome

For my project, I will analyze four different Olympic oyster (*Ostrea lurida*) gonad nucleotide sequences with accompanying quality scores (.fastq files). These sequences are from male and female specimens, exposed to either control or ocean acidification conditions. I also have a previously assembled *O. lurida* transcriptome for comparison.

**My goal is to annotate the *O.lurida* transcriptome using the gonad nucleotide information, and understand how ocean acidification conditions affect differential expression in *O. lurida* gonads**.

### Objectives

1. Identify differential expression between samples exposed to control and ocean acidification conditions
2. Determine if responses to stress conditions vary in male and female specimens
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
- ??

### Directory Structure
For more information regarding each subdirectory, see that subdirectory's `README.md` file

`data/` (some files in [`.gitignore`](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/.gitignore), but directory on local machine includes the following)
> *O. lurida* .fastq files

> *O. lurida* transcriptome

> `kallisto quant` count data (.txt files)

> `kallisto quant` count data from 11-29-2016 (.txt files)

[`analyses/`](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses)
> [oly_oa_gonad_FASTQC](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/oly_oa_gonad_FASTQC): *O. lurida* analysis reports from FastQC interactive application

> [oly_oa_gonad_FASTQC_commandline](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/oly_oa_gonad_FastQC_commandline): *O. lurida* analysis reports generated using FastQC in the command line

> [oly_oa_gonad_multiqc](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/oly_oa_gonad_MultiQC): FastQC analyses compiled into one report using MultiQC

> [blastx output](https://raw.githubusercontent.com/yaaminiv/yaaminiv-fish546-2016/master/analyses/blastx-11-14-best-matches) for best matches between *O. lurida* transcriptome and Uniprot database with gene ontology information

> `kallisto quant` analysis results
  - [kallisto-female-106](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/kallisto-female-106): count data for Female_106 .fastq file
  - [kallisto-male-106](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/kallisto-male-106): count data for Male_106 .fastq file
  - [kallisto-female-108](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/kallisto-female-108): count data for Female_108 .fastq file
  - [kallisto-male-108](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/kallisto-male-108): count data for Male_106 .fastq file
  
> [oly_oa_gonad_DESeq2](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/oly_oa_gonad_DESeq2): R scripts, graphs and .tab files associated with DeSeq2 analysis

> 11-29-2016 `kallisto quant` analysis results
  - [11-29-kallisto-female-106](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/11-29-kallisto-female-106): revised count data for Female_106 .fastq file
  - [11-29-kallisto-male-106](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/11-29-kallisto-male-106): revised count data for Male_106 .fastq file
  - [11-29-kallisto-female-108](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/11-29-kallisto-female-108): revised count data for Female_108 .fastq file
  - [11-29-kallisto-male-108](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/11-29-kallisto-male-108): revised count data for Male_106 .fastq file
  
> [11-29-oly-oa-gonad-DESeq2](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses/11-29-oly-oa-gonad-DESeq2): revised R scripts, graphs and .tab files associated with DeSeq2 analysis

`scripts/`
> empty as of 2016-10-20

[`tutorials/`](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/tutorials)
> BLAST tutorial + acccompanying data files

> DESeq2 tutorial + acccompanying data files

> CoGe tutorial + accompanying files

[`notebooks/`](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/notebooks)
> Jupyter (iPython) notebooks that detail reproducible methods used for data analysis

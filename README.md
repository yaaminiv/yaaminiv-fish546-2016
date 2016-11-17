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
- TBD

### Directory Structure
For more information regarding each subdirectory, see that subdirectory's `README.md` file

`data/` (some files in [`.gitignore`](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/.gitignore), but directory on local machine includes the following)
> *O. lurida* .fastq files

> *O. lurida* transcriptome

> `kallisto quant` count data (.txt files)

[`analyses/`](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/analyses)
> oly_oa_gonad_FASTQC: *O. lurida* analysis reports from FastQC interactive application

> oly_oa_gonad_FASTQC_commandline: *O. lurida* analysis reports generated using FastQC in the command line

> oly_oa_gonad_multiqc: FastQC analyses compiled into one report using MultiQC

`scripts/`
> empty as of 2016-10-20

[`tutorials/`](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/tutorials)
> BLAST tutorial + acccompanying data files

> DESeq2 tutorial + acccompanying data files

> CoGe tutorial + accompanying files

[`notebooks/`](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/notebooks)
> Jupyter (iPython) notebooks that detail reproducible methods used for data analysis

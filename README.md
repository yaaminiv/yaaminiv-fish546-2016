# Yaamini's FISH 546 Repository: Annotation of *Ostrea lurida* transcriptome

For my project, I will analyze four different Olympic oyster (*Ostrea lurida*) gonad nucleotide sequences with accompanying quality scores (.fastq files). These sequences are from male and female specimens, exposed to either control or ocean acidification conditions. I also have a previously assembled *O. lurida* transcriptome for comparison.

**My goal is to annotate the *O.lurida* transcriptome using the gonad nucleotide information, and understand how ocean acidification conditions affect differential expression in *O. lurida* gonads**.

### Objectives

1. Identify differential expression between samples exposed to control and ocean acidification conditions
2. Determine if responses to stress conditions vary in male and female specimens
3. Understand basic bioninformatic analysis techniques (FastQC, MultiQC, BLAST, etc.)
4. Create reproducible protocols for anlaysis
5. Produce a written report of findings

### Project Timeline

[**Week 3**](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/notebooks/2016-10-19-oly-gonad-OA-part-1-FASTQC-results.ipynb): 
- Run FastQC analysis

[**Week 4**](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/notebooks/2016-10-13-oly-gonad-OA-part-1.ipynb): 
- Run MultiQC analysis
- Begin to trim sequences to improve quality

**Week 5**: 
- [Run BLAST against specialized transcriptome from Uniprot database](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/notebooks/2016-10-28-oly-gonad-OA-part-2-BLAST.ipynb)
- Run Kallisto for count data

**Week 6**:
- Analyze data files for differential expression using DESeq2
- Statistical analyses for differential expression

### Directory Structure
For more information regarding each subdirectory, see that subdirectory's `README.md` file

`data/` (all files in `.gitignore`, but directory on local machine includes the following)
> *O. lurida* .fastq files

> *O. lurida* transcriptome

`analyses/`
> oly_oa_gonad_FASTQC: *O. lurida* analysis reports from FastQC interactive application

> oly_oa_gonad_commandline: *O. lurida* analysis reports generated using FastQC in the command line

> oly_oa_gonad_multiqc: FastQC analyses compiled into one report using MultiQC

`scripts/`
> empty as of 2016-10-20

`tutorials/`
> BLAST tutorial + acccompanying data files

> DESeq2 tutorial + acccompanying data files

`notebooks/`
> Jupyter (iPython) notebooks that detail reproducible methods used for data analysis

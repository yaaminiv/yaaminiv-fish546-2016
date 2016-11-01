# `notebooks` Subdirectory Structure
This subdirectory hosts the Jupyter (iPython) notebooks that detail reproducible methods used for data analysis. Descriptions of the files are as follows:

[`2016-10-13-oly-gonad-OA-part-1.ipynb`](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/notebooks/2016-10-13-oly-gonad-OA-part-1.ipynb)
- Downloaded .fastq files. Names below:
	- filtered_106A_Female_Mix_GATCAG_L004_R1.fastq: nucleotide sequences and quality information for females
	- filtered_106A_Male_Mix_TAGCTT_L004_R1.fastq: nucleotide sequences and quality information for males
	- filtered_108A_Female_Mix_GGCTAC_L004_R1.fastq: nucleotide sequences and quality information for females
	- filtered_108A_Male_Mix_AGTCAA_L004_R1.fastq: nucleotide sequences and quality information for males
- Examined sequence quality using FastQC
- Compared FastQC results for each sequence in MultiQC
- Started trimming adapter sequences to improve quality

[`2016-10-19-oly-gonad-OA-part-1-FASTQC-results.ipynb`](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/notebooks/2016-10-19-oly-gonad-OA-part-1-FASTQC-results.ipynb)
- Displays FastQC results from `2016-10-13-oly-gonad-OA-part-1.ipynb`

[`2016-10-28-oly-gonad-OA-part-2-BLAST.ipynb`](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/notebooks/2016-10-28-oly-gonad-OA-part-2-BLAST.ipynb)
- Ran BLAST of draft *O. lurida* transcriptome against specialized Uniprot database

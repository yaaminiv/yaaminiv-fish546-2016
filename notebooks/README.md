# `notebooks` Subdirectory Structure
This subdirectory hosts the Jupyter (iPython) notebooks that detail reproducible methods used for data analysis. Descriptions of the files are as follows:

[`2016-10-13-oly-gonad-OA-part-1.ipynb`](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/notebooks/2016-10-13-oly-gonad-OA-part-1.ipynb)
> - Downloaded .fastq files. Names below:
	- filtered_106A_Female_Mix_GATCAG_L004_R1.fastq: nucleotide sequences and quality information for females
	- filtered_106A_Male_Mix_TAGCTT_L004_R1.fastq: nucleotide sequences and quality information for males
	- filtered_108A_Female_Mix_GGCTAC_L004_R1.fastq: nucleotide sequences and quality information for females
	- filtered_108A_Male_Mix_AGTCAA_L004_R1.fastq: nucleotide sequences and quality information for males
- Examined sequence quality using FastQC
- Compared FastQC results for each sequence in MultiQC
- Started trimming adapter sequences to improve quality (in progress as of 2016-11-04, completion date TBD).

[`2016-10-19-oly-gonad-OA-part-1-FASTQC-results.ipynb`](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/notebooks/2016-10-19-oly-gonad-OA-part-1-FASTQC-results.ipynb)
> - Displays FastQC results from `2016-10-13-oly-gonad-OA-part-1.ipynb`

[`2016-10-28-oly-gonad-OA-part-2-BLAST.ipynb`](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/notebooks/2016-10-28-oly-gonad-OA-part-2-BLAST.ipynb)
> - Ran BLAST of draft *O. lurida* transcriptome against specialized Uniprot database that includes gene ontology information
- Updated blastx arguments to rerun blastx and produce only best matches with Uniprot database

[`2016-11-04-oly-gonad-OA-kallisto.ipynb`](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/notebooks/2016-11-04-oly-gonad-OA-part3-kallisto.ipynb)
> - Ran Kallisto to get count data

[`2016-11-11-oly-gonad-OA-part4-differential-expression.ipynb`](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/notebooks/2016-11-11-oly-gonad-OA-part4-differential-expression.ipynb)
> - Took count data and ran through DESeq2
- Identified genes differentially expressed at different levels of significance
- Compared the following sets:
 - All .fastq files
 - Female_106 vs. Female_108
 - Male_106 vs. Male_108
 - Female_106 vs. Male_106
 - Female_108 vs. Male_108
 
[`2016-11-29-oly-gonad-OA-part5-rerun-kallisto-and-DESeq2.ipynb`](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/notebooks/2016-11-29-oly-gonad-OA-part5-rerun-kallisto-and-DESeq2.ipynb)
> - Ran Kallisto to get count data with a revised standard deviation of 10%
- Took count data and ran through DESeq2
- Identified genes differentially expressed at different levels of significance
- Compared the following sets:
 - All .fastq files
 - Female_106 vs. Female_108
 - Male_106 vs. Male_108
 - Female_106 vs. Male_106
 - Female_108 vs. Male_108

[`2016-11-30-oly-gonad-OA-part6-enrichment-analysis.ipynb`](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/notebooks/2016-11-30-oly-gonad-OA-part6-enrichment-analysis.ipynb)
> - Added gene ontology information to list of differentially expressed genes
- Extracted Uniprot Accession codes
- Created new file with extracted Uniprot Accession codes
- Pasted codes into DAVID
- Downloaded gene enrichment files from DAVID

[`2016-12-12-oly-gonad-OA-part7-REVIGO.ipynb`](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/notebooks/2016-12-12-oly-gonad-OA-part7-REVIGO.ipynb)
> - Isolated Gene Ontology IDs and p-values from DAVID files
- Pasted Gene Ontology IDs and p-values into REVIGO
- Created scatterplot and tree maps
- Downloaded R scripts and GO term tables

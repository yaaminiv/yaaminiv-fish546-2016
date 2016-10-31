# `analyses` Subdirectory Structure
This subdirectory hosts the output of all analyses completed. It is divided into the following categories:

`oly_oa_gonad_FASTQC`

*O. lurida* analysis reports from FastQC interactive application. Each `.fastq` file (ex. filtered_106A_Female_Mix...) has its own folder and `.html` file with analysis results. Screenshot previews (`.png` files) of FastQC analysis reports also included for each `.fastq` file.

`oly_oa_gonad_commandline`

*O. lurida* analysis reports generated using FastQC in the command line. Same structure as the `oly_oa_gonad_FASTQC` category, but without screenshots.

`oly_oa_gonad_multiqc` 

FastQC analyses compiled into one report using MultiQC. One folder with analysis output, and an .html file with visual results.


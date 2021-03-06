# `tutorials` Subdirectory Structure
This subdirectory hosts tutorials that walk the reader through several different bioinformatic analyses. Tutorials included are:

[`BLAST-tutorial`](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/tutorials/BLAST-tutorial)

> [`2016-10-11-Blast-Tutorial-Part-1.ipynb`](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/tutorials/BLAST-tutorial/2016-10-11-Blast-Tutorial-Part-1.ipynb)
- Downloading data
- Downloading Uniprot database

> [`2016-10-11-Blast-Tutorial-Part-2.ipynb`](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/tutorials/BLAST-tutorial/2016-10-11-Blast-Tutorial-Part-2.ipynb)
- How to create a BLAST database
- Script for running BLAST analysis
`data` (hosted in `.gitignore`)
- Uniprot data files
- Sample transcriptome (`Oly-transcriptome-2k.fa`)

[`DESeq2-tutorial`](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/tutorials/DESeq2-tutorial)

> [`2016-10-26-DESeq2-Tutorial.R`](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/tutorials/DESeq2-tutorial/2016-10-26-DESeq2-Tutorial.R)
- How to run DESeq2 in R to analyze differential expression

> [`2016-10-26-DESeq2-Tutorial-Part-2.ipynb`](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/tutorials/DESeq2-tutorial/2016-10-26-DESeq2-Tutorial-Part-2.ipynb)
- Taking results from R and running a BLAST on differentially expressed sequences
`data` (hosted in `.gitignore`)
- Sample count data (`Phel_countdata.txt`)
- Sample differentially expressed sequences (`Phel_DEGlist.tab`)
- Sample transcriptome (`Phel_transcriptome.fasta`)
- Files created using Galaxy (`Galaxy*.tabular`)
     - explanation of file creation in `2016-10-26-DESeq2-Tutorial.R`
- Sample BLAST databse from `Phel_transcriptome.fasta`

[`CoGe Tutorial`](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/tutorials/COGE-tutorial)

> [`2016-11-10-COGE-Tutorial.ipynb`](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/tutorials/COGE-tutorial/2016-11-10-COGE-Tutorial.ipynb)
- Using CoGe to identify methylated sequences
- blastn with sequence to find matches
- tutorial screenshots found [here](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/tutorials/COGE-tutorial/CoGe-tutorial-images)

[`Bash Scripting Tutorial`](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/tutorials/bash-scripting-tutorial)

> [`2016-12-01-bash-scripting-tutorial.ipynb`](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/tutorials/bash-scripting-tutorial/2016-12-01-bash-scripting-tutorial.ipynb)
- Shows directory before running script
- Runs script
- Shows directory after running script

> [`directorybeforescript.png`](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/tutorials/bash-scripting-tutorial/directorybeforescript.png)
- Screenshot of directory before script

> [`directoryafterscript.png`](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/tutorials/bash-scripting-tutorial/directoryafterscript.png)
- Screenshot of directory after script

# `results` Subdirectory Structure
This subdirectory contains the final project results, split into the following categories:

[blastx](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/results/1-blastx)
> - [blastx-11-14-best-matches](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/results/1-blastx/blastx-11-14-best-matches)
    - Matched contigs in *O. lurida* transcriptome with Uniprot Database and gene ontology information

[Differentially expressed genes from DESeq2](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/results/2-DESeq2-differentially-expressed-genes)
> - [List of differentially expressed genes between control and ocean acidficiation conditions with a p-value ≤ 0.05](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/results/2-DESeq2-differentially-expressed-genes/alltreatments_DEG.tab)
- [DESeq2 plot representing differentially expressed genes](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/results/2-DESeq2-differentially-expressed-genes/alltreatments.png)

[Gene enrichment analyses from DAVID](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/results/3-DAVID-gene-enrichment)
> - [Differentially expressed genes from DESeq2 with associated sequences and Uniprot information](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/results/3-DAVID-gene-enrichment/alltreatments_DEG_Sequences_Uniprot_nohead.tab)
- [Uniprot Accession codes for Background Genes in DAVID](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/results/3-DAVID-gene-enrichment/converted_background_genes.txt)
- [Uniprot Accession codes for Gene List in DAVID](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/results/3-DAVID-gene-enrichment/converted_gene_list.txt)
- [Functional Annotation Chart from DAVID](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/results/3-DAVID-gene-enrichment/GO_DAVID_annotation_table.txt)
  - The chart lists annotation terms and associated genes
- [Functional Annotation Clustering from DAVID](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/results/3-DAVID-gene-enrichment/GO_DAVID_clustering.txt)
  - Similar annotations from the Functional Annotation Chart are grouped together for a more digestable report
- [INTERPRO and Gene Ontology term entries with p-values ≥ 0.05](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/results/3-DAVID-gene-enrichment/Significant_Results.xlsx)

[Gene ontology analysis in REVIGO](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/results/4-REVIGO-gene-ontology)
> - Split into three subgroups: [biological processes](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/results/4-REVIGO-gene-ontology/biological_processes), [cellular components](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/results/4-REVIGO-gene-ontology/cellular_components) and [molecular function](https://github.com/yaaminiv/yaaminiv-fish546-2016/tree/master/results/4-REVIGO-gene-ontology/molecular_function).
- Each subgroup has an associated scatterplot, tree map and table of GO terms
- These files are interpreted in [this notebook](https://github.com/yaaminiv/yaaminiv-fish546-2016/blob/master/notebooks/2016-12-12-oly-gonad-OA-part7-REVIGO.ipynb).

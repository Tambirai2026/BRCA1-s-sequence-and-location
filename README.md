What the Projects About

These two projects use R and Bioconductor to explore the BRCA1 and EGFR gene at both the DNA sequence and genomic-location levels. It demonstrates how to retrieve biological sequence data from NCBI, perform basic sequence analysis, represent genomic coordinates, and retrieve gene annotations using Bioconductor databases.

Overview

BRCA1 and EGFR Gene Sequence & Genomic Annotation Analysis

A beginner-level bioinformatics project focused on analyzing the BRCA1 (Breast Cancer 1) gene using R and Bioconductor. The project combines NCBI sequence retrieval, DNA sequence manipulation, pattern searching, genomic coordinate analysis, and gene annotation to demonstrate fundamental computational biology workflows.

Workflow

1. Retrieve BRCA1 and EGFR sequence

Used `rentrez::entrez_fetch()` to retrieve the BRCA1 sequence from NCBI.
Saved the sequence as `brca1.fasta`.

2. Analyze the DNA sequence

Determined sequence length using `width()`.
Extracted the first 30 bases using `subseq()`.
Counted occurrences of the `"ATG"` pattern using `countPattern()`.
Generated the reverse complement using `reverseComplement()`.

3. Represent genomic location

Created a `GRanges` object containing the BRCA1 chromosome, genomic coordinates, and strand.
Calculated the genomic interval width.

4. Retrieve gene annotation

Used `AnnotationDbi` and `org.Hs.eg.db` to identify the BRCA1 ENTREZ Gene ID and full gene name.

5. Interpret biological information

Summarized what the sequence characteristics and genomic location reveal about BRCA1 and EGFR.

Concepts & Skills Covered

Programming & R
R programming fundamentals
Functions and objects
Working with biological data in R
Installing and loading Bioconductor packages

Sequence Analysis

DNA sequence retrieval
FASTA files
Sequence length calculation
Subsequence extraction
Pattern searching
Reverse-complement analysis

Genomic Analysis

`GRanges` objects
 Chromosomal coordinates
 Genomic intervals
 Strand information
 Genomic feature width

Biological Databases & Annotation

NCBI Entrez
`rentrez`
 `AnnotationDbi`
 `org.Hs.eg.db`
 ENTREZ Gene identifiers
 Gene annotation

Bioinformatics Skills

NCBI data retrieval
Computational DNA analysis
Genome annotation
Reproducible analysis using R/Bioconductor
Biological interpretation of genomic data


`NCBI → Sequence Retrieval → Sequence Analysis → GRanges → Gene Annotation → Biological Interpretation`

**Key skills:** `R` · `Bioconductor` · `Biostrings` · `rentrez` · `GenomicRanges` · `AnnotationDbi` · `NCBI` · `DNA Sequence Analysis` · `Genomic Annotation`

This is a good project for your GitHub because it shows **more than just R syntax**—it demonstrates how you can use programming to answer actual biological questions, which is particularly relevant to your developing bioinformatics profile.

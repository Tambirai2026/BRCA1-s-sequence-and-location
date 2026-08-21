####################################
# INSTALLING BIOCONDUCTOR MANAGER
#####################################

BiocManager::install("Biostrings")

1 + 1

library(BiocManager)

###################################
# INSTALLING THE BIOINFORMATICS
##################################

BiocManager::install(c("Biostrings","GenomicRanges","AnnotationDbi","org.Hs.eg.db"))

BiocManager::install(
  c(
    "Biostrings",
    "GenomicRanges",
    "AnnotationDbi",
    "org.Hs.eg.db",
    "rentrez"
  ),
  ask = FALSE,
  update = FALSE
)
##############################
# RUNNING THE COMMANDS
#############################

library(Biostrings)

library(GenomicRanges)

library(AnnotationDbi)

library(org.Hs.eg.db)

library(rentrez)

######################################
# Q1.DOWNLOADING THE BRCA1 SEQUENCE 
######################################

brca1_sequence <- entrez_fetch(
  db = "nucleotide",
  id = "NM_007294",
  rettype = "fasta"
)

cat(brca1_sequence)

#########################################
# SAVING THE SEQUENCE AS A FASTA FILE
########################################

writeLines(brca1_sequence, "brca1.fasta")

getwd()

#########################################
# CONVERTING FASTA FILE TO DNA
#########################################

brca1 <- readDNAStringSet("brca1.fasta")

########################################
# COUNTING DNA BASES
########################################

width(brca1)

#######################################
# Q2. What are the first 30 bases 
#######################################

# Select the sequence first

brca1[[1]]

# Extracting the first 30 bases

first30 <- subseq(
  brca1[[1]],
  start = 1,
  end = 30
)

first30 <- subseq(
  brca1[[1]],
  start = 1,
  end = 30
)

cat(first30)

show(first30)

as.character(first30)

##################################
# Q3. Letter Pattern "ATG" 
##################################

# Select the first sequence

brca1[[1]]

# Counting the pattern

atg_count <- countPattern(
  "ATG",
  brca1[[1]]
)

atg_count <- countPattern(
  "ATG",
  brca1[[1]]
)

atg_count

###############################################
# Q4. Reverse Complement of the first 30 bases
###############################################

# Template
# "GCTGAGACTTCCTGGACGGGGGACAGGCTG"

# Complement template
# "CGACTCTGAAGGACCAGCCCCCTGTCCGAC"

reverse_first30 <- reverseComplement(first30)


#########################################
# Creating a GRange for object  BRCA1 
#########################################

# First load the package

library(GenomicRanges)

# Creating the GRanges object

brca1_range <- GRanges(
  seqnames = "chr17",
  ranges = IRanges(
    start = 43044295,
    end = 43125483
  ),
  strand = "-"
)

# Width of BRCA1 Range

width(brca1_range)

############################################
# Q5. Using AnnotationDbi and org.Hs.eg.db
############################################

# Loading the packages

library(AnnotationDbi)

library(org.Hs.eg.db)

gene_info <- AnnotationDbi::select(
  org.Hs.eg.db,
  keys = "BRCA1",
  columns = c("ENTREZID", "GENENAME"),
  keytype = "SYMBOL"
)

gene_info

##########################
# Q7. Summary about BRCA1
##########################

# The BRCA1 gene is located on chromosome number 17
# It is on the positions 43,044,295 and 43,125,483 on the negative
# It is located on the negative strand of the DNA
# The BRCA1 sequence can be downloaded from NCBI databases using R and Bioconductor

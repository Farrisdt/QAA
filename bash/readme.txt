Folder for all bash and python scripts used in project.

Python:
  bioinfo.py - Some commonly used python methods.

  Data_Exploration.py - Takes in kmer length(-l), input file(-f), output file(-o), and the file   type(-t, number between 1-4, Options: 1- Read 1, 2- Index 1, 3- Index 2, 4- Read 2). Returns histograms of q-score distribution. Requires bioinfo.

  parseSame.py - Prints to terminal number of mapped and unmapped alignments per bitwise flag in a sam file. File hard-coded in.

  qual_score_average.py - Takes in input file(-f) and sequence length(-l). Prints to terminal mean quality score of all sequences in file. Requires bioinfo.

  bashforpython.sh - Bash to run Data_Exploration.py in bgmp_py311 environment. Files are hard-coded in.

Pure bash:
*  For all bash scripts the files are hard-coded in. They will need to be intereacted with internally to be used on new data. *

  alignmentSTAR.sh - Script for STAR, runMode alignReads. Does not read in all files at once, I changed the files and reran for ease of use.

  kmerSTAR.sh - Script for STAR, runMode genomeGenerate. Does not read in all files at once, I changed the files and reran for ease of use.

  bashforFastQC.sh - Script for FastQC.
  
  bashforcutadapt.sh - Script for Cutadapt.
  
  bashfordistibution.sh - Script to produce .txt file of counts of the length of RNA/DNA sequences from zipped fastq file.
  
  bashforhtseq.sh - Script for htseq-count. Does stranded, reverse, and not stranded.
  
  bashfortrim.sh - Script for trimmomatic.

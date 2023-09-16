#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --time=0-24:00:00
conda activate QAA

#cutadapt -a AGATCGGAAGAGCACACGTCTGAACTCCAGTCA\
# -A AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT\
# /projects/bgmp/shared/2017_sequencing/demultiplexed/27_4C_mbnl_S19_L008_R1_001.fastq.gz\
# /projects/bgmp/shared/2017_sequencing/demultiplexed/27_4C_mbnl_S19_L008_R2_001.fastq.gz\
# -o cutaout_27_R1.fastq.gz\
# -p cutaout_27_R2.fastq.gz

/usr/bin/time -v cutadapt -a AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT\
 -A AGATCGGAAGAGCACACGTCTGAACTCCAGTCA\
  -o cutaout_32_R1.fastq.gz\
  -p cutaout_32_R2.fastq.gz\
  /projects/bgmp/shared/2017_sequencing/demultiplexed/32_4G_both_S23_L008_R1_001.fastq.gz\
  /projects/bgmp/shared/2017_sequencing/demultiplexed/32_4G_both_S23_L008_R2_001.fastq.gz

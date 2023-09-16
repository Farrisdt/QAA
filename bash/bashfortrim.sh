#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --time=0-24:00:00
#SBATCH --cpus-per-task=4
conda activate QAA

#27
/usr/bin/time -v\
 trimmomatic PE -threads 4\
 /projects/bgmp/ftedder/bioinfo/Bi623/PS/QAA/Cutadapt_Output/cutaout_27_R1.fastq.gz\
 /projects/bgmp/ftedder/bioinfo/Bi623/PS/QAA/Cutadapt_Output/cutaout_27_R2.fastq.gz\
 paired_27_R1.fq.gz\
 unpaired_27_R1.fq.gz\
 paired_27_R2.fq.gz\
 unpaired_27_R2.fq.gz\
 LEADING:3 TRAILING:3 SLIDINGWINDOW:5:15 MINLEN:35

#32
/usr/bin/time -v\
 trimmomatic PE -threads 4\
 /projects/bgmp/ftedder/bioinfo/Bi623/PS/QAA/Cutadapt_Output/cutaout_32_R1.fastq.gz\
 /projects/bgmp/ftedder/bioinfo/Bi623/PS/QAA/Cutadapt_Output/cutaout_32_R2.fastq.gz\
 paired_32_R1.fq.gz\
 unpaired_32_R1.fq.gz\
 paired_32_R2.fq.gz\
 unpaired_32_R2.fq.gz\
 LEADING:3 TRAILING:3 SLIDINGWINDOW:5:15 MINLEN:35

#LEADING: quality of 3
#TRAILING: quality of 3
#SLIDING WINDOW: window size of 5 and required quality of 15
#MINLENGTH: 35 bases

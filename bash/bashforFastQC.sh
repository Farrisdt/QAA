#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --time=0-24:00:00
conda activate QAA

#27#
#/usr/bin/time -v fastqc "/projects/bgmp/shared/2017_sequencing/demultiplexed/27_4C_mbnl_S19_L008_R1_001.fastq.gz" -o ./new
#/usr/bin/time -v fastqc "/projects/bgmp/shared/2017_sequencing/demultiplexed/27_4C_mbnl_S19_L008_R2_001.fastq.gz" -o ./new

#32#
#/usr/bin/time -v fastqc "/projects/bgmp/shared/2017_sequencing/demultiplexed/32_4G_both_S23_L008_R1_001.fastq.gz" -o ./new
#/usr/bin/time -v fastqc "/projects/bgmp/shared/2017_sequencing/demultiplexed/32_4G_both_S23_L008_R2_001.fastq.gz" -o ./new

#Trimmed output
#27
/usr/bin/time -v fastqc "/projects/bgmp/ftedder/bioinfo/Bi623/PS/QAA/Trim_output/paired_27_R1.fq.gz" -o ./Fastqc_Trimmed
/usr/bin/time -v fastqc "/projects/bgmp/ftedder/bioinfo/Bi623/PS/QAA/Trim_output/paired_27_R2.fq.gz" -o ./Fastqc_Trimmed

#32
/usr/bin/time -v fastqc "/projects/bgmp/ftedder/bioinfo/Bi623/PS/QAA/Trim_output/paired_32_R1.fq.gz" -o ./Fastqc_Trimmed
/usr/bin/time -v fastqc "/projects/bgmp/ftedder/bioinfo/Bi623/PS/QAA/Trim_output/paired_32_R2.fq.gz" -o ./Fastqc_Trimmed

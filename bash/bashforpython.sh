#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --time=0-24:00:00
conda activate bgmp_py311

#27#
/usr/bin/time -v ./Data_Exploration.py -f "/projects/bgmp/shared/2017_sequencing/demultiplexed/27_4C_mbnl_S19_L008_R1_001.fastq.gz" -o "QualityScores_27_R1" -t 1 -l 101
/usr/bin/time -v ./Data_Exploration.py -f "/projects/bgmp/shared/2017_sequencing/demultiplexed/27_4C_mbnl_S19_L008_R2_001.fastq.gz" -o "QualityScores_27_R2" -t 4 -l 101

#32#
/usr/bin/time -v ./Data_Exploration.py -f "/projects/bgmp/shared/2017_sequencing/demultiplexed/32_4G_both_S23_L008_R1_001.fastq.gz" -o "QualityScores_32_R1" -t 1 -l 101
/usr/bin/time -v ./Data_Exploration.py -f "/projects/bgmp/shared/2017_sequencing/demultiplexed/32_4G_both_S23_L008_R2_001.fastq.gz" -o "QualityScores_32_R2" -t 4 -l 101

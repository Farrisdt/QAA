#!/bin/bash
#SBATCH --account bgmp
#SBATCH --partition=compute
#SBATCH --cpus-per-task=8

conda activate QAA
#submit with sbatch scriptname

/usr/bin/time -v STAR \
    --runThreadN 8 \
    --runMode alignReads \
    --outFilterMultimapNmax 3 \
    --outSAMunmapped Within KeepPairs \
    --alignIntronMax 1000000 --alignMatesGapMax 1000000 \
    --readFilesCommand zcat \
    --genomeDir /projects/bgmp/ftedder/bioinfo/Bi623/PS/QAA/Mus_musculus.GRCm39_STAR\
    --readFilesIn /projects/bgmp/ftedder/bioinfo/Bi623/PS/QAA/Trim_output/paired_32_R1.fq.gz /projects/bgmp/ftedder/bioinfo/Bi623/PS/QAA/Trim_output/paired_32_R2.fq.gz

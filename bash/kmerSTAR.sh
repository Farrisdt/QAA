#!/bin/bash
#SBATCH --account bgmp
#SBATCH --partition=compute
#SBATCH --cpus-per-task=8
conda activate QAA

#submit with sbatch scriptname
/usr/bin/time -v STAR \
    --runMode genomeGenerate\
    --runThreadN 8\
    --genomeDir /projects/bgmp/ftedder/bioinfo/Bi623/PS/QAA/Mus_musculus.GRCm39_STAR\
    --genomeFastaFiles /projects/bgmp/ftedder/bioinfo/Bi623/PS/QAA/Mus_musculus.GRCm39.dna.primary_assembly.fa\
    --sjdbGTFfile /projects/bgmp/ftedder/bioinfo/Bi623/PS/QAA/Mus_musculus.GRCm39.110.gtf

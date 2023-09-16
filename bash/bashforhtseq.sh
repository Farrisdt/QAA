#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --time=0-24:00:00
conda activate QAA

#27#
/usr/bin/time -v htseq-count \
 /projects/bgmp/ftedder/bioinfo/Bi623/PS/QAA/Alignment_27/Aligned.out.sam\
 /projects/bgmp/ftedder/bioinfo/Bi623/PS/QAA/Mus_musculus.GRCm39.110.gtf > htseq_stranded_27.tsv

/usr/bin/time -v htseq-count --stranded=reverse\
 /projects/bgmp/ftedder/bioinfo/Bi623/PS/QAA/Alignment_27/Aligned.out.sam\
 /projects/bgmp/ftedder/bioinfo/Bi623/PS/QAA/Mus_musculus.GRCm39.110.gtf > htseq_reversed_27.tsv

/usr/bin/time -v htseq-count --stranded=no\
 /projects/bgmp/ftedder/bioinfo/Bi623/PS/QAA/Alignment_27/Aligned.out.sam\
 /projects/bgmp/ftedder/bioinfo/Bi623/PS/QAA/Mus_musculus.GRCm39.110.gtf > htseq_no_27.tsv
#32#
/usr/bin/time -v htseq-count \
 /projects/bgmp/ftedder/bioinfo/Bi623/PS/QAA/Alignment_32/Aligned.out.sam\
 /projects/bgmp/ftedder/bioinfo/Bi623/PS/QAA/Mus_musculus.GRCm39.110.gtf > htseq_stranded_32.tsv

/usr/bin/time -v htseq-count --stranded=reverse\
 /projects/bgmp/ftedder/bioinfo/Bi623/PS/QAA/Alignment_32/Aligned.out.sam\
 /projects/bgmp/ftedder/bioinfo/Bi623/PS/QAA/Mus_musculus.GRCm39.110.gtf > htseq_reversed_32.tsv

/usr/bin/time -v htseq-count --stranded=no\
 /projects/bgmp/ftedder/bioinfo/Bi623/PS/QAA/Alignment_32/Aligned.out.sam\
 /projects/bgmp/ftedder/bioinfo/Bi623/PS/QAA/Mus_musculus.GRCm39.110.gtf > htseq_no_32.tsv

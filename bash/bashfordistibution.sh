#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --time=0-24:00:00

/usr/bin/time -v zcat paired_27_R1.fq.gz | grep "@" -A 1 | grep -v "@\|-" | awk '{print length($0)}' | sort -n | uniq -c > distribution_27_R1_paired.txt
/usr/bin/time -v zcat paired_27_R2.fq.gz | grep "@" -A 1 | grep -v "@\|-" | awk '{print length($0)}' | sort -n | uniq -c > distribution_27_R2_paired.txt
/usr/bin/time -v zcat paired_32_R1.fq.gz | grep "@" -A 1 | grep -v "@\|-" | awk '{print length($0)}' | sort -n | uniq -c > distribution_32_R1_paired.txt
/usr/bin/time -v zcat paired_32_R2.fq.gz | grep "@" -A 1 | grep -v "@\|-" | awk '{print length($0)}' | sort -n | uniq -c > distribution_32_R2_paired.txt
/usr/bin/time -v zcat unpaired_27_R1.fq.gz | grep "@" -A 1 | grep -v "@\|-" | awk '{print length($0)}' | sort -n | uniq -c > distribution_27_R1_unpaired.txt
/usr/bin/time -v zcat unpaired_27_R2.fq.gz | grep "@" -A 1 | grep -v "@\|-" | awk '{print length($0)}' | sort -n | uniq -c > distribution_27_R2_unpaired.txt
/usr/bin/time -v zcat unpaired_32_R1.fq.gz | grep "@" -A 1 | grep -v "@\|-" | awk '{print length($0)}' | sort -n | uniq -c > distribution_32_R1_unpaired.txt
/usr/bin/time -v zcat unpaired_32_R2.fq.gz | grep "@" -A 1 | grep -v "@\|-" | awk '{print length($0)}' | sort -n | uniq -c > distribution_32_R2_unpaired.txt

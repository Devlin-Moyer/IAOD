#!/bin/bash

#!/bin/bash
#SBATCH --mail-type=ALL
#SBATCH --mail-user=moyerd2@ccf.org
#SBATCH --job-name=add_genome_2
#SBATCH -N1
#SBATCH --exclusive

module load blast/2.7.1

srun blastn -query seqs/add_new.fa -subject seqs/UMD3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/add_new_UMD3.1.tsv
srun blastn -query seqs/add_new.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/add_new_WBcel235.tsv
srun blastn -query seqs/add_new.fa -subject seqs/CanFam3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/add_new_CanFam3.1.tsv
srun blastn -query seqs/add_new.fa -subject seqs/KH.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/add_new_KH.tsv
srun blastn -query seqs/add_new.fa -subject seqs/GRCz11.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/add_new_GRCz11.tsv
srun blastn -query seqs/add_new.fa -subject seqs/BDGP6.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/add_new_BDGP6.tsv
srun blastn -query seqs/add_new.fa -subject seqs/Galgal5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/add_new_Galgal5.tsv
srun blastn -query seqs/add_new.fa -subject seqs/GRCh38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/add_new_GRCh38.tsv
srun blastn -query seqs/add_new.fa -subject seqs/Mmul_8.0.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/add_new_Mmul_8.0.1.tsv
srun blastn -query seqs/add_new.fa -subject seqs/monDom5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/add_new_monDom5.tsv
srun blastn -query seqs/add_new.fa -subject seqs/GRCm38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/add_new_GRCm38.tsv
srun blastn -query seqs/add_new.fa -subject seqs/Pan_tro_3.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/add_new_Pan_tro_3.0.tsv
srun blastn -query seqs/add_new.fa -subject seqs/Rnor_6.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/add_new_Rnor_6.0.tsv
srun blastn -query seqs/add_new.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/add_new_R64-1-1.tsv
srun blastn -query seqs/add_new.fa -subject seqs/FUGU5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/add_new_FUGU5.tsv
srun blastn -query seqs/add_new.fa -subject seqs/TETRAODON8.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/add_new_TETRAODON8.tsv
srun blastn -query seqs/add_new.fa -subject seqs/TAIR10.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/add_new_TAIR10.tsv
srun blastn -query seqs/add_new.fa -subject seqs/Gm02.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/add_new_Gm02.tsv
srun blastn -query seqs/add_new.fa -subject seqs/IRGSP-1.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/add_new_IRGSP-1.0.tsv
srun blastn -query seqs/add_new.fa -subject seqs/AGPv4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/add_new_AGPv4.tsv
srun blastn -query seqs/add_new.fa -subject seqs/AgamP4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/add_new_AgamP4.tsv
srun blastn -query seqs/add_new.fa -subject seqs/Amel_4.5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/add_new_Amel_4.5.tsv
srun blastn -query seqs/add_new.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/add_new_WBcel235.tsv
srun blastn -query seqs/add_new.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/add_new_R64-1-1.tsv
srun blastn -query seqs/add_new.fa -subject seqs/ASM294v2.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/add_new_ASM294v2.tsv

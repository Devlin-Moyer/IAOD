#!/bin/bash

#!/bin/bash
#SBATCH --mail-type=ALL
#SBATCH --mail-user=moyerd2@ccf.org
#SBATCH --job-name=create_db_3
#SBATCH -N1
#SBATCH --exclusive

module load blast/2.7.1

<<<<<<< HEAD
srun blastn -query seqs/UMD3.1.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_WBcel235.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/CanFam3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_CanFam3.1.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/KH.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_KH.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/GRCz11.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_GRCz11.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/BDGP6.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_BDGP6.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/Galgal5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_Galgal5.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/GRCh38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_GRCh38.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/Mmul_8.0.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_Mmul_8.0.1.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/monDom5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_monDom5.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/GRCm38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_GRCm38.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/Pan_tro_3.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_Pan_tro_3.0.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/Rnor_6.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_Rnor_6.0.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_R64-1-1.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/FUGU5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_FUGU5.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/TETRAODON8.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_TETRAODON8.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/TAIR10.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_TAIR10.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/Gm02.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_Gm02.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/IRGSP-1.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_IRGSP-1.0.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/AGPv4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_AGPv4.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/AgamP4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_AgamP4.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/Amel_4.5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_Amel_4.5.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_WBcel235.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_R64-1-1.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/ASM294v2.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_ASM294v2.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/UMD3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_UMD3.1.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/CanFam3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_CanFam3.1.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/KH.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_KH.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/GRCz11.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_GRCz11.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/BDGP6.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_BDGP6.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/Galgal5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_Galgal5.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/GRCh38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_GRCh38.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/Mmul_8.0.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_Mmul_8.0.1.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/monDom5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_monDom5.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/GRCm38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_GRCm38.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/Pan_tro_3.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_Pan_tro_3.0.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/Rnor_6.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_Rnor_6.0.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_R64-1-1.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/FUGU5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_FUGU5.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/TETRAODON8.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_TETRAODON8.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/TAIR10.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_TAIR10.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/Gm02.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_Gm02.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/IRGSP-1.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_IRGSP-1.0.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/AGPv4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_AGPv4.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/AgamP4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_AgamP4.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/Amel_4.5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_Amel_4.5.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_WBcel235.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_R64-1-1.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/ASM294v2.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_ASM294v2.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/UMD3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_UMD3.1.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_WBcel235.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/KH.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_KH.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/GRCz11.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_GRCz11.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/BDGP6.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_BDGP6.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/Galgal5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_Galgal5.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/GRCh38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_GRCh38.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/Mmul_8.0.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_Mmul_8.0.1.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/monDom5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_monDom5.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/GRCm38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_GRCm38.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/Pan_tro_3.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_Pan_tro_3.0.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/Rnor_6.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_Rnor_6.0.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_R64-1-1.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/FUGU5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_FUGU5.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/TETRAODON8.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_TETRAODON8.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/TAIR10.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_TAIR10.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/Gm02.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_Gm02.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/IRGSP-1.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_IRGSP-1.0.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/AGPv4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_AGPv4.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/AgamP4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_AgamP4.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/Amel_4.5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_Amel_4.5.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_WBcel235.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_R64-1-1.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/ASM294v2.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_ASM294v2.tsv
srun blastn -query seqs/KH.fa -subject seqs/UMD3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_UMD3.1.tsv
srun blastn -query seqs/KH.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_WBcel235.tsv
srun blastn -query seqs/KH.fa -subject seqs/CanFam3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_CanFam3.1.tsv
srun blastn -query seqs/KH.fa -subject seqs/GRCz11.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_GRCz11.tsv
srun blastn -query seqs/KH.fa -subject seqs/BDGP6.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_BDGP6.tsv
srun blastn -query seqs/KH.fa -subject seqs/Galgal5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_Galgal5.tsv
srun blastn -query seqs/KH.fa -subject seqs/GRCh38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_GRCh38.tsv
srun blastn -query seqs/KH.fa -subject seqs/Mmul_8.0.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_Mmul_8.0.1.tsv
srun blastn -query seqs/KH.fa -subject seqs/monDom5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_monDom5.tsv
srun blastn -query seqs/KH.fa -subject seqs/GRCm38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_GRCm38.tsv
srun blastn -query seqs/KH.fa -subject seqs/Pan_tro_3.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_Pan_tro_3.0.tsv
srun blastn -query seqs/KH.fa -subject seqs/Rnor_6.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_Rnor_6.0.tsv
srun blastn -query seqs/KH.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_R64-1-1.tsv
srun blastn -query seqs/KH.fa -subject seqs/FUGU5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_FUGU5.tsv
srun blastn -query seqs/KH.fa -subject seqs/TETRAODON8.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_TETRAODON8.tsv
srun blastn -query seqs/KH.fa -subject seqs/TAIR10.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_TAIR10.tsv
srun blastn -query seqs/KH.fa -subject seqs/Gm02.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_Gm02.tsv
srun blastn -query seqs/KH.fa -subject seqs/IRGSP-1.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_IRGSP-1.0.tsv
srun blastn -query seqs/KH.fa -subject seqs/AGPv4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_AGPv4.tsv
srun blastn -query seqs/KH.fa -subject seqs/AgamP4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_AgamP4.tsv
srun blastn -query seqs/KH.fa -subject seqs/Amel_4.5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_Amel_4.5.tsv
srun blastn -query seqs/KH.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_WBcel235.tsv
srun blastn -query seqs/KH.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_R64-1-1.tsv
srun blastn -query seqs/KH.fa -subject seqs/ASM294v2.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_ASM294v2.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/UMD3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_UMD3.1.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_WBcel235.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/CanFam3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_CanFam3.1.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/KH.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_KH.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/BDGP6.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_BDGP6.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/Galgal5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_Galgal5.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/GRCh38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_GRCh38.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/Mmul_8.0.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_Mmul_8.0.1.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/monDom5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_monDom5.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/GRCm38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_GRCm38.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/Pan_tro_3.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_Pan_tro_3.0.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/Rnor_6.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_Rnor_6.0.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_R64-1-1.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/FUGU5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_FUGU5.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/TETRAODON8.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_TETRAODON8.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/TAIR10.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_TAIR10.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/Gm02.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_Gm02.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/IRGSP-1.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_IRGSP-1.0.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/AGPv4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_AGPv4.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/AgamP4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_AgamP4.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/Amel_4.5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_Amel_4.5.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_WBcel235.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_R64-1-1.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/ASM294v2.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_ASM294v2.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/UMD3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_UMD3.1.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_WBcel235.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/CanFam3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_CanFam3.1.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/KH.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_KH.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/GRCz11.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_GRCz11.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/Galgal5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_Galgal5.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/GRCh38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_GRCh38.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/Mmul_8.0.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_Mmul_8.0.1.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/monDom5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_monDom5.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/GRCm38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_GRCm38.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/Pan_tro_3.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_Pan_tro_3.0.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/Rnor_6.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_Rnor_6.0.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_R64-1-1.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/FUGU5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_FUGU5.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/TETRAODON8.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_TETRAODON8.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/TAIR10.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_TAIR10.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/Gm02.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_Gm02.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/IRGSP-1.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_IRGSP-1.0.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/AGPv4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_AGPv4.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/AgamP4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_AgamP4.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/Amel_4.5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_Amel_4.5.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_WBcel235.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_R64-1-1.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/ASM294v2.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_ASM294v2.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/UMD3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_UMD3.1.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_WBcel235.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/CanFam3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_CanFam3.1.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/KH.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_KH.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/GRCz11.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_GRCz11.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/BDGP6.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_BDGP6.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/GRCh38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_GRCh38.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/Mmul_8.0.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_Mmul_8.0.1.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/monDom5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_monDom5.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/GRCm38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_GRCm38.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/Pan_tro_3.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_Pan_tro_3.0.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/Rnor_6.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_Rnor_6.0.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_R64-1-1.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/FUGU5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_FUGU5.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/TETRAODON8.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_TETRAODON8.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/TAIR10.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_TAIR10.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/Gm02.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_Gm02.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/IRGSP-1.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_IRGSP-1.0.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/AGPv4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_AGPv4.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/AgamP4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_AgamP4.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/Amel_4.5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_Amel_4.5.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_WBcel235.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_R64-1-1.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/ASM294v2.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_ASM294v2.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/UMD3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_UMD3.1.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_WBcel235.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/CanFam3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_CanFam3.1.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/KH.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_KH.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/GRCz11.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_GRCz11.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/BDGP6.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_BDGP6.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/Galgal5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_Galgal5.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/Mmul_8.0.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_Mmul_8.0.1.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/monDom5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_monDom5.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/GRCm38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_GRCm38.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/Pan_tro_3.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_Pan_tro_3.0.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/Rnor_6.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_Rnor_6.0.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_R64-1-1.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/FUGU5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_FUGU5.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/TETRAODON8.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_TETRAODON8.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/TAIR10.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_TAIR10.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/Gm02.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_Gm02.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/IRGSP-1.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_IRGSP-1.0.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/AGPv4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_AGPv4.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/AgamP4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_AgamP4.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/Amel_4.5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_Amel_4.5.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_WBcel235.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_R64-1-1.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/ASM294v2.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_ASM294v2.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/UMD3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_UMD3.1.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_WBcel235.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/CanFam3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_CanFam3.1.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/KH.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_KH.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/GRCz11.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_GRCz11.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/BDGP6.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_BDGP6.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/Galgal5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_Galgal5.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/GRCh38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_GRCh38.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/monDom5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_monDom5.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/GRCm38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_GRCm38.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/Pan_tro_3.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_Pan_tro_3.0.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/Rnor_6.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_Rnor_6.0.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_R64-1-1.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/FUGU5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_FUGU5.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/TETRAODON8.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_TETRAODON8.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/TAIR10.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_TAIR10.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/Gm02.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_Gm02.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/IRGSP-1.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_IRGSP-1.0.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/AGPv4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_AGPv4.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/AgamP4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_AgamP4.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/Amel_4.5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_Amel_4.5.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_WBcel235.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_R64-1-1.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/ASM294v2.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_ASM294v2.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/UMD3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_UMD3.1.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_WBcel235.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/CanFam3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_CanFam3.1.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/KH.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_KH.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/GRCz11.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_GRCz11.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/BDGP6.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_BDGP6.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/Galgal5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_Galgal5.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/GRCh38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_GRCh38.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/Mmul_8.0.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_Mmul_8.0.1.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/GRCm38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_GRCm38.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/Pan_tro_3.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_Pan_tro_3.0.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/Rnor_6.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_Rnor_6.0.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_R64-1-1.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/FUGU5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_FUGU5.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/TETRAODON8.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_TETRAODON8.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/TAIR10.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_TAIR10.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/Gm02.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_Gm02.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/IRGSP-1.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_IRGSP-1.0.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/AGPv4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_AGPv4.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/AgamP4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_AgamP4.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/Amel_4.5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_Amel_4.5.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_WBcel235.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_R64-1-1.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/ASM294v2.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_ASM294v2.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/UMD3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_UMD3.1.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_WBcel235.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/CanFam3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_CanFam3.1.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/KH.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_KH.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/GRCz11.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_GRCz11.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/BDGP6.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_BDGP6.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/Galgal5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_Galgal5.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/GRCh38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_GRCh38.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/Mmul_8.0.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_Mmul_8.0.1.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/monDom5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_monDom5.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/Pan_tro_3.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_Pan_tro_3.0.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/Rnor_6.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_Rnor_6.0.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_R64-1-1.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/FUGU5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_FUGU5.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/TETRAODON8.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_TETRAODON8.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/TAIR10.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_TAIR10.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/Gm02.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_Gm02.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/IRGSP-1.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_IRGSP-1.0.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/AGPv4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_AGPv4.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/AgamP4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_AgamP4.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/Amel_4.5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_Amel_4.5.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_WBcel235.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_R64-1-1.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/ASM294v2.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_ASM294v2.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/UMD3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_UMD3.1.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_WBcel235.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/CanFam3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_CanFam3.1.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/KH.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_KH.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/GRCz11.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_GRCz11.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/BDGP6.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_BDGP6.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/Galgal5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_Galgal5.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/GRCh38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_GRCh38.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/Mmul_8.0.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_Mmul_8.0.1.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/monDom5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_monDom5.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/GRCm38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_GRCm38.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/Rnor_6.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_Rnor_6.0.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_R64-1-1.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/FUGU5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_FUGU5.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/TETRAODON8.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_TETRAODON8.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/TAIR10.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_TAIR10.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/Gm02.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_Gm02.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/IRGSP-1.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_IRGSP-1.0.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/AGPv4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_AGPv4.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/AgamP4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_AgamP4.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/Amel_4.5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_Amel_4.5.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_WBcel235.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_R64-1-1.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/ASM294v2.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_ASM294v2.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/UMD3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_UMD3.1.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_WBcel235.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/CanFam3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_CanFam3.1.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/KH.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_KH.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/GRCz11.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_GRCz11.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/BDGP6.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_BDGP6.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/Galgal5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_Galgal5.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/GRCh38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_GRCh38.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/Mmul_8.0.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_Mmul_8.0.1.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/monDom5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_monDom5.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/GRCm38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_GRCm38.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/Pan_tro_3.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_Pan_tro_3.0.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_R64-1-1.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/FUGU5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_FUGU5.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/TETRAODON8.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_TETRAODON8.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/TAIR10.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_TAIR10.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/Gm02.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_Gm02.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/IRGSP-1.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_IRGSP-1.0.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/AGPv4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_AGPv4.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/AgamP4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_AgamP4.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/Amel_4.5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_Amel_4.5.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_WBcel235.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_R64-1-1.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/ASM294v2.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_ASM294v2.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/UMD3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_UMD3.1.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_WBcel235.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/CanFam3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_CanFam3.1.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/KH.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_KH.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/GRCz11.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_GRCz11.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/BDGP6.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_BDGP6.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/Galgal5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_Galgal5.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/GRCh38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_GRCh38.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/Mmul_8.0.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_Mmul_8.0.1.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/monDom5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_monDom5.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/GRCm38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_GRCm38.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/Pan_tro_3.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_Pan_tro_3.0.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/Rnor_6.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_Rnor_6.0.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/FUGU5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_FUGU5.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/TETRAODON8.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_TETRAODON8.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/TAIR10.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_TAIR10.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/Gm02.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_Gm02.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/IRGSP-1.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_IRGSP-1.0.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/AGPv4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_AGPv4.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/AgamP4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_AgamP4.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/Amel_4.5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_Amel_4.5.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_WBcel235.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_R64-1-1.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/ASM294v2.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_ASM294v2.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/UMD3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_UMD3.1.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_WBcel235.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/CanFam3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_CanFam3.1.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/KH.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_KH.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/GRCz11.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_GRCz11.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/BDGP6.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_BDGP6.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/Galgal5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_Galgal5.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/GRCh38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_GRCh38.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/Mmul_8.0.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_Mmul_8.0.1.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/monDom5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_monDom5.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/GRCm38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_GRCm38.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/Pan_tro_3.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_Pan_tro_3.0.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/Rnor_6.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_Rnor_6.0.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_R64-1-1.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/TETRAODON8.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_TETRAODON8.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/TAIR10.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_TAIR10.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/Gm02.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_Gm02.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/IRGSP-1.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_IRGSP-1.0.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/AGPv4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_AGPv4.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/AgamP4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_AgamP4.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/Amel_4.5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_Amel_4.5.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_WBcel235.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_R64-1-1.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/ASM294v2.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_ASM294v2.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/UMD3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_UMD3.1.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_WBcel235.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/CanFam3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_CanFam3.1.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/KH.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_KH.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/GRCz11.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_GRCz11.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/BDGP6.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_BDGP6.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/Galgal5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_Galgal5.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/GRCh38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_GRCh38.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/Mmul_8.0.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_Mmul_8.0.1.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/monDom5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_monDom5.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/GRCm38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_GRCm38.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/Pan_tro_3.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_Pan_tro_3.0.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/Rnor_6.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_Rnor_6.0.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_R64-1-1.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/FUGU5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_FUGU5.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/TAIR10.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_TAIR10.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/Gm02.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_Gm02.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/IRGSP-1.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_IRGSP-1.0.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/AGPv4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_AGPv4.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/AgamP4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_AgamP4.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/Amel_4.5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_Amel_4.5.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_WBcel235.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_R64-1-1.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/ASM294v2.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_ASM294v2.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/UMD3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_UMD3.1.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_WBcel235.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/CanFam3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_CanFam3.1.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/KH.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_KH.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/GRCz11.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_GRCz11.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/BDGP6.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_BDGP6.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/Galgal5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_Galgal5.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/GRCh38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_GRCh38.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/Mmul_8.0.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_Mmul_8.0.1.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/monDom5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_monDom5.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/GRCm38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_GRCm38.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/Pan_tro_3.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_Pan_tro_3.0.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/Rnor_6.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_Rnor_6.0.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_R64-1-1.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/FUGU5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_FUGU5.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/TETRAODON8.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_TETRAODON8.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/Gm02.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_Gm02.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/IRGSP-1.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_IRGSP-1.0.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/AGPv4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_AGPv4.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/AgamP4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_AgamP4.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/Amel_4.5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_Amel_4.5.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_WBcel235.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_R64-1-1.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/ASM294v2.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_ASM294v2.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/UMD3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_UMD3.1.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_WBcel235.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/CanFam3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_CanFam3.1.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/KH.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_KH.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/GRCz11.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_GRCz11.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/BDGP6.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_BDGP6.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/Galgal5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_Galgal5.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/GRCh38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_GRCh38.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/Mmul_8.0.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_Mmul_8.0.1.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/monDom5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_monDom5.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/GRCm38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_GRCm38.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/Pan_tro_3.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_Pan_tro_3.0.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/Rnor_6.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_Rnor_6.0.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_R64-1-1.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/FUGU5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_FUGU5.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/TETRAODON8.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_TETRAODON8.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/TAIR10.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_TAIR10.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/IRGSP-1.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_IRGSP-1.0.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/AGPv4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_AGPv4.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/AgamP4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_AgamP4.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/Amel_4.5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_Amel_4.5.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_WBcel235.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_R64-1-1.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/ASM294v2.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_ASM294v2.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/UMD3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_UMD3.1.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_WBcel235.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/CanFam3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_CanFam3.1.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/KH.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_KH.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/GRCz11.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_GRCz11.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/BDGP6.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_BDGP6.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/Galgal5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_Galgal5.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/GRCh38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_GRCh38.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/Mmul_8.0.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_Mmul_8.0.1.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/monDom5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_monDom5.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/GRCm38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_GRCm38.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/Pan_tro_3.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_Pan_tro_3.0.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/Rnor_6.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_Rnor_6.0.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_R64-1-1.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/FUGU5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_FUGU5.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/TETRAODON8.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_TETRAODON8.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/TAIR10.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_TAIR10.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/Gm02.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_Gm02.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/AGPv4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_AGPv4.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/AgamP4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_AgamP4.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/Amel_4.5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_Amel_4.5.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_WBcel235.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_R64-1-1.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/ASM294v2.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_ASM294v2.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/UMD3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_UMD3.1.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_WBcel235.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/CanFam3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_CanFam3.1.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/KH.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_KH.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/GRCz11.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_GRCz11.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/BDGP6.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_BDGP6.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/Galgal5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_Galgal5.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/GRCh38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_GRCh38.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/Mmul_8.0.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_Mmul_8.0.1.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/monDom5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_monDom5.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/GRCm38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_GRCm38.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/Pan_tro_3.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_Pan_tro_3.0.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/Rnor_6.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_Rnor_6.0.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_R64-1-1.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/FUGU5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_FUGU5.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/TETRAODON8.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_TETRAODON8.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/TAIR10.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_TAIR10.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/Gm02.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_Gm02.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/IRGSP-1.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_IRGSP-1.0.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/AgamP4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_AgamP4.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/Amel_4.5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_Amel_4.5.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_WBcel235.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_R64-1-1.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/ASM294v2.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_ASM294v2.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/UMD3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_UMD3.1.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_WBcel235.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/CanFam3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_CanFam3.1.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/KH.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_KH.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/GRCz11.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_GRCz11.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/BDGP6.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_BDGP6.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/Galgal5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_Galgal5.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/GRCh38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_GRCh38.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/Mmul_8.0.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_Mmul_8.0.1.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/monDom5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_monDom5.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/GRCm38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_GRCm38.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/Pan_tro_3.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_Pan_tro_3.0.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/Rnor_6.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_Rnor_6.0.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_R64-1-1.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/FUGU5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_FUGU5.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/TETRAODON8.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_TETRAODON8.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/TAIR10.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_TAIR10.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/Gm02.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_Gm02.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/IRGSP-1.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_IRGSP-1.0.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/AGPv4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_AGPv4.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/Amel_4.5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_Amel_4.5.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_WBcel235.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_R64-1-1.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/ASM294v2.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_ASM294v2.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/UMD3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_UMD3.1.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_WBcel235.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/CanFam3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_CanFam3.1.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/KH.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_KH.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/GRCz11.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_GRCz11.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/BDGP6.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_BDGP6.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/Galgal5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_Galgal5.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/GRCh38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_GRCh38.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/Mmul_8.0.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_Mmul_8.0.1.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/monDom5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_monDom5.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/GRCm38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_GRCm38.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/Pan_tro_3.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_Pan_tro_3.0.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/Rnor_6.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_Rnor_6.0.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_R64-1-1.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/FUGU5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_FUGU5.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/TETRAODON8.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_TETRAODON8.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/TAIR10.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_TAIR10.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/Gm02.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_Gm02.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/IRGSP-1.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_IRGSP-1.0.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/AGPv4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_AGPv4.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/AgamP4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_AgamP4.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_WBcel235.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_R64-1-1.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/ASM294v2.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_ASM294v2.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/UMD3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_UMD3.1.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_WBcel235.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/CanFam3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_CanFam3.1.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/KH.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_KH.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/GRCz11.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_GRCz11.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/BDGP6.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_BDGP6.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/Galgal5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_Galgal5.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/GRCh38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_GRCh38.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/Mmul_8.0.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_Mmul_8.0.1.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/monDom5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_monDom5.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/GRCm38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_GRCm38.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/Pan_tro_3.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_Pan_tro_3.0.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/Rnor_6.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_Rnor_6.0.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_R64-1-1.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/FUGU5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_FUGU5.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/TETRAODON8.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_TETRAODON8.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/TAIR10.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_TAIR10.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/Gm02.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_Gm02.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/IRGSP-1.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_IRGSP-1.0.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/AGPv4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_AGPv4.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/AgamP4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_AgamP4.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/Amel_4.5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_Amel_4.5.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_R64-1-1.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/ASM294v2.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_ASM294v2.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/UMD3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_UMD3.1.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_WBcel235.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/CanFam3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_CanFam3.1.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/KH.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_KH.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/GRCz11.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_GRCz11.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/BDGP6.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_BDGP6.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/Galgal5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_Galgal5.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/GRCh38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_GRCh38.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/Mmul_8.0.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_Mmul_8.0.1.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/monDom5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_monDom5.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/GRCm38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_GRCm38.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/Pan_tro_3.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_Pan_tro_3.0.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/Rnor_6.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_Rnor_6.0.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_R64-1-1.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/FUGU5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_FUGU5.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/TETRAODON8.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_TETRAODON8.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/TAIR10.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_TAIR10.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/Gm02.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_Gm02.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/IRGSP-1.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_IRGSP-1.0.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/AGPv4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_AGPv4.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/AgamP4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_AgamP4.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/Amel_4.5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_Amel_4.5.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_WBcel235.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/ASM294v2.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_ASM294v2.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/UMD3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_UMD3.1.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_WBcel235.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/CanFam3.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_CanFam3.1.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/KH.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_KH.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/GRCz11.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_GRCz11.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/BDGP6.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_BDGP6.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/Galgal5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_Galgal5.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/GRCh38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_GRCh38.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/Mmul_8.0.1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_Mmul_8.0.1.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/monDom5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_monDom5.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/GRCm38.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_GRCm38.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/Pan_tro_3.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_Pan_tro_3.0.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/Rnor_6.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_Rnor_6.0.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_R64-1-1.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/FUGU5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_FUGU5.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/TETRAODON8.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_TETRAODON8.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/TAIR10.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_TAIR10.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/Gm02.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_Gm02.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/IRGSP-1.0.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_IRGSP-1.0.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/AGPv4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_AGPv4.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/AgamP4.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_AgamP4.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/Amel_4.5.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_Amel_4.5.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/WBcel235.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_WBcel235.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/R64-1-1.fa -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_R64-1-1.tsv
=======
srun blastn -query seqs/UMD3.1.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_WBcel235.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/CanFam3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_CanFam3.1.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/KH.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_KH.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/GRCz11.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_GRCz11.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/BDGP6.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_BDGP6.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/Galgal5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_Galgal5.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/GRCh38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_GRCh38.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/Mmul_8.0.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_Mmul_8.0.1.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/monDom5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_monDom5.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/GRCm38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_GRCm38.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/Pan_tro_3.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_Pan_tro_3.0.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/Rnor_6.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_Rnor_6.0.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_R64-1-1.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/FUGU5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_FUGU5.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/TETRAODON8.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_TETRAODON8.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/TAIR10.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_TAIR10.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/Gm02.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_Gm02.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/IRGSP-1.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_IRGSP-1.0.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/AGPv4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_AGPv4.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/AgamP4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_AgamP4.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/Amel_4.5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_Amel_4.5.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_WBcel235.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_R64-1-1.tsv
srun blastn -query seqs/UMD3.1.fa -subject seqs/ASM294v2.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/UMD3.1_ASM294v2.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/UMD3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_UMD3.1.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/CanFam3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_CanFam3.1.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/KH.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_KH.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/GRCz11.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_GRCz11.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/BDGP6.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_BDGP6.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/Galgal5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_Galgal5.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/GRCh38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_GRCh38.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/Mmul_8.0.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_Mmul_8.0.1.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/monDom5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_monDom5.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/GRCm38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_GRCm38.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/Pan_tro_3.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_Pan_tro_3.0.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/Rnor_6.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_Rnor_6.0.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_R64-1-1.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/FUGU5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_FUGU5.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/TETRAODON8.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_TETRAODON8.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/TAIR10.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_TAIR10.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/Gm02.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_Gm02.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/IRGSP-1.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_IRGSP-1.0.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/AGPv4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_AGPv4.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/AgamP4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_AgamP4.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/Amel_4.5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_Amel_4.5.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_WBcel235.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_R64-1-1.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/ASM294v2.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_ASM294v2.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/UMD3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_UMD3.1.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_WBcel235.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/KH.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_KH.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/GRCz11.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_GRCz11.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/BDGP6.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_BDGP6.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/Galgal5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_Galgal5.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/GRCh38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_GRCh38.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/Mmul_8.0.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_Mmul_8.0.1.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/monDom5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_monDom5.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/GRCm38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_GRCm38.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/Pan_tro_3.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_Pan_tro_3.0.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/Rnor_6.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_Rnor_6.0.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_R64-1-1.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/FUGU5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_FUGU5.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/TETRAODON8.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_TETRAODON8.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/TAIR10.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_TAIR10.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/Gm02.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_Gm02.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/IRGSP-1.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_IRGSP-1.0.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/AGPv4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_AGPv4.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/AgamP4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_AgamP4.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/Amel_4.5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_Amel_4.5.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_WBcel235.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_R64-1-1.tsv
srun blastn -query seqs/CanFam3.1.fa -subject seqs/ASM294v2.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/CanFam3.1_ASM294v2.tsv
srun blastn -query seqs/KH.fa -subject seqs/UMD3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_UMD3.1.tsv
srun blastn -query seqs/KH.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_WBcel235.tsv
srun blastn -query seqs/KH.fa -subject seqs/CanFam3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_CanFam3.1.tsv
srun blastn -query seqs/KH.fa -subject seqs/GRCz11.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_GRCz11.tsv
srun blastn -query seqs/KH.fa -subject seqs/BDGP6.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_BDGP6.tsv
srun blastn -query seqs/KH.fa -subject seqs/Galgal5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_Galgal5.tsv
srun blastn -query seqs/KH.fa -subject seqs/GRCh38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_GRCh38.tsv
srun blastn -query seqs/KH.fa -subject seqs/Mmul_8.0.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_Mmul_8.0.1.tsv
srun blastn -query seqs/KH.fa -subject seqs/monDom5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_monDom5.tsv
srun blastn -query seqs/KH.fa -subject seqs/GRCm38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_GRCm38.tsv
srun blastn -query seqs/KH.fa -subject seqs/Pan_tro_3.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_Pan_tro_3.0.tsv
srun blastn -query seqs/KH.fa -subject seqs/Rnor_6.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_Rnor_6.0.tsv
srun blastn -query seqs/KH.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_R64-1-1.tsv
srun blastn -query seqs/KH.fa -subject seqs/FUGU5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_FUGU5.tsv
srun blastn -query seqs/KH.fa -subject seqs/TETRAODON8.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_TETRAODON8.tsv
srun blastn -query seqs/KH.fa -subject seqs/TAIR10.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_TAIR10.tsv
srun blastn -query seqs/KH.fa -subject seqs/Gm02.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_Gm02.tsv
srun blastn -query seqs/KH.fa -subject seqs/IRGSP-1.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_IRGSP-1.0.tsv
srun blastn -query seqs/KH.fa -subject seqs/AGPv4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_AGPv4.tsv
srun blastn -query seqs/KH.fa -subject seqs/AgamP4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_AgamP4.tsv
srun blastn -query seqs/KH.fa -subject seqs/Amel_4.5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_Amel_4.5.tsv
srun blastn -query seqs/KH.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_WBcel235.tsv
srun blastn -query seqs/KH.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_R64-1-1.tsv
srun blastn -query seqs/KH.fa -subject seqs/ASM294v2.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/KH_ASM294v2.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/UMD3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_UMD3.1.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_WBcel235.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/CanFam3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_CanFam3.1.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/KH.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_KH.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/BDGP6.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_BDGP6.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/Galgal5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_Galgal5.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/GRCh38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_GRCh38.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/Mmul_8.0.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_Mmul_8.0.1.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/monDom5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_monDom5.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/GRCm38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_GRCm38.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/Pan_tro_3.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_Pan_tro_3.0.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/Rnor_6.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_Rnor_6.0.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_R64-1-1.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/FUGU5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_FUGU5.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/TETRAODON8.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_TETRAODON8.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/TAIR10.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_TAIR10.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/Gm02.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_Gm02.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/IRGSP-1.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_IRGSP-1.0.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/AGPv4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_AGPv4.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/AgamP4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_AgamP4.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/Amel_4.5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_Amel_4.5.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_WBcel235.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_R64-1-1.tsv
srun blastn -query seqs/GRCz11.fa -subject seqs/ASM294v2.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCz11_ASM294v2.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/UMD3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_UMD3.1.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_WBcel235.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/CanFam3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_CanFam3.1.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/KH.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_KH.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/GRCz11.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_GRCz11.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/Galgal5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_Galgal5.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/GRCh38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_GRCh38.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/Mmul_8.0.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_Mmul_8.0.1.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/monDom5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_monDom5.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/GRCm38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_GRCm38.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/Pan_tro_3.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_Pan_tro_3.0.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/Rnor_6.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_Rnor_6.0.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_R64-1-1.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/FUGU5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_FUGU5.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/TETRAODON8.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_TETRAODON8.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/TAIR10.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_TAIR10.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/Gm02.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_Gm02.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/IRGSP-1.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_IRGSP-1.0.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/AGPv4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_AGPv4.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/AgamP4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_AgamP4.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/Amel_4.5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_Amel_4.5.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_WBcel235.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_R64-1-1.tsv
srun blastn -query seqs/BDGP6.fa -subject seqs/ASM294v2.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/BDGP6_ASM294v2.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/UMD3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_UMD3.1.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_WBcel235.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/CanFam3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_CanFam3.1.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/KH.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_KH.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/GRCz11.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_GRCz11.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/BDGP6.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_BDGP6.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/GRCh38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_GRCh38.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/Mmul_8.0.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_Mmul_8.0.1.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/monDom5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_monDom5.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/GRCm38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_GRCm38.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/Pan_tro_3.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_Pan_tro_3.0.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/Rnor_6.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_Rnor_6.0.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_R64-1-1.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/FUGU5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_FUGU5.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/TETRAODON8.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_TETRAODON8.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/TAIR10.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_TAIR10.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/Gm02.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_Gm02.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/IRGSP-1.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_IRGSP-1.0.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/AGPv4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_AGPv4.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/AgamP4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_AgamP4.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/Amel_4.5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_Amel_4.5.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_WBcel235.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_R64-1-1.tsv
srun blastn -query seqs/Galgal5.fa -subject seqs/ASM294v2.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Galgal5_ASM294v2.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/UMD3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_UMD3.1.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_WBcel235.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/CanFam3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_CanFam3.1.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/KH.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_KH.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/GRCz11.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_GRCz11.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/BDGP6.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_BDGP6.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/Galgal5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_Galgal5.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/Mmul_8.0.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_Mmul_8.0.1.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/monDom5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_monDom5.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/GRCm38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_GRCm38.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/Pan_tro_3.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_Pan_tro_3.0.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/Rnor_6.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_Rnor_6.0.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_R64-1-1.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/FUGU5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_FUGU5.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/TETRAODON8.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_TETRAODON8.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/TAIR10.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_TAIR10.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/Gm02.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_Gm02.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/IRGSP-1.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_IRGSP-1.0.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/AGPv4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_AGPv4.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/AgamP4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_AgamP4.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/Amel_4.5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_Amel_4.5.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_WBcel235.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_R64-1-1.tsv
srun blastn -query seqs/GRCh38.fa -subject seqs/ASM294v2.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCh38_ASM294v2.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/UMD3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_UMD3.1.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_WBcel235.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/CanFam3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_CanFam3.1.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/KH.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_KH.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/GRCz11.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_GRCz11.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/BDGP6.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_BDGP6.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/Galgal5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_Galgal5.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/GRCh38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_GRCh38.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/monDom5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_monDom5.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/GRCm38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_GRCm38.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/Pan_tro_3.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_Pan_tro_3.0.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/Rnor_6.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_Rnor_6.0.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_R64-1-1.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/FUGU5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_FUGU5.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/TETRAODON8.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_TETRAODON8.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/TAIR10.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_TAIR10.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/Gm02.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_Gm02.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/IRGSP-1.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_IRGSP-1.0.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/AGPv4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_AGPv4.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/AgamP4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_AgamP4.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/Amel_4.5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_Amel_4.5.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_WBcel235.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_R64-1-1.tsv
srun blastn -query seqs/Mmul_8.0.1.fa -subject seqs/ASM294v2.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Mmul_8.0.1_ASM294v2.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/UMD3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_UMD3.1.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_WBcel235.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/CanFam3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_CanFam3.1.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/KH.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_KH.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/GRCz11.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_GRCz11.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/BDGP6.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_BDGP6.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/Galgal5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_Galgal5.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/GRCh38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_GRCh38.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/Mmul_8.0.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_Mmul_8.0.1.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/GRCm38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_GRCm38.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/Pan_tro_3.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_Pan_tro_3.0.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/Rnor_6.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_Rnor_6.0.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_R64-1-1.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/FUGU5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_FUGU5.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/TETRAODON8.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_TETRAODON8.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/TAIR10.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_TAIR10.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/Gm02.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_Gm02.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/IRGSP-1.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_IRGSP-1.0.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/AGPv4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_AGPv4.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/AgamP4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_AgamP4.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/Amel_4.5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_Amel_4.5.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_WBcel235.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_R64-1-1.tsv
srun blastn -query seqs/monDom5.fa -subject seqs/ASM294v2.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/monDom5_ASM294v2.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/UMD3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_UMD3.1.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_WBcel235.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/CanFam3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_CanFam3.1.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/KH.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_KH.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/GRCz11.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_GRCz11.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/BDGP6.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_BDGP6.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/Galgal5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_Galgal5.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/GRCh38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_GRCh38.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/Mmul_8.0.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_Mmul_8.0.1.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/monDom5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_monDom5.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/Pan_tro_3.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_Pan_tro_3.0.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/Rnor_6.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_Rnor_6.0.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_R64-1-1.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/FUGU5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_FUGU5.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/TETRAODON8.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_TETRAODON8.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/TAIR10.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_TAIR10.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/Gm02.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_Gm02.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/IRGSP-1.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_IRGSP-1.0.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/AGPv4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_AGPv4.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/AgamP4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_AgamP4.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/Amel_4.5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_Amel_4.5.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_WBcel235.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_R64-1-1.tsv
srun blastn -query seqs/GRCm38.fa -subject seqs/ASM294v2.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/GRCm38_ASM294v2.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/UMD3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_UMD3.1.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_WBcel235.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/CanFam3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_CanFam3.1.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/KH.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_KH.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/GRCz11.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_GRCz11.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/BDGP6.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_BDGP6.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/Galgal5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_Galgal5.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/GRCh38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_GRCh38.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/Mmul_8.0.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_Mmul_8.0.1.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/monDom5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_monDom5.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/GRCm38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_GRCm38.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/Rnor_6.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_Rnor_6.0.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_R64-1-1.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/FUGU5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_FUGU5.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/TETRAODON8.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_TETRAODON8.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/TAIR10.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_TAIR10.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/Gm02.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_Gm02.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/IRGSP-1.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_IRGSP-1.0.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/AGPv4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_AGPv4.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/AgamP4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_AgamP4.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/Amel_4.5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_Amel_4.5.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_WBcel235.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_R64-1-1.tsv
srun blastn -query seqs/Pan_tro_3.0.fa -subject seqs/ASM294v2.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Pan_tro_3.0_ASM294v2.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/UMD3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_UMD3.1.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_WBcel235.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/CanFam3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_CanFam3.1.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/KH.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_KH.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/GRCz11.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_GRCz11.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/BDGP6.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_BDGP6.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/Galgal5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_Galgal5.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/GRCh38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_GRCh38.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/Mmul_8.0.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_Mmul_8.0.1.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/monDom5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_monDom5.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/GRCm38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_GRCm38.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/Pan_tro_3.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_Pan_tro_3.0.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_R64-1-1.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/FUGU5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_FUGU5.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/TETRAODON8.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_TETRAODON8.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/TAIR10.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_TAIR10.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/Gm02.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_Gm02.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/IRGSP-1.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_IRGSP-1.0.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/AGPv4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_AGPv4.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/AgamP4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_AgamP4.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/Amel_4.5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_Amel_4.5.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_WBcel235.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_R64-1-1.tsv
srun blastn -query seqs/Rnor_6.0.fa -subject seqs/ASM294v2.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Rnor_6.0_ASM294v2.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/UMD3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_UMD3.1.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_WBcel235.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/CanFam3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_CanFam3.1.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/KH.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_KH.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/GRCz11.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_GRCz11.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/BDGP6.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_BDGP6.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/Galgal5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_Galgal5.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/GRCh38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_GRCh38.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/Mmul_8.0.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_Mmul_8.0.1.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/monDom5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_monDom5.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/GRCm38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_GRCm38.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/Pan_tro_3.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_Pan_tro_3.0.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/Rnor_6.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_Rnor_6.0.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/FUGU5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_FUGU5.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/TETRAODON8.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_TETRAODON8.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/TAIR10.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_TAIR10.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/Gm02.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_Gm02.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/IRGSP-1.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_IRGSP-1.0.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/AGPv4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_AGPv4.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/AgamP4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_AgamP4.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/Amel_4.5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_Amel_4.5.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_WBcel235.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_R64-1-1.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/ASM294v2.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_ASM294v2.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/UMD3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_UMD3.1.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_WBcel235.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/CanFam3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_CanFam3.1.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/KH.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_KH.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/GRCz11.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_GRCz11.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/BDGP6.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_BDGP6.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/Galgal5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_Galgal5.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/GRCh38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_GRCh38.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/Mmul_8.0.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_Mmul_8.0.1.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/monDom5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_monDom5.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/GRCm38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_GRCm38.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/Pan_tro_3.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_Pan_tro_3.0.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/Rnor_6.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_Rnor_6.0.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_R64-1-1.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/TETRAODON8.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_TETRAODON8.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/TAIR10.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_TAIR10.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/Gm02.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_Gm02.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/IRGSP-1.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_IRGSP-1.0.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/AGPv4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_AGPv4.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/AgamP4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_AgamP4.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/Amel_4.5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_Amel_4.5.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_WBcel235.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_R64-1-1.tsv
srun blastn -query seqs/FUGU5.fa -subject seqs/ASM294v2.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/FUGU5_ASM294v2.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/UMD3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_UMD3.1.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_WBcel235.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/CanFam3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_CanFam3.1.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/KH.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_KH.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/GRCz11.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_GRCz11.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/BDGP6.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_BDGP6.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/Galgal5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_Galgal5.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/GRCh38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_GRCh38.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/Mmul_8.0.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_Mmul_8.0.1.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/monDom5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_monDom5.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/GRCm38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_GRCm38.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/Pan_tro_3.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_Pan_tro_3.0.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/Rnor_6.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_Rnor_6.0.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_R64-1-1.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/FUGU5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_FUGU5.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/TAIR10.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_TAIR10.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/Gm02.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_Gm02.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/IRGSP-1.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_IRGSP-1.0.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/AGPv4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_AGPv4.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/AgamP4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_AgamP4.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/Amel_4.5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_Amel_4.5.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_WBcel235.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_R64-1-1.tsv
srun blastn -query seqs/TETRAODON8.fa -subject seqs/ASM294v2.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TETRAODON8_ASM294v2.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/UMD3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_UMD3.1.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_WBcel235.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/CanFam3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_CanFam3.1.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/KH.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_KH.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/GRCz11.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_GRCz11.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/BDGP6.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_BDGP6.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/Galgal5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_Galgal5.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/GRCh38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_GRCh38.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/Mmul_8.0.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_Mmul_8.0.1.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/monDom5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_monDom5.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/GRCm38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_GRCm38.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/Pan_tro_3.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_Pan_tro_3.0.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/Rnor_6.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_Rnor_6.0.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_R64-1-1.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/FUGU5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_FUGU5.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/TETRAODON8.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_TETRAODON8.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/Gm02.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_Gm02.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/IRGSP-1.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_IRGSP-1.0.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/AGPv4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_AGPv4.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/AgamP4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_AgamP4.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/Amel_4.5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_Amel_4.5.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_WBcel235.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_R64-1-1.tsv
srun blastn -query seqs/TAIR10.fa -subject seqs/ASM294v2.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/TAIR10_ASM294v2.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/UMD3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_UMD3.1.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_WBcel235.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/CanFam3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_CanFam3.1.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/KH.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_KH.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/GRCz11.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_GRCz11.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/BDGP6.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_BDGP6.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/Galgal5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_Galgal5.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/GRCh38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_GRCh38.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/Mmul_8.0.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_Mmul_8.0.1.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/monDom5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_monDom5.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/GRCm38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_GRCm38.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/Pan_tro_3.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_Pan_tro_3.0.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/Rnor_6.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_Rnor_6.0.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_R64-1-1.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/FUGU5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_FUGU5.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/TETRAODON8.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_TETRAODON8.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/TAIR10.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_TAIR10.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/IRGSP-1.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_IRGSP-1.0.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/AGPv4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_AGPv4.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/AgamP4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_AgamP4.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/Amel_4.5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_Amel_4.5.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_WBcel235.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_R64-1-1.tsv
srun blastn -query seqs/Gm02.fa -subject seqs/ASM294v2.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Gm02_ASM294v2.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/UMD3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_UMD3.1.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_WBcel235.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/CanFam3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_CanFam3.1.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/KH.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_KH.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/GRCz11.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_GRCz11.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/BDGP6.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_BDGP6.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/Galgal5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_Galgal5.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/GRCh38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_GRCh38.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/Mmul_8.0.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_Mmul_8.0.1.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/monDom5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_monDom5.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/GRCm38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_GRCm38.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/Pan_tro_3.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_Pan_tro_3.0.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/Rnor_6.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_Rnor_6.0.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_R64-1-1.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/FUGU5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_FUGU5.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/TETRAODON8.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_TETRAODON8.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/TAIR10.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_TAIR10.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/Gm02.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_Gm02.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/AGPv4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_AGPv4.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/AgamP4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_AgamP4.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/Amel_4.5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_Amel_4.5.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_WBcel235.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_R64-1-1.tsv
srun blastn -query seqs/IRGSP-1.0.fa -subject seqs/ASM294v2.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/IRGSP-1.0_ASM294v2.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/UMD3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_UMD3.1.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_WBcel235.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/CanFam3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_CanFam3.1.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/KH.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_KH.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/GRCz11.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_GRCz11.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/BDGP6.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_BDGP6.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/Galgal5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_Galgal5.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/GRCh38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_GRCh38.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/Mmul_8.0.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_Mmul_8.0.1.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/monDom5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_monDom5.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/GRCm38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_GRCm38.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/Pan_tro_3.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_Pan_tro_3.0.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/Rnor_6.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_Rnor_6.0.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_R64-1-1.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/FUGU5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_FUGU5.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/TETRAODON8.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_TETRAODON8.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/TAIR10.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_TAIR10.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/Gm02.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_Gm02.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/IRGSP-1.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_IRGSP-1.0.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/AgamP4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_AgamP4.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/Amel_4.5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_Amel_4.5.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_WBcel235.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_R64-1-1.tsv
srun blastn -query seqs/AGPv4.fa -subject seqs/ASM294v2.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AGPv4_ASM294v2.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/UMD3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_UMD3.1.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_WBcel235.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/CanFam3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_CanFam3.1.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/KH.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_KH.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/GRCz11.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_GRCz11.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/BDGP6.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_BDGP6.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/Galgal5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_Galgal5.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/GRCh38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_GRCh38.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/Mmul_8.0.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_Mmul_8.0.1.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/monDom5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_monDom5.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/GRCm38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_GRCm38.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/Pan_tro_3.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_Pan_tro_3.0.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/Rnor_6.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_Rnor_6.0.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_R64-1-1.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/FUGU5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_FUGU5.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/TETRAODON8.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_TETRAODON8.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/TAIR10.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_TAIR10.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/Gm02.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_Gm02.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/IRGSP-1.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_IRGSP-1.0.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/AGPv4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_AGPv4.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/Amel_4.5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_Amel_4.5.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_WBcel235.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_R64-1-1.tsv
srun blastn -query seqs/AgamP4.fa -subject seqs/ASM294v2.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/AgamP4_ASM294v2.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/UMD3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_UMD3.1.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_WBcel235.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/CanFam3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_CanFam3.1.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/KH.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_KH.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/GRCz11.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_GRCz11.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/BDGP6.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_BDGP6.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/Galgal5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_Galgal5.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/GRCh38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_GRCh38.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/Mmul_8.0.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_Mmul_8.0.1.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/monDom5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_monDom5.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/GRCm38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_GRCm38.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/Pan_tro_3.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_Pan_tro_3.0.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/Rnor_6.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_Rnor_6.0.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_R64-1-1.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/FUGU5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_FUGU5.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/TETRAODON8.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_TETRAODON8.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/TAIR10.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_TAIR10.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/Gm02.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_Gm02.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/IRGSP-1.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_IRGSP-1.0.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/AGPv4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_AGPv4.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/AgamP4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_AgamP4.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_WBcel235.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_R64-1-1.tsv
srun blastn -query seqs/Amel_4.5.fa -subject seqs/ASM294v2.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/Amel_4.5_ASM294v2.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/UMD3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_UMD3.1.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_WBcel235.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/CanFam3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_CanFam3.1.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/KH.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_KH.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/GRCz11.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_GRCz11.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/BDGP6.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_BDGP6.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/Galgal5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_Galgal5.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/GRCh38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_GRCh38.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/Mmul_8.0.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_Mmul_8.0.1.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/monDom5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_monDom5.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/GRCm38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_GRCm38.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/Pan_tro_3.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_Pan_tro_3.0.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/Rnor_6.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_Rnor_6.0.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_R64-1-1.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/FUGU5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_FUGU5.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/TETRAODON8.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_TETRAODON8.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/TAIR10.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_TAIR10.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/Gm02.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_Gm02.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/IRGSP-1.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_IRGSP-1.0.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/AGPv4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_AGPv4.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/AgamP4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_AgamP4.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/Amel_4.5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_Amel_4.5.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_R64-1-1.tsv
srun blastn -query seqs/WBcel235.fa -subject seqs/ASM294v2.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/WBcel235_ASM294v2.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/UMD3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_UMD3.1.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_WBcel235.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/CanFam3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_CanFam3.1.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/KH.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_KH.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/GRCz11.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_GRCz11.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/BDGP6.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_BDGP6.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/Galgal5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_Galgal5.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/GRCh38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_GRCh38.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/Mmul_8.0.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_Mmul_8.0.1.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/monDom5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_monDom5.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/GRCm38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_GRCm38.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/Pan_tro_3.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_Pan_tro_3.0.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/Rnor_6.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_Rnor_6.0.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_R64-1-1.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/FUGU5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_FUGU5.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/TETRAODON8.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_TETRAODON8.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/TAIR10.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_TAIR10.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/Gm02.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_Gm02.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/IRGSP-1.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_IRGSP-1.0.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/AGPv4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_AGPv4.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/AgamP4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_AgamP4.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/Amel_4.5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_Amel_4.5.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_WBcel235.tsv
srun blastn -query seqs/R64-1-1.fa -subject seqs/ASM294v2.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/R64-1-1_ASM294v2.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/UMD3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_UMD3.1.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_WBcel235.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/CanFam3.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_CanFam3.1.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/KH.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_KH.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/GRCz11.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_GRCz11.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/BDGP6.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_BDGP6.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/Galgal5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_Galgal5.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/GRCh38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_GRCh38.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/Mmul_8.0.1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_Mmul_8.0.1.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/monDom5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_monDom5.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/GRCm38.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_GRCm38.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/Pan_tro_3.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_Pan_tro_3.0.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/Rnor_6.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_Rnor_6.0.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_R64-1-1.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/FUGU5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_FUGU5.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/TETRAODON8.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_TETRAODON8.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/TAIR10.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_TAIR10.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/Gm02.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_Gm02.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/IRGSP-1.0.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_IRGSP-1.0.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/AGPv4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_AGPv4.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/AgamP4.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_AgamP4.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/Amel_4.5.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_Amel_4.5.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/WBcel235.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_WBcel235.tsv
srun blastn -query seqs/ASM294v2.fa -subject seqs/R64-1-1.fa -num_threads 20 -outfmt 6 | awk '$11 < 1e-10 {print $1"\t"$2}' > ortholog_lists/ASM294v2_R64-1-1.tsv
>>>>>>> 59179440ead6c3e9d32b5797311ca76b48343ddf

#!/bin/bash

#!/bin/bash
#SBATCH --mail-type=All
#SBATCH --mail-user=moyerd2@ccf.org
#SBATCH --job-name=create_db_2
#SBATCH -n1

module load python/3.6.2

srun python3.6 isolate_seqs.py AgamP4 
srun python3.6 isolate_seqs.py Amel_4.5 
srun python3.6 isolate_seqs.py TAIR10 
srun python3.6 isolate_seqs.py UMD3.1 
srun python3.6 isolate_seqs.py WBcel235 
srun python3.6 isolate_seqs.py CanFam3.1 
srun python3.6 isolate_seqs.py KH 
srun python3.6 isolate_seqs.py GRCz11 
srun python3.6 isolate_seqs.py BDGP6 
srun python3.6 isolate_seqs.py Galgal5 
srun python3.6 isolate_seqs.py Gm02 
srun python3.6 isolate_seqs.py GRCh38 
srun python3.6 isolate_seqs.py Mmul_8.0.1
srun python3.6 isolate_seqs.py monDom5 
srun python3.6 isolate_seqs.py GRCm38 
srun python3.6 isolate_seqs.py ASM20922v1 
srun python3.6 isolate_seqs.py IRGSP-1.0 
srun python3.6 isolate_seqs.py Pan_tro_3.0 
srun python3.6 isolate_seqs.py Rnor_6.0 
srun python3.6 isolate_seqs.py R64-1-1 
srun python3.6 isolate_seqs.py ASM294v2 
srun python3.6 isolate_seqs.py FUGU4 
srun python3.6 isolate_seqs.py TETRAODON8 
srun python3.6 isolate_seqs.py AGPv4 
srun python3.6 de_novo_ortholog_combinations.py 

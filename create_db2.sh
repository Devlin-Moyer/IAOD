#!/bin/bash

#!/bin/bash
#SBATCH --mail-type=All
#SBATCH --mail-user=moyerd2@ccf.org
#SBATCH --job-name=create_db_2
#SBATCH -n1

module load python/3.6.2

srun python3.6 isolate_seqs.py recreate 
srun python3.6 ortholog_combinations.py recreate

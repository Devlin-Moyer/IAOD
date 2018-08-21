#!/bin/bash

#!/bin/bash
#SBATCH --mail-type=All
#SBATCH --mail-user=moyerd2@ccf.org
#SBATCH --job-name=add_genome3
#SBATCH -n1


module load python/3.6.2
module load R/3.5.0

srun Rscript ortholog_clusters.R
srun python3.6 ortholog_sql.py
srun python3.6 reformatting.py JGI_4.2 Xenopus_tropicalis Frog

#!/bin/bash

#!/bin/bash
#SBATCH --mail-type=All
#SBATCH --mail-user=moyerd2@ccf.org
#SBATCH --job-name=create_db_4
#SBATCH -n1

module load python/3.6.2
module load R/3.5.0

srun Rscript ortholog_clusters.R
# for mysterious reasons, some "clusters" have only one intron in them
srun awk 'NF > 1 {print}' extra_clusters.txt > clusters.txt
srun rm extra_clusters.txt

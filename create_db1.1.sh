#!/bin/bash

#!/bin/bash
#SBATCH --mail-type=All
#SBATCH --mail-user=moyerd2@ccf.org
#SBATCH --job-name=create1.1
#SBATCH -n1

module load python/3.6.2
module load R/3.5.0

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Anopheles_gambiae/Ensembl/AgamP4/Anopheles_gambiae.AgamP4.dna.toplevel.fa /mnt/isilon/data/iGenomes/Anopheles_gambiae/Ensembl/AgamP4/Anopheles_gambiae.AgamP4.39.gtf AgamP4
srun Rscript get_gene_symbols.R metazoa AgamP4 Anopheles_gambiae

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Apis_mellifera/Ensembl/Amel_4.5/Apis_mellifera.Amel_4.5.dna.toplevel.fa /mnt/isilon/data/iGenomes/Apis_mellifera/Ensembl/Amel_4.5/Apis_mellifera.Amel_4.5.39.gtf Amel_4.5
srun Rscript get_gene_symbols.R metazoa Amel_4.5 Apis_mellifera

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Arabidopsis_thaliana/Ensembl/TAIR10/Arabidopsis_thaliana.TAIR10.dna.toplevel.fa /mnt/isilon/data/iGenomes/Arabidopsis_thaliana/Ensembl/TAIR10/Arabidopsis_thaliana.TAIR10.39.gtf TAIR10
srun Rscript get_gene_symbols.R plants TAIR10 Arabidopsis_thaliana

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Danio_rerio/Ensembl/GRCz11/Danio_rerio.GRCz11.dna.toplevel.fa /mnt/isilon/data/iGenomes/Danio_rerio/Ensembl/GRCz11/Danio_rerio.GRCz11.92.gtf GRCz11
srun Rscript get_gene_symbols.R default GRCz11 Danio_rerio

#!/bin/bash

#!/bin/bash
#SBATCH --mail-type=All
#SBATCH --mail-user=moyerd2@ccf.org
#SBATCH --job-name=create_1.3
#SBATCH -n1

module load python/3.6.2
module load R/3.5.0

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Homo_sapiens/Ensembl/GRCh37/Sequence/WholeGenomeFasta/genome.fa /mnt/isilon/data/iGenomes/Homo_sapiens/Ensembl/GRCh37/Annotation/Genes/genes.gtf GRCh37
srun Rscript get_gene_symbols.R GRCh37 GRCh37 Homo_sapiens # no that's not a typo; there's a division of Ensembl called GRCh37

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Macaca_mulatta/Ensembl/Mmul_8.0.1/Macaca_mulatta.Mmul_8.0.1.dna.toplevel.fa /mnt/isilon/data/iGenomes/Macaca_mulatta/Ensembl/Mmul_8.0.1/Macaca_mulatta.Mmul_8.0.1.92.gtf Mmul_8.0.1
srun Rscript get_gene_symbols.R default Mmul_8.0.1 Macaca_mulatta

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Monodelphis_domestica/Ensembl/monDom5/Monodelphis_domestica.monDom5.dna.toplevel.fa /mnt/isilon/data/iGenomes/Monodelphis_domestica/Ensembl/monDom5/Monodelphis_domestica.monDom5.92.gtf monDom5
srun Rscript get_gene_symbols.R default monDom5 Monodelphis_domestica

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Mus_musculus/Ensembl/GRCm38/Mus_musculus.GRCm38.dna.toplevel.fa /mnt/isilon/data/iGenomes/Mus_musculus/Ensembl/GRCm38/Mus_musculus.GRCm38.92.gtf GRCm38
srun Rscript get_gene_symbols.R default GRCm38 Mus_musculus

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Nematostella_vectensis/Ensembl/ASM20922v1/Nematostella_vectensis.ASM20922v1.dna.toplevel.fa /mnt/isilon/data/iGenomes/Nematostella_vectensis/Ensembl/ASM20922v1/Nematostella_vectensis.ASM20922v1.40.gtf ASM20922v1
srun Rscript get_gene_symbols.R metazoa ASM20922v1 Nematostella_vectensis


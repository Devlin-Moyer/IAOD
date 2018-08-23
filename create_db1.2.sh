#!/bin/bash

#!/bin/bash
#SBATCH --mail-type=All
#SBATCH --mail-user=moyerd2@ccf.org
#SBATCH --job-name=create_1.2
#SBATCH -n1

module load python/3.6.2
module load R/3.5.0

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Bos_taurus/Ensembl/UMD3.1/Sequence/WholeGenomeFasta/genome.fa /mnt/isilon/data/iGenomes/Bos_taurus/Ensembl/UMD3.1/Annotation/Genes/genes.gtf UMD3.1
srun Rscript get_gene_symbols.R default UMD3.1 Bos_taurus

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Caenorhabditis_elegans/Ensembl/WBcel235/Caenorhabditis_elegans.WBcel235.dna.toplevel.fa /mnt/isilon/data/iGenomes/Caenorhabditis_elegans/Ensembl/WBcel235/Caenorhabditis_elegans.WBcel235.92.gtf WBcel235
srun Rscript get_gene_symbols.R default WBcel235 Caenorhabditis_elegans

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Canis_familiaris/Ensembl/CanFam3.1/Sequence/WholeGenomeFasta/genome.fa /mnt/isilon/data/iGenomes/Canis_familiaris/Ensembl/CanFam3.1/Annotation/Genes/genes.gtf CanFam3.1
srun Rscript get_gene_symbols.R default CanFam3.1 Canis_familiaris

srun python3.6 intron_IC_devlin.py -nc /mnt/isilon/data/iGenomes/Ciona_intestinalis/Ensembl/KH/Ciona_intestinalis.KH.dna.toplevel.fa /mnt/isilon/data/iGenomes/Ciona_intestinalis/Ensembl/KH/Ciona_intestinalis.KH.92.gtf KH
srun Rscript get_gene_symbols.R default KH Ciona_intestinalis

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Drosophila_melanogaster/Ensembl/BDGP6/Drosophila_melanogaster.BDGP6.dna.toplevel.fa /mnt/isilon/data/iGenomes/Drosophila_melanogaster/Ensembl/BDGP6/Drosophila_melanogaster.BDGP6.92.gtf BDGP6
srun Rscript get_gene_symbols.R default BDGP6 Drosophila_melanogaster

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Gallus_gallus/Ensembl/Galgal5/Gallus_gallus.Gallus_gallus-5.0.dna.toplevel.fa /mnt/isilon/data/iGenomes/Gallus_gallus/Ensembl/Galgal5/Gallus_gallus.Gallus_gallus-5.0.92.gtf Galgal5
srun Rscript get_gene_symbols.R default Galgal5 Gallus_gallus

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Glycine_max/Ensembl/Gm02/Glycine_max.Glycine_max_v2.0.dna.toplevel.fa /mnt/isilon/data/iGenomes/Glycine_max/Ensembl/Gm02/Glycine_max.Glycine_max_v2.0.39.gtf Gm02
srun Rscript get_gene_symbols.R plants Gm02 Glycine_max

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Homo_sapiens/Ensembl/GRCh38/Homo_sapiens.GRCh38.dna.primary_assembly.fa /mnt/isilon/data/iGenomes/Homo_sapiens/Ensembl/GRCh38/Homo_sapiens.GRCh38.92.chr.gtf GRCh38
srun Rscript get_gene_symbols.R default GRCh38 Homo_sapiens


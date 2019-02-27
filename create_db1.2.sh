#!/bin/bash

#!/bin/bash
#SBATCH --mail-type=All
#SBATCH --mail-user=moyerd2@ccf.org
#SBATCH --job-name=create_1.2
#SBATCH -n1

module load python/3.6.2
module load R/3.5.0

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Bos_taurus/Ensembl/UMD3.1/Sequence/WholeGenomeFasta/genome.fa -a /mnt/isilon/data/iGenomes/Bos_taurus/Ensembl/UMD3.1/Annotation/Genes/genes.gtf -n UMD3.1_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Bos_taurus/Ensembl/UMD3.1/Sequence/WholeGenomeFasta/genome.fa -a /mnt/isilon/data/iGenomes/Bos_taurus/Ensembl/UMD3.1/Annotation/Genes/genes.gtf -n UMD3.1_exon
srun python3.6 deduplicate.py UMD3.1
srun Rscript get_gene_symbols.R default UMD3.1 Bos_taurus

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Caenorhabditis_elegans/Ensembl/WBcel235/Caenorhabditis_elegans.WBcel235.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Caenorhabditis_elegans/Ensembl/WBcel235/Caenorhabditis_elegans.WBcel235.92.gtf -n WBcel235_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Caenorhabditis_elegans/Ensembl/WBcel235/Caenorhabditis_elegans.WBcel235.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Caenorhabditis_elegans/Ensembl/WBcel235/Caenorhabditis_elegans.WBcel235.92.gtf -n WBcel235_exon
srun python3.6 deduplicate.py WBcel235
srun Rscript get_gene_symbols.R default WBcel235 Caenorhabditis_elegans

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Canis_familiaris/Ensembl/CanFam3.1/Sequence/WholeGenomeFasta/genome.fa -a /mnt/isilon/data/iGenomes/Canis_familiaris/Ensembl/CanFam3.1/Annotation/Genes/genes.gtf -n CanFam3.1_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Canis_familiaris/Ensembl/CanFam3.1/Sequence/WholeGenomeFasta/genome.fa -a /mnt/isilon/data/iGenomes/Canis_familiaris/Ensembl/CanFam3.1/Annotation/Genes/genes.gtf -n CanFam3.1_exon
srun python3.6 deduplicate.py CanFam3.1
srun Rscript get_gene_symbols.R default CanFam3.1 Canis_familiaris

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Ciona_intestinalis/Ensembl/KH/Ciona_intestinalis.KH.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Ciona_intestinalis/Ensembl/KH/Ciona_intestinalis.KH.92.gtf -n KH_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Ciona_intestinalis/Ensembl/KH/Ciona_intestinalis.KH.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Ciona_intestinalis/Ensembl/KH/Ciona_intestinalis.KH.92.gtf -n KH_exon
srun python3.6 deduplicate.py KH
srun Rscript get_gene_symbols.R default KH Ciona_intestinalis

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Drosophila_melanogaster/Ensembl/BDGP6/Drosophila_melanogaster.BDGP6.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Drosophila_melanogaster/Ensembl/BDGP6/Drosophila_melanogaster.BDGP6.92.gtf -n BDGP6_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Drosophila_melanogaster/Ensembl/BDGP6/Drosophila_melanogaster.BDGP6.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Drosophila_melanogaster/Ensembl/BDGP6/Drosophila_melanogaster.BDGP6.92.gtf -n BDGP6_exon
srun python3.6 deduplicate.py BDGP6
srun Rscript get_gene_symbols.R default BDGP6 Drosophila_melanogaster

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Gallus_gallus/Ensembl/Galgal5/Gallus_gallus.Gallus_gallus-5.0.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Gallus_gallus/Ensembl/Galgal5/Gallus_gallus.Gallus_gallus-5.0.92.gtf -n Galgal5_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Gallus_gallus/Ensembl/Galgal5/Gallus_gallus.Gallus_gallus-5.0.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Gallus_gallus/Ensembl/Galgal5/Gallus_gallus.Gallus_gallus-5.0.92.gtf -n Galgal5_exon
srun python3.6 deduplicate.py Galgal5
srun Rscript get_gene_symbols.R default Galgal5 Gallus_gallus

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Glycine_max/Ensembl/Gm02/Glycine_max.Glycine_max_v2.0.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Glycine_max/Ensembl/Gm02/Glycine_max.Glycine_max_v2.0.39.gtf -n Gm02_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Glycine_max/Ensembl/Gm02/Glycine_max.Glycine_max_v2.0.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Glycine_max/Ensembl/Gm02/Glycine_max.Glycine_max_v2.0.39.gtf -n Gm02_exon
srun python3.6 deduplicate.py Gm02
srun Rscript get_gene_symbols.R plants Gm02 Glycine_max


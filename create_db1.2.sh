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
<<<<<<< HEAD
srun python3.6 deduplicate.py UMD3.1
=======
srun sort -V -k5,6 info/UMD3.1_cds_info.iic > tmp/UMD3.1_cds.tsv
srun sort -V -k5,6 info/UMD3.1_exon_info.iic > tmp/UMD3.1_exon.tsv
srun python3.6 noncoding_introns.py UMD3.1
>>>>>>> 59179440ead6c3e9d32b5797311ca76b48343ddf
srun Rscript get_gene_symbols.R default UMD3.1 Bos_taurus

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Caenorhabditis_elegans/Ensembl/WBcel235/Caenorhabditis_elegans.WBcel235.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Caenorhabditis_elegans/Ensembl/WBcel235/Caenorhabditis_elegans.WBcel235.92.gtf -n WBcel235_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Caenorhabditis_elegans/Ensembl/WBcel235/Caenorhabditis_elegans.WBcel235.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Caenorhabditis_elegans/Ensembl/WBcel235/Caenorhabditis_elegans.WBcel235.92.gtf -n WBcel235_exon
<<<<<<< HEAD
srun python3.6 deduplicate.py WBcel235
=======
srun sort -V -k5,6 info/WBcel235_cds_info.iic > tmp/WBcel235_cds.tsv
srun sort -V -k5,6 info/WBcel235_exon_info.iic > tmp/WBcel235_exon.tsv
srun python3.6 noncoding_introns.py WBcel235
>>>>>>> 59179440ead6c3e9d32b5797311ca76b48343ddf
srun Rscript get_gene_symbols.R default WBcel235 Caenorhabditis_elegans

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Canis_familiaris/Ensembl/CanFam3.1/Sequence/WholeGenomeFasta/genome.fa -a /mnt/isilon/data/iGenomes/Canis_familiaris/Ensembl/CanFam3.1/Annotation/Genes/genes.gtf -n CanFam3.1_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Canis_familiaris/Ensembl/CanFam3.1/Sequence/WholeGenomeFasta/genome.fa -a /mnt/isilon/data/iGenomes/Canis_familiaris/Ensembl/CanFam3.1/Annotation/Genes/genes.gtf -n CanFam3.1_exon
<<<<<<< HEAD
srun python3.6 deduplicate.py CanFam3.1
=======
srun sort -V -k5,6 info/CanFam3.1_cds_info.iic > tmp/CanFam3.1_cds.tsv
srun sort -V -k5,6 info/CanFam3.1_exon_info.iic > tmp/CanFam3.1_exon.tsv
srun python3.6 noncoding_introns.py CanFam3.1
>>>>>>> 59179440ead6c3e9d32b5797311ca76b48343ddf
srun Rscript get_gene_symbols.R default CanFam3.1 Canis_familiaris

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Ciona_intestinalis/Ensembl/KH/Ciona_intestinalis.KH.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Ciona_intestinalis/Ensembl/KH/Ciona_intestinalis.KH.92.gtf -n KH_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Ciona_intestinalis/Ensembl/KH/Ciona_intestinalis.KH.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Ciona_intestinalis/Ensembl/KH/Ciona_intestinalis.KH.92.gtf -n KH_exon
<<<<<<< HEAD
srun python3.6 deduplicate.py KH
=======
srun sort -V -k5,6 info/KH_cds_info.iic > tmp/KH_cds.tsv
srun sort -V -k5,6 info/KH_exon_info.iic > tmp/KH_exon.tsv
srun python3.6 noncoding_introns.py KH
>>>>>>> 59179440ead6c3e9d32b5797311ca76b48343ddf
srun Rscript get_gene_symbols.R default KH Ciona_intestinalis

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Drosophila_melanogaster/Ensembl/BDGP6/Drosophila_melanogaster.BDGP6.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Drosophila_melanogaster/Ensembl/BDGP6/Drosophila_melanogaster.BDGP6.92.gtf -n BDGP6_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Drosophila_melanogaster/Ensembl/BDGP6/Drosophila_melanogaster.BDGP6.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Drosophila_melanogaster/Ensembl/BDGP6/Drosophila_melanogaster.BDGP6.92.gtf -n BDGP6_exon
<<<<<<< HEAD
srun python3.6 deduplicate.py BDGP6
=======
srun sort -V -k5,6 info/BDGP6_cds_info.iic > tmp/BDGP6_cds.tsv
srun sort -V -k5,6 info/BDGP6_exon_info.iic > tmp/BDGP6_exon.tsv
srun python3.6 noncoding_introns.py BDGP6
>>>>>>> 59179440ead6c3e9d32b5797311ca76b48343ddf
srun Rscript get_gene_symbols.R default BDGP6 Drosophila_melanogaster

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Gallus_gallus/Ensembl/Galgal5/Gallus_gallus.Gallus_gallus-5.0.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Gallus_gallus/Ensembl/Galgal5/Gallus_gallus.Gallus_gallus-5.0.92.gtf -n Galgal5_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Gallus_gallus/Ensembl/Galgal5/Gallus_gallus.Gallus_gallus-5.0.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Gallus_gallus/Ensembl/Galgal5/Gallus_gallus.Gallus_gallus-5.0.92.gtf -n Galgal5_exon
<<<<<<< HEAD
srun python3.6 deduplicate.py Galgal5
=======
srun sort -V -k5,6 info/Galgal5_cds_info.iic > tmp/Galgal5_cds.tsv
srun sort -V -k5,6 info/Galgal5_exon_info.iic > tmp/Galgal5_exon.tsv
srun python3.6 noncoding_introns.py Galgal5
>>>>>>> 59179440ead6c3e9d32b5797311ca76b48343ddf
srun Rscript get_gene_symbols.R default Galgal5 Gallus_gallus

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Glycine_max/Ensembl/Gm02/Glycine_max.Glycine_max_v2.0.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Glycine_max/Ensembl/Gm02/Glycine_max.Glycine_max_v2.0.39.gtf -n Gm02_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Glycine_max/Ensembl/Gm02/Glycine_max.Glycine_max_v2.0.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Glycine_max/Ensembl/Gm02/Glycine_max.Glycine_max_v2.0.39.gtf -n Gm02_exon
<<<<<<< HEAD
srun python3.6 deduplicate.py Gm02
=======
srun sort -V -k5,6 info/Gm02_cds_info.iic > tmp/Gm02_cds.tsv
srun sort -V -k5,6 info/Gm02_exon_info.iic > tmp/Gm02_exon.tsv
srun python3.6 noncoding_introns.py Gm02
>>>>>>> 59179440ead6c3e9d32b5797311ca76b48343ddf
srun Rscript get_gene_symbols.R plants Gm02 Glycine_max


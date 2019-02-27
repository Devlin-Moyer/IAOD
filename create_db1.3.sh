#!/bin/bash

#!/bin/bash
#SBATCH --mail-type=All
#SBATCH --mail-user=moyerd2@ccf.org
#SBATCH --job-name=create_1.3
#SBATCH -n1

module load python/3.6.2
module load R/3.5.0

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Homo_sapiens/Ensembl/GRCh38/Homo_sapiens.GRCh38.dna.primary_assembly.fa -a /mnt/isilon/data/iGenomes/Homo_sapiens/Ensembl/GRCh38/Homo_sapiens.GRCh38.92.chr.gtf -n GRCh38_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Homo_sapiens/Ensembl/GRCh38/Homo_sapiens.GRCh38.dna.primary_assembly.fa -a /mnt/isilon/data/iGenomes/Homo_sapiens/Ensembl/GRCh38/Homo_sapiens.GRCh38.92.chr.gtf -n GRCh38_exon
<<<<<<< HEAD
srun python3.6 deduplicate.py GRCh38
=======
srun sort -V -k5,6 info/GRCh38_cds_info.iic > tmp/GRCh38_cds.tsv
srun sort -V -k5,6 info/GRCh38_exon_info.iic > tmp/GRCh38_exon.tsv
srun python3.6 noncoding_introns.py GRCh38
>>>>>>> 59179440ead6c3e9d32b5797311ca76b48343ddf
srun Rscript get_gene_symbols.R default GRCh38 Homo_sapiens

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Homo_sapiens/Ensembl/GRCh37/Sequence/WholeGenomeFasta/genome.fa -a /mnt/isilon/data/iGenomes/Homo_sapiens/Ensembl/GRCh37/Annotation/Genes/genes.gtf -n GRCh37_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Homo_sapiens/Ensembl/GRCh37/Sequence/WholeGenomeFasta/genome.fa -a /mnt/isilon/data/iGenomes/Homo_sapiens/Ensembl/GRCh37/Annotation/Genes/genes.gtf -n GRCh37_exon
<<<<<<< HEAD
srun python3.6 deduplicate.py GRCh37
=======
srun sort -V -k5,6 info/GRCh37_cds_info.iic > tmp/GRCh37_cds.tsv
srun sort -V -k5,6 info/GRCh37_exon_info.iic > tmp/GRCh37_exon.tsv
srun python3.6 noncoding_introns.py GRCh37
>>>>>>> 59179440ead6c3e9d32b5797311ca76b48343ddf
srun Rscript get_gene_symbols.R GRCh37 GRCh37 Homo_sapiens # no that's not a typo; there's a division of Ensembl called GRCh37

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Macaca_mulatta/Ensembl/Mmul_8.0.1/Macaca_mulatta.Mmul_8.0.1.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Macaca_mulatta/Ensembl/Mmul_8.0.1/Macaca_mulatta.Mmul_8.0.1.92.gtf -n Mmul_8.0.1_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Macaca_mulatta/Ensembl/Mmul_8.0.1/Macaca_mulatta.Mmul_8.0.1.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Macaca_mulatta/Ensembl/Mmul_8.0.1/Macaca_mulatta.Mmul_8.0.1.92.gtf -n Mmul_8.0.1_exon
<<<<<<< HEAD
srun python3.6 deduplicate.py Mmul_8.0.1
=======
srun sort -V -k5,6 info/Mmul_8.0.1_cds_info.iic > tmp/Mmul_8.0.1_cds.tsv
srun sort -V -k5,6 info/Mmul_8.0.1_exon_info.iic > tmp/Mmul_8.0.1_exon.tsv
srun python3.6 noncoding_introns.py Mmul_8.0.1
>>>>>>> 59179440ead6c3e9d32b5797311ca76b48343ddf
srun Rscript get_gene_symbols.R default Mmul_8.0.1 Macaca_mulatta

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Monodelphis_domestica/Ensembl/monDom5/Monodelphis_domestica.monDom5.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Monodelphis_domestica/Ensembl/monDom5/Monodelphis_domestica.monDom5.92.gtf -n monDom5_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Monodelphis_domestica/Ensembl/monDom5/Monodelphis_domestica.monDom5.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Monodelphis_domestica/Ensembl/monDom5/Monodelphis_domestica.monDom5.92.gtf -n monDom5_exon
<<<<<<< HEAD
srun python3.6 deduplicate.py monDom5
=======
srun sort -V -k5,6 info/monDom5_cds_info.iic > tmp/monDom5_cds.tsv
srun sort -V -k5,6 info/monDom5_exon_info.iic > tmp/monDom5_exon.tsv
srun python3.6 noncoding_introns.py monDom5
>>>>>>> 59179440ead6c3e9d32b5797311ca76b48343ddf
srun Rscript get_gene_symbols.R default monDom5 Monodelphis_domestica

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Mus_musculus/Ensembl/GRCm38/Mus_musculus.GRCm38.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Mus_musculus/Ensembl/GRCm38/Mus_musculus.GRCm38.92.gtf -n GRCm38_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Mus_musculus/Ensembl/GRCm38/Mus_musculus.GRCm38.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Mus_musculus/Ensembl/GRCm38/Mus_musculus.GRCm38.92.gtf -n GRCm38_exon
<<<<<<< HEAD
srun python3.6 deduplicate.py GRCm38
=======
srun sort -V -k5,6 info/GRCm38_cds_info.iic > tmp/GRCm38_cds.tsv
srun sort -V -k5,6 info/GRCm38_exon_info.iic > tmp/GRCm38_exon.tsv
srun python3.6 noncoding_introns.py GRCm38
>>>>>>> 59179440ead6c3e9d32b5797311ca76b48343ddf
srun Rscript get_gene_symbols.R default GRCm38 Mus_musculus

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Oryza_sativa_japonica/Ensembl/IRGSP-1.0/Sequence/WholeGenomeFasta/genome.fa -a /mnt/isilon/data/iGenomes/Oryza_sativa_japonica/Ensembl/IRGSP-1.0/Annotation/Genes/genes.gtf -n IRGSP-1.0_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Oryza_sativa_japonica/Ensembl/IRGSP-1.0/Sequence/WholeGenomeFasta/genome.fa -a /mnt/isilon/data/iGenomes/Oryza_sativa_japonica/Ensembl/IRGSP-1.0/Annotation/Genes/genes.gtf -n IRGSP-1.0_exon
<<<<<<< HEAD
srun python3.6 deduplicate.py IRGSP-1.0
=======
srun sort -V -k5,6 info/IRGSP-1.0_cds_info.iic > tmp/IRGSP-1.0_cds.tsv
srun sort -V -k5,6 info/IRGSP-1.0_exon_info.iic > tmp/IRGSP-1.0_exon.tsv
srun python3.6 noncoding_introns.py IRGSP-1.0
>>>>>>> 59179440ead6c3e9d32b5797311ca76b48343ddf
srun Rscript get_gene_symbols.R plants IRGSP-1.0 Oryza_sativa

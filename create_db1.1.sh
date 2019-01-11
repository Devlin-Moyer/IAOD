#!/bin/bash

#!/bin/bash
#SBATCH --mail-type=All
#SBATCH --mail-user=moyerd2@ccf.org
#SBATCH --job-name=create1.1
#SBATCH -n1

module load python/3.6.2
module load R/3.5.0

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Anopheles_gambiae/Ensembl/AgamP4/Anopheles_gambiae.AgamP4.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Anopheles_gambiae/Ensembl/AgamP4/Anopheles_gambiae.AgamP4.39.gtf -n AgamP4_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Anopheles_gambiae/Ensembl/AgamP4/Anopheles_gambiae.AgamP4.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Anopheles_gambiae/Ensembl/AgamP4/Anopheles_gambiae.AgamP4.39.gtf -n AgamP4_exon
srun sort -V -k5,6 info/AgamP4_cds_info.iic > tmp/AgamP4_cds.tsv
srun sort -V -k5,6 info/AgamP4_exon_info.iic > tmp/AgamP4_exon.tsv
srun python3.6 noncoding_introns.py AgamP4
srun Rscript get_gene_symbols.R metazoa AgamP4 Anopheles_gambiae

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Apis_mellifera/Ensembl/Amel_4.5/Apis_mellifera.Amel_4.5.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Apis_mellifera/Ensembl/Amel_4.5/Apis_mellifera.Amel_4.5.39.gtf -n Amel_4.5_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Apis_mellifera/Ensembl/Amel_4.5/Apis_mellifera.Amel_4.5.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Apis_mellifera/Ensembl/Amel_4.5/Apis_mellifera.Amel_4.5.39.gtf -n Amel_4.5_exon
srun sort -V -k5,6 info/Amel_4.5_cds_info.iic > tmp/Amel_4.5_cds.tsv
srun sort -V -k5,6 info/Amel_4.5_exon_info.iic > tmp/Amel_4.5_exon.tsv
srun python3.6 noncoding_introns.py Amel_4.5
srun Rscript get_gene_symbols.R metazoa Amel_4.5 Apis_mellifera

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Arabidopsis_thaliana/Ensembl/TAIR10/Arabidopsis_thaliana.TAIR10.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Arabidopsis_thaliana/Ensembl/TAIR10/Arabidopsis_thaliana.TAIR10.39.gtf -n TAIR10_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Arabidopsis_thaliana/Ensembl/TAIR10/Arabidopsis_thaliana.TAIR10.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Arabidopsis_thaliana/Ensembl/TAIR10/Arabidopsis_thaliana.TAIR10.39.gtf -n TAIR10_exon
srun sort -V -k5,6 info/TAIR10_cds_info.iic > tmp/TAIR10_cds.tsv
srun sort -V -k5,6 info/TAIR10_exon_info.iic > tmp/TAIR10_exon.tsv
srun python3.6 noncoding_introns.py TAIR10
srun Rscript get_gene_symbols.R plants TAIR10 Arabidopsis_thaliana

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Danio_rerio/Ensembl/GRCz11/Danio_rerio.GRCz11.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Danio_rerio/Ensembl/GRCz11/Danio_rerio.GRCz11.92.gtf -n GRCz11_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Danio_rerio/Ensembl/GRCz11/Danio_rerio.GRCz11.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Danio_rerio/Ensembl/GRCz11/Danio_rerio.GRCz11.92.gtf -n GRCz11_exon
srun sort -V -k5,6 info/GRCz11_cds_info.iic > tmp/GRCz11_cds.tsv
srun sort -V -k5,6 info/GRCz11_exon_info.iic > tmp/GRCz11_exon.tsv
srun python3.6 noncoding_introns.py GRCz11
srun Rscript get_gene_symbols.R default GRCz11 Danio_rerio

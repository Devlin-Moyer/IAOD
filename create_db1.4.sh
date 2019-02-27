#!/bin/bash

#!/bin/bash
#SBATCH --mail-type=All
#SBATCH --mail-user=moyerd2@ccf.org
#SBATCH --job-name=create_1.4

module load python/3.6.2
module load R/3.5.0

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Pan_troglodytes/Ensembl/Pan_tro_3.0/Pan_troglodytes.Pan_tro_3.0.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Pan_troglodytes/Ensembl/Pan_tro_3.0/Pan_troglodytes.Pan_tro_3.0.92.gtf -n Pan_tro_3.0_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Pan_troglodytes/Ensembl/Pan_tro_3.0/Pan_troglodytes.Pan_tro_3.0.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Pan_troglodytes/Ensembl/Pan_tro_3.0/Pan_troglodytes.Pan_tro_3.0.92.gtf -n Pan_tro_3.0_exon
srun python3.6 deduplicate.py Pan_tro_3.0
srun Rscript get_gene_symbols.R default Pan_tro_3.0 Pan_troglodytes

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Rattus_norvegicus/Ensembl/Rnor_6.0/Rattus_norvegicus.Rnor_6.0.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Rattus_norvegicus/Ensembl/Rnor_6.0/Rattus_norvegicus.Rnor_6.0.92.gtf -n Rnor_6.0_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Rattus_norvegicus/Ensembl/Rnor_6.0/Rattus_norvegicus.Rnor_6.0.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Rattus_norvegicus/Ensembl/Rnor_6.0/Rattus_norvegicus.Rnor_6.0.92.gtf -n Rnor_6.0_exon
srun python3.6 deduplicate.py Rnor_6.0
srun Rscript get_gene_symbols.R default Rnor_6.0 Rattus_norvegicus

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Saccharomyces_cerevisiae/Ensembl/R64-1-1/Sequence/WholeGenomeFasta/genome.fa -a /mnt/isilon/data/iGenomes/Saccharomyces_cerevisiae/Ensembl/R64-1-1/Annotation/Genes/genes.gtf -n R64-1-1_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Saccharomyces_cerevisiae/Ensembl/R64-1-1/Sequence/WholeGenomeFasta/genome.fa -a /mnt/isilon/data/iGenomes/Saccharomyces_cerevisiae/Ensembl/R64-1-1/Annotation/Genes/genes.gtf -n R64-1-1_exon
srun python3.6 deduplicate.py R64-1-1
srun Rscript get_gene_symbols.R default R64-1-1 Saccharomyces_cerevisiae

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Schizosaccharomyces_pombe/Ensembl/ASM294v2/Schizosaccharomyces_pombe.ASM294v2.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Schizosaccharomyces_pombe/Ensembl/ASM294v2/Schizosaccharomyces_pombe.ASM294v2.40.gtf -n ASM294v2_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Schizosaccharomyces_pombe/Ensembl/ASM294v2/Schizosaccharomyces_pombe.ASM294v2.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Schizosaccharomyces_pombe/Ensembl/ASM294v2/Schizosaccharomyces_pombe.ASM294v2.40.gtf -n ASM294v2_exon
srun python3.6 deduplicate.py ASM294v2
srun Rscript get_gene_symbols.R fungi ASM294v2 Schizosaccharomyces_pombe

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Takifugu_rubripes/Ensembl/FUGU5/Takifugu_rubripes.FUGU5.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Takifugu_rubripes/Ensembl/FUGU5/Takifugu_rubripes.FUGU5.94.gtf -n FUGU5_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Takifugu_rubripes/Ensembl/FUGU5/Takifugu_rubripes.FUGU5.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Takifugu_rubripes/Ensembl/FUGU5/Takifugu_rubripes.FUGU5.94.gtf -n FUGU5_exon
srun python3.6 deduplicate.py FUGU5
srun Rscript get_gene_symbols.R default FUGU5 Takifugu_rubripes

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Tetraodon_nigroviridis/Ensembl/TETRAODON8/Tetraodon_nigroviridis.TETRAODON8.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Tetraodon_nigroviridis/Ensembl/TETRAODON8/Tetraodon_nigroviridis.TETRAODON8.92.gtf -n TETRAODON8_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Tetraodon_nigroviridis/Ensembl/TETRAODON8/Tetraodon_nigroviridis.TETRAODON8.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Tetraodon_nigroviridis/Ensembl/TETRAODON8/Tetraodon_nigroviridis.TETRAODON8.92.gtf -n TETRAODON8_exon
srun python3.6 deduplicate.py TETRAODON8
srun Rscript get_gene_symbols.R default TETRAODON8 Tetraodon_nigroviridis

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Zea_mays/Ensembl/AGPv4/Sequence/WholeGenomeFasta/genome.fa -a /mnt/isilon/data/iGenomes/Zea_mays/Ensembl/AGPv4/Annotation/Genes/genes.gtf -n AGPv4_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Zea_mays/Ensembl/AGPv4/Sequence/WholeGenomeFasta/genome.fa -a /mnt/isilon/data/iGenomes/Zea_mays/Ensembl/AGPv4/Annotation/Genes/genes.gtf -n AGPv4_exon
srun python3.6 deduplicate.py AGPv4
srun Rscript get_gene_symbols.R plants AGPv4 Zea_mays

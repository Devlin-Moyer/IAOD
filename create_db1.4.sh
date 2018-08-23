#!/bin/bash

#!/bin/bash
#SBATCH --mail-type=All
#SBATCH --mail-user=moyerd2@ccf.org
#SBATCH --job-name=create_1.4

module load python/3.6.2
module load R/3.5.0

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Oryza_sativa_japonica/Ensembl/IRGSP-1.0/Sequence/WholeGenomeFasta/genome.fa /mnt/isilon/data/iGenomes/Oryza_sativa_japonica/Ensembl/IRGSP-1.0/Annotation/Genes/genes.gtf IRGSP-1.0
srun Rscript get_gene_symbols.R plants IRGSP-1.0 Oryza_sativa

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Pan_troglodytes/Ensembl/Pan_tro_3.0/Pan_troglodytes.Pan_tro_3.0.dna.toplevel.fa /mnt/isilon/data/iGenomes/Pan_troglodytes/Ensembl/Pan_tro_3.0/Pan_troglodytes.Pan_tro_3.0.92.gtf Pan_tro_3.0
srun Rscript get_gene_symbols.R default Pan_tro_3.0 Pan_troglodytes

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Rattus_norvegicus/Ensembl/Rnor_6.0/Rattus_norvegicus.Rnor_6.0.dna.toplevel.fa /mnt/isilon/data/iGenomes/Rattus_norvegicus/Ensembl/Rnor_6.0/Rattus_norvegicus.Rnor_6.0.92.gtf Rnor_6.0
srun Rscript get_gene_symbols.R default Rnor_6.0 Rattus_norvegicus

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Saccharomyces_cerevisiae/Ensembl/R64-1-1/Sequence/WholeGenomeFasta/genome.fa /mnt/isilon/data/iGenomes/Saccharomyces_cerevisiae/Ensembl/R64-1-1/Annotation/Genes/genes.gtf R64-1-1
srun Rscript get_gene_symbols.R default R64-1-1 Saccharomyces_cerevisiae

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Schizosaccharomyces_pombe/Ensembl/ASM294v2/Schizosaccharomyces_pombe.ASM294v2.dna.toplevel.fa /mnt/isilon/data/iGenomes/Schizosaccharomyces_pombe/Ensembl/ASM294v2/Schizosaccharomyces_pombe.ASM294v2.40.gtf ASM294v2
srun Rscript get_gene_symbols.R fungi ASM294v2 Schizosaccharomyces_pombe

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Takifugu_rubripes/Ensembl/FUGU4/Takifugu_rubripes.FUGU4.dna.toplevel.fa /mnt/isilon/data/iGenomes/Takifugu_rubripes/Ensembl/FUGU4/Takifugu_rubripes.FUGU4.92.gtf FUGU4
srun Rscript get_gene_symbols.R default FUGU4 Takifugu_rubripes

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Tetraodon_nigroviridis/Ensembl/TETRAODON8/Tetraodon_nigroviridis.TETRAODON8.dna.toplevel.fa /mnt/isilon/data/iGenomes/Tetraodon_nigroviridis/Ensembl/TETRAODON8/Tetraodon_nigroviridis.TETRAODON8.92.gtf TETRAODON8
srun Rscript get_gene_symbols.R default TETRAODON8 Tetraodon_nigroviridis

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Zea_mays/Ensembl/AGPv4/Sequence/WholeGenomeFasta/genome.fa /mnt/isilon/data/iGenomes/Zea_mays/Ensembl/AGPv4/Annotation/Genes/genes.gtf AGPv4
srun Rscript get_gene_symbols.R plants AGPv4 Zea_mays

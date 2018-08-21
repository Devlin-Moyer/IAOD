#!/bin/bash

#!/bin/bash
#SBATCH --mail-type=ALL
#SBATCH --mail-user=moyerd2@ccf.org
#SBATCH --job-name=add_genome_2
#SBATCH -N1
#SBATCH --exclusive

module load R/3.5.0

srun Rscript ortholog_finding.R default JGI_4.2 Xenopus_tropicalis UMD3.1 Bos_taurus
srun Rscript ortholog_finding.R default JGI_4.2 Xenopus_tropicalis WBcel235 Caenorhabditis_elegans
srun Rscript ortholog_finding.R default JGI_4.2 Xenopus_tropicalis CanFam3.1 Canis_familiaris
srun Rscript ortholog_finding.R default JGI_4.2 Xenopus_tropicalis KH Ciona_intestinalis
srun Rscript ortholog_finding.R default JGI_4.2 Xenopus_tropicalis GRCz11 Danio_rerio
srun Rscript ortholog_finding.R default JGI_4.2 Xenopus_tropicalis BDGP6 Drosophila_melanogaster
srun Rscript ortholog_finding.R default JGI_4.2 Xenopus_tropicalis Galgal5 Gallus_gallus
srun Rscript ortholog_finding.R default JGI_4.2 Xenopus_tropicalis GRCh38 Homo_sapiens
srun Rscript ortholog_finding.R default JGI_4.2 Xenopus_tropicalis Mmul_8.0 Macaca_mulatta
srun Rscript ortholog_finding.R default JGI_4.2 Xenopus_tropicalis monDom5 Monodelphis_domestica
srun Rscript ortholog_finding.R default JGI_4.2 Xenopus_tropicalis GRCm38 Mus_musculus
srun Rscript ortholog_finding.R default JGI_4.2 Xenopus_tropicalis Pan_tro_3.0 Pan_troglodytes
srun Rscript ortholog_finding.R default JGI_4.2 Xenopus_tropicalis Rnor_6.0 Rattus_norvegicus
srun Rscript ortholog_finding.R default JGI_4.2 Xenopus_tropicalis R64-1-1 Saccharomyces_cerevisiae
srun Rscript ortholog_finding.R default JGI_4.2 Xenopus_tropicalis FUGU4 Takifugu_rubripes
srun Rscript ortholog_finding.R default JGI_4.2 Xenopus_tropicalis TETRAODON8 Tetraodon_rubripes

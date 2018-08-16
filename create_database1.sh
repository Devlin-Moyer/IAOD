#!/bin/bash

#!/bin/bash
#SBATCH --mail-type=All
#SBATCH --mail-user=
#SBATCH --job-name=create_database_1

module load python/3.6.2
module load R/3.5.0

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Anopheles_gambiae/Ensembl/AgamP4/Anopheles_gambiae.AgamP4.dna.toplevel.fa /mnt/isilon/data/iGenomes/Anopheles_gambiae/Ensembl/AgamP4/Anopheles_gambiae.AgamP4.39.gtf AgamP4
srun Rscript get_gene_symbols.R metazoa AgamP4 Anopheles_gambiae
srun python3.6 isolate_seqs.py AgamP4

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Apis_mellifera/Ensembl/Amel_4.5/Apis_mellifera.Amel_4.5.dna.toplevel.fa /mnt/isilon/data/iGenomes/Apis_mellifera/Ensembl/Amel_4.5/Apis_mellifera.Amel_4.5.39.gtf Amel_4.5
srun Rscript get_gene_symbols.R metazoa Amel_4.5 Apis_mellifera
srun python3.6 isolate_seqs.py Amel_4.5

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Arabidopsis_thaliana/Ensembl/TAIR10/Arabidopsis_thaliana.TAIR10.dna.toplevel.fa /mnt/isilon/data/iGenomes/Arabidopsis_thaliana/Ensembl/TAIR10/Arabidopsis_thaliana.TAIR10.39.gtf TAIR10
srun Rscript get_gene_symbols.R plants TAIR10 Arabidopsis_thaliana
srun python3.6 isolate_seqs.py TAIR10

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Bos_taurus/Ensembl/UMD3.1/Sequence/WholeGenomeFasta/genome.fa /mnt/isilon/data/iGenomes/Bos_taurus/Ensembl/UMD3.1/Annotation/Genes/genes.gtf UMD3.1
srun Rscript get_gene_symbols.R default UMD3.1 Bos_taurus
srun python3.6 isolate_seqs.py UMD3.1

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Caenorhabditis_elegans/Ensembl/WBcel235/Caenorhabditis_elegans.WBcel235.dna.toplevel.fa /mnt/isilon/data/iGenomes/Caenorhabditis_elegans/Ensembl/WBcel235/Caenorhabditis_elegans.WBcel235.92.gtf WBcel235
srun Rscript get_gene_symbols.R default WBcel235 Caenorhabditis_elegans
srun python3.6 isolate_seqs.py WBcel235

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Canis_familiaris/Ensembl/CanFam3.1/Sequence/WholeGenomeFasta/genome.fa /mnt/isilon/data/iGenomes/Canis_familiaris/Ensembl/CanFam3.1/Annotation/Genes/genes.gtf CanFam3.1
srun Rscript get_gene_symbols.R default CanFam3.1 Canis_familiaris
srun python3.6 isolate_seqs.py CanFam3.1

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Ciona_intestinalis/Ensembl/KH/Ciona_intestinalis.KH.dna.toplevel.fa /mnt/isilon/data/iGenomes/Ciona_intestinalis/Ensembl/KH/Ciona_intestinalis.KH.92.gtf KH
srun Rscript get_gene_symbols.R default KH Ciona_intestinalis
srun python3.6 isolate_seqs.py KH

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Danio_rerio/Ensembl/GRCz11/Danio_rerio.GRCz11.dna.toplevel.fa /mnt/isilon/data/iGenomes/Danio_rerio/Ensembl/GRCz11/Danio_rerio.GRCz11.92.gtf GRCz11
srun Rscript get_gene_symbols.R default GRCz11 Danio_rerio
srun python3.6 isolate_seqs.py GRCz11

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Drosophila_melanogaster/Ensembl/BDGP6/Drosophila_melanogaster.BDGP6.dna.toplevel.fa /mnt/isilon/data/iGenomes/Drosophila_melanogaster/Ensembl/BDGP6/Drosophila_melanogaster.BDGP6.92.gtf BDGP6
srun Rscript get_gene_symbols.R default BDGP6 Drosophila_melanogaster
srun python3.6 isolate_seqs.py BDGP6

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Gallus_gallus/Ensembl/Galgal5/Gallus_gallus.Gallus_gallus-5.0.dna.toplevel.fa /mnt/isilon/data/iGenomes/Gallus_gallus/Ensembl/Galgal5/Gallus_gallus.Gallus_gallus-5.0.92.gtf Galgal5
srun Rscript get_gene_symbols.R default Galgal5 Gallus_gallus
srun python3.6 isolate_seqs.py Galgal5

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Glycine_max/Ensembl/Gm02/Glycine_max.Glycine_max_v2.0.dna.toplevel.fa /mnt/isilon/data/iGenomes/Glycine_max/Ensembl/Gm02/Glycine_max.Glycine_max_v2.0.39.gtf Gm02
srun Rscript get_gene_symbols.R plants Gm02 Glycine_max
srun python3.6 isolate_seqs.py Gm02

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Homo_sapiens/Ensembl/GRCh38/Homo_sapiens.GRCh38.dna.primary_assembly.fa /mnt/isilon/data/iGenomes/Homo_sapiens/Ensembl/GRCh38/Homo_sapiens.GRCh38.92.chr.gtf GRCh38
srun Rscript get_gene_symbols.R default GRCh38 Homo_sapiens
srun python3.6 isolate_seqs.py GRCh38

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Homo_sapiens/Ensembl/GRCh37/Sequence/WholeGenomeFasta/genome.fa /mnt/isilon/data/iGenomes/Homo_sapiens/Ensembl/GRCh37/Annotation/Genes/genes.gtf GRCh37
srun Rscript get_gene_symbols.R GRCh37 GRCh37 Homo_sapiens

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Macaca_mulatta/Ensembl/Mmul_8.0.1/Macaca_mulatta.Mmul_8.0.1.dna.toplevel.fa /mnt/isilon/data/iGenomes/Macaca_mulatta/Ensembl/Mmul_8.0.1/Macaca_mulatta.Mmul_8.0.1.92.gtf Mmul_8.0.1
srun Rscript get_gene_symbols.R default Mmul_8.0.1 Macaca_mulatta
srun python3.6 isolate_seqs.py Mmul_8.0

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Monodelphis_domestica/Ensembl/monDom5/Monodelphis_domestica.monDom5.dna.toplevel.fa /mnt/isilon/data/iGenomes/Monodelphis_domestica/Ensembl/monDom5/Monodelphis_domestica.monDom5.92.gtf monDom5
srun Rscript get_gene_symbols.R default monDom5 Monodelphis_domestica
srun python3.6 isolate_seqs.py monDom5

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Mus_musculus/Ensembl/GRCm38/Mus_musculus.GRCm38.dna.toplevel.fa /mnt/isilon/data/iGenomes/Mus_musculus/Ensembl/GRCm38/Mus_musculus.GRCm38.92.gtf GRCm38
srun Rscript get_gene_symbols.R default GRCm38 Mus_musculus
srun python3.6 isolate_seqs.py GRCm38

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Nematostella_vectensis/Ensembl/ASM20922v1/Nematostella_vectensis.ASM20922v1.dna.toplevel.fa /mnt/isilon/data/iGenomes/Nematostella_vectensis/Ensembl/ASM20922v1/Nematostella_vectensis.ASM20922v1.40.gtf ASM20922v1
srun Rscript get_gene_symbols.R metazoa ASM20922v1 Nematostella_vectensis
srun python3.6 isolate_seqs.py ASM20922v1

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Oryza_sativa_japonica/Ensembl/IRGSP-1.0/Sequence/WholeGenomeFasta/genome.fa /mnt/isilon/data/iGenomes/Oryza_sativa_japonica/Ensembl/IRGSP-1.0/Annotation/Genes/genes.gtf IRGSP-1.0
srun Rscript get_gene_symbols.R plants IRGSP-1.0 Oryza_sativa
srun python3.6 isolate_seqs.py IRGSP-1.0

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Pan_troglodytes/Ensembl/Pan_tro_3.0/Pan_troglodytes.Pan_tro_3.0.dna.toplevel.fa /mnt/isilon/data/iGenomes/Pan_troglodytes/Ensembl/Pan_tro_3.0/Pan_troglodytes.Pan_tro_3.0.92.gtf Pan_tro_3.0
srun Rscript get_gene_symbols.R default Pan_tro_3.0 Pan_troglodytes
srun python3.6 isolate_seqs.py Pan_tro_3.0

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Rattus_norvegicus/Ensembl/Rnor_6.0/Rattus_norvegicus.Rnor_6.0.dna.toplevel.fa /mnt/isilon/data/iGenomes/Rattus_norvegicus/Ensembl/Rnor_6.0/Rattus_norvegicus.Rnor_6.0.92.gtf Rnor_6.0
srun Rscript get_gene_symbols.R default Rnor_6.0 Rattus_norvegicus
srun python3.6 isolate_seqs.py Rnor_6.0

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Saccharomyces_cerevisiae/Ensembl/R64-1-1/Sequence/WholeGenomeFasta/genome.fa /mnt/isilon/data/iGenomes/Saccharomyces_cerevisiae/Ensembl/R64-1-1/Annotation/Genes/genes.gtf R64-1-1
srun Rscript get_gene_symbols.R default R64-1-1 Saccharomyces_cerevisiae
srun python3.6 isolate_seqs.py R64-1-1

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Schizosaccharomyces_pombe/Ensembl/ASM294v2/Schizosaccharomyces_pombe.ASM294v2.dna.toplevel.fa /mnt/isilon/data/iGenomes/Schizosaccharomyces_pombe/Ensembl/ASM294v2/Schizosaccharomyces_pombe.ASM294v2.40.gtf ASM294v2
srun Rscript get_gene_symbols.R fungi ASM294v2 Schizosaccharomyces_pombe
srun python3.6 isolate_seqs.py ASM294v2

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Takifugu_rubripes/Ensembl/FUGU4/Takifugu_rubripes.FUGU4.dna.toplevel.fa /mnt/isilon/data/iGenomes/Takifugu_rubripes/Ensembl/FUGU4/Takifugu_rubripes.FUGU4.92.gtf FUGU4
srun Rscript get_gene_symbols.R default FUGU4 Takifugu_rubripes
srun python3.6 isolate_seqs.py FUGU4

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Tetraodon_nigroviridis/Ensembl/TETRAODON8/Tetraodon_nigroviridis.TETRAODON8.dna.toplevel.fa /mnt/isilon/data/iGenomes/Tetraodon_nigroviridis/Ensembl/TETRAODON8/Tetraodon_nigroviridis.TETRAODON8.92.gtf TETRAODON8
srun Rscript get_gene_symbols.R default TETRAODON8 Tetraodon_nigroviridis
srun python3.6 isolate_seqs.py TETRAODON8

srun python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Zea_mays/Ensembl/AGPv4/Sequence/WholeGenomeFasta/genome.fa /mnt/isilon/data/iGenomes/Zea_mays/Ensembl/AGPv4/Annotation/Genes/genes.gtf AGPv4
srun Rscript get_gene_symbols.R plants AGPv4 Zea_mays
srun python3.6 isolate_seqs.py AGPv4

srun rm tmp/*
srun python3.6 de_novo_ortholog_combinations.R

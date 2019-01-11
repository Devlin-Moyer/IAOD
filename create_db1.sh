#!/bin/bash

#!/bin/bash
#SBATCH --mail-type=All
#SBATCH --mail-user=
#SBATCH --job-name=create1
#SBATCH -n1

module load python/3.6.2
module load R/3.5.0

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Anopheles_gambiae/Ensembl/AgamP4/Anopheles_gambiae.AgamP4.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Anopheles_gambiae/Ensembl/AgamP4/Anopheles_gambiae.AgamP4.39.gtf -n AgamP4_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Anopheles_gambiae/Ensembl/AgamP4/Anopheles_gambiae.AgamP4.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Anopheles_gambiae/Ensembl/AgamP4/Anopheles_gambiae.AgamP4.39.gtf -n AgamP4_exon
srun sort -V -k5,6 info/AgamP4_cds_info.iic > tmp/cds.tsv
srun sort -V -k5,6 info/AgamP4_exon_info.iic > tmp/exon.tsv
srun python3.6 noncoding_introns.py AgamP4
srun Rscript get_gene_symbols.R metazoa AgamP4 Anopheles_gambiae

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Apis_mellifera/Ensembl/Amel_4.5/Apis_mellifera.Amel_4.5.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Apis_mellifera/Ensembl/Amel_4.5/Apis_mellifera.Amel_4.5.39.gtf -n Amel_4.5_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Apis_mellifera/Ensembl/Amel_4.5/Apis_mellifera.Amel_4.5.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Apis_mellifera/Ensembl/Amel_4.5/Apis_mellifera.Amel_4.5.39.gtf -n Amel_4.5_exon
srun sort -V -k5,6 info/Amel_4.5_cds_info.iic > tmp/cds.tsv
srun sort -V -k5,6 info/Amel_4.5_exon_info.iic > tmp/exon.tsv
srun python3.6 noncoding_introns.py Amel_4.5
srun Rscript get_gene_symbols.R metazoa Amel_4.5 Apis_mellifera

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Arabidopsis_thaliana/Ensembl/TAIR10/Arabidopsis_thaliana.TAIR10.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Arabidopsis_thaliana/Ensembl/TAIR10/Arabidopsis_thaliana.TAIR10.39.gtf -n TAIR10_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Arabidopsis_thaliana/Ensembl/TAIR10/Arabidopsis_thaliana.TAIR10.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Arabidopsis_thaliana/Ensembl/TAIR10/Arabidopsis_thaliana.TAIR10.39.gtf -n TAIR10_exon
srun sort -V -k5,6 info/TAIR10_cds_info.iic > tmp/cds.tsv
srun sort -V -k5,6 info/TAIR10_exon_info.iic > tmp/exon.tsv
srun python3.6 noncoding_introns.py TAIR10
srun Rscript get_gene_symbols.R plants TAIR10 Arabidopsis_thaliana

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Danio_rerio/Ensembl/GRCz11/Danio_rerio.GRCz11.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Danio_rerio/Ensembl/GRCz11/Danio_rerio.GRCz11.92.gtf -n GRCz11_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Danio_rerio/Ensembl/GRCz11/Danio_rerio.GRCz11.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Danio_rerio/Ensembl/GRCz11/Danio_rerio.GRCz11.92.gtf -n GRCz11_exon
srun sort -V -k5,6 info/GRCz11_cds_info.iic > tmp/cds.tsv
srun sort -V -k5,6 info/GRCz11_exon_info.iic > tmp/exon.tsv
srun python3.6 noncoding_introns.py GRCz11
srun Rscript get_gene_symbols.R default GRCz11 Danio_rerio

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Bos_taurus/Ensembl/UMD3.1/Sequence/WholeGenomeFasta/genome.fa -a /mnt/isilon/data/iGenomes/Bos_taurus/Ensembl/UMD3.1/Annotation/Genes/genes.gtf -n UMD3.1_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Bos_taurus/Ensembl/UMD3.1/Sequence/WholeGenomeFasta/genome.fa -a /mnt/isilon/data/iGenomes/Bos_taurus/Ensembl/UMD3.1/Annotation/Genes/genes.gtf -n UMD3.1_exon
srun sort -V -k5,6 info/UMD3.1_cds_info.iic > tmp/cds.tsv
srun sort -V -k5,6 info/UMD3.1_exon_info.iic > tmp/exon.tsv
srun python3.6 noncoding_introns.py UMD3.1
srun Rscript get_gene_symbols.R default UMD3.1 Bos_taurus

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Caenorhabditis_elegans/Ensembl/WBcel235/Caenorhabditis_elegans.WBcel235.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Caenorhabditis_elegans/Ensembl/WBcel235/Caenorhabditis_elegans.WBcel235.92.gtf -n WBcel235_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Caenorhabditis_elegans/Ensembl/WBcel235/Caenorhabditis_elegans.WBcel235.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Caenorhabditis_elegans/Ensembl/WBcel235/Caenorhabditis_elegans.WBcel235.92.gtf -n WBcel235_exon
srun sort -V -k5,6 info/WBcel235_cds_info.iic > tmp/cds.tsv
srun sort -V -k5,6 info/WBcel235_exon_info.iic > tmp/exon.tsv
srun python3.6 noncoding_introns.py WBcel235
srun Rscript get_gene_symbols.R default WBcel235 Caenorhabditis_elegans

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Canis_familiaris/Ensembl/CanFam3.1/Sequence/WholeGenomeFasta/genome.fa -a /mnt/isilon/data/iGenomes/Canis_familiaris/Ensembl/CanFam3.1/Annotation/Genes/genes.gtf -n CanFam3.1_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Canis_familiaris/Ensembl/CanFam3.1/Sequence/WholeGenomeFasta/genome.fa -a /mnt/isilon/data/iGenomes/Canis_familiaris/Ensembl/CanFam3.1/Annotation/Genes/genes.gtf -n CanFam3.1_exon
srun sort -V -k5,6 info/CanFam3.1_cds_info.iic > tmp/cds.tsv
srun sort -V -k5,6 info/CanFam3.1_exon_info.iic > tmp/exon.tsv
srun python3.6 noncoding_introns.py CanFam3.1
srun Rscript get_gene_symbols.R default CanFam3.1 Canis_familiaris

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Ciona_intestinalis/Ensembl/KH/Ciona_intestinalis.KH.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Ciona_intestinalis/Ensembl/KH/Ciona_intestinalis.KH.92.gtf -n KH_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Ciona_intestinalis/Ensembl/KH/Ciona_intestinalis.KH.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Ciona_intestinalis/Ensembl/KH/Ciona_intestinalis.KH.92.gtf -n KH_exon
srun sort -V -k5,6 info/KH_cds_info.iic > tmp/cds.tsv
srun sort -V -k5,6 info/KH_exon_info.iic > tmp/exon.tsv
srun python3.6 noncoding_introns.py KH
srun Rscript get_gene_symbols.R default KH Ciona_intestinalis

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Drosophila_melanogaster/Ensembl/BDGP6/Drosophila_melanogaster.BDGP6.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Drosophila_melanogaster/Ensembl/BDGP6/Drosophila_melanogaster.BDGP6.92.gtf -n BDGP6_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Drosophila_melanogaster/Ensembl/BDGP6/Drosophila_melanogaster.BDGP6.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Drosophila_melanogaster/Ensembl/BDGP6/Drosophila_melanogaster.BDGP6.92.gtf -n BDGP6_exon
srun sort -V -k5,6 info/BDGP6_cds_info.iic > tmp/cds.tsv
srun sort -V -k5,6 info/BDGP6_exon_info.iic > tmp/exon.tsv
srun python3.6 noncoding_introns.py BDGP6
srun Rscript get_gene_symbols.R default BDGP6 Drosophila_melanogaster

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Gallus_gallus/Ensembl/Galgal5/Gallus_gallus.Gallus_gallus-5.0.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Gallus_gallus/Ensembl/Galgal5/Gallus_gallus.Gallus_gallus-5.0.92.gtf -n Galgal5_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Gallus_gallus/Ensembl/Galgal5/Gallus_gallus.Gallus_gallus-5.0.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Gallus_gallus/Ensembl/Galgal5/Gallus_gallus.Gallus_gallus-5.0.92.gtf -n Galgal5_exon
srun sort -V -k5,6 info/Galgal5_cds_info.iic > tmp/cds.tsv
srun sort -V -k5,6 info/Galgal5_exon_info.iic > tmp/exon.tsv
srun python3.6 noncoding_introns.py Galgal5
srun Rscript get_gene_symbols.R default Galgal5 Gallus_gallus

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Glycine_max/Ensembl/Gm02/Glycine_max.Glycine_max_v2.0.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Glycine_max/Ensembl/Gm02/Glycine_max.Glycine_max_v2.0.39.gtf -n Gm02_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Glycine_max/Ensembl/Gm02/Glycine_max.Glycine_max_v2.0.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Glycine_max/Ensembl/Gm02/Glycine_max.Glycine_max_v2.0.39.gtf -n Gm02_exon
srun sort -V -k5,6 info/Gm02_cds_info.iic > tmp/cds.tsv
srun sort -V -k5,6 info/Gm02_exon_info.iic > tmp/exon.tsv
srun python3.6 noncoding_introns.py Gm02
srun Rscript get_gene_symbols.R plants Gm02 Glycine_max

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Homo_sapiens/Ensembl/GRCh38/Homo_sapiens.GRCh38.dna.primary_assembly.fa -a /mnt/isilon/data/iGenomes/Homo_sapiens/Ensembl/GRCh38/Homo_sapiens.GRCh38.92.chr.gtf -n GRCh38_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Homo_sapiens/Ensembl/GRCh38/Homo_sapiens.GRCh38.dna.primary_assembly.fa -a /mnt/isilon/data/iGenomes/Homo_sapiens/Ensembl/GRCh38/Homo_sapiens.GRCh38.92.chr.gtf -n GRCh38_exon
srun sort -V -k5,6 info/GRCh38_cds_info.iic > tmp/cds.tsv
srun sort -V -k5,6 info/GRCh38_exon_info.iic > tmp/exon.tsv
srun python3.6 noncoding_introns.py GRCh38
srun Rscript get_gene_symbols.R default GRCh38 Homo_sapiens

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Homo_sapiens/Ensembl/GRCh37/Sequence/WholeGenomeFasta/genome.fa -a /mnt/isilon/data/iGenomes/Homo_sapiens/Ensembl/GRCh37/Annotation/Genes/genes.gtf -n GRCh37_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Homo_sapiens/Ensembl/GRCh37/Sequence/WholeGenomeFasta/genome.fa -a /mnt/isilon/data/iGenomes/Homo_sapiens/Ensembl/GRCh37/Annotation/Genes/genes.gtf -n GRCh37_exon
srun sort -V -k5,6 info/GRCh37_cds_info.iic > tmp/cds.tsv
srun sort -V -k5,6 info/GRCh37_exon_info.iic > tmp/exon.tsv
srun python3.6 noncoding_introns.py GRCh37
srun Rscript get_gene_symbols.R GRCh37 GRCh37 Homo_sapiens # no that's not a typo; there's a division of Ensembl called GRCh37

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Macaca_mulatta/Ensembl/Mmul_8.0.1/Macaca_mulatta.Mmul_8.0.1.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Macaca_mulatta/Ensembl/Mmul_8.0.1/Macaca_mulatta.Mmul_8.0.1.92.gtf -n Mmul_8.0.1_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Macaca_mulatta/Ensembl/Mmul_8.0.1/Macaca_mulatta.Mmul_8.0.1.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Macaca_mulatta/Ensembl/Mmul_8.0.1/Macaca_mulatta.Mmul_8.0.1.92.gtf -n Mmul_8.0.1_exon
srun sort -V -k5,6 info/Mmul_8.0.1_cds_info.iic > tmp/cds.tsv
srun sort -V -k5,6 info/Mmul_8.0.1_exon_info.iic > tmp/exon.tsv
srun python3.6 noncoding_introns.py Mmul_8.0.1
srun Rscript get_gene_symbols.R default Mmul_8.0.1 Macaca_mulatta

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Monodelphis_domestica/Ensembl/monDom5/Monodelphis_domestica.monDom5.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Monodelphis_domestica/Ensembl/monDom5/Monodelphis_domestica.monDom5.92.gtf -n monDom5_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Monodelphis_domestica/Ensembl/monDom5/Monodelphis_domestica.monDom5.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Monodelphis_domestica/Ensembl/monDom5/Monodelphis_domestica.monDom5.92.gtf -n monDom5_exon
srun sort -V -k5,6 info/monDom5_cds_info.iic > tmp/cds.tsv
srun sort -V -k5,6 info/monDom5_exon_info.iic > tmp/exon.tsv
srun python3.6 noncoding_introns.py monDom5
srun Rscript get_gene_symbols.R default monDom5 Monodelphis_domestica

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Mus_musculus/Ensembl/GRCm38/Mus_musculus.GRCm38.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Mus_musculus/Ensembl/GRCm38/Mus_musculus.GRCm38.92.gtf -n GRCm38_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Mus_musculus/Ensembl/GRCm38/Mus_musculus.GRCm38.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Mus_musculus/Ensembl/GRCm38/Mus_musculus.GRCm38.92.gtf -n GRCm38_exon
srun sort -V -k5,6 info/GRCm38_cds_info.iic > tmp/cds.tsv
srun sort -V -k5,6 info/GRCm38_exon_info.iic > tmp/exon.tsv
srun python3.6 noncoding_introns.py GRCm38
srun Rscript get_gene_symbols.R default GRCm38 Mus_musculus

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Oryza_sativa_japonica/Ensembl/IRGSP-1.0/Sequence/WholeGenomeFasta/genome.fa -a /mnt/isilon/data/iGenomes/Oryza_sativa_japonica/Ensembl/IRGSP-1.0/Annotation/Genes/genes.gtf -n IRGSP-1.0_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Oryza_sativa_japonica/Ensembl/IRGSP-1.0/Sequence/WholeGenomeFasta/genome.fa -a /mnt/isilon/data/iGenomes/Oryza_sativa_japonica/Ensembl/IRGSP-1.0/Annotation/Genes/genes.gtf -n IRGSP-1.0_exon
srun sort -V -k5,6 info/IRGSP-1.0_cds_info.iic > tmp/cds.tsv
srun sort -V -k5,6 info/IRGSP-1.0_exon_info.iic > tmp/exon.tsv
srun python3.6 noncoding_introns.py IRGSP-1.0
srun Rscript get_gene_symbols.R plants IRGSP-1.0 Oryza_sativa

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Pan_troglodytes/Ensembl/Pan_tro_3.0/Pan_troglodytes.Pan_tro_3.0.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Pan_troglodytes/Ensembl/Pan_tro_3.0/Pan_troglodytes.Pan_tro_3.0.92.gtf -n Pan_tro_3.0_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Pan_troglodytes/Ensembl/Pan_tro_3.0/Pan_troglodytes.Pan_tro_3.0.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Pan_troglodytes/Ensembl/Pan_tro_3.0/Pan_troglodytes.Pan_tro_3.0.92.gtf -n Pan_tro_3.0_exon
srun sort -V -k5,6 info/Pan_tro_3.0_cds_info.iic > tmp/cds.tsv
srun sort -V -k5,6 info/Pan_tro_3.0_exon_info.iic > tmp/exon.tsv
srun python3.6 noncoding_introns.py Pan_tro_3.0
srun Rscript get_gene_symbols.R default Pan_tro_3.0 Pan_troglodytes

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Rattus_norvegicus/Ensembl/Rnor_6.0/Rattus_norvegicus.Rnor_6.0.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Rattus_norvegicus/Ensembl/Rnor_6.0/Rattus_norvegicus.Rnor_6.0.92.gtf -n Rnor_6.0_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Rattus_norvegicus/Ensembl/Rnor_6.0/Rattus_norvegicus.Rnor_6.0.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Rattus_norvegicus/Ensembl/Rnor_6.0/Rattus_norvegicus.Rnor_6.0.92.gtf -n Rnor_6.0_exon
srun sort -V -k5,6 info/Rnor_6.0_cds_info.iic > tmp/cds.tsv
srun sort -V -k5,6 info/Rnor_6.0_exon_info.iic > tmp/exon.tsv
srun python3.6 noncoding_introns.py Rnor_6.0
srun Rscript get_gene_symbols.R default Rnor_6.0 Rattus_norvegicus

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Saccharomyces_cerevisiae/Ensembl/R64-1-1/Sequence/WholeGenomeFasta/genome.fa -a /mnt/isilon/data/iGenomes/Saccharomyces_cerevisiae/Ensembl/R64-1-1/Annotation/Genes/genes.gtf -n R64-1-1_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Saccharomyces_cerevisiae/Ensembl/R64-1-1/Sequence/WholeGenomeFasta/genome.fa -a /mnt/isilon/data/iGenomes/Saccharomyces_cerevisiae/Ensembl/R64-1-1/Annotation/Genes/genes.gtf -n R64-1-1_exon
srun sort -V -k5,6 info/R64-1-1_cds_info.iic > tmp/cds.tsv
srun sort -V -k5,6 info/R64-1-1_exon_info.iic > tmp/exon.tsv
srun python3.6 noncoding_introns.py R64-1-1
srun Rscript get_gene_symbols.R default R64-1-1 Saccharomyces_cerevisiae

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Schizosaccharomyces_pombe/Ensembl/ASM294v2/Schizosaccharomyces_pombe.ASM294v2.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Schizosaccharomyces_pombe/Ensembl/ASM294v2/Schizosaccharomyces_pombe.ASM294v2.40.gtf -n ASM294v2_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Schizosaccharomyces_pombe/Ensembl/ASM294v2/Schizosaccharomyces_pombe.ASM294v2.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Schizosaccharomyces_pombe/Ensembl/ASM294v2/Schizosaccharomyces_pombe.ASM294v2.40.gtf -n ASM294v2_exon
srun sort -V -k5,6 info/ASM294v2_cds_info.iic > tmp/cds.tsv
srun sort -V -k5,6 info/ASM294v2_exon_info.iic > tmp/exon.tsv
srun python3.6 noncoding_introns.py ASM294v2
srun Rscript get_gene_symbols.R fungi ASM294v2 Schizosaccharomyces_pombe

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Takifugu_rubripes/Ensembl/FUGU5/Takifugu_rubripes.FUGU5.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Takifugu_rubripes/Ensembl/FUGU5/Takifugu_rubripes.FUGU5.94.gtf -n FUGU5_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Takifugu_rubripes/Ensembl/FUGU5/Takifugu_rubripes.FUGU5.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Takifugu_rubripes/Ensembl/FUGU5/Takifugu_rubripes.FUGU5.94.gtf -n FUGU5_exon
srun sort -V -k5,6 info/FUGU5_cds_info.iic > tmp/cds.tsv
srun sort -V -k5,6 info/FUGU5_exon_info.iic > tmp/exon.tsv
srun python3.6 noncoding_introns.py FUGU5
srun Rscript get_gene_symbols.R default FUGU5 Takifugu_rubripes

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Tetraodon_nigroviridis/Ensembl/TETRAODON8/Tetraodon_nigroviridis.TETRAODON8.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Tetraodon_nigroviridis/Ensembl/TETRAODON8/Tetraodon_nigroviridis.TETRAODON8.92.gtf -n TETRAODON8_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Tetraodon_nigroviridis/Ensembl/TETRAODON8/Tetraodon_nigroviridis.TETRAODON8.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Tetraodon_nigroviridis/Ensembl/TETRAODON8/Tetraodon_nigroviridis.TETRAODON8.92.gtf -n TETRAODON8_exon
srun sort -V -k5,6 info/TETRAODON8_cds_info.iic > tmp/cds.tsv
srun sort -V -k5,6 info/TETRAODON8_exon_info.iic > tmp/exon.tsv
srun python3.6 noncoding_introns.py TETRAODON8
srun Rscript get_gene_symbols.R default TETRAODON8 Tetraodon_nigroviridis

srun python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Zea_mays/Ensembl/AGPv4/Sequence/WholeGenomeFasta/genome.fa -a /mnt/isilon/data/iGenomes/Zea_mays/Ensembl/AGPv4/Annotation/Genes/genes.gtf -n AGPv4_cds
srun python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Zea_mays/Ensembl/AGPv4/Sequence/WholeGenomeFasta/genome.fa -a /mnt/isilon/data/iGenomes/Zea_mays/Ensembl/AGPv4/Annotation/Genes/genes.gtf -n AGPv4_exon
srun sort -V -k5,6 info/AGPv4_cds_info.iic > tmp/cds.tsv
srun sort -V -k5,6 info/AGPv4_exon_info.iic > tmp/exon.tsv
srun python3.6 noncoding_introns.py AGPv4
srun Rscript get_gene_symbols.R plants AGPv4 Zea_mays

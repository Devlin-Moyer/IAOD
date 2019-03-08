# create_db.sh
# creates database of intron annotation information annotated by intronIC and homology information annotated by reciprocal BLAST for 24 genomes
# requires python3.6, R 3.5.0, and blast 2.7.1
# requires peewee 3.9.2, biomaRt

# run intronIC on all 24 IAOD genomes

python intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Anopheles_gambiae/Ensembl/AgamP4/Anopheles_gambiae.AgamP4.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Anopheles_gambiae/Ensembl/AgamP4/Anopheles_gambiae.AgamP4.39.gtf -n AgamP4_cds
python intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Anopheles_gambiae/Ensembl/AgamP4/Anopheles_gambiae.AgamP4.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Anopheles_gambiae/Ensembl/AgamP4/Anopheles_gambiae.AgamP4.39.gtf -n AgamP4_exon
python deduplicate.py AgamP4
python noncoding_introns.py AgamP4
Rscript get_gene_symbols.R metazoa AgamP4 Anopheles_gambiae

python intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Apis_mellifera/Ensembl/Amel_4.5/Apis_mellifera.Amel_4.5.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Apis_mellifera/Ensembl/Amel_4.5/Apis_mellifera.Amel_4.5.39.gtf -n Amel_4.5_cds
python intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Apis_mellifera/Ensembl/Amel_4.5/Apis_mellifera.Amel_4.5.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Apis_mellifera/Ensembl/Amel_4.5/Apis_mellifera.Amel_4.5.39.gtf -n Amel_4.5_exon
python deduplicate.py Amel_4.5
python noncoding_introns.py Amel_4.5
Rscript get_gene_symbols.R metazoa Amel_4.5 Apis_mellifera

python intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Arabidopsis_thaliana/Ensembl/TAIR10/Arabidopsis_thaliana.TAIR10.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Arabidopsis_thaliana/Ensembl/TAIR10/Arabidopsis_thaliana.TAIR10.39.gtf -n TAIR10_cds
python intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Arabidopsis_thaliana/Ensembl/TAIR10/Arabidopsis_thaliana.TAIR10.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Arabidopsis_thaliana/Ensembl/TAIR10/Arabidopsis_thaliana.TAIR10.39.gtf -n TAIR10_exon
python deduplicate.py TAIR10
python noncoding_introns.py TAIR10
Rscript get_gene_symbols.R plants TAIR10 Arabidopsis_thaliana

python intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Danio_rerio/Ensembl/GRCz11/Danio_rerio.GRCz11.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Danio_rerio/Ensembl/GRCz11/Danio_rerio.GRCz11.92.gtf -n GRCz11_cds
python intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Danio_rerio/Ensembl/GRCz11/Danio_rerio.GRCz11.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Danio_rerio/Ensembl/GRCz11/Danio_rerio.GRCz11.92.gtf -n GRCz11_exon
python deduplicate.py GRCz11
python noncoding_introns.py GRCz11
Rscript get_gene_symbols.R default GRCz11 Danio_rerio

python intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Bos_taurus/Ensembl/UMD3.1/Sequence/WholeGenomeFasta/genome.fa -a /mnt/isilon/data/iGenomes/Bos_taurus/Ensembl/UMD3.1/Annotation/Genes/genes.gtf -n UMD3.1_cds
python intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Bos_taurus/Ensembl/UMD3.1/Sequence/WholeGenomeFasta/genome.fa -a /mnt/isilon/data/iGenomes/Bos_taurus/Ensembl/UMD3.1/Annotation/Genes/genes.gtf -n UMD3.1_exon
python deduplicate.py UMD3.1
python noncoding_introns.py UMD3.1
Rscript get_gene_symbols.R default UMD3.1 Bos_taurus
python intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Caenorhabditis_elegans/Ensembl/WBcel235/Caenorhabditis_elegans.WBcel235.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Caenorhabditis_elegans/Ensembl/WBcel235/Caenorhabditis_elegans.WBcel235.92.gtf -n WBcel235_cds
python intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Caenorhabditis_elegans/Ensembl/WBcel235/Caenorhabditis_elegans.WBcel235.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Caenorhabditis_elegans/Ensembl/WBcel235/Caenorhabditis_elegans.WBcel235.92.gtf -n WBcel235_exon
python deduplicate.py WBcel235
python noncoding_introns.py WBcel235
Rscript get_gene_symbols.R default WBcel235 Caenorhabditis_elegans

python intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Canis_familiaris/Ensembl/CanFam3.1/Sequence/WholeGenomeFasta/genome.fa -a /mnt/isilon/data/iGenomes/Canis_familiaris/Ensembl/CanFam3.1/Annotation/Genes/genes.gtf -n CanFam3.1_cds
python intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Canis_familiaris/Ensembl/CanFam3.1/Sequence/WholeGenomeFasta/genome.fa -a /mnt/isilon/data/iGenomes/Canis_familiaris/Ensembl/CanFam3.1/Annotation/Genes/genes.gtf -n CanFam3.1_exon
python deduplicate.py CanFam3.1
python noncoding_introns.py CanFam3.1
Rscript get_gene_symbols.R default CanFam3.1 Canis_familiaris

python intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Ciona_intestinalis/Ensembl/KH/Ciona_intestinalis.KH.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Ciona_intestinalis/Ensembl/KH/Ciona_intestinalis.KH.92.gtf -n KH_cds
python intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Ciona_intestinalis/Ensembl/KH/Ciona_intestinalis.KH.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Ciona_intestinalis/Ensembl/KH/Ciona_intestinalis.KH.92.gtf -n KH_exon
python deduplicate.py KH
python noncoding_introns.py KH
Rscript get_gene_symbols.R default KH Ciona_intestinalis

python intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Drosophila_melanogaster/Ensembl/BDGP6/Drosophila_melanogaster.BDGP6.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Drosophila_melanogaster/Ensembl/BDGP6/Drosophila_melanogaster.BDGP6.92.gtf -n BDGP6_cds
python intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Drosophila_melanogaster/Ensembl/BDGP6/Drosophila_melanogaster.BDGP6.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Drosophila_melanogaster/Ensembl/BDGP6/Drosophila_melanogaster.BDGP6.92.gtf -n BDGP6_exon
python deduplicate.py BDGP6
python noncoding_introns.py BDGP6
Rscript get_gene_symbols.R default BDGP6 Drosophila_melanogaster

python intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Gallus_gallus/Ensembl/Galgal5/Gallus_gallus.Gallus_gallus-5.0.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Gallus_gallus/Ensembl/Galgal5/Gallus_gallus.Gallus_gallus-5.0.92.gtf -n Galgal5_cds
python intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Gallus_gallus/Ensembl/Galgal5/Gallus_gallus.Gallus_gallus-5.0.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Gallus_gallus/Ensembl/Galgal5/Gallus_gallus.Gallus_gallus-5.0.92.gtf -n Galgal5_exon
python deduplicate.py Galgal5
python noncoding_introns.py Galgal5
Rscript get_gene_symbols.R default Galgal5 Gallus_gallus

python intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Glycine_max/Ensembl/Gm02/Glycine_max.Glycine_max_v2.0.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Glycine_max/Ensembl/Gm02/Glycine_max.Glycine_max_v2.0.39.gtf -n Gm02_cds
python intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Glycine_max/Ensembl/Gm02/Glycine_max.Glycine_max_v2.0.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Glycine_max/Ensembl/Gm02/Glycine_max.Glycine_max_v2.0.39.gtf -n Gm02_exon
python deduplicate.py Gm02
python noncoding_introns.py Gm02
Rscript get_gene_symbols.R plants Gm02 Glycine_max

python intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Homo_sapiens/Ensembl/GRCh38/Homo_sapiens.GRCh38.dna.primary_assembly.fa -a /mnt/isilon/data/iGenomes/Homo_sapiens/Ensembl/GRCh38/Homo_sapiens.GRCh38.92.chr.gtf -n GRCh38_cds
python intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Homo_sapiens/Ensembl/GRCh38/Homo_sapiens.GRCh38.dna.primary_assembly.fa -a /mnt/isilon/data/iGenomes/Homo_sapiens/Ensembl/GRCh38/Homo_sapiens.GRCh38.92.chr.gtf -n GRCh38_exon
python deduplicate.py GRCh38
python noncoding_introns.py GRCh38
Rscript get_gene_symbols.R default GRCh38 Homo_sapiens

python intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Homo_sapiens/Ensembl/GRCh37/Sequence/WholeGenomeFasta/genome.fa -a /mnt/isilon/data/iGenomes/Homo_sapiens/Ensembl/GRCh37/Annotation/Genes/genes.gtf -n GRCh37_cds
python intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Homo_sapiens/Ensembl/GRCh37/Sequence/WholeGenomeFasta/genome.fa -a /mnt/isilon/data/iGenomes/Homo_sapiens/Ensembl/GRCh37/Annotation/Genes/genes.gtf -n GRCh37_exon
python deduplicate.py GRCh37
python noncoding_introns.py GRCh37
Rscript get_gene_symbols.R GRCh37 GRCh37 Homo_sapiens # no that's not a typo; there's a division of Ensembl called GRCh37

python intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Macaca_mulatta/Ensembl/Mmul_8.0.1/Macaca_mulatta.Mmul_8.0.1.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Macaca_mulatta/Ensembl/Mmul_8.0.1/Macaca_mulatta.Mmul_8.0.1.92.gtf -n Mmul_8.0.1_cds
python intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Macaca_mulatta/Ensembl/Mmul_8.0.1/Macaca_mulatta.Mmul_8.0.1.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Macaca_mulatta/Ensembl/Mmul_8.0.1/Macaca_mulatta.Mmul_8.0.1.92.gtf -n Mmul_8.0.1_exon
python deduplicate.py Mmul_8.0.1
python noncoding_introns.py Mmul_8.0.1
Rscript get_gene_symbols.R default Mmul_8.0.1 Macaca_mulatta

python intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Monodelphis_domestica/Ensembl/monDom5/Monodelphis_domestica.monDom5.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Monodelphis_domestica/Ensembl/monDom5/Monodelphis_domestica.monDom5.92.gtf -n monDom5_cds
python intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Monodelphis_domestica/Ensembl/monDom5/Monodelphis_domestica.monDom5.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Monodelphis_domestica/Ensembl/monDom5/Monodelphis_domestica.monDom5.92.gtf -n monDom5_exon
python deduplicate.py monDom5
python noncoding_introns.py monDom5
Rscript get_gene_symbols.R default monDom5 Monodelphis_domestica

python intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Mus_musculus/Ensembl/GRCm38/Mus_musculus.GRCm38.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Mus_musculus/Ensembl/GRCm38/Mus_musculus.GRCm38.92.gtf -n GRCm38_cds
python intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Mus_musculus/Ensembl/GRCm38/Mus_musculus.GRCm38.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Mus_musculus/Ensembl/GRCm38/Mus_musculus.GRCm38.92.gtf -n GRCm38_exon
python deduplicate.py GRCm38
python noncoding_introns.py GRCm38
Rscript get_gene_symbols.R default GRCm38 Mus_musculus

python intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Oryza_sativa_japonica/Ensembl/IRGSP-1.0/Sequence/WholeGenomeFasta/genome.fa -a /mnt/isilon/data/iGenomes/Oryza_sativa_japonica/Ensembl/IRGSP-1.0/Annotation/Genes/genes.gtf -n IRGSP-1.0_cds
python intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Oryza_sativa_japonica/Ensembl/IRGSP-1.0/Sequence/WholeGenomeFasta/genome.fa -a /mnt/isilon/data/iGenomes/Oryza_sativa_japonica/Ensembl/IRGSP-1.0/Annotation/Genes/genes.gtf -n IRGSP-1.0_exon
python deduplicate.py IRGSP-1.0
python noncoding_introns.py IRGSP-1.0
Rscript get_gene_symbols.R plants IRGSP-1.0 Oryza_sativa

python intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Pan_troglodytes/Ensembl/Pan_tro_3.0/Pan_troglodytes.Pan_tro_3.0.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Pan_troglodytes/Ensembl/Pan_tro_3.0/Pan_troglodytes.Pan_tro_3.0.92.gtf -n Pan_tro_3.0_cds
python intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Pan_troglodytes/Ensembl/Pan_tro_3.0/Pan_troglodytes.Pan_tro_3.0.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Pan_troglodytes/Ensembl/Pan_tro_3.0/Pan_troglodytes.Pan_tro_3.0.92.gtf -n Pan_tro_3.0_exon
python deduplicate.py Pan_tro_3.0
python noncoding_introns.py Pan_tro_3.0
Rscript get_gene_symbols.R default Pan_tro_3.0 Pan_troglodytes

python intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Rattus_norvegicus/Ensembl/Rnor_6.0/Rattus_norvegicus.Rnor_6.0.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Rattus_norvegicus/Ensembl/Rnor_6.0/Rattus_norvegicus.Rnor_6.0.92.gtf -n Rnor_6.0_cds
python intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Rattus_norvegicus/Ensembl/Rnor_6.0/Rattus_norvegicus.Rnor_6.0.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Rattus_norvegicus/Ensembl/Rnor_6.0/Rattus_norvegicus.Rnor_6.0.92.gtf -n Rnor_6.0_exon
python deduplicate.py Rnor_6.0
python noncoding_introns.py Rnor_6.0
Rscript get_gene_symbols.R default Rnor_6.0 Rattus_norvegicus

python intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Saccharomyces_cerevisiae/Ensembl/R64-1-1/Sequence/WholeGenomeFasta/genome.fa -a /mnt/isilon/data/iGenomes/Saccharomyces_cerevisiae/Ensembl/R64-1-1/Annotation/Genes/genes.gtf -n R64-1-1_cds
python intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Saccharomyces_cerevisiae/Ensembl/R64-1-1/Sequence/WholeGenomeFasta/genome.fa -a /mnt/isilon/data/iGenomes/Saccharomyces_cerevisiae/Ensembl/R64-1-1/Annotation/Genes/genes.gtf -n R64-1-1_exon
python deduplicate.py R64-1-1
python noncoding_introns.py R64-1-1
Rscript get_gene_symbols.R default R64-1-1 Saccharomyces_cerevisiae

python intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Schizosaccharomyces_pombe/Ensembl/ASM294v2/Schizosaccharomyces_pombe.ASM294v2.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Schizosaccharomyces_pombe/Ensembl/ASM294v2/Schizosaccharomyces_pombe.ASM294v2.40.gtf -n ASM294v2_cds
python intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Schizosaccharomyces_pombe/Ensembl/ASM294v2/Schizosaccharomyces_pombe.ASM294v2.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Schizosaccharomyces_pombe/Ensembl/ASM294v2/Schizosaccharomyces_pombe.ASM294v2.40.gtf -n ASM294v2_exon
python deduplicate.py ASM294v2
python noncoding_introns.py ASM294v2
Rscript get_gene_symbols.R fungi ASM294v2 Schizosaccharomyces_pombe

python intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Takifugu_rubripes/Ensembl/FUGU5/Takifugu_rubripes.FUGU5.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Takifugu_rubripes/Ensembl/FUGU5/Takifugu_rubripes.FUGU5.94.gtf -n FUGU5_cds
python intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Takifugu_rubripes/Ensembl/FUGU5/Takifugu_rubripes.FUGU5.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Takifugu_rubripes/Ensembl/FUGU5/Takifugu_rubripes.FUGU5.94.gtf -n FUGU5_exon
python deduplicate.py FUGU5
python noncoding_introns.py FUGU5
Rscript get_gene_symbols.R default FUGU5 Takifugu_rubripes

python intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Tetraodon_nigroviridis/Ensembl/TETRAODON8/Tetraodon_nigroviridis.TETRAODON8.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Tetraodon_nigroviridis/Ensembl/TETRAODON8/Tetraodon_nigroviridis.TETRAODON8.92.gtf -n TETRAODON8_cds
python intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Tetraodon_nigroviridis/Ensembl/TETRAODON8/Tetraodon_nigroviridis.TETRAODON8.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Tetraodon_nigroviridis/Ensembl/TETRAODON8/Tetraodon_nigroviridis.TETRAODON8.92.gtf -n TETRAODON8_exon
python deduplicate.py TETRAODON8
python noncoding_introns.py TETRAODON8
Rscript get_gene_symbols.R default TETRAODON8 Tetraodon_nigroviridis

python intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Zea_mays/Ensembl/AGPv4/Sequence/WholeGenomeFasta/genome.fa -a /mnt/isilon/data/iGenomes/Zea_mays/Ensembl/AGPv4/Annotation/Genes/genes.gtf -n AGPv4_cds
python intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Zea_mays/Ensembl/AGPv4/Sequence/WholeGenomeFasta/genome.fa -a /mnt/isilon/data/iGenomes/Zea_mays/Ensembl/AGPv4/Annotation/Genes/genes.gtf -n AGPv4_exon
python deduplicate.py AGPv4
python noncoding_introns.py AGPv4
Rscript get_gene_symbols.R plants AGPv4 Zea_mays

python intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Xenopus_tropicalis/Ensembl/JGI_4.2/Xenopus_tropicalis.JGI_4.2.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Xenopus_tropicalis/Ensembl/JGI_4.2/Xenopus_tropicalis.JGI_4.2.92.gtf -n JGI_4.2_cds
python intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Xenopus_tropicalis/Ensembl/JGI_4.2/Xenopus_tropicalis.JGI_4.2.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Xenopus_tropicalis/Ensembl/JGI_4.2/Xenopus_tropicalis.JGI_4.2.92.gtf -n JGI_4.2_exon
python deduplicate.py JGI_4.2
python noncoding_introns.py JGI_4.2
Rscript get_gene_symbols.R default JGI_4.2 Xenopus_tropicalis

# annotate intron homologs using blastn

python isolate_seqs.py recreate
python ortholog_combinations.py recreate

# turn lists of homologous pairs into a list of homology groups

Rscript ortholog_clusters.R
# for mysterious reasons, some "clusters" have only one intron in them
awk 'NF > 1 {print}' extra_clusters.txt > clusters.txt
rm extra_clusters.txt
python ortholog_sql.py

# combine annotation and homology information into a single table in the database for each genome

python reformatting.py AgamP4 Anopheles_gambiae Mosquito
python reformatting.py Amel_4.5 Apis_mellifera Honeybee
python reformatting.py TAIR10 Arabidopsis_thaliana Thale_cress
python reformatting.py UMD3.1 Bos_taurus Cow
python reformatting.py WBcel235 Caenorhabditis_elegans Nematode_worm
python reformatting.py CanFam3.1 Canis_familiaris Dog
python reformatting.py KH Ciona_intestinalis Vase_tunicate
python reformatting.py GRCz11 Danio_rerio Zebrafish
python reformatting.py BDGP6 Drosophila_melanogaster Fruit_fly
python reformatting.py Galgal5 Gallus_gallus Chicken
python reformatting.py Gm02 Glycine_max Soybean
python reformatting.py GRCh37 Homo_sapiens Human
python reformatting.py GRCh38 Homo_sapiens Human
python reformatting.py Mmul_8.0.1 Macaca_mulatta Rhesus_macaque
python reformatting.py monDom5 Monodelphis_domestica Opossum
python reformatting.py GRCm38 Mus_musculus Mouse
python reformatting.py ASM20922v1 Nematostella_vectensis Sea_anemone
python reformatting.py IRGSP-1.0 Oryza_sativa Rice
python reformatting.py Pan_tro_3.0 Pan_troglodytes Chimpanzee
python reformatting.py Rnor_6.0 Rattus_norvegicus Rat
python reformatting.py R64-1-1 Saccharomyces_cerevisiae Budding_yeast
python reformatting.py ASM294v2 Schizosaccharomyces_pombe Fission_yeast
python reformatting.py FUGU4 Takifugu_rubripes Japanese_puffer
python reformatting.py TETRAODON8 Tetraodon_nigroviridis Yellow_spotted_puffer
python reformatting.py AGPv4 Zea_mays Corn
python reformatting.py JGI_4.2 Xenopus_tropicalis Frog

# now that the database is created, there is no need for anything in info
rm info/*

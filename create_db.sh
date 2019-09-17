#!/bin/bash

# create_db.sh
# creates database of intron annotation information annotated by intronIC and homology information annotated by reciprocal BLAST for 24 genomes
# requires python3.6, R 3.5.0, and blast 2.7.1
# requires peewee 3.9.2, biomaRt

# run intronIC on all 24 IAOD genomes

python intronIC_devlin.py -nc -na -g Anopheles_gambiae.AgamP4.dna.toplevel.fa -a Anopheles_gambiae.AgamP4.39.gtf -n AgamP4_cds
python intronIC_devlin.py -nc -na -e -g Anopheles_gambiae.AgamP4.dna.toplevel.fa -a Anopheles_gambiae.AgamP4.39.gtf -n AgamP4_exon
python deduplicate.py AgamP4
Rscript get_gene_symbols.R metazoa AgamP4 Anopheles_gambiae

python intronIC_devlin.py -nc -na -g Apis_mellifera.Amel_4.5.dna.toplevel.fa -a Apis_mellifera.Amel_4.5.39.gtf -n Amel_4.5_cds
python intronIC_devlin.py -nc -na -e -g Apis_mellifera.Amel_4.5.dna.toplevel.fa -a Apis_mellifera.Amel_4.5.39.gtf -n Amel_4.5_exon
python deduplicate.py Amel_4.5
Rscript get_gene_symbols.R metazoa Amel_4.5 Apis_mellifera

python intronIC_devlin.py -nc -na -g Arabidopsis_thaliana.TAIR10.dna.toplevel.fa -a Arabidopsis_thaliana.TAIR10.39.gtf -n TAIR10_cds
python intronIC_devlin.py -nc -na -e -g Arabidopsis_thaliana.TAIR10.dna.toplevel.fa -a Arabidopsis_thaliana.TAIR10.39.gtf -n TAIR10_exon
python deduplicate.py TAIR10
Rscript get_gene_symbols.R plants TAIR10 Arabidopsis_thaliana

python intronIC_devlin.py -nc -na -g Danio_rerio.GRCz11.dna.toplevel.fa -a Danio_rerio.GRCz11.92.gtf -n GRCz11_cds
python intronIC_devlin.py -nc -na -e -g Danio_rerio.GRCz11.dna.toplevel.fa -a Danio_rerio.GRCz11.92.gtf -n GRCz11_exon
python deduplicate.py GRCz11
Rscript get_gene_symbols.R default GRCz11 Danio_rerio

python intronIC_devlin.py -nc -na -g UMD3.1/Sequence/WholeGenomeFasta/genome.fa -a UMD3.1/Annotation/Genes/genes.gtf -n UMD3.1_cds
python intronIC_devlin.py -nc -na -e -g UMD3.1/Sequence/WholeGenomeFasta/genome.fa -a UMD3.1/Annotation/Genes/genes.gtf -n UMD3.1_exon
python deduplicate.py UMD3.1
Rscript get_gene_symbols.R default UMD3.1 Bos_taurus

python intronIC_devlin.py -nc -na -g Caenorhabditis_elegans.WBcel235.dna.toplevel.fa -a Caenorhabditis_elegans.WBcel235.92.gtf -n WBcel235_cds
python intronIC_devlin.py -nc -na -e -g Caenorhabditis_elegans.WBcel235.dna.toplevel.fa -a Caenorhabditis_elegans.WBcel235.92.gtf -n WBcel235_exon
python deduplicate.py WBcel235
Rscript get_gene_symbols.R default WBcel235 Caenorhabditis_elegans

python intronIC_devlin.py -nc -na -g CanFam3.1/Sequence/WholeGenomeFasta/genome.fa -a CanFam3.1/Annotation/Genes/genes.gtf -n CanFam3.1_cds
python intronIC_devlin.py -nc -na -e -g CanFam3.1/Sequence/WholeGenomeFasta/genome.fa -a CanFam3.1/Annotation/Genes/genes.gtf -n CanFam3.1_exon
python deduplicate.py CanFam3.1
Rscript get_gene_symbols.R default CanFam3.1 Canis_familiaris

python intronIC_devlin.py -nc -na -g Ciona_intestinalis.KH.dna.toplevel.fa -a Ciona_intestinalis.KH.92.gtf -n KH_cds
python intronIC_devlin.py -nc -na -e -g Ciona_intestinalis.KH.dna.toplevel.fa -a Ciona_intestinalis.KH.92.gtf -n KH_exon
python deduplicate.py KH
Rscript get_gene_symbols.R default KH Ciona_intestinalis

python intronIC_devlin.py -nc -na -g Drosophila_melanogaster.BDGP6.dna.toplevel.fa -a Drosophila_melanogaster.BDGP6.92.gtf -n BDGP6_cds
python intronIC_devlin.py -nc -na -e -g Drosophila_melanogaster.BDGP6.dna.toplevel.fa -a Drosophila_melanogaster.BDGP6.92.gtf -n BDGP6_exon
python deduplicate.py BDGP6
Rscript get_gene_symbols.R default BDGP6 Drosophila_melanogaster

python intronIC_devlin.py -nc -na -g Gallus_gallus.Gallus_gallus-5.0.dna.toplevel.fa -a Gallus_gallus.Gallus_gallus-5.0.92.gtf -n Galgal5_cds
python intronIC_devlin.py -nc -na -e -g Gallus_gallus.Gallus_gallus-5.0.dna.toplevel.fa -a Gallus_gallus.Gallus_gallus-5.0.92.gtf -n Galgal5_exon
python deduplicate.py Galgal5
Rscript get_gene_symbols.R default Galgal5 Gallus_gallus

python intronIC_devlin.py -nc -na -g Glycine_max.Glycine_max_v2.0.dna.toplevel.fa -a Glycine_max.Glycine_max_v2.0.39.gtf -n Gm02_cds
python intronIC_devlin.py -nc -na -e -g Glycine_max.Glycine_max_v2.0.dna.toplevel.fa -a Glycine_max.Glycine_max_v2.0.39.gtf -n Gm02_exon
python deduplicate.py Gm02
Rscript get_gene_symbols.R plants Gm02 Glycine_max

python intronIC_devlin.py -nc -na -g Homo_sapiens.GRCh38.dna.primary_assembly.fa -a Homo_sapiens.GRCh38.92.chr.gtf -n GRCh38_cds
python intronIC_devlin.py -nc -na -e -g Homo_sapiens.GRCh38.dna.primary_assembly.fa -a Homo_sapiens.GRCh38.92.chr.gtf -n GRCh38_exon
python deduplicate.py GRCh38
Rscript get_gene_symbols.R default GRCh38 Homo_sapiens

python intronIC_devlin.py -nc -na -g GRCh37/Sequence/WholeGenomeFasta/genome.fa -a GRCh37/Annotation/Genes/genes.gtf -n GRCh37_cds
python intronIC_devlin.py -nc -na -e -g GRCh37/Sequence/WholeGenomeFasta/genome.fa -a GRCh37/Annotation/Genes/genes.gtf -n GRCh37_exon
python deduplicate.py GRCh37
Rscript get_gene_symbols.R GRCh37 GRCh37 Homo_sapiens # no that's not a typo; there's a division of Ensembl called GRCh37

python intronIC_devlin.py -nc -na -g Macaca_mulatta.Mmul_8.0.1.dna.toplevel.fa -a Macaca_mulatta.Mmul_8.0.1.92.gtf -n Mmul_8.0.1_cds
python intronIC_devlin.py -nc -na -e -g Macaca_mulatta.Mmul_8.0.1.dna.toplevel.fa -a Macaca_mulatta.Mmul_8.0.1.92.gtf -n Mmul_8.0.1_exon
python deduplicate.py Mmul_8.0.1
Rscript get_gene_symbols.R default Mmul_8.0.1 Macaca_mulatta

python intronIC_devlin.py -nc -na -g Monodelphis_domestica.monDom5.dna.toplevel.fa -a Monodelphis_domestica.monDom5.92.gtf -n monDom5_cds
python intronIC_devlin.py -nc -na -e -g Monodelphis_domestica.monDom5.dna.toplevel.fa -a Monodelphis_domestica.monDom5.92.gtf -n monDom5_exon
python deduplicate.py monDom5
Rscript get_gene_symbols.R default monDom5 Monodelphis_domestica

python intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Mus_musculus/Ensembl/GRCm38/Mus_musculus.GRCm38.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Mus_musculus/Ensembl/GRCm38/Mus_musculus.GRCm38.92.gtf -n GRCm38_cds
python intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Mus_musculus/Ensembl/GRCm38/Mus_musculus.GRCm38.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Mus_musculus/Ensembl/GRCm38/Mus_musculus.GRCm38.92.gtf -n GRCm38_exon
python deduplicate.py GRCm38
Rscript get_gene_symbols.R default GRCm38 Mus_musculus

python intronIC_devlin.py -nc -na -g IRGSP-1.0/Sequence/WholeGenomeFasta/genome.fa -a IRGSP-1.0/Annotation/Genes/genes.gtf -n IRGSP-1.0_cds
python intronIC_devlin.py -nc -na -e -g IRGSP-1.0/Sequence/WholeGenomeFasta/genome.fa -a IRGSP-1.0/Annotation/Genes/genes.gtf -n IRGSP-1.0_exon
python deduplicate.py IRGSP-1.0
Rscript get_gene_symbols.R plants IRGSP-1.0 Oryza_sativa

python intronIC_devlin.py -nc -na -g Pan_troglodytes.Pan_tro_3.0.dna.toplevel.fa -a Pan_troglodytes.Pan_tro_3.0.92.gtf -n Pan_tro_3.0_cds
python intronIC_devlin.py -nc -na -e -g Pan_troglodytes.Pan_tro_3.0.dna.toplevel.fa -a Pan_troglodytes.Pan_tro_3.0.92.gtf -n Pan_tro_3.0_exon
python deduplicate.py Pan_tro_3.0
Rscript get_gene_symbols.R default Pan_tro_3.0 Pan_troglodytes

python intronIC_devlin.py -nc -na -g Rattus_norvegicus.Rnor_6.0.dna.toplevel.fa -a Rattus_norvegicus.Rnor_6.0.92.gtf -n Rnor_6.0_cds
python intronIC_devlin.py -nc -na -e -g Rattus_norvegicus.Rnor_6.0.dna.toplevel.fa -a Rattus_norvegicus.Rnor_6.0.92.gtf -n Rnor_6.0_exon
python deduplicate.py Rnor_6.0
Rscript get_gene_symbols.R default Rnor_6.0 Rattus_norvegicus

python intronIC_devlin.py -nc -na -g R64-1-1/Sequence/WholeGenomeFasta/genome.fa -a R64-1-1/Annotation/Genes/genes.gtf -n R64-1-1_cds
python intronIC_devlin.py -nc -na -e -g R64-1-1/Sequence/WholeGenomeFasta/genome.fa -a R64-1-1/Annotation/Genes/genes.gtf -n R64-1-1_exon
python deduplicate.py R64-1-1
Rscript get_gene_symbols.R default R64-1-1 Saccharomyces_cerevisiae

python intronIC_devlin.py -nc -na -g Schizosaccharomyces_pombe.ASM294v2.dna.toplevel.fa -a Schizosaccharomyces_pombe.ASM294v2.40.gtf -n ASM294v2_cds
python intronIC_devlin.py -nc -na -e -g Schizosaccharomyces_pombe.ASM294v2.dna.toplevel.fa -a Schizosaccharomyces_pombe.ASM294v2.40.gtf -n ASM294v2_exon
python deduplicate.py ASM294v2
Rscript get_gene_symbols.R fungi ASM294v2 Schizosaccharomyces_pombe

python intronIC_devlin.py -nc -na -g Takifugu_rubripes.FUGU5.dna.toplevel.fa -a Takifugu_rubripes.FUGU5.94.gtf -n FUGU5_cds
python intronIC_devlin.py -nc -na -e -g Takifugu_rubripes.FUGU5.dna.toplevel.fa -a Takifugu_rubripes.FUGU5.94.gtf -n FUGU5_exon
python deduplicate.py FUGU5
Rscript get_gene_symbols.R default FUGU5 Takifugu_rubripes

python intronIC_devlin.py -nc -na -g Tetraodon_nigroviridis.TETRAODON8.dna.toplevel.fa -a Tetraodon_nigroviridis.TETRAODON8.92.gtf -n TETRAODON8_cds
python intronIC_devlin.py -nc -na -e -g Tetraodon_nigroviridis.TETRAODON8.dna.toplevel.fa -a Tetraodon_nigroviridis.TETRAODON8.92.gtf -n TETRAODON8_exon
python deduplicate.py TETRAODON8
Rscript get_gene_symbols.R default TETRAODON8 Tetraodon_nigroviridis

python intronIC_devlin.py -nc -na -g AGPv4/Sequence/WholeGenomeFasta/genome.fa -a AGPv4/Annotation/Genes/genes.gtf -n AGPv4_cds
python intronIC_devlin.py -nc -na -e -g AGPv4/Sequence/WholeGenomeFasta/genome.fa -a AGPv4/Annotation/Genes/genes.gtf -n AGPv4_exon
python deduplicate.py AGPv4
Rscript get_gene_symbols.R plants AGPv4 Zea_mays

python intronIC_devlin.py -nc -na -g Xenopus_tropicalis.JGI_4.2.dna.toplevel.fa -a Xenopus_tropicalis.JGI_4.2.92.gtf -n JGI_4.2_cds
python intronIC_devlin.py -nc -na -e -g Xenopus_tropicalis.JGI_4.2.dna.toplevel.fa -a Xenopus_tropicalis.JGI_4.2.92.gtf -n JGI_4.2_exon
python deduplicate.py JGI_4.2
python noncoding_introns.py JGI_4.2
Rscript get_gene_symbols.R default JGI_4.2 Xenopus_tropicalis

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
python reformatting.py FUGU5 Takifugu_rubripes Japanese_puffer
python reformatting.py TETRAODON8 Tetraodon_nigroviridis Yellow_spotted_puffer
python reformatting.py AGPv4 Zea_mays Corn
python reformatting.py JGI_4.2 Xenopus_tropicalis Frog

# now that the database is created, there is no need for anything in info
rm info/*

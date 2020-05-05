#!/bin/bash

# create_db.sh
# requires python3.6, R 3.5.0, and blast 2.7.1
# requires peewee 3.9.2, biomaRt

# add orthology information to database
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
python reformatting.py IRGSP-1.0 Oryza_sativa Rice
python reformatting.py Pan_tro_3.0 Pan_troglodytes Chimpanzee
python reformatting.py Rnor_6.0 Rattus_norvegicus Rat
python reformatting.py R64-1-1 Saccharomyces_cerevisiae Budding_yeast
python reformatting.py ASM294v2 Schizosaccharomyces_pombe Fission_yeast
python reformatting.py FUGU5 Takifugu_rubripes Japanese_puffer
python reformatting.py TETRAODON8 Tetraodon_nigroviridis Yellow_spotted_puffer
python reformatting.py AGPv4 Zea_mays Corn
python reformatting.py JGI_4.2 Xenopus_tropicalis Frog


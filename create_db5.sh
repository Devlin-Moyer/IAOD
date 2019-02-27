#!/bin/bash

#!/bin/bash
#SBATCH --mail-type=All
#SBATCH --mail-user=moyerd2@ccf.org
#SBATCH --job-name=create_db_5
#SBATCH -n1

module load python/3.6.2

# have to create the ortholog table before we run reformatting on anything
srun python3.6 ortholog_sql.py

# cannot run this part in parallel because they all write to the database, so
# we will just have to wait
srun python3.6 reformatting.py AgamP4 Anopheles_gambiae Mosquito
srun python3.6 reformatting.py Amel_4.5 Apis_mellifera Honeybee
srun python3.6 reformatting.py TAIR10 Arabidopsis_thaliana Thale_cress
srun python3.6 reformatting.py UMD3.1 Bos_taurus Cow
srun python3.6 reformatting.py WBcel235 Caenorhabditis_elegans Nematode_worm
srun python3.6 reformatting.py CanFam3.1 Canis_familiaris Dog
srun python3.6 reformatting.py KH Ciona_intestinalis Vase_tunicate
srun python3.6 reformatting.py GRCz11 Danio_rerio Zebrafish
srun python3.6 reformatting.py BDGP6 Drosophila_melanogaster Fruit_fly
srun python3.6 reformatting.py Galgal5 Gallus_gallus Chicken
srun python3.6 reformatting.py Gm02 Glycine_max Soybean
srun python3.6 reformatting.py GRCh37 Homo_sapiens Human
srun python3.6 reformatting.py GRCh38 Homo_sapiens Human
srun python3.6 reformatting.py Mmul_8.0.1 Macaca_mulatta Rhesus_macaque
srun python3.6 reformatting.py monDom5 Monodelphis_domestica Opossum
srun python3.6 reformatting.py GRCm38 Mus_musculus Mouse
srun python3.6 reformatting.py ASM20922v1 Nematostella_vectensis Sea_anemone
srun python3.6 reformatting.py IRGSP-1.0 Oryza_sativa Rice
srun python3.6 reformatting.py Pan_tro_3.0 Pan_troglodytes Chimpanzee
srun python3.6 reformatting.py Rnor_6.0 Rattus_norvegicus Rat
srun python3.6 reformatting.py R64-1-1 Saccharomyces_cerevisiae Budding_yeast
srun python3.6 reformatting.py ASM294v2 Schizosaccharomyces_pombe Fission_yeast
srun python3.6 reformatting.py FUGU4 Takifugu_rubripes Japanese_puffer
srun python3.6 reformatting.py TETRAODON8 Tetraodon_nigroviridis Yellow_spotted_puffer
srun python3.6 reformatting.py AGPv4 Zea_mays Corn

# now that the database is created, there is no need for anything in info
#srun rm info/*

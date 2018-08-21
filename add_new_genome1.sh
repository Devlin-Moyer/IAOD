#!/bin/bash

#!/bin/bash
#SBATCH --mail-type=All
#SBATCH --mail-user=moyerd2@ccf.org
#SBATCH --job-name=add_genome1
#SBATCH -n1

# in order to add a new genome to the website, you need to know six things:
# 1. the name of the genome assembly
# 2. the path to the whole genome fasta (should be downloaded from Ensembl)
# 3. the path to the gtf file for that genome (from Ensembl)
# 4. the taxonomic name of the organism corresponding to the genome, e.g. 
# Homo_sapiens (note the underscore- everything will break if you use another 
# delimeter there) for whatever the newest human genome assembly is
# 5. the common name of the organism corresponding to the genome
# 6. which division of Ensembl the genome is stored in
# the last one can be either "default", "metazoa", "plants", or "fungi"; for
# some hopefully sensible reason, Ensembl has several distinct databases for 
# their vast collection of genomes. "Popular" organisms like humans, yeast, and
# fly are in the "default" division, but unpopular animals (mostly insects), 
# plants, and fungi are relegated to their own divisions. get_gene_symbols and 
# ortholog_finding both query the Ensembl database backend through an R API, so
# they have to know which division the genome in question exists in.

# template:
#srun python3.6 intronIC_devlin.py -nc path/to/whole/genome/fasta path/to/annotation/file name_of_genome_assembly
# intronIC outputs a lot of extra files that the subsequent programs don't need
#srun rm tmp/*
#srun Rscript get_gene_symbols.R ensembl_division name_of_genome_assembly taxonomic_name
#srun python3.6 isolate_seqs.py name_of_genome_assembly
#srun python3.6 ortholog_combinations.py ensembl_division name_of_genome_assembly taxonomic_name

# the ortholog finding program needs to be run by a separate batch script from
# everything else because it needs all cores from four nodes while everything 
# else just needs one core. ortholog_combinations.py generates the appropriate
# batch script that will find orthologs between each individual genome in the
# database and the genome currently being added

#srun Rscript ortholog_clusters.R
#srun python3.6 ortholog_sql.py
#srun python3.6 reformatting.py name_of_genome_assembly taxonomic_name common_name

# example run on frog genome used to test pipeline

module load python/3.6.2
module load R/3.5.0

srun -n1 python3.6 intronIC_devlin.py -nc /mnt/isilon/data/iGenomes/Xenopus_tropicalis/Ensembl/JGI_4.2/Xenopus_tropicalis.JGI_4.2.dna.toplevel.fa /mnt/isilon/data/iGenomes/Xenopus_tropicalis/Ensembl/JGI_4.2/Xenopus_tropicalis.JGI_4.2.92.gtf JGI_4.2
srun rm tmp/*
srun Rscript get_gene_symbols.R default JGI_4.2 Xenopus_tropicalis
srun python3.6 isolate_seqs.py JGI_4.2
srun python3.6 ortholog_combinations.py add_new default JGI_4.2 Xenopus_tropicalis

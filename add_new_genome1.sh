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
# plants, and fungi are relegated to their own divisions. get_gene_symbols 
# queries the Ensembl database backend through an R API, so it has to know 
# which division the genome in question exists in.

# template:
#srun python3.6 intronIC_devlin.py -nc -g path/to/whole/genome/fasta -a path/to/annotation/file -n name_of_genome_assembly
<<<<<<< HEAD
#srun python3.6 deduplicate.py name_of_genme_assembly
=======
#srun rm tmp/*
>>>>>>> 59179440ead6c3e9d32b5797311ca76b48343ddf
#srun Rscript get_gene_symbols.R ensembl_division name_of_genome_assembly taxonomic_name
#srun python3.6 isolate_seqs.py add_new name_of_genome_assembly 
#srun python3.6 ortholog_combinations.py add_new name_of_genome_assembly

# ortholog_combinations.py creates another batch script with all the necessary
# blast commands for finding intron orthologs

#srun Rscript ortholog_clusters.R
#srun python3.6 ortholog_sql.py
#srun python3.6 reformatting.py name_of_genome_assembly taxonomic_name common_name

# example run on frog genome used to test pipeline

module load python/3.6.2
module load R/3.5.0

srun -n1 python3.6 intronIC_devlin.py -nc -na -g /mnt/isilon/data/iGenomes/Xenopus_tropicalis/Ensembl/JGI_4.2/Xenopus_tropicalis.JGI_4.2.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Xenopus_tropicalis/Ensembl/JGI_4.2/Xenopus_tropicalis.JGI_4.2.92.gtf -n JGI_4.2_cds
srun -n1 python3.6 intronIC_devlin.py -nc -na -e -g /mnt/isilon/data/iGenomes/Xenopus_tropicalis/Ensembl/JGI_4.2/Xenopus_tropicalis.JGI_4.2.dna.toplevel.fa -a /mnt/isilon/data/iGenomes/Xenopus_tropicalis/Ensembl/JGI_4.2/Xenopus_tropicalis.JGI_4.2.92.gtf -n JGI_4.2_exon
<<<<<<< HEAD
srun python3.6 deduplicate.py JGI_4.2
=======
srun sort -V -k5,6 info/JGI_4.2_cds_info.iic > tmp/JGI_4.2_cds.tsv
srun sort -V -k5,6 info/JGI_4.2_exon_infoi.iic > tmp/JGI_4.2_exon.tsv
srun python3.6 noncoding_introns.py JGI_4.2
#srun rm tmp/*
>>>>>>> 59179440ead6c3e9d32b5797311ca76b48343ddf
srun Rscript get_gene_symbols.R default JGI_4.2 Xenopus_tropicalis
srun python3.6 isolate_seqs.py add_new JGI_4.2
srun python3.6 ortholog_combinations.py add_new JGI_4.2

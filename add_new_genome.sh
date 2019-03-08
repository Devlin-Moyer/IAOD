#!/bin/bash

# add_new_genome.sh

python intronIC_devlin.py -nc -na -g path/to/whole/genome/fasta -a path/to/annotation/file -n name_of_genome_assembly_cds
python intronIC_devlin.py -nc -na -e -g path/to/whole/genome/fasta -a path/to/annotation/file -n name_of_genome_assembly_exon
python deduplicate.py name_of_genome_assembly
Rscript get_gene_symbols.R ensembl_division name_of_genome_assembly taxonomic_name
python isolate_seqs.py add_new name_of_genome_assembly
python ortholog_combinations.py add_new name_of_genome_assembly
Rscript ortholog_clusters.R
python ortholog_sql.py
python reformatting.py name_of_genome_assembly taxonomic_name common_name
rm info/*

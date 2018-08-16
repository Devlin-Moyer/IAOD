# ortholog_combinations.py
# generate a batch script to run ortholog_finder on all possible combinations
# of genomes in the database

from itertools import combinations
import sys

# make a command for ortholog_finding.R using the specified genome as the
# first argument and every other genome in the ensembl division as the
# second argument
def add_new_genome(out_file):
    type = sys.argv[1]
    genome = sys.argv[2]
    tax_name = sys.argv[3]
    type_names = type + "_names"
    for item in eval(type_names):
        out.write(f'srun Rscript ortholog_finding.R {type} {genome} {tax_name}\
 {item[0]} {item[1]}')

default_names = [
    ['UMD3.1', 'Bos_taurus'], ['WBcel235', 'Caenorhabditis_elegans'],
    ['CanFam3.1', 'Canis_familiaris'], ['KH', 'Ciona_intestinalis'],
    ['GRCz11', 'Danio_rerio'], ['BDGP6', 'Drosophila_melanogaster'],
    ['Galgal5', 'Gallus_gallus'], ['GRCh38', 'Homo_sapiens'],
    ['Mmul_8.0', 'Macaca_mulatta'], ['monDom5', 'Monodelphis_domestica'],
    ['GRCm38', 'Mus_musculus'], ['Pan_tro_3.0', 'Pan_troglodytes'],
    ['Rnor_6.0', 'Rattus_norvegicus'], ['R64-1-1', 'Saccharomyces_cerevisiae'],
    ['FUGU4', 'Takifugu_rubripes'], ['TETRAODON8', 'Tetraodon_rubripes']
]

plant_names = [
    ['TAIR10', 'Arabidopsis_thaliana'], ['Gm02', 'Glycine_max'],
    ['IRGSP-1.0', 'Oryza_sativa'], ['AGPv4', 'Zea_mays']
]

metazoa_names = [
    ['AgamP4', 'Anopheles_gambiae'], ['Amel_4.5', 'Apis_mellifera'],
    ['WBcel235', 'Caenorhabditis_elegans'],
    ['BDGP6', 'Drosophila_melanogaster'],
    ['ASM20922v1', 'Nematostella_vectensis']
]

fungi_names = [
    ['R64-1-1', 'Saccharomyces_cerevisiae'],
    ['ASM294v2', 'Schizosaccharomyces_pombe']
]

with open('ortholog_combinations.sh', 'w') as out_file:
    out_file.write('#!/bin/bash\n\n#!/bin/bash\n')
    out_file.write('#SBATCH --mail-type=ALL\n')
    out_file.write('#SBATCH --mail-user=\n')
    out_file.write('#SBATCH --job-name=new_orthologs\n\n')
    out_file.write('module load R/3.5.0\n\n')
    add_new_genome(out_file)

# ortholog_combinations.py
# generate a batch script to run ortholog_finder on all possible combinations
# of genomes in the database

from itertools import combinations
import sys

# make a command for ortholog_finding.R using every combination of genomes
# within an ensembl division
def repopulate_database(out_file, type, name_list):
    for item in combinations(name_list, 2):
        out_file.write(f'srun Rscript ortholog_finding.R {type} {item[0][0]} \
{item[0][1]} {item[1][0]} {item[1][1]}\n')

# make a command for ortholog_finding.R using the specified genome as the
# first argument and every other genome in the ensembl division as the 
# second argument
def add_new_genome(out_file):
    type = sys.argv[2]
    genome = sys.argv[3]
    tax_name = sys.argv[4]
    type_names = type + "_names"
    for item in eval(type_names):
        out_file.write(f'srun Rscript ortholog_finding.R {type} {genome} \
{tax_name} {item[0]} {item[1]}\n')

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

# can either be "add_new" or "recreate"
try:
    mode = sys.argv[1]
except IndexError:
    sys.exit('First argument must be either "add_new" or "recreate"; if it\'s\
"add_new", you\nalso need to specify the Ensembl division, genome, and \
taxonomic name of the\norganism you\'re adding.')

if mode == 'add_new':
    with open('add_new_genome2.sh', 'w') as out_file:
        out_file.write('#!/bin/bash\n\n#!/bin/bash\n')
        out_file.write('#SBATCH --mail-type=ALL\n')
        out_file.write('#SBATCH --mail-user=moyerd2@ccf.org\n')
        out_file.write('#SBATCH --job-name=add_genome_2\n')
        out_file.write('#SBATCH -N1\n')
        out_file.write('#SBATCH --exclusive\n\n')
        out_file.write('module load R/3.5.0\n\n')
        add_new_genome(out_file)
elif mode == 'recreate':
    with open('create_db3.sh', 'w') as out_file:
        out_file.write('#!/bin/bash\n\n#!/bin/bash\n')
        out_file.write('#SBATCH --mail-type=ALL\n')
        out_file.write('#SBATCH --mail-user=\n')
        out_file.write('#SBATCH --job-name=create_db_3\n\n')
        out_file.write('module load R/3.5.0\n\n')
        repopulate_database(out_file, 'default', default_names)
        repopulate_database(out_file, 'plant', plant_names)
        repopulate_database(out_file, 'metazoa', metazoa_names)
        repopulate_database(out_file, 'fungi', fungi_names)
else:
    sys.exit('First argument must be either "add_new" or "recreate"; if it\'s\
"add_new", you\nalso need to specify the Ensembl division, genome, and \
taxonomic name of the\norganism you\'re adding.')

# ortholog_combinations.py
# generate a batch script to run ortholog_finder on all possible permutations
# of genomes in the database or all combinations of a new genome and all 
# existing ones

from itertools import permutations
import sys

# make a command for ortholog_finding.R using every combination of genomes
def repopulate_database(out_file, genome_list):
    for item in permutations(genome_list, 2):
        out_file.write(f'''srun blastn -query seqs/{item[0]}.fa -subject \
seqs/{item[1]}.fa -outfmt 6 | awk '$11 < 1e-10 \
{{print $1"\\t"$2}}' > ortholog_lists/{item[0]}_{item[1]}.tsv\n''')

# make a command for ortholog_finding.R using the specified genome as the
# first argument and every other genome as the second argument
def add_new_genome(out_file, genome_list):
    genome = sys.argv[1]
    for item in genome_list:
        out_file.write(f'''srun blastn -query seqs/{genome}.fa -subject \
seqs/{item}.fa -outfmt 6 | awk '$11 < 1e-10 \
{{print $1"\\t"$2}}' > ortholog_lists/{genome}_{item}.tsv\n''')

genome_list = ['UMD3.1', 'WBcel235', 'CanFam3.1', 'KH', 'GRCz11', 'BDGP6',
    'Galgal5', 'GRCh38', 'Mmul_8.0.1', 'monDom5', 'GRCm38', 'Pan_tro_3.0',
    'Rnor_6.0', 'R64-1-1', 'FUGU5', 'TETRAODON8', 'TAIR10', 'Gm02', 
    'IRGSP-1.0', 'AGPv4', 'AgamP4', 'Amel_4.5', 'WBcel235', 'R64-1-1', 
    'ASM294v2']

# can either be "add_new" or "recreate"
try:
    mode = sys.argv[1]
except IndexError:
    sys.exit('First argument must be either "add_new" or "recreate"; if it\'s\
"add_new", you\nalso need to specify the genome you\'re adding.')

if mode == 'add_new':
    with open('add_new_genome2.sh', 'w') as out_file:
        out_file.write('#!/bin/bash\n\n#!/bin/bash\n')
        out_file.write('#SBATCH --mail-type=ALL\n')
        out_file.write('#SBATCH --mail-user=moyerd2@ccf.org\n')
        out_file.write('#SBATCH --job-name=add_genome_2\n')
        out_file.write('#SBATCH -N1\n')
        out_file.write('#SBATCH --exclusive\n\n')
        out_file.write('module load blast/2.7.1\n\n')
        add_new_genome(out_file, genome_list)
elif mode == 'recreate':
    with open('create_db3.sh', 'w') as out_file:
        out_file.write('#!/bin/bash\n\n#!/bin/bash\n')
        out_file.write('#SBATCH --mail-type=ALL\n')
        out_file.write('#SBATCH --mail-user=moyerd2@ccf.org\n')
        out_file.write('#SBATCH --job-name=create_db_3\n')
        out_file.write('#SBATCH -N1\n')
        out_file.write('#SBATCH --exclusive\n\n')
        out_file.write('module load blast/2.7.1\n\n')
        repopulate_database(out_file, genome_list)
else:
    sys.exit('First argument must be either "add_new" or "recreate"; if it\'s\
"add_new", you\nalso need to specify the genome you\'re adding.')

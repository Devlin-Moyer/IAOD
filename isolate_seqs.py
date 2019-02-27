# isolate_seqs.py
# make a fasta file containing the intron ID and the flanking exonic sequence
# for each genome in IAOD in preparation for using BLASTn to find orthologs

import sys
from itertools import islice

if sys.argv[1] == 'recreate':
    genome_list = ['UMD3.1', 'WBcel235', 'CanFam3.1', 'KH', 'GRCz11', 'BDGP6',
        'Galgal5', 'GRCh38', 'Mmul_8.0.1', 'monDom5', 'GRCm38', 'Pan_tro_3.0',
        'Rnor_6.0', 'R64-1-1', 'FUGU5', 'TETRAODON8', 'TAIR10', 'Gm02', 
        'IRGSP-1.0', 'AGPv4', 'AgamP4', 'Amel_4.5', 'WBcel235', 'R64-1-1',
        'ASM294v2', 'JGI_4.2']

    for genome in genome_list:
        print(f'Isolating flanking exonic sequences from {genome}')
        # read input file in batches of 10,000 lines to speed up insertions
        with open(f'info/{genome}_info.tsv', 'r') as in_file, \
            open(f'seqs/{genome}.fa', 'w') as out_file:
            for batch in iter(lambda: tuple(islice(in_file, 10000)), ()):
                for line in batch:
                    fields = line.rstrip('\n').split('\t')
                    id = fields[0]
                    seqs = [fields[i] for i in [11, 12]]
                    seq = ''.join(seqs)
                    out_file.write(f'>{id}\n{seq}\n')

elif sys.argv[1] == 'add_new':
    genome = sys.argv[2]
    print(f'Isolating flanking exonic sequences from {genome}')
    # read input file in batches of 10,000 lines to speed up insertions
    with open(f'info/{genome}_info.tsv', 'r') as in_file, \
        open(f'seqs/{genome}.fa', 'w') as out_file:
        for batch in iter(lambda: tuple(islice(in_file, 10000)), ()):
            for line in batch:
                fields = line.rstrip('\n').split('\t')
                id = fields[0]
                seqs = [fields[i] for i in [11, 12]]
                seq = ''.join(seqs)
                out_file.write(f'>{id}\n{seq}\n')

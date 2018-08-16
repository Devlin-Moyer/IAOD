# isolate_seqs.py
# get only sequences and gene and intron IDs from info.iic files into an SQL
# database

import sys
import apsw
from itertools import islice
import re

def update_tables(genome, cur):
    # replace whatever data exists for this genome assembly
    cur.execute(f'DROP TABLE IF EXISTS `{genome}`')
    cur.execute(f'CREATE TABLE `{genome}` (gene_id VARCHAR(30), intron_id \
VARCHAR(70) PRIMARY KEY, sequence VARCHAR(252)) WITHOUT ROWID')

def insert(batch, genome, cur):
    # makes all of these insertions happen within a single transaction- v fast
    cur.execute('BEGIN')
    for line in batch:
        fields = line.rstrip('\n').split('\t')
        # gene id and intron id
        to_insert = [fields[15], fields[3]]
        # up_seq, short_seq, branch_seq, down_seq
        seqs = [fields[i] for i in [12, 0, 13, 14]]
        # only get 5' end of intron from short_seq
        seqs[1] = seqs[1].split('...')[0]
        # remove brackets from branch_seq
        seqs[2] = re.sub('\[|\]', '', seqs[2])
        seqstring = ''.join(seqs)
        to_insert.append(seqstring)
        cur.execute(f'INSERT INTO `{genome}` VALUES (?,?,?)', to_insert)
    cur.execute('COMMIT')

# get command-line argument and print something informative
genome = sys.argv[1]
print(f'Populating seqs.db with data from {genome}.')

# get connection to database
conn = apsw.Connection('seq.db')
cur = conn.cursor()

# remove existing data for this genome assembly and/or create new tables for it
update_tables(genome, cur)

# read input file in batches of 10,000 lines to speed up insertions
with open(f'info/{genome}_info.iic', 'r') as in_file:
    for batch in iter(lambda: tuple(islice(in_file, 10000)), ()):
        insert(batch, genome, cur)

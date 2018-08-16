# reformatting.py
# takes output of intronIC, get_gene_symbols, and ortholog_clusters and gets it
# into a well-organized SQL database

import re
import sys
import apsw
from itertools import islice

def update_tables(genome, cur):
    # replace whatever data exists for this genome assembly
    cur.execute(f'DROP TABLE IF EXISTS `{genome}`')
    cur.execute(f'CREATE TABLE `{genome}` (short_seq VARCHAR(42), tax_name \
VARCHAR(30), com_name VARCHAR(20), genome VARCHAR(15), score REAL,\
intron_class VARCHAR(20), intron_id VARCHAR(70) PRIMARY KEY, chromosome \
VARCHAR(20), start INTEGER, stop INTEGER, length INTEGER, strand VARCHAR(1),\
intron_rank INTEGER, phase INTEGER, tds VARCHAR(4), up_seq VARCHAR(80), \
branch_seq VARCHAR(50), down_seq VARCHAR(80), full_seq TEXT, gene_symbol TEXT,\
gene_id VARCHAR(30), trans_id VARCHAR(30)) WITHOUT ROWID')
    # make U12s tables if the database is empty
    cur.execute(f'CREATE TABLE IF NOT EXISTS U12s (short_seq VARCHAR(42),\
tax_name VARCHAR(30), com_name VARCHAR(20), genome VARCHAR(15), score REAL,\
intron_class VARCHAR(20), intron_id VARCHAR(70) PRIMARY KEY, chromosome \
VARCHAR(20), start INTEGER, stop INTEGER, length INTEGER, strand VARCHAR(1),\
intron_rank INTEGER, phase INTEGER, tds VARCHAR(4), up_seq VARCHAR(80), \
branch_seq VARCHAR(50), down_seq VARCHAR(80), full_seq TEXT, gene_symbol TEXT,\
gene_id VARCHAR(30), trans_id VARCHAR(30)) WITHOUT ROWID')
    cur.execute('CREATE VIRTUAL TABLE IF NOT EXISTS searchable USING \
fts5("short_seq", "tax_name", "com_name", "genome", "score", "intron_class", \
"id", "chromosome", "start", "stop", "length", "strand", "intron_rank", \
"phase", "tds", "up_seq", "branch_seq", "down_seq", "full_seq", "gene_symbol",\
"gene_id", "trans_id")')
cur.execute('INSERT INTO searchable SELECT * FROM U12s')
    # remove all the U12 introns from this genome assembly before adding more
    cur.execute(f'DELETE FROM U12s WHERE genome = "{genome}"')
    cur.execute(f'DELETE FROM searchable WHERE genome = "{genome}"')
    # unfortunately, we have to completely redo the ortholog table every time
    cur.execute('DROP TABLE orthologs')
    cur.execute('CREATE TABLE IF NOT EXISTS orthologs (cluster TEXT)')

def insert(batch, genome, tax_name, com_name, symbols, cur):
    # makes all of these insertions happen within a single transaction- v fast
    cur.execute('BEGIN')
    for line in batch:
        fields = line.rstrip('\n').split('\t')
        # several fields need to be inserted and one moved
        # use gene id to find gene symbol and insert it
        try:
            fields.insert(15, symbols[fields[15]])
        except KeyError: # for a small number of reasons, we might have a
        # deprecated ensembl id in this list that won't have any associated
        # gene symbols
            fields.insert(15, '')
        # move full_seq from the end to its appropriate position
        full_seq = fields[-1]
        del fields[-1]
        fields.insert(15, full_seq)
        # infer class from score
        if float(fields[2]) > 0:
            fields.insert(3, "U12-Dependent")
        else:
            fields.insert(3, "U2-Dependent")
        # insert common and taxonomic names
        fields.insert(1, com_name)
        fields.insert(1, tax_name)

        # find the ortholog cluster ID (if it exists) for this intron
        cur.execute(f"SELECT rowid FROM orthologs WHERE cluster LIKE \
'%{fields[6]}%'")
        # if this intron has no orthologs, cur.fetchall()[0] should just be an
        # empty string, which is fine
        fields.append(cur.fetchall()[0])

        # insert all the information
        cur.execute(f'INSERT INTO `{genome}` VALUES (?,?,?,?,?,?,?,?,?,?,?,?,\
?,?,?,?,?,?,?,?,?,?,?)', fields)
        if fields[5] == "U12-Dependent":
            cur.execute(f'INSERT INTO U12s VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,\
?,?,?,?,?,?,?,?,?,?)', fields)
            cur.execute(f'INSERT INTO searchable VALUES (?,?,?,?,?,?,?,?,?,?,\
?,?,?,?,?,?,?,?,?,?,?,?,?)', fields)
    cur.execute('COMMIT')

# get command-line arguments
genome = sys.argv[1]
bad_tax_name = sys.argv[2]
bad_com_name = sys.argv[3]

# remove underscores from tax_name and com_name
tax_name = re.sub('_', ' ', bad_tax_name)
com_name = re.sub('_', ' ', bad_com_name)

# get connection to database
conn = apsw.Connection('introns.db')
cur = conn.cursor()

# remove existing data for this genome assembly and/or create new tables for it
print(f'Updating SQL tables for {tax_name} ({genome}).')
update_tables(genome, cur)

# make dictionary of gene IDs and gene symbols; batch input file because it may
# get really long with some genomes
print(f'Reading gene symbols.')
symbols = {}
with open(f'info/{genome}_gene_symbols.tsv', 'r') as in_file:
    for batch in iter(lambda: tuple(islice(in_file, 10000)), ()):
        for line in batch:
            id_symbol_pair = line.rstrip('\n').split('\t')
            symbols[id_symbol_pair[1]] = id_symbol_pair[2]

# read in all of the ortholog clusters to make the ortholog table
print(f'Creating ortholog cluster SQL table.')
with open(f'ortholog_lists/clusters.txt', 'r') as in_file:
    for batch in iter(lambda: tuple(islice(in_file, 10000)), ()):
        insert(cur, batch)

# get all of the annotation information from intronIC
print(f'Reading intronIC output and creating annotation SQL table.')
with open(f'info/{genome}_info.iic', 'r') as in_file:
    for batch in iter(lambda: tuple(islice(in_file, 10000)), ()):
        insert(batch, genome, tax_name, com_name, symbols, cur)

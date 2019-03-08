# reformatting.py
# takes output of intronIC, get_gene_symbols, and ortholog_clusters and gets it
# into a well-organized SQL database

import re
import sys
import psycopg2
from psycopg2.extensions import quote_ident
from itertools import islice

# delete and re-create appropriate tables
def update_tables(genome, cur):
    # replace whatever data exists for this genome assembly
    cur.execute(f'DROP TABLE IF EXISTS {genome}')
    cur.execute(f'CREATE TABLE {genome} (short_seq VARCHAR(33), tax_name \
VARCHAR(30), com_name VARCHAR(30), genome VARCHAR(15), score REAL, \
intron_class VARCHAR(13), intron_id TEXT PRIMARY KEY, chromosome \
VARCHAR(20), start INTEGER, stop INTEGER, length INTEGER, strand VARCHAR(1), \
intron_rank INTEGER, phase VARCHAR(1), tds VARCHAR(5), up_seq VARCHAR(50), \
branch_seq VARCHAR(50), down_seq VARCHAR(50), full_seq TEXT, gene_symbol TEXT,\
gene_id VARCHAR(20), trans_id VARCHAR(20))')
    # make U12s tables if the database is empty
    cur.execute('CREATE TABLE IF NOT EXISTS U12s (short_seq VARCHAR(33),\
tax_name VARCHAR(30), com_name VARCHAR(30), genome VARCHAR(15), score REAL,\
intron_class VARCHAR(13), intron_id TEXT PRIMARY KEY, chromosome \
VARCHAR(20), start INTEGER, stop INTEGER, length INTEGER, strand VARCHAR(1),\
intron_rank INTEGER, phase VARCHAR(1), tds VARCHAR(5), up_seq VARCHAR(50), \
branch_seq VARCHAR(50), down_seq VARCHAR(50), full_seq TEXT, gene_symbol TEXT,\
gene_id VARCHAR(20), trans_id VARCHAR(20))')
    # remove all the U12 introns from this genome assembly before adding more
    cur.execute('DELETE FROM U12s WHERE genome = %s', (genome,))

def insert_annotation(cur, genome, tax_name, com_name, symbols, batch):
    # makes all of these insertions happen within a single transaction- v fast
    cur.execute('BEGIN')
    for line in batch:
        fields = line.rstrip('\n').split('\t')

        # these fields need to be re-arranged; name each element to reorder
        (intron_id, short_seq, bad_genome, score, chromosome, start, stop, 
        strand, phase, rank, tds, up_seq, down_seq, branch_seq, trans_id, 
        gene_id, full_seq) = fields

        # we've made bad_genome because we'll get <genome>_exon or <genome>_cds
        # from fields, and we just want the genome assembly name in the website

        # need to get intron_class using score and length using full_seq
        intron_class = ''
        if float(score) >= 0:
            intron_class = "U12-Dependent"
        else:
            intron_class = "U2-Dependent"

        length = len(full_seq)

        # need to find the gene symbol using symbols and gene_id; we won't find
        # a gene symbol for every gene_id
        try:
            gene_symbol = symbols[gene_id]
        except KeyError:
            gene_symbol = '.'

        # insert all the information
        cur.execute(f'INSERT INTO {genome} VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,\
%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)', (short_seq, tax_name, com_name, 
genome, score, intron_class, intron_id, chromosome, start, stop, length, 
strand, rank, phase, tds, up_seq, branch_seq, down_seq, full_seq, gene_symbol,
gene_id, trans_id))
        if intron_class == "U12-Dependent":
            cur.execute(f'INSERT INTO U12s VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,\
%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)', (short_seq, tax_name, com_name, 
genome, score, intron_class, intron_id, chromosome, start, stop, length, 
strand, rank, phase, tds, up_seq, branch_seq, down_seq, full_seq, gene_symbol,
gene_id, trans_id))
        cur.execute('COMMIT')

# get command-line arguments
if len(sys.argv) != 4:
   sys.exit('Specify the genome assembly name, the taxonomic name (delimited \
by underscores), and the common name (also delimited by underscores)')

genome = sys.argv[1]
bad_tax_name = sys.argv[2]
bad_com_name = sys.argv[3]

# remove underscores from tax_name and com_name
tax_name = re.sub('_', ' ', bad_tax_name)
com_name = re.sub('_', ' ', bad_com_name)

# get connection to database
#conn = psycopg2.connect(dbname = 'introns', user = 'moyerd2')
conn = psycopg2.connect(dbname = 'postgres', user = 'postgres', password = 'password')
cur = conn.cursor()

# many of the genome assemblies have hyphens in them, so we have to escape them
escaped_genome = quote_ident(genome, cur)

# remove existing data for this genome assembly and/or create new tables for it
print(f'Updating SQL tables for {tax_name} ({genome}).')
update_tables(escaped_genome, cur)

# make dictionary of gene IDs and gene symbols; batch input file because it may
# get really long with some genomes
print(f'Reading gene symbols.')
symbols = {}
with open(f'info/{genome}_gene_symbols.tsv', 'r') as in_file:
    for batch in iter(lambda: tuple(islice(in_file, 10000)), ()):
        for line in batch:
            id_symbol_pair = line.rstrip('\n').split('\t')
            symbols[id_symbol_pair[0]] = id_symbol_pair[1]

# get all of the annotation information from intronIC
print(f'Reading intronIC output and creating annotation SQL table.')
with open(f'info/{genome}_info.tsv', 'r') as in_file:
    i = 0
    for batch in iter(lambda: tuple(islice(in_file, 10000)), ()):
        i += 1
        print(f'On batch {i}.')
        insert_annotation(
            cur, escaped_genome, tax_name, com_name, symbols, batch)

print('Creating full-text search index.')

index_name = quote_ident(f'{genome}_idx', cur)
cur.execute(f'CREATE INDEX {index_name} ON {escaped_genome} USING \
GIN(to_tsvector(\'english\', gene_id || trans_id || genome || gene_symbol || \
tax_name || com_name))')

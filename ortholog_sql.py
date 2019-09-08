# ortholog_sql.py
# this needs to be a separate script so that it only gets done once instead of
# 25 times

import psycopg2
from itertools import islice
import re

def get_introns(cur, genome):
    cur.execute(f'SELECT intron_id FROM "{genome}"')
    introns = [re.sub('_(exon|cds)', '', intron) for
        row in cur.fetchall() for intron in row]
    return(introns)

def chunks(l, n):
    for i in range(0, len(l), n):
        yield l[i:i + n]

print(f'Preparing ortholog data.')
# get connection to database
conn = psycopg2.connect(dbname = 'introns', user = 'moyerd2')
cur = conn.cursor()

# replace existing data every time
cur.execute('DROP TABLE IF EXISTS orthologs')
cur.execute('CREATE TABLE orthologs (id SERIAL, cluster TEXT)')
cur.execute('DROP TABLE IF EXISTS orthologs_lookup')
cur.execute('CREATE TABLE orthologs_lookup (intron_id TEXT, clusters TEXT)')

# get list of all genomes
cur.execute("SELECT table_name FROM information_schema.tables WHERE table_schema = 'public'")
genomes = [genome for row in cur.fetchall() for genome in row]
genomes.remove('orthologs')
genomes.remove('orthologs_lookup')
genomes.remove('u12s')

# get list of all intron IDs
introns = []
for genome in genomes:
    introns.extend(get_introns(cur, genome))

# make dict where each key is an intron ID and each value is an empty list
cluster_dict = {}
for intron in introns:
    cluster_dict[intron] = []

# read in all of the ortholog clusters to make the ortholog table
# also record which line numbers each intron appears on to make lookup table
print('Creating ortholog cluster table.')
with open('iaod.intron_clusters.supersets', 'r') as in_file:
    batch_no = 0
    row_no = 0
    for batch in iter(lambda: tuple(islice(in_file, 10000)), ()):
        batch_no += 1
        print(f'On batch {batch_no}')
        cur.execute('BEGIN')
        for line in batch:
            row_no += 1
            # for all introns in this line, add this line number to their list
            # of line numbers in the cluster_dict
            line = line.rstrip('\n')
            intron_cluster = line.split('\t')
            for intron in intron_cluster:
                try:
                    cluster_dict[intron].append(row_no)
                except KeyError:
                    pass
            cur.execute('INSERT INTO orthologs VALUES (DEFAULT, %s)', (line,))
        cur.execute('COMMIT')

# use cluster_dict to create the lookup table
print('Creating ortholog lookup table.')
batch_no = 0
for chunk in chunks(introns, 10000):
    batch_no += 1
    print(f'On batch {batch_no}')
    cur.execute('BEGIN')
    for intron in chunk:
        cur.execute('INSERT INTO orthologs_lookup VALUES (%s, %s)',
            (intron, cluster_dict[intron]))
    cur.execute('COMMIT')

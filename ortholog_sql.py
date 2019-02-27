# ortholog_sql.py
# this needs to be a separate script so that it only gets done once instead of
# 25 times

import psycopg2
from itertools import islice

#conn = psycopg2.connect(dbname = 'introns', user = 'moyerd2')
conn = psycopg2.connect(dbname = 'postgres', user = 'postgres', password = 'password')
cur = conn.cursor()
cur.execute('DROP TABLE IF EXISTS orthologs')
cur.execute('CREATE TABLE orthologs (cluster TEXT)')
# read in all of the ortholog clusters to make the ortholog table
print(f'Creating ortholog cluster SQL table.')
with open(f'clusters.txt', 'r') as in_file:
    i = 0
    for batch in iter(lambda: tuple(islice(in_file, 10000)), ()):
        i += 1
        print(f'On batch {i}')
        cur.execute('BEGIN')
        for line in batch:
            cur.execute('INSERT INTO orthologs VALUES (%s)', (line,))
        cur.execute('COMMIT')
print('Done inserting; creating fulltext search index')
cur.execute(f'CREATE INDEX ortholog_idx ON orthologs USING \
GIN(to_tsvector(\'english\', cluster))')

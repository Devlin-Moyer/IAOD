# bed_and_fasta.py
# creates bed and fasta files using the information in all of the info.iic
# files

import psycopg2
import re

def get_all_genomes(cur):
    names = []
    cur.execute('SELECT table_name FROM information_schema.tables WHERE \
table_schema = \'public\'')
    name_list = [x[0] for x in cur.fetchall()]
    # drop all of the tables made by django, the U12 table, and the orthologs
    # table from the list
    name_list = [
        i for i in name_list 
        if not re.search('(orthologs|auth|django|u12s)', i)
    ]
    return(name_list)

# for use on cognac 2
conn = psycopg2.connect(dbname = 'introns', user = 'moyerd2')
cur = conn.cursor()
names = get_all_genomes(cur)
for name in names:
    print(f'Making bed and fasta files for {name}.')
    with open(f'static/bed/{name}_U12.bed', 'w') as bed_U12, \
    open(f'static/bed/{name}_U2.bed', 'w') as bed_U2, \
    open(f'static/fasta/{name}_U12.fasta', 'w') as fasta_U12, \
    open(f'static/fasta/{name}_U2.fasta', 'w') as fasta_U2:
        cur.execute(f'SELECT intron_id,tax_name,chromosome,strand,start,stop,\
length,phase,intron_rank,full_seq FROM "{name}" WHERE score > 0')
        U12_fasta = cur.fetchall()
        cur.execute(f'SELECT intron_id,tax_name,chromosome,strand,start,stop,\
length,phase,intron_rank,full_seq FROM "{name}" WHERE score <= 0')
        U2_fasta = cur.fetchall()
        cur.execute(f'SELECT chromosome,start,stop,intron_id,score,strand \
FROM "{name}" WHERE score > 0')
        U12_bed = cur.fetchall()
        cur.execute(f'SELECT chromosome,start,stop,intron_id,score,strand \
FROM "{name}" WHERE score <= 0')
        U2_bed = cur.fetchall()
        for row in U12_fasta:
            row = [str(x) for x in row]
            line = '>' + row[0] + '|' + row[1] + '|' + row[2] + '|' + row[3] +\
'|' + row[4] + '|' + row[5] + '|' + row[6] + '|' + row[7] + '|' + row[8] + \
'\n' + row[9]
            fasta_U12.write(f'{line}\n')
        for row in U2_fasta:
            row = [str(x) for x in row]
            line = '>' + row[0] + '|' + row[1] + '|' + row[2] + '|' + row[3] +\
'|' + row[4] + '|' + row[5] + '|' + row[6] + '|' + row[7] + '|' + row[8] + \
'\n' + row[9]
            fasta_U2.write(f'{line}\n')
        for row in U12_bed:
            line = '\t'.join([str(x) for x in row])
            bed_U12.write(f'{line}\n')
        for row in U2_bed:
            line = '\t'.join([str(x) for x in row])
            bed_U2.write(f'{line}\n')

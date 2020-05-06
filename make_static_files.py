# make_static_files.py
# creates bed and fasta files for all introns in each genome (separated by
# class) as well as lists of orthologs

import psycopg2
import re
import sys

# self-explanatory imo
def get_all_genomes(cur):
    names = []
    # get all table names in the database right now, since there's one table
    # for each genome
    cur.execute(
        'SELECT table_name FROM information_schema.tables WHERE ' +
        'table_schema = \'public\''
    )
    name_list = [x[0] for x in cur.fetchall()]
    # drop all of the tables made by django, the U12 table, and the orthologs
    # table from the list
    name_list = [
        i for i in name_list 
        if not re.search('(orthologs|auth|django|u12s)', i)
    ]
    return(name_list)

# make the BED file for introns of a given class from a given organism
# according to the format specified on the downloads page
def make_bed_file(cur, genome, intron_class):
    # construct the appropriate SQL query given the genome and intron class
    query = 'SELECT chromosome,start,stop,intron_id,score,strand '
    query += f'FROM "{genome}" WHERE score'
    if intron_class == 'U12':
        query += ' > 0'
    elif intron_class == 'U2':
        query += ' <=0'
    # get all the info needed to make the BED file for all U12 introns
    cur.execute(query)
    bed_info = cur.fetchall()
    # construct the appropriate output file name given the genome name and
    # intron class
    with open(f'static/bed/{genome}_{intron_class}.bed', 'w') as out:
        for row in bed_info:
            # just make a simple tsv
            line = '\t'.join([str(x) for x in row])
            out.write(f'{line}\n')
    # return nothing

# make the FASTA file for introns of a given class from a given organism
# according to the format specified on the downloads page
def make_fasta_file(cur, genome, intron_class):
    query = 'SELECT intron_id,tax_name,chromosome,strand,start,stop,length,'
    query += f'phase,intron_rank,full_seq FROM "{genome}" WHERE score '
    if intron_class == 'U12':
        query += ' > 0'
    elif intron_class == 'U2':
        query += ' <=0'
    cur.execute(query)
    fasta_info = cur.fetchall()
    # save each intron ID so we can have a list of all IDs in each class for
    # making the ortholog files
    intron_ids = list()
    with open(f'static/fasta/{genome}_{intron_class}.fasta', 'w') as out:
        for row in fasta_info:
            row = [str(x) for x in row]
            # start header lines with > and separate fields within header with
            # | and put full intron sequence in new line
            line = '>' + '|'.join(row[1:9]) + '\n' + row[9] + '\n'
            out.write(line)
            # add this intron ID to the list
            intron_ids.append(row[0])
    # return the list of intron IDs
    return(intron_ids)

# make a file with all the intron IDs in a particular genome and class in
# one column and all that intron's orthologs in the other column in a comma-
# delimited list
# need a list of all introns in a particular class since the orthologs tables
# don't have fields for intron class
def make_ortholog_file(cur, genome, intron_class, introns):
    # just do one WHERE IN query to get all the relevant rows of the lookup
    # table
    query = 'SELECT intron_id,clusters FROM orthologs_lookup WHERE intron_id '
    # instead of doing IN (id1, id2, ...), we're doing IN (VALUES (id1), (id2))
    # because it is way faster
    # also put intron IDs in single quotes to escape them
    values_string = ','.join([f"('{intron}')" for intron in introns])
    query += f'IN (VALUES {values_string})'
    cur.execute(query)
    id_groups = cur.fetchall()
    # some introns are in multiple clusters and some are in none; get a list of
    # id pairs
    id_pairs = list()
    for group in id_groups:
        # ignore introns with no orthologs
        if group[1] == '{}':
            continue
        # make a different pair of pair[0] with each element of pair[1]
        elif len(group[1].split(',')) > 1:
            cluster_ids = group[1].lstrip('{').rstrip('}').split(',')
            for cluster_id in cluster_ids:
                id_pairs.append([group[0], cluster_id])
        # introns in only one cluster are much easier
        else:
            id_pairs.append([group[0], group[1].lstrip('{').rstrip('}')])
    # get a (unique) list of all the cluster ids we need so we only do one query
    all_cluster_ids = set([pair[1] for pair in id_pairs])
    # make it into the IN (VALUES (id1), (id2) ...) format again
    id_string = ','.join([f'({cluster})' for cluster in all_cluster_ids])
    # get a list of tuples with the cluster ID and the string
    try:
        cur.execute(
            f'SELECT id,cluster FROM orthologs WHERE id IN (VALUES {id_string})'
        )
        all_clusters = cur.fetchall()
        # make this into a dictionary with id as the key
        all_clusters = {x[0]: x[1] for x in all_clusters}
        # now we're ready to write output
        with open(f'static/orthologs/{genome}_{intron_class}.tsv', 'w') as out:
            # use the shared indices to pair intron_ids with cluster strings
            for pair in id_pairs:
                # remove the reference intron from the cluster
                cluster = all_clusters[int(pair[1])].split('\t')
                cluster.remove(pair[0])
                # separate the IDs within the cluster with commas and separate the
                # cluster from the reference intron ID with a tab
                out_string = pair[0] + '\t' + ','.join(cluster) + '\n'
                out.write(out_string)
        # return nothing
    except:
        cur.execute('COMMIT')
        cur.execute('SELECT intron_id,clusters FROM orthologs_lookup')
        print('\n'.join([row[0] for row in cur.fetchall()]))

# get connection to database
# change these arguments as appropriate
conn = psycopg2.connect(dbname = 'iaod', user = 'dcmoyer')
cur = conn.cursor()

# loop over list of all genomes with information in the database
#genomes = get_all_genomes(cur)
genomes = ['FUGU5', 'GRCh37']
for genome in genomes:
    #print(f'Making static files for {genome}.')
    # make BED files
    make_bed_file(cur, genome, 'U12')
    make_bed_file(cur, genome, 'U2')
    # we'll need lists of intron ids in each class for the ortholog files so
    # we'll set those aside while making the FASTA files
    U12_ids = make_fasta_file(cur, genome, 'U12')
    U2_ids = make_fasta_file(cur, genome, 'U2')
    # make ortholog files
    # if there are no U12s in this genome, make an empty file
    if len(U12_ids) == 0:
        with open(f'static/orthologs/{genome}_U12.tsv', 'w') as out:
            out.write('\n')
    else:
        make_ortholog_file(cur, genome, 'U12', U12_ids)
    make_ortholog_file(cur, genome, 'U2', U2_ids)

# views.py
from django.shortcuts import render
from django.db import connection as conn 
from results import models
import re

# given a query set corresponding to a single intron, return a list of the
# appropriate sequences in the appropriate order for display on the ortholog
# search results page
def organize_sequences(seqs):
    seq = seqs['up_seq'][-15:] + '|' + seqs['short_seq'].split('...')[0] + '...' + \
        re.sub('[|]', '', seqs['branch_seq']) + '|' + seqs['down_seq'][:15]
    # make list of info for the specified intron
    table_list = [
        seqs['intron_id'], seqs['tax_name'], seqs['gene_symbol'], seq
    ]
    return(table_list)

# given an intron ID, figures out what genome it's in and queries the 
# appropriate model 
def get_seqs(input_intron_id):
    # the name of the assembly a given intron is from is in the first part of
    # the intronIC ID, so we need to extract that for the model query
    genome = re.search('(.+)\-\w+\d+@', input_intron_id).group(1)

    # Django makes pretty model names by using title() and removing _ - and .
    # from the SQLite table names, so we must do the same before trying to
    # query a model
    model_name = ''.join([x.title() for x in re.split('_|\.|-', genome)])
    info = getattr(models, model_name).objects.values(
        'intron_id', 'up_seq', 'short_seq', 'branch_seq', 'down_seq',
        'tax_name', 'gene_symbol'
    ).get(intron_id = input_intron_id)
    table_list = organize_sequences(info)
    return(table_list)

def ortholog_search(request):
    return render(request, 'orthologs/search.html')

def ortholog_list(request):  
    # get input intron id and start a list of IDs
    ref_id = request.GET.get('ref_id')
    ortholog_id_list = [ref_id]
    # escape the intron ID so the @ sign doesn't break the SQL syntax
    # add all the intron IDs of orthologous introns
    cur = conn.cursor()
    cur.execute(f'SELECT cluster FROM orthologs WHERE orthologs MATCH \
\'"{ref_id}"\'')
    try:
        # will get a list containing one string that needs to be split on tabs
        ortholog_id_list.extend(cur.fetchall()[0][0].rstrip('\n').split('\t'))
    except IndexError: # not all introns have annotated orthologs
        return render(request, 'orthologs/list.html', 
            {'info_list': [get_seqs(ref_id)]}
        )
    # drop all the GRCh37 intronIDs that are just duplicates of the GRCh38 IDs
    ortholog_id_list = [x for x in ortholog_id_list 
        if not re.search('GRCh37', x)
    ]
    # start a list of intron info to pass to the template
    info_list = []
    # get the sequences for all of the introns
    for ortholog_id in ortholog_id_list:
        info_list.append(get_seqs(ortholog_id))
    return render(request, 'orthologs/list.html', {'info_list': info_list})

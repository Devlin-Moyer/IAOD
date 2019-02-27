# views.py
from django.shortcuts import render
from django.db import connection as conn 
from django.contrib.postgres.search import SearchVector, SearchQuery
from results import models
import re

# given a query set corresponding to a single intron, return a list of the
# appropriate sequences in the appropriate order for display on the ortholog
# search results page
def organize_sequences(seqs):
    seq = seqs['up_seq'][-15:] + '|' + seqs['short_seq'] + '|' + seqs['down_seq'][0:15]
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
    genome = re.search('(.+)_(cds|exon)', input_intron_id).group(1)

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
    ids = models.Orthologs.objects.annotate(
        search = SearchVector('cluster')
    ).filter(search = SearchQuery(ref_id)).values('cluster')
    for thing in ids:
        ortholog_id_list.extend(thing['cluster'].rstrip('\n').split('\t'))
    # start a list of intron info to pass to the template
    info_list = []
    # get the sequences for all of the introns
    for ortholog_id in ortholog_id_list:
        info_list.append(get_seqs(ortholog_id))
    q
    return render(request, 'orthologs/list.html', {'info_list': info_list})

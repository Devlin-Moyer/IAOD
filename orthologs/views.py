# views.py
from django.shortcuts import render
from django.db import connection as conn
from django.contrib.postgres.search import SearchVector, SearchQuery
from django.core.exceptions import ObjectDoesNotExist
from results import models
import re

# given a query set corresponding to a single intron, return a list of the
# appropriate sequences in the appropriate order for display on the ortholog
# search results page
def organize_sequences(seqs):
    seq = seqs['up_seq'][-15:] + '|' + seqs['short_seq'] + '|' + \
        seqs['down_seq'][0:15]
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
    match_obj = re.match('(^.+)(-[^-]+@.+)', input_intron_id)
    genome = match_obj.group(1)
    # Django makes pretty model names by using title() and removing _ - and .
    # from the SQLite table names, so we must do the same before trying to
    # query a model
    model_name = ''.join([x.title() for x in re.split('_|\.|-', genome)])
    try:
        info = getattr(models, model_name).objects.values(
            'intron_id', 'up_seq', 'short_seq', 'branch_seq', 'down_seq',
            'tax_name', 'gene_symbol'
        ).get(intron_id = input_intron_id)
    except ObjectDoesNotExist:
        print('Object didn\'t exist')
        return([])
    table_list = organize_sequences(info)
    return(table_list)

def ortholog_search(request):
    return render(request, 'orthologs/search.html')

def ortholog_list(request):
    # get input intron id and find out which cluster it's in
    ref_id = request.GET.get('ref_id')
    rows = models.OrthologsLookup.objects.filter(intron_id = ref_id).values('clusters')
    # sometimes introns with no orthologs just aren't in orthologs lookup and sometimes
    # they are and just have {} as their value for clusters, so start by checking for
    # an empty QuerySet
    if not rows:
        return render(request, 'orthologs/list.html', {'info_list': [get_seqs(ref_id)]})
    for row in rows:
        rowid_str = row['clusters']
        # remove {}s from rowids
        rowid = rowid_str.lstrip('{').rstrip('}')
        # make a list of all orthologs of this intron, starting with this intron
        ortholog_id_list = [ref_id]
        # if rowid is currently an empty string, there are no orthologs
        if rowid == '':
            return render(request, 'orthologs/list.html', 
                {'info_list': [get_seqs(ref_id)]}
            )
        else:
            cluster_qs = models.Orthologs.objects.filter(id = rowid).values('cluster')
            for cluster in cluster_qs:
                ortholog_id_list.extend(cluster['cluster'].split('\t'))
    # each cluster isn't a unique set of ids so remove duplicates
    ortholog_id_list = set(ortholog_id_list)
    print(ortholog_id_list)
    # make a list of all the info needed to render the results
    info_list = [get_seqs(ortholog_id) for ortholog_id in ortholog_id_list]
    return render(request, 'orthologs/list.html', {'info_list': info_list})

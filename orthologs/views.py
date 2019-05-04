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
    match_thing = re.search('(.+)_(cds|exon)', input_intron_id)
    try:
        genome = match_thing.group(1)
    except:
        return([])

    # Django makes pretty model names by using title() and removing _ - and .
    # from the SQLite table names, so we must do the same before trying to
    # query a model
    model_name = ''.join([x.title() for x in re.split('_|\.|-', genome)])
    try:
        info = getattr(models, model_name).objects.values(
            'intron_id', 'up_seq', 'short_seq', 'branch_seq', 'down_seq',
            'tax_name', 'gene_symbol'
        ).get(intron_id = input_intron_id)
    except DoesNotExist:
        return([])
    table_list = organize_sequences(info)
    return(table_list)

def ortholog_search(request):
    return render(request, 'orthologs/search.html')

def ortholog_list(request):
    # get input intron id and find out which clusters it's in
    ref_id = request.GET.get('ref_id')
    ref_id = re.sub('_(cds|exon)', '', ref_id)
    rows = models.OrthologsLookup.objects.filter(intron_id = ref_id).values('clusters')
    # get a list of all the ids in all of those clusters
    ortholog_id_list = [ref_id]
    for row in rows:
        rowids_str = row['clusters']
        # unfortunately, rowids is a string rn, so we need to turn it into an iterable
        rowids_list = [int(x) for x in rowids_str.lstrip('{').rstrip('}').split(',')]
        # if there are no orthologs for this intron, return a blank list
        if rowids_list == []:
            return render(request, 'orthologs/list.html', {'info_list': []})
        for rowid in rowids_list:
            cluster_qs = models.Orthologs.objects.filter(id = rowid).values('cluster')
            for cluster in cluster_qs:
                ortholog_id_list.extend(cluster['cluster'].rstrip('\n').split('\t'))
    # each cluster isn't a unique set of ids so remove duplicates
    ortholog_id_list = set(ortholog_id_list)
    # start a list of intron info to pass to the template
    info_list = []
    # get the sequences for all of the introns
    for ortholog_id in ortholog_id_list:
        # the ortholog table doesn't have _cds or _exon in any ID, but we need those now
        # we also don't know whether the ID is supposed to have _cds or _exon in it, so 
        # we need to try both
        thing = re.match('(^.+)(-[^-]+@.+)', ortholog_id)
        cds_id = thing.group(1) + '_cds' + thing.group(2)
        exon_id = thing.group(1) + '_exon' + thing.group(2)
        info_list.append(get_seqs(cds_id))
        info_list.append(get_seqs(exon_id))
    return render(request, 'orthologs/list.html', {'info_list': info_list})

from django.shortcuts import render
#from .models import Orthologs
from results import models
import re

# given a query set corresponding to a single intron, return a list of the
# appropriate sequences in the appropriate order for display on the ortholog
# search results page
def organize_sequences(seqs):
    seq = seqs.up_seq[-15:] + '|' + seqs.short_seq.split('...')[0] + '...' + \
        re.sub('[|]', '', seqs.branch_seq) + '|' + seqs.down_seq[:15]
    # make list of info for the specified intron
    table_list = [seqs.id, seqs.tax_name, seqs.gene_symbol, seq]
    return(table_list)

# given an intron ID, figures out what genome it's in and queries the 
# appropriate model 
def get_seqs(intron_id):
    # the name of the assembly a given intron is from is in the first part of
    # the intronIC ID, so we need to extract that for the model query
    genome = input_intron_id.split('-ENS')[1]

    # Django makes pretty model names by using title() and removing _ - and .
    # from the SQLite table names, so we must do the same before trying to
    # query a model
    model_name = re.sub('_|\.|-', '', genome).title()
    info = getattr(models, model_name) \
        .objects \
        .get(intron_id = input_intron_id) \
        .values(
            'up_seq', 'short_seq', 'branch_seq', 'down_seq', 'tax_name', \
            'gene_symbol'
        )
    table_list = organize_sequences(info)
    return(table_list)

def ortholog_search(request):
    return render(request, 'orthologs/search.html')

def ortholog_list(request):  
    # get input intron id and start a list of IDs
    ref_id = request.GET.get('ref_id')
    ortholog_id_list = [ref_id]
    # add all the intron IDs of orthologous introns
    #orthologs = Orthologs.objects.get(pk = ref_id)
    #ortholog_id_list.extend(orthologs.ortholog_id)
    # start a list of intron info to pass to the template
    info_list = []
    for ortholog_id in ortholog_id_list:
        info_list.extend(get_seqs(ortholog_id))

    return render(
        request,
        'orthologs/list.html', {'info_list': info_list}
    )

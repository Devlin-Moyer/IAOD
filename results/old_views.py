from django.shortcuts import render
from django.db import connection as conn
import re
from .models import Annotation
from watson import search as watson

def list_view(request): # parse input from search bar and GET requested info
    # from database
    # get the user query
    user_query = request.GET.get('query')
    if user_query is not '': # at the risk of incorrectly interpreting some
    # search queries, we will simply pass the whole query to watson
        search_results = watson.search(user_query)
        return render(
            request,
            'results/list.html',
            {
                'search_results': search_results,
                'query': user_query
            }
        )
    else: # if they submitted a blank query, give them all U12s
        search_results = watson.search('U12-Dependent/Minor')
        return render(
            request,
            'results/list.html',
            {
                'search_results': search_results,
                'query': 'No input detected; showing all U12-dependent introns\
 in all species currently in the database'
            }
        )

def advanced_list(request):
    # dictionary for converting between database column names and user-friendly
    # display names
    column_names = {
        'short_seq': 'Abbreviated Sequence',
        'tax_name': 'Taxonomic Name',
        'com_name': 'Common Name',
        'genome': 'Genome Assembly',
        'score': 'Score',
        'intron_class': 'Class',
        'id': 'Intron ID',
        'chromosome': 'Chromosome',
        'start': 'Start',
        'stop': 'Stop',
        'length': 'Length',
        'strand': 'Strand',
        'intron_rank': 'Rank in Transcript',
        'phase': 'Phase',
        'tds': 'Terminal Dinucleotides',
        'up_seq': 'Upstream Exonic Sequence',
        'branch_seq': 'Branch Point Sequence',
        'down_seq': 'Downstream Exonic Sequence',
        'full_seq': 'Full Sequence',
        'symbol': 'Gene Symbol or Name',
        'gene_id': 'Ensembl Gene ID',
        'trans_id': 'Ensembl Transcript ID'
    }
    # parse user input into list of columns to show in table and QuerySet
    # filters
    column_list = ['id'] # we will always need to get the intron id to make
    # links to the individual intron pages
    # start a QuerySet to tack appropriate filters onto
    search_results = Annotation.objects.all()
    # make a list of all of their search criteria to make a string to appear
    # above the table. If it is an empty list after the loop, we know that
    # they didn't input anything into any of the fields, and can give them all
    # U12s (maybe they just wanted different columns?)
    filters = []
    for field in request.GET.items():
        if 'y_' in field[0]: # anything prefixed with x_ is a field the
            # user wants shown in the results table
            column_list.append(field[0].lstrip('y_'))
        elif field[1] == '': # skip over fields that had no user input
            pass
        else: # everything else should be a queryset filter
            search_results = search_results.filter(**{field[0] : field[1]})
            # add to string describing user input
            filters.append(column_names[field[0]]+' = '+field[1])
    # if filters is still an empty list, query_text will be an empty string
    query_text = 'Showing results for: ' + ', '.join(filters) + '. '

    # the user entered nothing into any field, so give them all U12s
    if query_text == 'Showing results for: . ':
        search_results = search_results.filter(
            intron_class = 'U12-Dependent/Minor'
        )
        query_text = 'No search input; showing all U12-dependent introns \
from all species currently in the database. '

    # make column names user-friendly
    html_columns = []
    if len(column_list) != 1: # the user specified columns
        # we need to get the intron id for every hit from every query, but the
        # user may want to see the intron id column (I don't blame them; they
        # are gross and long). We defined column_list with id already in it,
        # so if the user checked the intron id box on the form, it will be in
        # the list twice. list.remove() will only remove the first instance of
        # id from the list, so that it only remains in the list if the user
        # actually wants to see that column.
        column_list.pop(0)
        # we need some nicer names for these columns to appear in the html
        
        for column in column_list:
            html_columns.append(column_names[column])
    else: # the user specified no columns, so we give them default columns
        column_list.extend(
            [
                'genome',
                'tax_name',
                'com_name',
                'tds',
                'chromosome',
                'start',
                'stop'
            ]
        )
        html_columns = [
            'Genome Assembly',
            'Taxonomic Name',
            'Common Name',
            'Terminal Dinucleotides',
            'Chromosome',
            'Start',
            'Stop'
        ]
        # always nice to let the user know what we're doing
        query_text += 'No columns specified; showing default columns.'

    # turn the QuerySet into a list of lists
    rows = []
    for hit in search_results:
        row = []
        for column in column_list:
            row.append(getattr(hit, column))
        rows.append(row)

    # at this point, we should have everything that we need
    return render(
        request,
        'results/advanced_list.html',
        {
            'rows': rows,
            'columns': html_columns,
            'query': query_text
        }
    )

def individual(request, input_intron_id): # once a specific entry has been
    # chosen from the list, show the detailed view

    # use the given ID to get all the information corresponding to that intron
    # from the database
    info = Annotation.objects.get(pk=input_intron_id)

    # create links to the ensembl pages corresponding to the ensembl gene
    # and transcript IDs
    species = re.sub(' ', '_', info.tax_name) # need the species and genus
    # names to be separated by an underscore for the ensembl URLs

    if info.tax_name in ['arabidopsis', 'zea', 'soy', 'rice']: # ensembl plants
        gene_url = 'https://plants.ensembl.org/' + species + \
        '/Gene/Summary?g=' + info.gene_id
        transcript_url = 'https://plants.ensembl.org/' + species + \
        '/Transcript/Summary?t=' + search_results.trans_id
    else: # normal ensembl
        gene_url = 'https://ensembl.org/' + species + '/Gene/Summary?g=' + \
        info.gene_id
        transcript_url = 'https://ensembl.org/' + species + \
        '/Transcript/Summary?t=' + info.trans_id

    # all phases were listed in the database as 'phase 1' so we could use full
    # text search, but when we display them here, we just want the number.
    phase = info.phase.lstrip('phase ')

    # get a list of orthologous introns for this intron (easier said than done)
    # start by getting a list of all the genome assemblies other than the one
    # the selected intron is in, since we are only looking for orthologs
    dict_assembly_list = list(Annotation.objects.values('genome').distinct())
    assembly_list = [x['genome'] for x in dict_assembly_list]
    assembly_list.remove(info.genome)
    # some assmebly names have characters like periods and hyphens, hence `s
    escaped_assembly_list = ['`' + x + '`' for x in assembly_list]
    # now use a raw SQL statement to get a list of all the orthologs
    assemblies = ','.join(escaped_assembly_list)
    cur = conn.cursor()
    cur.execute(
    f'SELECT {assemblies} FROM orthologs WHERE {info.genome} = \
"{info.gene_id}"'
    )
    # each row is a list of orthologs, so cur.fetchall() return a list of lists
    # since just want a single list of orthologs, we use this line to flatten
    ortholog_list = [ortholog for row in cur.fetchall() for ortholog in row]
    # there may be duplicates in that list, which will be removed by
    # transiently converting it to a set
    unique_ortholog_list = list(set(ortholog_list))
    # use ensembl gene IDs to find all orthologous intron IDs
    id_list = []
    for ortholog in unique_ortholog_list:
        id_list.append(
            Annotation.objects.filter(**{'gene_id': ortholog}).values('id')
        )

    return render(
        request,
        'results/individual.html',
        {
            'data': info,
            'gene_url': gene_url,
            'transcript_url': transcript_url,
            'orthologs': id_list
        }
    )
                                             

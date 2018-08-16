from django.shortcuts import render
from django.db import connection as conn
import re
import apsw
from . import models

# dictionary for converting between database column names and user-friendly
# display names
column_names = {
    'short_seq':    'Abbreviated Sequence',
    'tax_name':     'Taxonomic Name',
    'com_name':     'Common Name',
    'genome':       'Genome Assembly',
    'score':        'Score',
    'intron_class': 'Class',
    'id':           'Intron ID',
    'chromosome':   'Chromosome',
    'start':        'Start',
    'stop':         'Stop',
    'length':       'Length',
    'strand':       'Strand',
    'intron_rank':  'Rank in Transcript',
    'phase':        'Phase',
    'tds':          'Terminal Dinucleotides',
    'up_seq':       'Upstream Exonic Sequence',
    'branch_seq':   'Branch Point Sequence',
    'up_seq':       'Upstream Exonic Sequence',
    'down_seq':     'Downstream Exonic Sequence',
    'full_seq':     'Full Sequence',
    'gene_symbol':  'Gene Symbol',
    'gene_id':      'Ensembl Gene ID',
    'trans_id':     'Ensembl Transcript ID'
}

# functions used in advanced views
# converts QuerySets into lists of lists
def QS_to_list(search_results, column_list):
    rows = []
    for hit in search_results:
        row = []
        for column in column_list:
            row.append(getattr(hit, column))
        rows.append(row)
    return(rows)

# make column names user-friendly; needs query_text and returns column_list
# in case no columns were specified and those need changing
def column_name_improvement(column_list, query_text):
    if len(column_list) != 1: # the user specified columns
        html_columns = [column_names[x] for x in column_list]
        html_columns.remove('Intron ID')
        return(column_list, html_columns, query_text)
    else: # the user specified no columns, so we give them default columns
        column_list.extend([
            'genome',
            'tax_name',
            'gene_symbol',
            'tds',
            'chromosome',
            'start',
            'stop'
        ])
        html_columns = [
            'Genome Assembly',
            'Taxonomic Name',
            'Gene Name',
            'Terminal Dinucleotides',
            'Chromosome',
            'Start',
            'Stop'
        ]
        # always nice to let the user know what we're doing
        query_text += '\nNo columns specified; showing default columns.'
        return(column_list, html_columns, query_text)

# execute SQL queries to get data; takes query_text as input just in case the
# user didn't specify any search terms
def query_models(filters, genome_list, column_list, query_text):
    # the user entered nothing into any field, so give them all U12s
    if filters == {}:
        search_results = U12S.objects.filter(genome = 'GRCh38')
        table_rows = QS_to_list(search_results, column_list)
        query_text = 'No search input; showing all U12-dependent introns \
from human genome hg38 AKA GRCh38. '
        return(table_rows, query_text)
    # since we may need to run the same query on multiple tables, we will be
    # generating multiple QuerySets. We can covert each one into a list of
    # lists and concatenate those lists into one comprehensive list of lists
    # to pass on to the template
    else:
        for genome in genome_list:
            # model names are cleaned by Django, so we must clean our genome
            # names before attempting to query models
            model_name = re.sub('\.|-|_', '', genome).title()
            # run the SQL query over as many tables as is appropriate
            search_results = getattr(models, model_name).objects.filter(**filters)
            # turn the QuerySet into a list of lists
            table_rows = QS_to_list(search_results, column_list)
            return(table_rows, query_text)

# actual views

def U12_list(request): # parse input from search bar and GET requested info
    # from database
    # get the user query
    user_query = request.GET.get('query')
    apsw_conn = apsw.Connection('introns.db')
    cur = apsw_conn.cursor()
    if user_query is not '': # at the risk of incorrectly interpreting some
    # search queries, we will simply pass the whole query to fts5
        cur.execute('SELECT intron_id, genome, tax_name, gene_symbol, tds, \
chromosome, start, stop FROM searchable WHERE searchable = ?',
            ('"'+ user_query + '"',)
        )
        search_results = cur.fetchall()
        return render(
            request,
            'results/U12_list.html',
            {
                'search_results': search_results,
                'query': 'Showing results for: ' + user_query
            }
        )
    else: # if they submitted a blank query, just give them all human U12s
        cur.execute('SELECT intron_id, genome, tax_name, gene_symbol, tds, \
chromosome, start, stop FROM U12s WHERE genome = "GRCh38"')
        search_results = cur.fetchall()
        return render(
            request,
            'results/U12_list.html',
            {
                'search_results': search_results,
                'query': 'No input detected; showing all U12-dependent introns\
 in human genome hg38 AKA GRCh38.'
            }
        )

def main_list(request):
    # no matter what, we need to get the id of every intron returned from 
    # every query so that we can make links to the individual view page
    column_list = ['id']
    # make a list of all of their search criteria to make a string to appear
    # above the table
    query_strings = []
    # store all of their search terms in a dictionary to kwargs into a model
    # query
    filters = {}
    # make a list of what genomes to query, since that determines what tables
    # we will be searching
    genome_list = []
    for field in request.GET.items():
        if 'y_' in field[0]: # anything prefixed with y_ is a field the
            # user wants shown in the results table
            column_list.append(field[0].lstrip('y_'))
        elif field[1] == '': # skip over fields that had no user input
            pass
        elif field[0] == 'tax_name': # since the search page input looks like
            # tax_name (genome), we need a regex
            genome = re.match('\((.+)\)$', field[0]).group(1)
            genome_list.append(genome)
        else: # everything else should be a simple queryset filter
            # add to the dictionary
            filters[field[0] + '__icontains'] = field[1]
            # add to string describing user input
            query_strings.append(column_names[field[0]] + ' = ' + \
            field[1])

    # make a nice string to display on the results page
    query_text = 'Showing results for: ' + ', '.join(query_strings) + '. '

    # need to pass query text and return column_list in case the user didn't
    # input any columns in their selection and we gave them default options
    (column_list, html_columns, query_text) = column_name_improvement(
        column_list,
        query_text
    )

    # use the filters to get information out of the models and return it as a
    # list of lists for the template; if there's no output, modifies query_text
    # appropriately, and leaves it unchanged otherwise
    (table_rows, query_text) = query_models(
        filters, genome_list, column_list, query_text
    )

    # at this point, we have everything that we need to render the template
    return render(
        request,
        'results/main_list.html',
        {
            'rows': table_rows,
            'columns': html_columns,
            'query': query_text
        }
    )

def advanced_list(request):
    # no matter what, we need to get the id of every intron returned from 
    # every query so that we can make links to the individual view page
    column_list = ['id']
    # make a list of all of their search criteria to make a string to appear
    # above the table
    query_strings = []
    # store all of their search terms in a dictionary to kwargs into a model
    # query
    filters = {}
    # make a list of what genomes to query, since that determines what tables
    # we will be searching
    genome_list = []
    modifiers = [] # for >, <, and between (x,y) queries
    for field in request.GET.items():
        if 'y_' in field[0]: # anything prefixed with y_ is a field the
            # user wants shown in the results table
            column_list.append(field[0].lstrip('y_'))
        elif field[1] == '': # skip over fields that had no user input
            pass
        elif '__' in field[0]: # anything with a __ is a greater than, less
            # than, or between modifier for one of the numeric fields
            modifiers.append(field[0])
        elif field[0] == 'tax_name':
            genome = re.match('\((.+)\)$', field[0]).group(1)
            genome_list.append(genome)
        else: # everything else should be a simple queryset filter
            # add to the dictionary
            filters[field[0] + '__icontains'] = field[1]
            # add to string describing user input
            query_strings.append(column_names[field[0]] + ' = ' + \
            field[1])

    # if there were any >, <, or range modifiers, deal with them appropriately
    for mod in modifiers:
        # mod_field should be the name of the field we need to change. I.e. if
        # the user hit the greater than button next to start, mod is start__gt
        # and mod_field is start
        mod_field, mod_type = mod.split('__')
        # now find the corresponding field and replace it. To continue the 
        # example, now filters needs to contain start__gt instead of start
        filters[mod] = filters.pop(mod_field) # this keeps start__gt paired
        # with the user's input- it just changes the key

        # we also need to change the corresponding string in query_strings,
        # since it currently says start = x and should say start > x
        mod_dict = {'gt': '>', 'lt': '<', 'range': 'between'}
        query_strings = [ # should only change the appropriate equal sign
            x.replace('=', mod_dict[mod_type])
            if x.split(' =')[0] == column_names[mod_field]
            else x 
            for x in query_strings
        ]

    # make a nice string to display on the results page
    query_text = 'Showing results for: ' + ', '.join(query_strings) + '. '

    # need to pass query text and return column_list in case the user didn't
    # input any columns in their selection and we gave them default options
    (column_list, html_columns, query_text) = column_name_improvement(
        column_list,
        query_text
    )

    # use the filters to get information out of the models and return it as a
    # list of lists for the template; if there's no output, modifies query_text
    # appropriately, and leaves it unchanged otherwise
    (table_rows, query_text) = query_models(
        filters, genome_list, column_list, query_text
    )

    # at this point, we have everything that we need to render the template
    return render(
        request,
        'results/main_list.html',
        {
            'rows': table_rows,
            'columns': html_columns,
            'query': query_text
        }
    )

def individual(request, input_intron_id): # find all info relating to
    # single intron chosen from results page

    # the name of the assembly a given intron is from is in the first part of
    # the intronIC ID, so we need to extract that for the model query
    genome = res.match('^(.+)\-\w+@\w+', input_intron_id).group(1)

    # Django makes pretty model names by using title() and removing _ - and .
    # from the SQLite table names, so we must do the same before trying to
    # query a model
    model_name = re.sub('_|\.|-', '', genome).title()
    info = getattr(models, model_name).objects.get(intron_id = input_intron_id)

    # create links to the ensembl pages corresponding to the ensembl gene
    # and transcript IDs
    species = re.sub(' ', '_', info.tax_name) # need the species and genus
    # names to be separated by an underscore for the ensembl URLs

    if info.com_name in ['Thale', 'Corn', 'Soy', 'Rice']: # ensembl plants
        gene_url = 'https://plants.ensembl.org/' + species + \
        '/Gene/Summary?g=' + info.gene_id
        transcript_url = 'https://plants.ensembl.org/' + species + \
        '/Transcript/Summary?t=' + info.trans_id
    elif info.com_name in ['Honeybee', 'Mosquito', 'Anemone']: # metazoa
        gene_url = 'https://metazoa.ensembl.org/' + species + \
        '/Gene/Summary?t=' + info.gene_id
        transcript_url = 'https://metazoa.ensembl.org/' + species + \
        '/Transcript/Summary?t=' + info.trans_id
    else: # normal ensembl
        gene_url = 'https://ensembl.org/' + species + '/Gene/Summary?g=' + \
        info.gene_id
        transcript_url = 'https://ensembl.org/' + species + \
        '/Transcript/Summary?t=' + info.trans_id

    return render(
        request,
        'results/individual.html',
        {
            'data': info,
            'gene_url': gene_url,
            'transcript_url': transcript_url,
        }
    )

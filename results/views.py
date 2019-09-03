from django.shortcuts import render
from django.db import connection as conn
from django.contrib.postgres.search import SearchVector, SearchQuery
from django.db.models import Q
import re
from . import models
import sys

# dictionary for converting between database column names and user-friendly
# display names
column_names = {
    'short_seq':    'Abbreviated Sequence',
    'tax_name':     'Taxonomic Name',
    'com_name':     'Common Name',
    'genome':       'Genome Assembly',
    'score':        'Score',
    'intron_class': 'Class',
    'intron_id':    'Intron ID',
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

# functions used in main and advanced views ###################################
# converts QuerySets into lists of lists
def QS_to_list(search_results, column_list):
    rows = []
    for hit in search_results:
        row = []
        for column in column_list:
            row.append(hit[column])
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
        query_text += ' Showing default columns'
        return(column_list, html_columns, query_text)

# execute SQL queries to get data; takes query_text as input just in case the
# user didn't specify any search terms
def query_models(filters, gene_names, genome_list, column_list, query_text):
    # the user entered nothing into any field, so give them all human U12s
    if filters == {} and genome_list == [] and gene_names == Q():
        search_results = models.U12S.objects.filter(genome = 'GRCh38')\
        .values(*column_list)
        table_rows = QS_to_list(search_results, column_list)
        query_text = 'No search input; showing all U12-dependent introns \
from human genome hg38 AKA GRCh38. '
        return(table_rows, query_text)
        # since we may need to run the same query on multiple tables, we will 
        # be generating multiple QuerySets. We can covert each one into a list 
        # of lists and concatenate those lists into one comprehensive list of 
        # lists to pass on to the template
    # the user only chose a genome or list thereof but had no other search terms
    elif filters == {} and genome_list != [] and gene_names == Q():
        query_text += ' in '
        for genome in genome_list:
            # add list of genomes to query_text
            query_text += f'{genome}, '
            # model names are cleaned by Django, so we must clean our genome
            # names before attempting to query models
            model_name = ''.join(
                [x.title() for x in re.split('_|\.|-', genome)]
            )
            # run the SQL query over as many tables as is appropriate
            search_results = getattr(models, model_name).objects.all().values(
                *column_list
            )
            # turn the QuerySet into a list of lists
            table_rows = QS_to_list(search_results, column_list)
        query_text = re.sub(', $', '.', query_text)
        return(table_rows, query_text)
    # the user wants to find introns from all genomes matching their query
    elif genome_list == []:
        # get a list of all the genomes in the database
        cur = conn.cursor()
        cur.execute('SELECT table_name FROM information_schema.tables WHERE \
table_schema = \'public\'')
        genome_list = [x[0] for x in cur.fetchall()]
        # drop all of the tables made by django or related to the virtual tables
        # from the list, because those won't have models
        genome_list = [
            i for i in genome_list
            if not re.search('(orthologs|auth|django|searchable|sqlite|u12s)', i)
        ]
        # then just call this function again using the complete genome list
        return(query_models(filters, gene_names, genome_list, column_list, query_text))
    # the user picked some genomes and/or some filters but no gene names
    # the user picked some genomes, a gene name or two, and some other filters
    else:
        table_rows = []
        query_text += ' in '
        for genome in genome_list:
            query_text += f'{genome}, '
            # model names are cleaned by Django, so we must clean our genome
            # names before attempting to query models
            model_name = ''.join(
                [x.title() for x in re.split('_|\.|-', genome)]
            )
            # run the SQL query over as many tables as is appropriate
            search_results = getattr(models, model_name)\
                .objects.filter(**filters)\
                .filter(gene_names)\
                .values(*column_list)
            # turn the QuerySet into a list of lists
            table_rows.extend(QS_to_list(search_results, column_list))
        query_text = re.sub(', $', '.', query_text)
        return(table_rows, query_text)

# actual views ################################################################

def U12_list(request): # parse input from search bar and GET requested info
    # from database
    # get the user query
    user_query = request.GET.get('query')
    if user_query is not '':
        search_hits = models.U12S.objects.annotate(
            search = SearchVector(
                'genome', 'tax_name', 'com_name', 'gene_symbol', 'gene_id',
                'trans_id', 'tds'
            )
        ).filter(search = SearchQuery(user_query))
        return render(
            request,
            'results/U12_list.html',
            {
                'search_hits': search_hits,
                'query': 'Showing results for: ' + user_query
            }
        )
    else: # if they submitted a blank query, just give them all human U12s
        search_hits = models.U12S.objects.filter(genome = 'GRCh38')
        return render(
            request,
            'results/U12_list.html',
            {
                'search_hits': search_hits,
                'query': 'No input detected; showing all U12-dependent introns\
 in human genome hg38 AKA GRCh38.'
            }
        )

def main_list(request):
    # no matter what, we need to get the id of every intron returned from 
    # every query so that we can make links to the individual view page
    column_list = ['intron_id']
    # make a list of all of their search criteria to make a string to appear
    # above the table
    query_strings = []
    # store all of their search terms in a dictionary to kwargs into a model
    # query, except for gene_symbol; since they might 
    # specify lists of those, we need to create Q objects for those so that
    # we can or together the different elements of those lists (i.e. make it
    # so that we say gene_symbol__icontains x OR y instead of x AND y--normal
    # QuerySet filters will AND everything together by default)
    filters = {}
    gene_names = Q()
    # make a list of what genomes to query, since that determines what tables
    # we will be searching. Need to get just the genome and not the tax name or
    # the parentheses, hence the regex. In order to get the entire list of
    # genomes that they specified, we need to use the getlist() method;
    # .items() only returns a single string for each key, for some reason
    genome_list = [
        re.search('\((.+)\)$', x).group(1) 
        for x in request.GET.getlist('genome')
    ]
    for field in request.GET.items():
        if 'y_' in field[0]: # anything prefixed with y_ is a field the
            # user wants shown in the results table
            column_list.append(field[0].lstrip('y_'))
        elif field[1] == '': # skip over fields that had no user input
            pass
        elif field[0] == 'genome': # we already dealt with the genomes
            pass
        elif field[0] == 'gene_symbol': 
             # we want users to be able to provide lists of genes so we need
             # to split that on commas in case they did provide a list and then
             # make it into a Q object with each gene name OR'd together
            terms = re.split(',\ ?', field[1])
            # the regex allows us to handle comma-separated lists that may or
            # may not have spaces
            query_strings.append(column_names[field[0]] + ' = ')
            for term in terms:
                gene_names |= Q(gene_symbol__icontains=term)
                # add to string describing user input
                query_strings.append(term + ' or ')
            query_strings[-1] = query_strings[-1].rstrip(' or ')
        elif field[0] == 'tds': # add a hyphen if necessary
            if len(field[1]) == 4:
                field[1] = field[1][0:2] + '-' + field[1][2:]
            filters['tds__icontains'] = field[1]
        else: # everything else should be a simple queryset filter
            # add to the dictionary
            filters[field[0] + '__icontains'] = field[1]
            # add to string describing user input
            query_strings.append(column_names[field[0]] + ' = ' + field[1])
    # make a nice string to display on the results page
    query_text = 'Showing results for: ' + ', '.join(query_strings)
    query_text = re.sub('= ,', '= ', query_text)

    # need to pass query text and return column_list in case the user didn't
    # input any columns in their selection and we gave them default options
    (column_list, html_columns, query_text) = column_name_improvement(
        column_list, query_text
    )

    # use the filters to get information out of the models and return it as a
    # list of lists for the template; if there's no input, modifies query_text
    # appropriately, and adds genomes otherwise
    (table_rows, query_text) = query_models(
        filters, gene_names, genome_list, column_list, query_text
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
    # every query so that we can make links to the individual view pages
    column_list = ['intron_id']
    # make a list of all of their search criteria to make a string to appear
    # above the table
    query_strings = []
    # store all of their search terms in a dictionary to kwargs into a model
    # query, except for gene names / symbols, which get stored in a Q object
    # so that the individual gene names are OR'd together instead of AND'd
    filters = {}
    gene_names = Q()
    # make a list of what genomes to query, since that determines what tables
    # we will be searching
    genome_list = [
        re.search('\((.+)\)$', x).group(1) 
        for x in request.GET.getlist('genome')
    ]
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
        elif field[0] == 'genome': # already made genome list above
            pass
        elif field[0] == 'gene_symbol': 
             # we want users to be able to provide lists of genes so we need
             # to split that on commas in case they did provide a list and then
             # make it into a Q object with each gene name OR'd together
            terms = re.split(',\ ?', field[1])
            # the regex allows us to handle comma-separated lists that may or
            # may not have spaces
            query_strings.append(column_names[field[0]] + ' = ')
            for term in terms:
                gene_names |= Q(gene_symbol__icontains=term)
                # add to string describing user input
                query_strings.append(term + ' or ')
            query_strings[-1].rstrip(' or ')
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
        filters[mod] = filters.pop(mod_field + '__icontains') # this keeps 
        # start__gt paired with the user's input- it just changes the key

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
    query_text = re.sub('= ,', '= ', query_text)
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
        filters, gene_names, genome_list, column_list, query_text
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
    genome = re.match('^[^@]+(?=(-.{3}[^@]+?@))', input_intron_id).group(0)

    # Django makes pretty model names by using title() and removing _ - and .
    # from the SQLite table names, so we must do the same before trying to
    # query a model
    model_name = ''.join([x.title() for x in re.split('_|\.|-', genome)])
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

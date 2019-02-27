from django.shortcuts import render
from django.db import connection as conn
import re

# get a list of all the species and genome assemblies in the database, since
# that's basically the only important thing the below views are doing
def get_all_genomes():
    cur = conn.cursor()
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
    # find all corresponding taxonomic names for each genome
    for genome in name_list:
        cur.execute(
            f'SELECT tax_name FROM "{genome}" LIMIT 1'
        )
        tax_name_list = [x[0] for x in cur.fetchall()]
        names.append([
            re.sub('_', ' ', x) + ' (' + genome + ')'
            for x in tax_name_list
        ])
    # will get a list of assemblies for each species, so need to flatten the
    # list of lists into one list with all of those
    long_names = [item for sublist in names for item in sublist]
    long_names.sort()
    return(long_names)

# the actual views
def home(request):
    return render(request, "sitepages/home.html")

def about(request):
    return render(request, "sitepages/about.html")

def main_search(request): # get list of tax_name (genome)
    names = get_all_genomes()
    return render(request, "sitepages/main_search.html", {'names': names})

def advanced_search(request): # get lists of all assemblies and species
    names = get_all_genomes()
    return render(request, "sitepages/advanced_search.html", {'names': names})

def U12_search(request):
    return render(request, "sitepages/U12_search.html")

def downloads(request):
    long_names = get_all_genomes()
    both_names = [[x, x.split('(')[1].rstrip(')')] for x in long_names]
    return render(request, "sitepages/downloads.html", {'list': both_names})

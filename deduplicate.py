# deduplicate.py
# takes the info files for two runs of intronIC on the same genome, one using
# -e to use exons to define introns and one run with the default setting using
# CDSes to define introns as input. Compares all of the introns to determine
# which introns were only annotated using exons, i.e. introns in noncoding
# transcripts or portions thereof, and creates a list containing a list of all
# the CDS-defined introns plus those introns that were only defined by exons

import sys
import subprocess as sp

try:
    genome = sys.argv[1]
except IndexError:
    sys.exit('Specify a genome to analyze.')

print(
  f'Concatenating lists of exon-defined and cds-defined introns for {genome}.')

# get the list of all intron ids from the exon-defined intron file and the cds-
# defined intron file, and make them sets so we can use the difference method
# have to define these out of the with block
exon_ids = cds_ids = []
with open(f'info/{genome}_cds_info.iic', 'r') as cds_file, \
open(f'info/{genome}_exon_info.iic', 'r') as exon_file:
    cds_lines = cds_file.readlines()
    cds_coords = set(['\t'.join(x.split('\t')[4:7]) for x in cds_lines])
    exon_lines = exon_file.readlines()
    exon_coords = set(['\t'.join(x.split('\t')[4:7]) for x in exon_lines])

# this will give us all the elements in exon_ids that aren't also in cds_ids
exon_only_coords = exon_coords.difference(cds_coords)
print(f'There were {len(exon_only_coords)} introns not defined by CDSes.')

with open(f'info/{genome}_exon_info.iic', 'r') as exon_file, \
open(f'info/{genome}_cds_info.iic', 'r') as cds_file,\
open(f'info/{genome}_info.tsv', 'w') as out_file:
    i = 0
    matches = 0
    for line in exon_file:
        i += 1
        test_coords = '\t'.join(line.split('\t')[4:7])
        if test_coords in exon_only_coords:
            matches += 1
            out_file.write(line)
    print(f'There were {matches} introns not defined by CDSes.')
    # now that all of the exon-only introns are in the output file we need to
    # add in the cds-only introns
    out_file.write(''.join(cds_file.readlines()))
print('If the previous two lines are different, something is wrong.')

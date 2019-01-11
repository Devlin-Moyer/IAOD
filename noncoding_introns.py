# noncoing_introns.py
# takes the info files for two runs of intronIC on the same genome, one using
# -e to use exons to define introns and one run with the default setting using
# CDSes to define introns as input. Compares all of the introns to determine
# which introns were only annotated using exons, i.e. introns in noncoding
# transcripts or portions thereof, and creates a list containing a list of all
# the CDS-defined introns plus those introns that were only defined by exons

# need to run sort -k5,6 info/<genome>_cds_info.iic > tmp/cds.tsv and
# sort -k5,6 info/<genome>_exon_info.iic > tmp/exon.tsv first

import sys

try:
    genome = sys.argv[1]
except IndexError:
    sys.exit('Specify a genome to analyze.')

print(
  f'Concatenating lists of exon-defined and cds-defined introns for {genome}')

with open(f'tmp/{genome}_cds.tsv', 'r') as cds_file,\
open(f'tmp/{genome}_exon.tsv', 'r') as exon_file,\
open(f'info/{genome}_info.tsv', 'w') as out_file:
    i = 0
    exon = exon_file.readline()
    cds = cds_file.readline()
    while True:
        # make a loop counter
        i = i + 1
        exon_bits = exon.rstrip('\n').split('\t')
        cds_bits = cds.rstrip('\n').split('\t')
        # first make sure that we aren't at the end of either file
        if (len(cds_bits) == 1 or len(exon_bits) == 1):
            # if we have run out of CDS-defined introns, we need to print out
            # all remaining exon-defined introns
            for line in exon_file.readlines():
                out_file.write(line)
            break
        # then check if we're on the same chromosome
        if exon_bits[4] == cds_bits[4]:
            # if the exon-defined intron starts before the CDS-defined one, it
            # is either in the 5' UTR or in an entirely non-coding gene that
            # is upstream of the coding gene with the current CDS-defined 
            # intron, so we want to print this intron's information
            if int(exon_bits[5]) < int(cds_bits[5]):
                out_file.write(exon)
                # get a new exon-defined intron and keep the current CDS-
                # defined intron until we catch up in the exon-defined file
                exon = exon_file.readline()
            # if the two introns have the same coordinates, then we should
            # only print the information about the cds-defined intron, since it
            # will have a phase and the exon-defined one won't. Hypothetically,
            # we could ensure that both the start and end coordinates are the 
            # same, but for now we'll assume that both or neither coordinates
            # will be the same
            elif int(exon_bits[5]) == int(cds_bits[5]):
                out_file.write(cds)
                # advance to the next intron in both files
                exon = exon_file.readline()
                cds = cds_file.readline()
            # apparently there are some mysterious introns that are flanked by
            # cdses but not exons? just going to deal with them by writing
            # those out and moving on
            elif int(exon_bits[5]) > int(cds_bits[5]):
                out_file.write(cds)
                cds = cds_file.readline()
        # if we're not on the same chromosome, we need to keep going through
        # exon-defined introns until we get to the same chromosome as the
        # current CDS-defined intron
        else:
            out_file.write(exon)
            exon = exon_file.readline()

print(f'There were {i} introns in total.')

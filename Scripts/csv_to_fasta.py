#!/bin/python3

#Script to convert csv sequences to fasta
#save your file in csv format. Ensure its comma separated values and not comma delimeted values.
#Then run the script
#Change column names to the suitable file column names in your csv file in line 24 and 25
# Copyright (C) 2020  Mike J. Mwanga <mikemwanga6@gmail.com>

import sys
import csv

if len(sys.argv)!=3:
    print("USAGE ERROR:csv_to_fasta.py input_file outputfile")
    sys.exit()

inputfile=sys.argv[1]
outputfile=sys.argv[2]


with open(inputfile, 'r') as infile:
    with open(outputfile, 'w') as outfile:
        read_file = csv.DictReader(infile, delimiter=',')
        for line in read_file:
            name = '>'+line['Accession'] +'/'+line['Description']
            sequence = name + '\n' + line[' actualseq'] +'\n'
            outfile.write(sequence)

print('Thats all folk')
print('STOP using microsoft word to edit/analyse/visualize sequences/data. Just stop!')
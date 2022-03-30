#!/bin/python3

# Script to replace file names with other names from another file.
# The replacing data is already presupllied in here.
# inputfile is file containing names to be replaced
# returns outfile
# Runs on python 3
# Copyright (C) 2021  Mike J. Mwanga <mikemwanga6@gmail.com>

import pandas as pd
import os
import sys

if len(sys.argv) != 3:
    print("USAGE ERROR:replace.py input_file out_putfile")
    sys.exit()

inputfile = sys.argv[1]
outputfile = sys.argv[2]
replace_to_file = "/Users/mikemwanga/Documents/MSC_Work/MSC_Project/MSC-Project/Scripts/sequence_ids.txt"

data = pd.read_table(replace_to_file)
data = pd.DataFrame(data)
my_dict = {row[0]: row[1] for row in data.values}

#read in files

with open(inputfile, 'r') as infile:
    line = infile.read()
    for key, value in my_dict.items():
        if key in line:
            line = line.replace(key, value)
with open(outputfile, 'w') as outfile:
    outfile.write(line)

print("Thats all falks")

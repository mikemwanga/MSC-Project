#!/bin/python3
# Script to remove bootstrap values below 70 in a newick Figtree file
# Load a newick tree to figtree, replace 'label' with 'boot' in the pop window
# Dipslay branch labels as boot
# Save the tree in any formart
# The run the script
# Copyright (C) 2020  Mike J. Mwanga <mikemwanga6@gmail.com>

#!/usr/bin/env python3
import sys
import re
import os.path
import fileinput


if len(sys.argv) != 3:
    print("USAGE ERROR:remove_boot.py input_file outputfile")
    sys.exit()

inputfile = sys.argv[1]
outputfile = sys.argv[2]

with open(inputfile, 'r') as f:
    with open(outputfile, 'w') as of:
        for line in f:
            new_line = re.sub(
                r'boot=^([0-9]|[2-6][0-9]|1[0-9]|7[0-9])$', '', line)
            of.write(new_line)

print('Thats All Folk')

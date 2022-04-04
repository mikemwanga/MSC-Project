# Python script to count the frequency of different amino acid residues to the vaccine strain.
# Python version 3.9
# Created by Mike Mwanga
# mikemwanga6@gmail.com
# Copyright 2021
# Install the below libraries using pip
# Ensure the first sequence in your fasta is the vaccine strain. Comparison is done to this file.


import sys
import re
import os.path
import fileinput
import pandas as pd
import plotly.express as pltyl
import plotly


# Call python3 + amino acid fasta file 

if len(sys.argv) != 2:
    print("USAGE ERROR: count_aa_changes.py input_file")
    sys.exit()
inputfile = sys.argv[1]


seq = [] #create a list of all the seqeuences 
with open(inputfile, "r") as file:
    lines = file.readlines()
    for line in lines:
        if not line.startswith(">"):
            seq.append(line.strip("\n"))

vaccine_sequences = seq[0]  # Ensure the first seqeunce in your fasta file is the vaccine sequence
kilifi = seq[1:] #compare with the rest of the alignment


count_diff = {}

for i in range(len(vaccine_sequences)): 
    count = 0   
    for j in kilifi:
        #for a, b in zip(vaccine_sequences, j):
        if j[i] == '-':
            count += 0
        elif j[i] == vaccine_sequences[i]:
            count += 0
        elif j[i] != vaccine_sequences[i]:
            count += 1
    count_diff[i+1] = count

count_diff_df = pd.DataFrame(list(count_diff.items()))

count_diff_df.columns = ["Position", "Frequency"]

count_diff_df["Frequency"] = count_diff_df.Frequency.replace(0, "nan")
count_diff_df

##-----------------------------------------------------------------------
#Graphical display of the frequency of residues.

fig = pltyl.scatter(count_diff_df, 
                    y = "Frequency", x = "Position")

fig.update_traces(marker_size = 6, marker=dict(color = "blue"))

fig.update_layout(title = inputfile)
fig.update_xaxes(showgrid=True, gridwidth=1, gridcolor='lightgray')
fig.update_yaxes(showgrid=True, gridwidth=1, gridcolor='lightgray')

#fig.show()

plotly.io.write_image(fig, inputfile+'_aa_counts.pdf', format='pdf', engine="auto")

#Dealing with zero values
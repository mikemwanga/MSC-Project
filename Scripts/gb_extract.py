from Bio import SeqIO
import sys
acc = SeqIO.parse("vp7.aln4.fas", "fasta")

print(acc.id)

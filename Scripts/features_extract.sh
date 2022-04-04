#!/bin/bash

#extract country and date information

grep ">" vp7.trial.fas | cut -d "_" -f1 | sed 's/>//g' > tmp.txt

file="./tmp.txt"
 acc=$(cat $file)

 for line in $acc
 do
    esearch -db nucleotide -query "$line" | efetch -format gb > $line'.gb' 

done
 # read in files and grep data

for fl in *.gb
do
    grep "country" $fl | sed 's/ //g' | cut -d "=" -f2 | sed 's/"//g'
    grep "collection_date" $fl | sed 's/ //g' | cut -d "=" -f2| sed 's/"//g'
done




#grep "collection_date" sequence.gb | sed 's/ //g' | cut -d "=" -f2| sed 's/"//g'
#grep "strain" sequence.gb | sed 's/ //g' | cut -d "=" -f2| sed 's/"//g'

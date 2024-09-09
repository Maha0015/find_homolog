#!/bin/bash

query=$1
subject=$2
outfile=$3

blastn \
    -query $query \
    -subject $subject \
    -outfmt '6 pident length qlen' \
    -task blastn-short \
	| awk '$1==100 && $2==$3' > $outfile

wc -l < $outfile

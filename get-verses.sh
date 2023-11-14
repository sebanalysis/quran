#!/bin/bash
# get-verses

outfile=verses.txt
rm $outfile 2>/dev/null

while read line; do
    echo $line
    if [[ $line == \#* ]]; then
        echo "$line" >> $outfile
    else
        grep -H "^$line|" quran/* >> $outfile
        echo "" >> $outfile    
        echo "" >> $outfile
    fi
done <numbers.txt


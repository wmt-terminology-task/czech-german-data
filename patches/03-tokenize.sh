#!/usr/bin/bash

# for LANG in "cs" "de" "en"; do
# for file in data/raw/*.$LANG; do
for LANG in "de" "en"; do
for file in data/raw/*.de-en.$LANG; do
    echo $file
    fout="${file/\/raw\//\/tok\/}"
    sacremoses -l $LANG -j 20 tokenize < $file > $fout
    # remove line breaks
    sed -i "s/\w- //g" $fout
done
done
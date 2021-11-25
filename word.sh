#!/bin/bash

# Script for generating single .docx from one or more .md files.
#
# Assumes existence of a .yml file and .md file(s), as well as 
# a 'reference.docx' file for styling (see https://pandoc.org/MANUAL.html).
# Pagebreaks can be added to a header style in the reference.docx file.
#
# Place this script in your project folder together with the yml and md files.
#
# Place all reference files (.bib, .csl, reference.docx) in a directory of your choice,
# then pass it to the PANDIR variable below. This way other projects can reference the same files. 
#
# NB careful not to put comments or spaces after the "\"s inside the pandoc command

PANDIR='./pandoc_resources'
pandoc \
    --data-dir=$PANDIR \
    -C --bibliography=$PANDIR/master.bib \
    --csl=$PANDIR/chicago17_full.csl \
    -o manuscript.docx \
    metadata.yml \
    chapter1.md \
    chapter2.md \
    chapter3.md
    # alternatively: ./*.md
    # or ./*/*.md if you put chapters in separate folders

#!/bin/bash

# Script for generating single .pdf from one or more .md files.
# Assumes existence of a .yml file and .md file(s), as well as 
# the Eisvogel template for styling (https://github.com/Wandmalfarbe/pandoc-latex-template)
#
# Place this script in your project folder together with the yml and md files.
#
# Place all reference files (.bib, .csl, .latex) in a directory of your choice,
# then pass it to the PANDIR variable below. This way other projects can reference the same files. 
#
# For pagebreaks, add "\clearpage" inside the .mds where you want the breaks (e.g. at the end of each file)
#
# NB careful not to put comments or spaces after the "\"s in the pandoc command below

PANDIR='./pandoc_resources'
pandoc \
    --toc \
    --template $PANDIR/eisvogel.latex \
    -C --bibliography=$PANDIR/master.bib \
    --csl=$PANDIR/chicago17_full.csl \
    --lua-filter=$PANDIR/pagebreak.lua \
    -o manuscript.pdf \
    metadata.yml \
    chapter1.md \
    chapter2.md \
    chapter3.md
    # alternatively: ./*.md
    # or ./*/*.md if you put chapters in separate folders



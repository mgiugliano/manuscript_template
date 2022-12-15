#!/usr/bin/env bash

echo "Deleting old files..."
rm -f ./Output/manuscript.docx
rm -f ./Output/manuscript.pdf
rm -f ./Output/manuscript.md
rm -f ./Output/manuscript.html

echo "Concatenating together the individual text files..."
touch ./Output/manuscript.md
cat Text/1_title.md      >> ./Output/manuscript.md
cat Text/2_abstract.md   >> ./Output/manuscript.md
cat Text/3_intro.md      >> ./Output/manuscript.md
cat Text/4_methods.md    >> ./Output/manuscript.md
cat Text/5_results.md    >> ./Output/manuscript.md
cat Text/6_discussion.md >> ./Output/manuscript.md
cat Text/7_captions.md   >> ./Output/manuscript.md
cat Text/8_ack.md        >> ./Output/manuscript.md

echo "Importing the most updated bibliography file..."
mkdir -p bibliography
cp /Users/michi/Dropbox/Pro/BibTex/bib.bib bibliography/localbib.bib

echo "Launching PanDoc..."
#pandoc -T -s -V geometry="paperwidth=21cm, paperheight=29.7cm, margin=2.54cm" --bibliography=./bibliography/localbib.bib --citeproc --pdf-engine=xelatex --csl=./csl_style/european-journal-of-neuroscience.csl ./Output/manuscript.md -o ./Output/manuscript.pdf

pandoc -T -s -V geometry="paperwidth=21cm, paperheight=29.7cm, margin=2.54cm" --bibliography=./bibliography/localbib.bib --citeproc --csl=./csl_style/european-journal-of-neuroscience.csl --reference-doc=./templates/manuscript-docx.docx ./Output/manuscript.md -o ./Output/manuscript.docx

pandoc --bibliography=./bibliography/localbib.bib --citeproc --csl=./csl_style/european-journal-of-neuroscience.csl ./Output/manuscript.md -f markdown -t html -s -o ./Output/manuscript.html

#!/usr/bin/env bash

echo "Deleting old files..."
rm manuscript.docx
rm manuscript.pdf
rm manuscript.md

echo "Concatenating together the individual text files..."
touch manuscript.md
cat Text/1_title.md      >> manuscript.md
cat Text/2_abstract.md   >> manuscript.md
cat Text/3_intro.md      >> manuscript.md
cat Text/4_methods.md    >> manuscript.md
cat Text/5_results.md    >> manuscript.md
cat Text/6_discussion.md >> manuscript.md
cat Text/7_captions.md   >> manuscript.md
cat Text/8_ack.md        >> manuscript.md

echo "Importing the most updated bibliography file..."
cp /Users/michi/Dropbox/Pro/BibTex/bib.bib bibliography/localbib.bib

echo "Launching PanDoc..."
#pandoc -T -s -V geometry="paperwidth=21cm, paperheight=29.7cm, margin=2.54cm" --bibliography=/Users/michi/Dropbox/Pro/BibTex/bib.bib --pdf-engine=xelatex --csl=./csl_style/european-journal-of-neuroscience.csl manuscript.md -o manuscript.pdf

pandoc -T -s -V geometry="paperwidth=21cm, paperheight=29.7cm, margin=2.54cm" --bibliography=./bibliography/localbib.bib --csl=./csl_style/european-journal-of-neuroscience.csl --reference-doc=./templates/manuscript-docx.docx manuscript.md -o manuscript.docx


#pandoc -V geometry="paperwidth=21cm, paperheight=29.7cm, margin=2.54cm" --bibliography=./bib.bib --csl=./csl_style/european-journal-of-neuroscience.csl --reference-doc=./templates/manuscript-docx.docx manuscript.md -o manuscript.docx


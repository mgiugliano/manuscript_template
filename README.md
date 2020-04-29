See https://github.com/citation-style-language/styles for csl style files...

## Template for an academic paper - Clone Me

I have recently found a sweet spot in working on an academic paper in full Markdown.
Thanks to Pandoc and to CiteProc I can rapidly generate a Microsoft Word version (as
well as PDF and HTML versions) from a collection of text files edited in e.g. vim,
Sublime, or Zettlr. Especially the neat integration of Pandoc with BibTeX, together
with the ease of adding mathematical expressions, symbols, and equations make it
possible to use only Markdown format files and nothing else.

## Continuous Integration

The present repository is a "template" to be cloned locally and used for the future
papers of mine and of my collaborators. I have discovered that when using GitHub and
a Git client such as WorkingCopy (iOS) I can use the CI (continuous integration)
workflows of GitHub (i.e. GitHub Actions) to run Pandoc automatically in the cloud
and have the "compiled" documents available for download (i.e. artefacts) every time
a push action is completed. This makes it possible to work on the go, with an iPad
and a Markdown editor, benefiting of the automated generation of the *.docx files.
There must be a way to produce "releases" but I could not yet figure it out, so I
stick with artefacts (available for download under GitHub Actions).

## Note on citation and references section formatting styles

See https://github.com/citation-style-language/styles for csl style files...


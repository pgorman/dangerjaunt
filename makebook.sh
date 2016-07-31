#!/bin/sh

pandoc -f markdown+pipe_tables -o test-body.tmp.tex minirules.md
perl tweaktex test-body.tmp.tex > test-body.tex
pdflatex test-book

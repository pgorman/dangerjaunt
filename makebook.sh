#!/bin/sh

pandoc -f markdown+pipe_tables -o test-body.tex minirules.md
pdflatex test-book

#!/bin/sh

pandoc -o test-body.tex minirules.txt
pdflatex test-book

#!/bin/sh

pandoc -f markdown -o ogl.tmp.tex ogl.md
pdflatex ogl
pandoc -f markdown+pipe_tables -o test-body.tmp.tex minirules.md
perl tweaktex test-body.tmp.tex > test-body.tex
pdflatex test-book

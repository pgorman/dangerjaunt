#!/bin/sh

pandoc -f markdown -o .ogl.tmp.tex ogl.md
pdflatex ogl.tex
pandoc -f markdown+pipe_tables -o .body.tmp.tex dangerjaunt.md
perl tweaktex.pl .body.tmp.tex > .body.tex
pdflatex dangerjaunt.tex

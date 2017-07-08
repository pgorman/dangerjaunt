#!/bin/sh

pandoc --wrap=none -f markdown -o .ogl.tmp.tex ogl.md
pdflatex ogl.tex
pandoc --wrap=none -f markdown+pipe_tables -o .body.tmp.tex dangerjaunt.md
perl tweaktex.pl .body.tmp.tex > .body.tex
pdflatex dangerjaunt.tex
pdflatex dangerjaunt-A5.tex
pdflatex booklet.tex
pdflatex booklet-A5.tex

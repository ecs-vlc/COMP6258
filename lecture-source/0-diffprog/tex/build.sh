#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

pushd $SCRIPT_DIR

latexmk -pdf diffprog

latexmk -jobname=diffprog-slides2per -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\def\beamerclass{handout}\input{%S}"' diffprog
latexmk -jobname=diffprog-handouts -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\def\articlemode{articlemode}\input{%S}"' diffprog

cp diffprog-slides2per.pdf ../../../docs/slides2per/diffprog-slides2per.pdf
cp diffprog-handouts.pdf ../../../docs/handouts/
cp diffprog.pdf ../../../docs/lectures/
git add ../../../docs/slides2per/
git add ../../../docs/handouts/
git add ../../../docs/lectures/

magick convert -geometry 1920x1080 -density 320 diffprog.pdf ../diffprog/slides/%04d.png
git add ../diffprog/slides/*


#if [[ -f "/Users/jsh2/Work/pdf2pptx/pdf2pptx.sh" ]]; then
#    /Users/jsh2/Work/pdf2pptx/pdf2pptx.sh differentiate.pdf
#fi

popd

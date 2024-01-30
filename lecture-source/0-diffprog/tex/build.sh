#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

pushd $SCRIPT_DIR

latexmk -pdf diffprog

convert -geometry 1920x1080 -density 320 diffprog.pdf ../diffprog/slides/%04d.png

latexmk -jobname=diffprog-handouts -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\def\beamerclass{handout}\input{%S}"' diffprog
cp diffprog-handouts.pdf ../../../docs/handouts/
cp diffprog.pdf ../../../docs/lectures/
git add ../../../docs/handouts/
git add ../../../docs/lectures/

#if [[ -f "/Users/jsh2/Work/pdf2pptx/pdf2pptx.sh" ]]; then
#    /Users/jsh2/Work/pdf2pptx/pdf2pptx.sh differentiate.pdf
#fi

popd

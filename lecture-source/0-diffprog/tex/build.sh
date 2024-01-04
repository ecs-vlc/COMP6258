#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

pushd $SCRIPT_DIR

latexmk -pdf diffprog

convert -geometry 1920x1080 -density 320 diffprog.pdf ../src/main/resources/uk/ac/soton/ecs/jsh2/diffprog/slides/%04d.png
#if [[ -f "/Users/jsh2/Work/pdf2pptx/pdf2pptx.sh" ]]; then
#    /Users/jsh2/Work/pdf2pptx/pdf2pptx.sh differentiate.pdf
#fi

popd

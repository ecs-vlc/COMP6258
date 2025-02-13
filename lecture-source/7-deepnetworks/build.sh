latexmk -pdf deepnetworks
cp deepnetworks.pdf ../../docs/lectures/
git add ../../docs/lectures/

latexmk -jobname=deepnetworks-slides2per -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\def\beamerclass{handout}\input{%S}"' deepnetworks
cp deepnetworks-slides2per.pdf ../../docs/slides2per/
git add ../../docs/slides2per/

latexmk -jobname=deepnetworks-handouts -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\def\articlemode{articlemode}\input{%S}"' deepnetworks
cp deepnetworks-handouts.pdf ../../docs/handouts/
git add ../../docs/handouts/


if [[ -f "/Users/jsh2/Work/pdf2pptx/pdf2pptx.sh" ]]; then
    /Users/jsh2/Work/pdf2pptx/pdf2pptx.sh deepnetworks.pdf notwide
    mv deepnetworks.pdf.pptx /Users/jsh2/ownCloud/Teaching/COMP6258/slides/7-deepnetworks.pptx
fi

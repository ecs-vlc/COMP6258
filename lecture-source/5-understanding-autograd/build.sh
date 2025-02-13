latexmk -pdf autograd
cp autograd.pdf ../../docs/lectures/
git add ../../docs/lectures/

latexmk -jobname=autograd-slides2per -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\def\beamerclass{handout}\input{%S}"' autograd
cp autograd-slides2per.pdf ../../docs/slides2per/
git add ../../docs/slides2per/

latexmk -jobname=autograd-handouts -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\def\articlemode{articlemode}\input{%S}"' autograd
cp autograd-handouts.pdf ../../docs/handouts/
git add ../../docs/handouts/

if [[ -f "/Users/jsh2/Work/pdf2pptx/pdf2pptx.sh" ]]; then
    /Users/jsh2/Work/pdf2pptx/pdf2pptx.sh autograd.pdf notwide
    mv autograd.pdf.pptx /Users/jsh2/ownCloud/Teaching/COMP6258/slides/5-autograd.pptx
fi
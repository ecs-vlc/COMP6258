latexmk -pdf autoencoders
cp autoencoders.pdf ../../docs/lectures/
git add ../../docs/lectures/

latexmk -jobname=autoencoders-slides2per -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\def\beamerclass{handout}\input{%S}"' autoencoders
cp autoencoders-slides2per.pdf ../../docs/slides2per/
git add ../../docs/slides2per/

latexmk -jobname=autoencoders-handouts -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\def\articlemode{articlemode}\input{%S}"' autoencoders
cp autoencoders-handouts.pdf ../../docs/handouts/
git add ../../docs/handouts/


if [[ -f "/Users/jsh2/Work/pdf2pptx/pdf2pptx.sh" ]]; then
    /Users/jsh2/Work/pdf2pptx/pdf2pptx.sh autoencoders.pdf notwide
    mv autoencoders.pdf.pptx /Users/jsh2/ownCloud/Teaching/COMP6258/slides/16-autoencoders.pptx
fi
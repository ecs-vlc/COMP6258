latexmk -pdf optimisation
cp optimisation.pdf ../../docs/lectures/
git add ../../docs/lectures/

latexmk -jobname=optimisation-slides2per -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\def\beamerclass{handout}\input{%S}"' optimisation
cp optimisation-slides2per.pdf ../../docs/slides2per/
git add ../../docs/slides2per/

latexmk -jobname=optimisation-handouts -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\def\articlemode{articlemode}\input{%S}"' optimisation
cp optimisation-handouts.pdf ../../docs/handouts/
git add ../../docs/handouts/

if [[ -f "/Users/jsh2/Work/pdf2pptx/pdf2pptx.sh" ]]; then
    /Users/jsh2/Work/pdf2pptx/pdf2pptx.sh optimisation.pdf notwide
    mv optimisation.pdf.pptx /Users/jsh2/ownCloud/Teaching/COMP6258/slides/6-optimisation.pptx
fi
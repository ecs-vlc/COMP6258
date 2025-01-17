latexmk -pdf intro
cp intro.pdf ../../docs/lectures/
git add ../../docs/lectures/

latexmk -jobname=intro-slides2per -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\def\beamerclass{handout}\input{%S}"' intro
cp intro-slides2per.pdf ../../docs/slides2per/
git add ../../docs/slides2per/

latexmk -jobname=intro-handouts -pdf -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\def\articlemode{articlemode}\input{%S}"' intro
cp intro-handouts.pdf ../../docs/handouts/
git add ../../docs/handouts/

if [[ -f "/Users/jsh2/Work/pdf2pptx/pdf2pptx.sh" ]]; then
    /Users/jsh2/Work/pdf2pptx/pdf2pptx.sh intro.pdf notwide
    mv intro.pdf.pptx /Users/jsh2/ownCloud/Teaching/COMP6258/slides/1-intro.pptx
fi
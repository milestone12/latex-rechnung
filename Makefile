# Compiles a PDF invoice from _main.tex using PDFLaTeX

all: document.pdf

%.pdf: _main.pdf
	mv _main.pdf $@

_main.pdf:
	pdflatex -synctex=1 -interaction=nonstopmode _main.tex

.PHONY: clean_tempfiles
clean_tempfiles:
	rm -f *.aux *.log *.out *synctex.gz

.PHONY: clean
clean: clean_tempfiles
	rm -f *.pdf

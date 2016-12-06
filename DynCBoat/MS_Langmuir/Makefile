# LaTeX Makefile
FILE=dcboat_langmuir_v1

all:	$(FILE).pdf

.PHONY: clean
clean:
	rm *.aux *.blg *.bbl *.log
	rm acs-*.bib 

$(FILE).pdf: $(FILE).tex
	pdflatex $(FILE)
	bibtex $(FILE)
	pdflatex $(FILE)
	pdflatex $(FILE)



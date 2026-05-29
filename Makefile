.PHONY: all clean


all: semantics.tex refs.bib Makefile
	pdflatex $<
	biber semantics
	pdflatex $<	
clean:
	rm -f *.aux *.log *.out *.blg *.bbl *.bcf *.xml
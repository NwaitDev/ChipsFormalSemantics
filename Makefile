.PHONY: all clean


all: semantics.tex refs.bib Makefile
	xelatex $<
	biber semantics
	xelatex $<
	xelatex $<
	
clean:
	rm -f *.aux *.log *.out *.blg *.bbl *.bcf *.xml
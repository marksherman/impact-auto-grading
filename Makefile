
NAME=impact-auto-grading
REFS=references.bib

$(NAME).pdf: *.tex Makefile
	pdflatex $(NAME).tex
	if [[ -e $(REFS) ]]; then bibtex $(NAME); fi
	pdflatex $(NAME).tex
	pdflatex $(NAME).tex

clean:
	rm -f *.pdf *.log *.aux *.bbl *.blg *.run.xml $(NAME)-blx.bib *~

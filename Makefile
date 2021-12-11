.PHONY: main.pdf

all: main.pdf

main.pdf:
	latexmk -pdf -shell-escape main.tex

watch:
	latexmk -pvc -pdf -shell-escape main.tex

arxiv: main.pdf
	rm -f arxiv.zip *.blg *.dvi *.fdb_latexmk *.fls *.log *.out.ps *.pdf *.synctex.gz **/*.aux
	zip -r arxiv.zip *

clean:
	latexmk -C
	git clean -xfe arxiv.zip

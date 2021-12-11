.PHONY: main.pdf

all: main.pdf

main.pdf:
	latexmk -pdf -shell-escape main.tex

watch:
	latexmk -pvc -pdf -shell-escape main.tex

arxiv: main.pdf
	rm -f arxiv.zip *.aux *.blg *.fdb_latexmk *.fls *.log *.pdf **/*.aux
	zip -r arxiv.zip *

clean:
	latexmk -C
	git clean -xf

.PHONY: main.pdf

all: main.pdf

main.pdf:
	latexmk -pdf -shell-escape main.tex

watch:
	latexmk -pvc -pdf -shell-escape main.tex

clean:
	latexmk -C
	git clean -f

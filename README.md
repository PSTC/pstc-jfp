# Practical Sized Types for Coq

## Build Instructions

Using `texlive`, this requires at least the following:

* `texlive-core` (obviously)
* `texlive-fontsextra` (for acmart fonts)
* `texlive-bibtexextra` (for BibTeX/BibLaTeX)
* `texlive-science` (for various packages like `stmaryd` etc.)
* `texlive-latexextra` (for various packages like `minted` etc.)

Run `make` to generate the PDF and `make clean` to clean up all generated and uncommitted files.
You can use `make watch` to generate the PDF, open it in a previewer, and watch for file changes,
but this is currently buggy and might break when compiling the `minted` stuff.

## Build Instructions for arXiv

1. Replace `minted` package with `\usepackage[finalizecache,cachedir=./minted]{minted}`.
2. Build once.
3. Now replace instead with `\usepackage[frozencache,cachedir=./minted]{minted}`.
4. Run `make arxiv` to create `arxiv.zip`.
5. Restore `\usepackage{minted}`.
6. [Optional] Run `make clean` to remove newly-generated files.

## JFP LaTeX Styles

JFP's instructions for submission can be found [here](https://www.cambridge.org/core/journals/journal-of-functional-programming/information/instructions-contributors),
and the LaTeX styles can be found [here](https://www.cambridge.org/core/services/aop-file-manager/file/5efdfbf0c990970b59d33052).
The files needed are `jfp.cls` and `jfplike.bst`.

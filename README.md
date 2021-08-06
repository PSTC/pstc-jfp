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

## JFP LaTeX Styles

JFP's instructions for submission can be found [here](https://www.cambridge.org/core/journals/journal-of-functional-programming/information/instructions-contributors),
and the LaTeX styles can be found [here](https://www.cambridge.org/core/services/aop-file-manager/file/5efdfbf0c990970b59d33052).
The files needed are `jfp.cls` and `jfplike.bst`.
In the class file, the `mathptmx` package has been replaced by `newtxmath` for now.

## Outline

0. Introduction
0. Overview
   0. Design decisions
      + Non-simple types
      + Definitions
      + Impredicative Prop
      + Universe cumulativity
      - Polarities
      - Nested (co)inductives
   0. Metatheoretical properties
   0. Inference and implementation
0. CIC*̂ (mostly unchanged, add examples)
0. Metatheory
   0. Confluence
   0. Subject reduction
      0. Cofixpoints
      0. Nested inductives
      0. Size erasure (vs. explicit sizes)
   0. Logical consistency
      0. Impredicativity and trace products
      0. Logical relations
      0. LRs with explicit sizes
   0. Strong normalization (Michael's new work?)
0. Prototype implementation in Coq
   0. Inference algorithm (mostly unchanged, add examples)
   0. Soundness and completeness
   0. Implementation problems
      0. Performance issues (measure this!)
      0. Kernel architecture
0. Related work
   0. Frade → Barthe → Sacchini
   0. Abel: STLC → Fω, semi-continuity → flationary fixpoints
   0. Agda and inconsistencies

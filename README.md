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
The proof environment has also been modified to take an optional argument.

## Outline

0. Introduction
0. Overview
   1. Design decisions
      + Non-simple types
      + Definitions
      + Impredicative Prop
      + Universe cumulativity
      - Polarities
      - Nested (co)inductives
      - Fully-applied (co)inductives and constructors
   1. Metatheoretical properties
   1. Inference and implementation
0. CIC*̂ (mostly unchanged, add examples)
0. Metatheory
   1. Confluence
   1. Subject reduction
      * Cofixpoints
      * Nested inductives
      * Size erasure (vs. explicit sizes)
   1. Attempts at logical consistency
      * Impredicativity and trace products
      * Logical relations
      * LRs with explicit sizes
0. Prototype implementation in Coq
   1. Inference algorithm (mostly unchanged, add examples)
   1. Soundness and completeness
   1. Implementation problems
      * Performance issues (measure this!)
      * Kernel architecture
0. Related work
   1. Frade → Barthe → Sacchini
   1. Abel: STLC → Fω, semi-continuity → flationary iteration
   1. Agda and inconsistencies
0. Future work
   1. Sacrificing backward compatibility
   1. Strong normalization
   1. Styles of sized types
      * Explicit vs. implicit
      * Prenex vs. higher-order/-rank
      * Constraint-solving vs. unification
      * Flationary iteration and ∞

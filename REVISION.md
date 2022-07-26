# Notes on Reviews and Revision

The following are notes on non-typo comments.

* TODO: to-dos (obviously)
* NOTE: commentary on comments; do nothing
* REBUT: to include in reply to reviews

## Referee 1

* ~~TODO~~ [L720]: Make a note that this presentation of case expressions only
  matches Coq up to v8.12, since the kernel representation was changed for
  v8.13 (but sized types is implemented on top of v8.12 anyway).
  - https://github.com/coq/ceps/blob/master/text/inductive-branch-predicate-representation-and-reduction.md
  - https://github.com/coq/coq/pull/13563
* ~~TODO~~ [L916]: Remove note on weak normalization in Coq since it will no longer
  hold in v8.16 and it's irrelevant to the discussion anyway.
  - https://github.com/coq/coq/pull/15434
* ~~TODO~~ [L963]: Change citation of Abbot et al. (2004) to Jasper Hughunin's
  Why Not W? paper showing inductives can be encoded with W + equality.
* ~~TODO~~ [L1786]: Remove comment about state monad.

## Referee 2

* NOTE: Is the evaluation really the part an arbitrary reader is most
  interested in? I dunno. I think it depends on the reader really.
* REBUT [Discuss with William]: "Another reason why the goal of backwards
  compatibility feels a little arbitrary is that it is heavily tied to the
  current capabilities of Coq's termination checker, which might change in the
  future. ... Hence it would be better to instead be more explicit about
  precisely what kind of definitions you want to be accepted by your algorithm,
  so it is not as coupled to the current state of the Coq implementation."
  The purpose is to see whether we *can* be backwards compatible with Coq,
  so the definitions we want to be accepted are those that Coq accepts.
  (Mention if we can give this up then we can resolve some performance issues.)
* TODO [Sec. 6.2]: Explicitly mention that the implementation is *not*
  entirely backwards compatible, since a number of libraries no longer compile
  with sized typing turned on, due to complications with elaboration
  (c.f. Sec. 6.3) and other features (e.g. inlining), as well as a number of
  bugs (link to issues page in repository).
* REBUT [Sec. 3.1.3]: Induction–induction and induction–recursion aren't
  supported since Coq doesn't support them either.
* TODO [Sec 2.3]: Some further investigation into whether polarity annotations
  can be inferred. At least cite someone else on the matter to quash concerns.
* REBUT: The implementation doesn't do pos/neg checks explicitly. Instead, it
  generates constraints during algorithmic subtyping, and the various soundness
  and completeness lemmas say that it corresponds to pos/neg checks.
* NOTE: "Can you give an example of where it is necessary to know that a
  function is size-preserving?" This is literally the `div` example????
* TODO [L1189]: Fix definition of WHNF. (ngl I'm not sure what it should be)
* TODO [Fig. 17]: Maybe rework the illustration a little.
* ~~TODO~~ [L1505]: Cite Bellman for Bellman–Ford (I could've sworn I had).
* NOTE/TODO [Thm. 5.5, 5.6]: I'm not really sure how to write these out in
  words because to me they're just conditions that happen to make soundness
  work. Sacchini didn't really explain it either so it's not my fault.
* ~~TODO~~ [L1943]: Either mention there's no past formalization on the interaction
  between size inference and elaboration (implementation of Agda is not a
  formalization) or remove the remark entirely.
* TODO [For William]: "The difference between elaboration and inference is that
  elaboration translates to a different (core) language while inference fills
  in implicit parts of an existing program, but both of them could equally make
  use of heuristics or not."
  Rephrase: Goal was full inference; can instead make it partial inference with
  implicits filled in by elaborator; have an incomplete inference algorithm
  that gives up for better performance.
* ~~TODO~~: Size irrelevance is an additional, orthogonal feature that could
  be added on top. The same problems noted by Abel et al. (2017) are bound to
  arise in our sized types as well.

## Referee 3

* NOTE [L250]: No, `Axiom` wouldn't be clearer than `Parameter`. Maybe
  `Variable` would but those only apply to sections, which we ignore.
* REBUT: While not in the surface syntax, Coq's universes are indexed by
  naturals in the kernel representation through the elaboration process.
* TODO: I remember justifying to William why ∞ and ∘ are both needed but I
  don't remember full justification. If it's in the paper move it up to where
  these annotations are first introduced; otherwise add them in.
  (Maybe see https://github.com/ionathanch/coq/blob/dev/kernel/sized.mli)
* ~~TODO~~: (Co)inductive definitions are in a signature separate from the
  global environment for simplicity so that we can ignore checking their
  well-formedness, which is an orthogonal matter. We employ many other
  simplifications, such as ignoring universe polymorphism and cumulativity
  of (co)inductives.
* NOTE: ffs just because Coq calls it pattern matching doesn't mean we should.
  Literally no one calls case expressions "pattern matching" because it's
  really not pattern matching. Coq people are weird
* REBUT: Case expressions are named as such in Coq's kernel representation.
* TODO: Take a closer look at the η-convertibility remark later...
* ~~TODO~~: Add citation to definition of well-formedness of signature.
* ~~TODO~~: Cite PTS paper (Barendregt?) for `Axioms` and `Rules`.
* ~~TODO~~ [Fig. 9]: Remove subscript i from I in `Elims`.
* ~~NOTE/TODO: Do we want to change the rule name from CONV to CUMUL? This would
  follow the convention of pCuIC but not Sacchini.~~
* TODO [For Michael]: "Don't you have to extend parallel reduction to contexts
  to deal with local definitions in the proof of confluence? Or is it because
  you are missing a congruence rule for let? The congruence rules for
  reductions are omitted but they should be mentioned in any case."
* ~~TODO~~ [L809]: Add `O` constructor to Conat.
* ~~TODO~~ [L910]: Change wording of Conjecture 4.3 to remove "contains".
* REBUT: e^∘ is the bare term that inference starts with, whereas |e| is
  specifically the bare term obtained from erasure.
* ~~TODO~~ [L1487]: Rework wording of ν = ∞ justification (and fix typo)
* ~~TODO~~ [Fig. 19]: \varw should instead be U.
* ~~TODO~~ [Sec. 5.5]: Introduce ⌊s⌋ notation.
* ~~TODO~~ [Thm. 5.5]: "...+then+ for every ρ..."
* ~~TODO~~ [Thm. 5.7]: "...with -a- +some+ final position variable set 𝒱^*_⊆..."
* NOTE [Lem. 5.9]: I have no idea what this comment means.
* ~~TODO~~ [Thm. 5.12]: Quantify over Γ₁, Γ₂, t, e explicitly in the right places.
* ~~TODO~~ [Cnj. 5.13]: Quantify over e', t' explicitly.
* NOTE [Thm. 5.15]: Good question. If |Γ| ⇝ Γ', shouldn't Γ' ≡ |Γ|?
* ~~TODO~~: Clarify caption for Fig. 22 to refer to the explosion in both size
  variables and in elapsed time.
* ~~TODO~~ [L2015]: Add remark on size irrelevance in Abel et al. (2017).
* ~~TODO~~: Add remark on mutualality of Def. 1.1 and 1.2.
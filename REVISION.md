# Notes on Reviews and Revision

The following are notes on non-typo comments.

* TODO: to-dos (obviously)
* NOTE: commentary on comments; do nothing
* REBUT: to include in reply to reviews

## Referee 1

* TODO [L720]: Make a note that this presentation of case expressions only
  matches Coq up to v8.12, since the kernel representation was changed for
  v8.13 (but sized types is implemented on top of v8.12 anyway).
  - https://github.com/coq/ceps/blob/master/text/inductive-branch-predicate-representation-and-reduction.md
  - https://github.com/coq/coq/pull/13563
* TODO [L916]: Remove note on weak normalization in Coq since it will no longer
  hold in v8.16 and it's irrelevant to the discussion anyway.
  - https://github.com/coq/coq/pull/15434
* TODO [L963]: Change citation of Abbot et al. (2004) to Jasper Hughunin's
  Why Not W? paper showing inductives can be encoded with W + equality.
* TODO [L1786]: Remove comment about state monad.

## Referee 2

TODO

## Referee 3

* NOTE [L250]: No, `Axiom` wouldn't be clearer than `Parameter`. Maybe
  `Variable` would but those only apply to sections, which we ignore.
* REBUT: While not in the surface syntax, Coq's universes are indexed by
  naturals in the kernel representation through the elaboration process.
* TODO: I remember justifying to William why ∞ and ∘ are both needed but I
  don't remember full justification. If it's in the paper move it up to where
  these annotations are first introduced; otherwise add them in.
  (Maybe see https://github.com/ionathanch/coq/blob/dev/kernel/sized.mli)
* REBUT/TODO: (Co)inductive definitions are in a signature separate from the
  global environment for simplicity so that we can ignore checking their
  well-formedness, which is an orthogonal matter. We employ many other
  simplifications, such as ignoring universe polymorphism and cumulativity
  of (co)inductives.
* NOTE: ffs just because Coq calls it pattern matching doesn't mean we should.
  Literally no one calls case expressions "pattern matching" because it's
  really not pattern matching. Coq people are weird
* REBUT: Case expressions are named as such in Coq's kernel representation.
* TODO: Take a closer look at the η-convertibility remark later...
* TODO: Add citation to definition of well-formedness of signature.
* TODO: Cite PTS paper (Barendregt?) for `Axioms` and `Rules`.
* TODO [Fig. 9]: Remove subscript i from I in `Elims`.
* NOTE/TODO: Do we want to change the rule name from CONV to CUMUL? This would
  follow the convention of pCuIC but not Sacchini.
* TODO [For Michael]: "Don't you have to extend parallel reduction to contexts
  to deal with local definitions in the proof of confluence? Or is it because
  you are missing a congruence rule for let? The congruence rules for
  reductions are omitted but they should be mentioned in any case."
* TODO [L809]: Add `Z` constructor to Conat.
* TODO [L910]: Change wording of Conjecture 4.3 to remove "contains".
* REBUT: e^∘ is the bare term that inference starts with, whereas |e| is
  specifically the bare term obtained from erasure.
* TODO [L1487]: Rework wording of ν = ∞ justification (and fix typo)
* TODO [Fig. 19]: \varw should instead be U.
* TODO [Sec. 5.5]: Introduce ⌊s⌋ notation.
* TODO [Thm. 5.5]: "...+then+ for every ρ..."
* TODO [Thm. 5.7]: "...with -a- +some+ final position variable set 𝒱^*_⊆..."
* NOTE [Lem. 5.9]: I have no idea what this comment means.
* TODO [Thm. 5.12]: Quantify over Γ₁, Γ₂, t, e explicitly in the right places.
* TODO [Cnj. 5.13]: Quantify over e', t' explicitly.
* NOTE [Thm. 5.15]: Good question. If |Γ| ⇝ Γ', shouldn't Γ' ≡ |Γ|?
* REBUT: The caption for Fig. 22 refers to the explosion in size variables
  and the explosion in elapsed time.
* TODO [L2015]: Add remark on size irrelevance in Abel et al. (2017).
* NOTE/TODO: Should Def. 1.1 and 1.2 be combined as a mutual definition?
  Strict positivity only depends on nested positivity if nested inductives are
  actually allowed, which we don't, so in our case it's not actually mutual.
> First of all, I would like to say that I am disappointed in the lack of care that went into the answer and the revision. If you did not have time, it would have been preferable to ask for an extension (my apologies if you did and it was rejected). The submission is long and a few lines describing the changes are not enough: next time I encourage the authors to submit a more detailed description as well as indications in the PDF about what was changed, for instance by highlighting new text in blue.

> I also see that several of my remarks were neither accounted for nor mentioned in the answer. It is fine not to follow all of our suggestions, but I would expect you to at least acknowledge the suggestion and politely decline, ideally by motivating your choice. For this reason, I believe that I have to request minor revisions whereas I had recommended for plain acceptance at the last round.

> This of course does not change the fact that I am positive about the paper and wish to see it published.

TODO

## About answer

> I will start by replying to your answer to my review:

> > The comparison to related work is meant to introduce and motivate the features included in CIC^* without going into technical detail as a brief summary. Section 7 provides a more in-depth view of the differences between CIC^* and prior work.

> I still stand by my claim that starting comparing objects that have not yet been introduced is not a great way to start the paper. It is also very hard to make sense of it as it mixes points where they all agree with differences. For instance the point about fixed points and constructors should be made in general not just in a comparison.

TODO

> > While not in the surface syntax, Coq's universes are indexed in the kernel representation through the elaboration process. This is further complicated by universe polymorphism and the module system, but ignoring those two features, the universes are essentially indexed by naturals in the kernel. Other models of Coq's core calculus (e.g. pCuIC, Timany and Sozeau, 2017) also model universes as being indexed by a natural.

> I should clarify that I am not complaining about this, modelling the hierarchy using natural numbers is perfectly fine. My comment was more about `Set` which I wonder why you keep in this setting. As you say, these natural numbers only come up in models, not in the concrete syntax (even in the kernel) so keeping around `Set` is odd considering it is still in Coq mostly for backwards compatibility with impredicative `Set` (and for some oddities about universe minimisation) if I am not mistaken.

TODO

> > ∞ is a size annotation of CIC^*, while ∘ is an annotation in the metalanguage, just like ⋆.

> Please make it more explicit in the paper as soon as you introduce them. To me the nature of these annotation is still unclear. What is the syntax of bare terms? I assume the same as terms but with `I` instead of `Iˢ`? Should I understand removed annotations to mean the same as infinite annotations? If not please explain why *in the paper*.

TODO

> > For definitions, the corresponding parallel reductions are extended to have an extra case to cover environments. In the context of Thm. 4.1, the proof goes by induction on the lengths of Γ and Γ_G. The general idea is that if Γ contains a binding (x : t := e₀), then in a previous inductive step we have shown that e₀ has the confluence property because the reduction rule for local definitions in the environment is just substitution of x by e₀; whenever we use a δ-reduction rule for (x : t := e₀) in e, the confluence property obtained inductively for e₀ transfers to the substitution in e.

> If you have worked out a simpler version of the Tait—Martin-Löf—Takahashi proof of confluence for CIC, then I suggest you mention it. Indeed the MetaCoq paper (Coq Coq Correct! POPL 2020) claims that the method needs to be extended to local environments as well.

TODO

> > For Lem. 5.9, size variables can be negative as well to account for coinductives.

> It seems my comment was misunderstood so I will try to rephrase. Consider two size variables ν and μ, and the term I^μ where I is a coinductive type. By definition I have that ν pos I^μ, so by lemma 5.9 I get that I^(ρ₁(μ)) ≤ I^(ρ₂(μ)) as long as ρ₁(μ) ⊑ ρ₂(μ). I hope you can see why I find it wrong. Perhaps you mean to take the same ν in the whole lemma and consider substitution of it by two sizes s₁ and s₂, but you may not conclude about all other size variables unless you also know they appear positively in the term.

TODO

## Non-addressed points

> I will bring up comments from my review that I believe where not addressed. I will try to explain my point of view in more detail. Once again, I would also accept a direct answer that does not modify the paper.

> - p5, l228 "Constructors construct constructions if a larger size than their (co)recursive functions." is still there even though it is non-informative. How about "Constructors produce values of a larger size than their arguments." or something similar? Because I do not know what the recursive function of a constructor is.

TODO

> - p6, l249 Perhaps `Axiom` is clearer than `Parameter`?
`Parameter` is a synonym for `Axiom` that nobody uses except people expecting to be able to instantiate it which they cannot.

TODO

> - In Theorem 5.12 it would useful to quantify over Γ₁, t, e and Γ₂ explicitly.
You did address this point partially, but only t and e are explicitly quantified. I find it odd to only partially quantify objects.

TODO

> - Is there really no relation between the inferred context and the original one in Theorem 5.15? I would expect that they have the same erasure.
Completeness is usually supposed to help avoid degenerate inference such as always producing the empty environment.

TODO

> - Since Figure 22 does not report the times, is it necessary to show the `Time` commands? Is it to show how you timed?

TODO

## New minor comments

> Please fix them or tell me why you decide not to.

> - p2, l72 "e.t.c" et cætera is abbreviated as "etc." and should preferably not be at the start of a new line.

TODO

> - p3, l107 "annotated with a size annotation". "annotation" here is superfluous.

TODO

> - p4, l159 "in Sacchini (2011)" does not make sense, maybe replace "in" by "from"?

TODO

> - p6, footnote 2. If you go in this kind of details, why not also include existential variables? Both evars and section variables are not per se part of the kernel are they?

TODO

> - p7, l302 "This aligns with Coq’s current behaviour, where list Set is not a subtype of list Type despite the presence of cumulativity where Set is a subtype of Type.". Is this issue not partially solved by cumulative inductive types?

TODO

> - p12, l532 "some size substitution ��, ����{��↦→��} =��{��↦→����}"
This is difficult to parse, please separate the two inline maths by more than punctuation. For instance you could write "we have".

TODO (also fix the missing characters above)

> - p12, l542 "in Abel et al. (2017)"

TODO

> - p12, l543. Your use of "op. cit." seems wrong, and the hyperlink does not point to anything.

TODO

> - p14, l613. I would use the pipe (`|`) notation for set comprehension rather than the colon notation which may be confusing when speaking about typing. Note that you use the pipe notation on page 22.

TODO

> - p14, l642 "sets Axioms, Rules, (Barendregt, 1993)".
Spurious comma.

TODO

> - p16, l693. You renamed CONV to CUMUL as I suggested, but you did not change the reference to it in your list. This jumps out as it is the only item with no hyperlink.

TODO

> - p22, l968 "where each these changes"

TODO

> - p22, footnote 4, "based on Barras (2012)."

TODO

> - p35, l1581. Thank you for introducing the notation. Perhaps you could even give its definition in math terms: `⌊v^n⌋ := v` and `⌊∞⌋ := ∞`.

TODO
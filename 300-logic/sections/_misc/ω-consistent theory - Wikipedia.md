---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/%CE%A9-consistent_theory
page-title:       ω-consistent theory - Wikipedia
article-title:    ω-consistent theory - Wikipedia
---
# ω-consistent theory - Wikipedia

In mathematical logic, an ω-consistent (or omega-consistent, also called numerically segregative)[1] theory is a theory (collection of sentences) that is not only (syntactically) consistent (that is, does not prove a contradiction), but also avoids proving certain infinite combinations of sentences that are intuitively contradictory. The name is due to Kurt Gödel, who introduced the concept in the course of proving the incompleteness theorem.[2]
In [mathematical logic][1], an __ω-consistent__ (or __omega-consistent__, also called __numerically segregative__)[\[1\]][2] __theory__ is a [theory][3] (collection of [sentences][4]) that is not only (syntactically) [consistent][5] (that is, does not prove a [contradiction][6]), but also avoids proving certain infinite combinations of sentences that are intuitively contradictory. The name is due to [Kurt Gödel][7], who introduced the concept in the course of proving the [incompleteness theorem][8].[\[2\]][9]

## Definition\[[edit][10]\]

A theory *T* is said to [interpret][11] the [language][12] of arithmetic if there is a translation of formulas of arithmetic into the language of *T* so that *T* is able to prove the basic axioms of the [natural numbers][13] under this translation.

A *T* that interprets arithmetic is __ω-inconsistent__ if, for some property *P* of natural numbers (defined by a formula in the language of *T*), *T* proves *P*(0), *P*(1), *P*(2), and so on (that is, for every standard natural number *n*, *T* proves that *P*(*n*) holds), but *T* also proves that there is some natural number *n* (necessarily [nonstandard][14] in any [model][15] for *T*) such that *P*(*n*) *fails*. This may not generate a contradiction within *T* because *T* may not be able to prove for any *specific* value of *n* that *P*(*n*) fails, only that there *is* such an *n*.

*T* is __ω-consistent__ if it is *not* ω-inconsistent.

There is a weaker but closely related property of Σ1\-soundness. A theory *T* is __Σ1\-sound__ (or __1-consistent__, in another terminology) if every Σ01\-sentence[\[3\]][16] provable in *T* is true in the standard model of arithmetic __N__ (i.e., the structure of the usual natural numbers with addition and multiplication). If *T* is strong enough to formalize a reasonable model of [computation][17], Σ1\-soundness is equivalent to demanding that whenever *T* proves that a [Turing machine][18] *C* halts, then *C* actually halts. Every ω-consistent theory is Σ1\-sound, but not vice versa.

More generally, we can define an analogous concept for higher levels of the [arithmetical hierarchy][19]. If Γ is a set of arithmetical sentences (typically Σ0*n* for some *n*), a theory *T* is __Γ-sound__ if every Γ-sentence provable in *T* is true in the standard model. When Γ is the set of all arithmetical formulas, Γ-soundness is called just (arithmetical) [soundness][20]. If the language of *T* consists *only* of the language of arithmetic (as opposed to, for example, [set theory][21]), then a sound system is one whose model can be thought of as the set ω, the usual set of mathematical natural numbers. The case of general *T* is different, see [ω-logic][22] below.

Σ*n*\-soundness has the following computational interpretation: if the theory proves that a program *C* using a Σ*n*−1\-[oracle][23] halts, then *C* actually halts.

## Examples\[[edit][24]\]

### Consistent, ω-inconsistent theories\[[edit][25]\]

Write PA for the theory [Peano arithmetic][26], and Con(PA) for the statement of arithmetic that formalizes the claim "PA is consistent". Con(PA) could be of the form "For every natural number *n*, *n* is not the [Gödel number][27] of a proof from PA that 0=1". (This formulation uses 0=1 instead of a direct contradiction; that gives the same result, because PA certainly proves ¬0=1, so if it proved 0=1 as well we would have a contradiction, and on the other hand, if PA proves a contradiction, [then it proves anything][28], including 0=1.)

Now, assuming PA is really consistent, it follows that PA + ¬Con(PA) is also consistent, for if it were not, then PA would prove Con(PA) (*reductio*), contradicting [Gödel's second incompleteness theorem][29]. However, PA + ¬Con(PA) is *not* ω-consistent. This is because, for any particular natural number *n*, PA + ¬Con(PA) proves that *n* is not the Gödel number of a proof that 0=1 (PA itself proves that fact; the extra assumption ¬Con(PA) is not needed). However, PA + ¬Con(PA) proves that, for *some* natural number *n*, *n* *is* the Gödel number of such a proof (this is just a direct restatement of the claim ¬Con(PA)).

In this example, the axiom ¬Con(PA) is Σ1, hence the system PA + ¬Con(PA) is in fact Σ1\-unsound, not just ω-inconsistent.

### Arithmetically sound, ω-inconsistent theories\[[edit][30]\]

Let *T* be PA together with the axioms *c* ≠ *n* for each natural number *n*, where *c* is a new constant added to the language. Then *T* is arithmetically sound (as any nonstandard model of PA can be expanded to a model of *T*), but ω-inconsistent (as it proves ![\exists x\,c=x](https://wikimedia.org/api/rest_v1/media/math/render/svg/97ae353ee967e322c74d2563d4557b738cc0f070), and *c* ≠ *n* for every number *n*).

Σ1\-sound ω-inconsistent theories using only the language of arithmetic can be constructed as follows. Let *I*Σ*n* be the subtheory of PA with the induction schema restricted to Σ*n*\-formulas, for any *n* > 0. The theory *I*Σ*n* + 1 is finitely axiomatizable, let thus *A* be its single axiom, and consider the theory *T* = *I*Σ*n* + ¬*A*. We can assume that *A* is an instance of the induction schema, which has the form

![\forall w\,[B(0,w)\land \forall x\,(B(x,w)\to B(x+1,w))\to \forall x\,B(x,w)].](https://wikimedia.org/api/rest_v1/media/math/render/svg/b5e565450e1049cffc3e58a8e1acfc88d5da3cbd)

If we denote the formula

![\forall w\,[B(0,w)\land \forall x\,(B(x,w)\to B(x+1,w))\to B(n,w)]](https://wikimedia.org/api/rest_v1/media/math/render/svg/ee1ba9356c602dc84deae57603043f7407a121a7)

by *P*(*n*), then for every natural number *n*, the theory *T* (actually, even the pure predicate calculus) proves *P*(*n*). On the other hand, *T* proves the formula ![\exists x\,\neg P(x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/1b4f90832e4403b168b8028fc47570ce8a697af1), because it is [logically equivalent][31] to the axiom ¬*A*. Therefore, *T* is ω-inconsistent.

It is possible to show that *T* is Π*n* + 3\-sound. In fact, it is Π*n* + 3\-[conservative][32] over the (obviously sound) theory *I*Σ*n*. The argument is more complicated (it relies on the provability of the Σ*n* + 2\-[reflection principle][33] for *I*Σ*n* in *I*Σ*n* + 1).

### Arithmetically unsound, ω-consistent theories\[[edit][34]\]

Let ω-Con(PA) be the arithmetical sentence formalizing the statement "PA is ω-consistent". Then the theory PA + ¬ω-Con(PA) is unsound (Σ3\-unsound, to be precise), but ω-consistent. The argument is similar to the first example: a suitable version of the [Hilbert][35]–[Bernays][36]–[Löb][37] derivability conditions holds for the "provability predicate" ω-Prov(*A*) = ¬ω-Con(PA + ¬*A*), hence it satisfies an analogue of Gödel's second incompleteness theorem.

## ω-logic\[[edit][38]\]

Not to be confused with [Ω-logic][39].

The concept of theories of arithmetic whose integers are the true mathematical integers is captured by __ω-logic__.[\[4\]][40] Let *T* be a theory in a [countable][41] language that includes a unary predicate symbol *N* intended to hold just of the natural numbers, as well as specified names 0, 1, 2, ..., one for each (standard) natural number (which may be separate constants, or constant terms such as 0, 1, 1+1, 1+1+1, ..., etc.). Note that *T* itself could be referring to more general objects, such as [real numbers][42] or sets; thus in a model of *T* the objects satisfying *N*(*x*) are those that *T* interprets as natural numbers, not all of which need be named by one of the specified names.

The system of ω-logic includes all axioms and rules of the usual first-order predicate logic, together with, for each *T*\-formula *P*(*x*) with a specified free variable *x*, an [infinitary][43] __ω-rule__ of the form:

From ![P(0),P(1),P(2),\ldots ](https://wikimedia.org/api/rest_v1/media/math/render/svg/1ced4a21b880665ab3fac15d6fb711d4d161a565) infer ![\forall x\,(N(x)\to P(x))](https://wikimedia.org/api/rest_v1/media/math/render/svg/c64489bfeb19582fb49a10b24c0228cd33ef2235).

That is, if the theory asserts (i.e. proves) *P*(*n*) separately for each natural number *n* given by its specified name, then it also asserts *P* collectively for all natural numbers at once via the evident finite universally quantified counterpart of the infinitely many antecedents of the rule. For a theory of arithmetic, meaning one with intended domain the natural numbers such as [Peano arithmetic][44], the predicate *N* is redundant and may be omitted from the language, with the consequent of the rule for each *P* simplifying to ![\forall x\,P(x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/4b09b6edbaeb94d4f07bc828ea78009c5ec8b27e).

An ω-model of *T* is a model of *T* whose domain includes the natural numbers and whose specified names and symbol *N* are standardly interpreted, respectively as those numbers and the predicate having just those numbers as its domain (whence there are no nonstandard numbers). If *N* is absent from the language then what would have been the domain of *N* is required to be that of the model, i.e. the model contains only the natural numbers. (Other models of *T* may interpret these symbols nonstandardly; the domain of *N* need not even be countable, for example.) These requirements make the ω-rule sound in every ω-model. As a corollary to the [omitting types theorem][45], the converse also holds: the theory *T* has an ω-model if and only if it is consistent in ω-logic.

There is a close connection of ω-logic to ω-consistency. A theory consistent in ω-logic is also ω-consistent (and arithmetically sound). The converse is false, as consistency in ω-logic is a much stronger notion than ω-consistency. However, the following characterization holds: a theory is ω-consistent if and only if its closure under *unnested* applications of the ω-rule is consistent.

## Relation to other consistency principles\[[edit][46]\]

If the theory *T* is [recursively axiomatizable][47], ω-consistency has the following characterization, due to [Craig Smoryński][48]:[\[5\]][49]

*T* is ω-consistent if and only if ![T+{\mathrm  {RFN}}_{T}+{\mathrm  {Th}}_{{\Pi _{2}^{0}}}({\mathbb  N})](https://wikimedia.org/api/rest_v1/media/math/render/svg/9c82e72cf8dfa28386e74c6c2d665a2b09abe2dd) is consistent.

Here, ![{\mathrm  {Th}}_{{\Pi _{2}^{0}}}({\mathbb  N})](https://wikimedia.org/api/rest_v1/media/math/render/svg/77a2437626557024924a7da8d9d4353af09fb2c7) is the set of all Π02\-sentences valid in the standard model of arithmetic, and ![{\mathrm  {RFN}}_{T}](https://wikimedia.org/api/rest_v1/media/math/render/svg/53d4eb37641ff4d59f7c874f4cf3cc16e690ad39) is the [uniform reflection principle][50] for *T*, which consists of the axioms

![\forall x\,({\mathrm  {Prov}}_{T}(\ulcorner \varphi ({\dot  x})\urcorner )\to \varphi (x))](https://wikimedia.org/api/rest_v1/media/math/render/svg/7ca8b0f48d9180c24a2cf607d31b5e58e271484b)

for every formula ![\varphi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/33ee699558d09cf9d653f6351f9fda0b2f4aaa3e) with one free variable. In particular, a finitely axiomatizable theory *T* in the language of arithmetic is ω-consistent if and only if *T* + PA is ![\Sigma _{2}^{0}](https://wikimedia.org/api/rest_v1/media/math/render/svg/09ae5829fb5735899799870a3156c903f0573f60)\-sound.

## Notes\[[edit][51]\]

1.  __[^][52]__ [W. V. O. Quine][53] (1971), *Set Theory and Its Logic*.
2.  __[^][54]__ Smorynski, "The incompleteness theorems", *Handbook of Mathematical Logic*, 1977, p. 851.
3.  __[^][55]__ The definition of this symbolism can be found at [arithmetical hierarchy][56].
4.  __[^][57]__ [J. Barwise][58] (ed.), *Handbook of Mathematical Logic*, North-Holland, Amsterdam, 1977.
5.  __[^][59]__ Smoryński, Craig (1985). [*Self-reference and modal logic*][60]. Berlin: Springer. [ISBN][61] [978-0-387-96209-2][62]. Reviewed in Boolos, G.; Smorynski, C. (1988). "Self-Reference and Modal Logic". *[The Journal of Symbolic Logic][63]*. __53__: 306. [doi][64]:[10.2307/2274450][65]. [JSTOR][66] [2274450][67].

## Bibliography\[[edit][68]\]

-   Kurt Gödel (1931). 'Über formal unentscheidbare Sätze der Principia Mathematica und verwandter Systeme I'. In *Monatshefte für Mathematik*. Translated into English as [On Formally Undecidable Propositions of Principia Mathematica and Related Systems][69].

[1]: https://en.wikipedia.org/wiki/Mathematical_logic "Mathematical logic"
[2]: https://en.wikipedia.org/wiki/%CE%A9-consistent_theory#cite_note-quine-1
[3]: https://en.wikipedia.org/wiki/Theory_(mathematical_logic) "Theory (mathematical logic)"
[4]: https://en.wikipedia.org/wiki/Sentence_(mathematical_logic) "Sentence (mathematical logic)"
[5]: https://en.wikipedia.org/wiki/Theory_(mathematical_logic)#Consistency_and_completeness "Theory (mathematical logic)"
[6]: https://en.wikipedia.org/wiki/Contradiction "Contradiction"
[7]: https://en.wikipedia.org/wiki/Kurt_G%C3%B6del "Kurt Gödel"
[8]: https://en.wikipedia.org/wiki/G%C3%B6del%27s_incompleteness_theorems "Gödel's incompleteness theorems"
[9]: https://en.wikipedia.org/wiki/%CE%A9-consistent_theory#cite_note-2
[10]: https://en.wikipedia.org/w/index.php?title=%CE%A9-consistent_theory&action=edit&section=1 "Edit section: Definition"
[11]: https://en.wikipedia.org/wiki/Interpretability "Interpretability"
[12]: https://en.wikipedia.org/wiki/Language_(logic) "Language (logic)"
[13]: https://en.wikipedia.org/wiki/Natural_number "Natural number"
[14]: https://en.wikipedia.org/wiki/Non-standard_model_of_arithmetic "Non-standard model of arithmetic"
[15]: https://en.wikipedia.org/wiki/Model_(logic) "Model (logic)"
[16]: https://en.wikipedia.org/wiki/%CE%A9-consistent_theory#cite_note-3
[17]: https://en.wikipedia.org/wiki/Theory_of_computation "Theory of computation"
[18]: https://en.wikipedia.org/wiki/Turing_machine "Turing machine"
[19]: https://en.wikipedia.org/wiki/Arithmetical_hierarchy "Arithmetical hierarchy"
[20]: https://en.wikipedia.org/wiki/Soundness "Soundness"
[21]: https://en.wikipedia.org/wiki/Set_theory "Set theory"
[22]: https://en.wikipedia.org/wiki/%CE%A9-consistent_theory#%CF%89-logic
[23]: https://en.wikipedia.org/wiki/Oracle_machine "Oracle machine"
[24]: https://en.wikipedia.org/w/index.php?title=%CE%A9-consistent_theory&action=edit&section=2 "Edit section: Examples"
[25]: https://en.wikipedia.org/w/index.php?title=%CE%A9-consistent_theory&action=edit&section=3 "Edit section: Consistent, ω-inconsistent theories"
[26]: https://en.wikipedia.org/wiki/Peano_axioms "Peano axioms"
[27]: https://en.wikipedia.org/wiki/G%C3%B6del_number "Gödel number"
[28]: https://en.wikipedia.org/wiki/Principle_of_explosion "Principle of explosion"
[29]: https://en.wikipedia.org/wiki/G%C3%B6del%27s_second_incompleteness_theorem "Gödel's second incompleteness theorem"
[30]: https://en.wikipedia.org/w/index.php?title=%CE%A9-consistent_theory&action=edit&section=4 "Edit section: Arithmetically sound, ω-inconsistent theories"
[31]: https://en.wikipedia.org/wiki/Logical_equivalence "Logical equivalence"
[32]: https://en.wikipedia.org/wiki/Conservative_extension "Conservative extension"
[33]: https://en.wikipedia.org/wiki/Reflection_principle "Reflection principle"
[34]: https://en.wikipedia.org/w/index.php?title=%CE%A9-consistent_theory&action=edit&section=5 "Edit section: Arithmetically unsound, ω-consistent theories"
[35]: https://en.wikipedia.org/wiki/Hilbert "Hilbert"
[36]: https://en.wikipedia.org/wiki/Paul_Bernays "Paul Bernays"
[37]: https://en.wikipedia.org/wiki/Martin_L%C3%B6b "Martin Löb"
[38]: https://en.wikipedia.org/w/index.php?title=%CE%A9-consistent_theory&action=edit&section=6 "Edit section: ω-logic"
[39]: https://en.wikipedia.org/wiki/%CE%A9-logic "Ω-logic"
[40]: https://en.wikipedia.org/wiki/%CE%A9-consistent_theory#cite_note-4
[41]: https://en.wikipedia.org/wiki/Countable "Countable"
[42]: https://en.wikipedia.org/wiki/Real_number "Real number"
[43]: https://en.wikipedia.org/wiki/Infinitary_logic "Infinitary logic"
[44]: https://en.wikipedia.org/wiki/Peano_arithmetic "Peano arithmetic"
[45]: https://en.wikipedia.org/wiki/Omitting_types_theorem "Omitting types theorem"
[46]: https://en.wikipedia.org/w/index.php?title=%CE%A9-consistent_theory&action=edit&section=7 "Edit section: Relation to other consistency principles"
[47]: https://en.wikipedia.org/wiki/Recursively_enumerable "Recursively enumerable"
[48]: https://en.wikipedia.org/w/index.php?title=Craig_Smory%C5%84ski&action=edit&redlink=1 "Craig Smoryński (page does not exist)"
[49]: https://en.wikipedia.org/wiki/%CE%A9-consistent_theory#cite_note-5
[50]: https://en.wikipedia.org/wiki/Reflection_principle "Reflection principle"
[51]: https://en.wikipedia.org/w/index.php?title=%CE%A9-consistent_theory&action=edit&section=8 "Edit section: Notes"
[52]: https://en.wikipedia.org/wiki/%CE%A9-consistent_theory#cite_ref-quine_1-0 "Jump up"
[53]: https://en.wikipedia.org/wiki/W._V._O._Quine "W. V. O. Quine"
[54]: https://en.wikipedia.org/wiki/%CE%A9-consistent_theory#cite_ref-2 "Jump up"
[55]: https://en.wikipedia.org/wiki/%CE%A9-consistent_theory#cite_ref-3 "Jump up"
[56]: https://en.wikipedia.org/wiki/Arithmetical_hierarchy "Arithmetical hierarchy"
[57]: https://en.wikipedia.org/wiki/%CE%A9-consistent_theory#cite_ref-4 "Jump up"
[58]: https://en.wikipedia.org/wiki/Jon_Barwise "Jon Barwise"
[59]: https://en.wikipedia.org/wiki/%CE%A9-consistent_theory#cite_ref-5 "Jump up"
[60]: https://books.google.com/books?id=7waFAAAAIAAJ&q=978-0387962092
[61]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[62]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-387-96209-2 "Special:BookSources/978-0-387-96209-2"
[63]: https://en.wikipedia.org/wiki/The_Journal_of_Symbolic_Logic "The Journal of Symbolic Logic"
[64]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[65]: https://doi.org/10.2307%2F2274450
[66]: https://en.wikipedia.org/wiki/JSTOR_(identifier) "JSTOR (identifier)"
[67]: https://www.jstor.org/stable/2274450
[68]: https://en.wikipedia.org/w/index.php?title=%CE%A9-consistent_theory&action=edit&section=9 "Edit section: Bibliography"
[69]: https://en.wikipedia.org/wiki/On_Formally_Undecidable_Propositions_of_Principia_Mathematica_and_Related_Systems "On Formally Undecidable Propositions of Principia Mathematica and Related Systems"

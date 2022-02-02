---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Predicate_functor_logic
page-title:       Predicate functor logic - Wikipedia
article-title:    Predicate functor logic - Wikipedia
---
# Predicate functor logic - Wikipedia

In mathematical logic, predicate functor logic (PFL) is one of several ways to express first-order logic (also known as predicate logic) by purely algebraic means, i.e., without quantified variables. PFL employs a small number of algebraic devices called predicate functors (or predicate modifiers)[1] that operate on terms to yield terms. PFL is mostly the invention of the logician and philosopher Willard Quine.
In [mathematical logic][1], __predicate functor logic__ (__PFL__) is one of several ways to express [first-order logic][2] (also known as [predicate logic][3]) by purely algebraic means, i.e., without [quantified variables][4]. PFL employs a small number of algebraic devices called __predicate functors__ (or __predicate modifiers__)[\[1\]][5] that operate on terms to yield terms. PFL is mostly the invention of the [logician][6] and [philosopher][7] [Willard Quine][8].

## Motivation\[[edit][9]\]

The source for this section, as well as for much of this entry, is Quine (1976). Quine proposed PFL as a way of algebraizing [first-order logic][10] in a manner analogous to how [Boolean algebra][11] algebraizes [propositional logic][12]. He designed PFL to have exactly the expressive power of [first-order logic][13] with [identity][14]. Hence the [metamathematics][15] of PFL are exactly those of first-order logic with no interpreted predicate letters: both logics are [sound][16], [complete][17], and [undecidable][18]. Most work Quine published on logic and mathematics in the last 30 years of his life touched on PFL in some way.\[*[citation needed][19]*\]

Quine took "functor" from the writings of his friend [Rudolf Carnap][20], the first to employ it in [philosophy][21] and [mathematical logic][22], and defined it as follows:

> "The word *functor*, grammatical in import but logical in habitat... is a sign that attaches to one or more expressions of given grammatical kind(s) to produce an expression of a given grammatical kind." (Quine 1982: 129)

Ways other than PFL to algebraize [first-order logic][23] include:

-   [Cylindric algebra][24] by [Alfred Tarski][25] and his American students. The simplified cylindric algebra proposed in Bernays (1959) led Quine to write the paper containing the first use of the phrase "predicate functor";
-   The [polyadic algebra][26] of [Paul Halmos][27]. By virtue of its economical primitives and axioms, this algebra most resembles PFL;
-   [Relation algebra][28] algebraizes the fragment of [first-order logic][29] consisting of formulas having no atomic formula lying in the scope of more than three [quantifiers][30]. That fragment suffices, however, for [Peano arithmetic][31] and the [axiomatic set theory][32] [ZFC][33]; hence relation algebra, unlike PFL, is [incompletable][34]. Most work on relation algebra since about 1920 has been by Tarski and his American students. The power of relation algebra did not become manifest until the monograph Tarski and Givant (1987), published after the three important papers bearing on PFL, namely Bacon (1985), Kuhn (1983), and Quine (1976);
-   [Combinatory logic][35] builds on [combinators][36], [higher order functions][37] whose [domain][38] is another combinator or function, and whose [range][39] is yet another combinator. Hence [combinatory logic][40] goes beyond first-order logic by having the expressive power of [set theory][41], which makes combinatory logic vulnerable to [paradoxes][42]. A predicate functor, on the other hand, simply maps predicates (also called [terms][43]) into predicates.

PFL is arguably the simplest of these formalisms, yet also the one about which the least has been written.

Quine had a lifelong fascination with [combinatory logic][44], attested to by his introduction to the translation in Van Heijenoort (1967) of the paper by the Russian logician [Moses Schönfinkel][45] founding combinatory logic. When Quine began working on PFL in earnest, in 1959, combinatory logic was commonly deemed a failure for the following reasons:

-   Until [Dana Scott][46] began writing on the [model theory][47] of combinatory logic in the late 1960s, almost only [Haskell Curry][48], his students, and [Robert Feys][49] in Belgium worked on that logic;
-   Satisfactory axiomatic formulations of combinatory logic were slow in coming. In the 1930s, some formulations of combinatory logic were found to be [inconsistent][50]. Curry also discovered the [Curry paradox][51], peculiar to combinatory logic;
-   The [lambda calculus][52], with the same expressive power as [combinatory logic][53], was seen as a superior formalism.

## Kuhn's formalization\[[edit][54]\]

The PFL [syntax][55], primitives, and axioms described in this section are largely [Steven Kuhn][56]'s (1983). The [semantics][57] of the functors are Quine's (1982). The rest of this entry incorporates some terminology from Bacon (1985).

### Syntax\[[edit][58]\]

An *atomic term* is an upper case Latin letter, *I* and *S* excepted, followed by a numerical [superscript][59] called its *degree*, or by concatenated lower case variables, collectively known as an *argument list*. The degree of a term conveys the same information as the number of variables following a predicate letter. An atomic term of degree 0 denotes a [Boolean variable][60] or a [truth value][61]. The degree of *I* is invariably 2 and so is not indicated.

The "combinatory" (the word is Quine's) predicate functors, all monadic and peculiar to PFL, are __Inv__, __inv__, __∃__, __+__, and __p__. A term is either an atomic term, or constructed by the following recursive rule. If τ is a term, then __Inv__τ, __inv__τ, __∃__τ, __+__τ, and __p__τ are terms. A functor with a superscript *n*, *n* a [natural number][62] > 1, denotes *n* consecutive applications (iterations) of that functor.

A formula is either a term or defined by the recursive rule: if α and β are formulas, then αβ and ~(α) are likewise formulas. Hence "~" is another monadic functor, and concatenation is the sole dyadic predicate functor. Quine called these functors "alethic." The natural interpretation of "~" is [negation][63]; that of concatenation is any [connective][64] that, when combined with negation, forms a [functionally complete][65] set of connectives. Quine's preferred functionally complete set was [conjunction][66] and [negation][67]. Thus concatenated terms are taken as conjoined. The notation __+__ is Bacon's (1985); all other notation is Quine's (1976; 1982). The alethic part of PFL is identical to the *Boolean term schemata* of Quine (1982).

As is well known, the two alethic functors could be replaced by a single dyadic functor with the following [syntax][68] and [semantics][69]: if α and β are formulas, then (αβ) is a formula whose semantics are "not (α and/or β)" (see [NAND][70] and [NOR][71]).

### Axioms and semantics\[[edit][72]\]

Quine set out neither axiomatization nor proof procedure for PFL. The following axiomatization of PFL, one of two proposed in Kuhn (1983), is concise and easy to describe, but makes extensive use of [free variables][73] and so does not do full justice to the spirit of PFL. Kuhn gives another axiomatization dispensing with free variables, but that is harder to describe and that makes extensive use of defined functors. Kuhn proved both of his PFL axiomatizations [sound][74] and [complete][75].

This section is built around the primitive predicate functors and a few defined ones. The alethic functors can be axiomatized by any set of axioms for [sentential logic][76] whose primitives are negation and one of ∧ or ∨. Equivalently, all [tautologies][77] of sentential logic can be taken as axioms.

Quine's (1982) semantics for each predicate functor are stated below in terms of [abstraction][78] (set builder notation), followed by either the relevant axiom from Kuhn (1983), or a definition from Quine (1976). The notation ![{\displaystyle \{x_{1}\cdots x_{n}:Fx_{1}\cdots x_{n}\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d2308ec6d1a551974242b51ad2731ea7bcebd0a6) denotes the set of [*n*\-tuples][79] satisfying the atomic formula ![{\displaystyle Fx_{1}\cdots x_{n}.}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1b24196e98e54301fd340b5efe6aa29344fbc598)

-   *Identity*, I, is defined as:

![{\displaystyle IFx_{1}x_{2}\cdots x_{n}\leftrightarrow Fx_{1}x_{1}\cdots x_{n}\leftrightarrow Fx_{2}x_{2}\cdots x_{n}.}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d4894b28ace730113ca884be4eee062bcbde99d1)

Identity is [reflexive][80] (Ixx), [symmetric][81] (*Ixy*→*Iyx*), [transitive][82] ((*Ixy*∧*Iyz*) → *Ixz*), and obeys the substitution property:

![{\displaystyle (Fx_{1}\cdots x_{n}\land Ix_{1}y)\rightarrow Fyx_{2}\cdots x_{n}.}](https://wikimedia.org/api/rest_v1/media/math/render/svg/bac447f595e6f2316e33c27b7398a7fdf231f685)

-   *Padding*, __+__, adds a variable to the left of any argument list.

![{\displaystyle \ +F^{n}\ {\overset {\underset {\mathrm {def} }{}}{=}}\ \{x_{0}x_{1}\cdots x_{n}:F^{n}x_{1}\cdots x_{n}\}.}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d4af2e25bfd02ac745d2077c2d63aa7e32b80cef)

![{\displaystyle +Fx_{1}\cdots x_{n}\leftrightarrow Fx_{2}\cdots x_{n}.}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e99e8629bdeba2ccd6bb3d63cf5e3cf01b9ce380)

-   *Cropping*, __∃__, erases the leftmost variable in any argument list.

![{\displaystyle \exists F^{n}\ {\overset {\underset {\mathrm {def} }{}}{=}}\ \{x_{2}\cdots x_{n}:\exists x_{1}F^{n}x_{1}\cdots x_{n}\}.}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9409661186ab1327824df24b41046e6a34b94442)

![{\displaystyle Fx_{1}\cdots x_{n}\rightarrow \exists Fx_{2}\cdots x_{n}.}](https://wikimedia.org/api/rest_v1/media/math/render/svg/907242d487addfc119c83dae19b2ef31529cfce8)

*Cropping* enables two useful defined functors:

-   *Reflection*, __S__:

![{\displaystyle SF^{n}\ {\overset {\underset {\mathrm {def} }{}}{=}}\ \{x_{2}\cdots x_{n}:F^{n}x_{2}x_{2}\cdots x_{n}\}.}](https://wikimedia.org/api/rest_v1/media/math/render/svg/21ca1f61456b9f850a3d4cab2b3310e55a0b44f1)

![SF^n \leftrightarrow \exist IF^n.](https://wikimedia.org/api/rest_v1/media/math/render/svg/76e84b61d8a624fbfb4657310fa66c252f3e5671)

__S__ generalizes the notion of reflexivity to all terms of any finite degree greater than 2. N.B: __S__ should not be confused with the [primitive combinator][83] __S__ of combinatory logic.

-   *[Cartesian product][84]*, ![\times ](https://wikimedia.org/api/rest_v1/media/math/render/svg/0ffafff1ad26cbe49045f19a67ce532116a32703);

![F^m \times G^n \leftrightarrow F^m \exist^m G^n.](https://wikimedia.org/api/rest_v1/media/math/render/svg/ecf06cd95887121cc79e1540db8cc9f01776786c)

Here only, Quine adopted an infix notation, because this infix notation for Cartesian product is very well established in mathematics. Cartesian product allows restating conjunction as follows:

![{\displaystyle F^{m}x_{1}\cdots x_{m}G^{n}x_{1}\cdots x_{n}\leftrightarrow (F^{m}\times G^{n})x_{1}\cdots x_{m}x_{1}\cdots x_{n}.}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b5bd2734737871933ab1b7a881e2c07e7a17f183)

Reorder the concatenated argument list so as to shift a pair of duplicate variables to the far left, then invoke __S__ to eliminate the duplication. Repeating this as many times as required results in an argument list of length max(*m*,*n*).

The next three functors enable reordering argument lists at will.

-   *Major inversion*, __Inv__, rotates the variables in an argument list to the right, so that the last variable becomes the first.

![{\displaystyle \operatorname {Inv} F^{n}\ {\overset {\underset {\mathrm {def} }{}}{=}}\ \{x_{1}\cdots x_{n}:F^{n}x_{n}x_{1}\cdots x_{n-1}\}.}](https://wikimedia.org/api/rest_v1/media/math/render/svg/a33eb57fefa0388f4144b483fa8fc6076c2925da)

![{\displaystyle \operatorname {Inv} Fx_{1}\cdots x_{n}\leftrightarrow Fx_{n}x_{1}\cdots x_{n-1}.}](https://wikimedia.org/api/rest_v1/media/math/render/svg/793dde08260f7256ac2cd0687703fca327c840a9)

-   *Minor inversion*, __inv__, swaps the first two variables in an argument list.

![{\displaystyle \operatorname {inv} F^{n}\ {\overset {\underset {\mathrm {def} }{}}{=}}\ \{x_{1}\cdots x_{n}:F^{n}x_{2}x_{1}\cdots x_{n}\}.}](https://wikimedia.org/api/rest_v1/media/math/render/svg/76b5ad7c9dad5bd6b0477d60967454df85170264)

![{\displaystyle \operatorname {inv} Fx_{1}\cdots x_{n}\leftrightarrow Fx_{2}x_{1}\cdots x_{n}.}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1eb7ac7fe205d2975698a126eb4b1ead6029bbee)

-   *Permutation*, __p__, rotates the second through last variables in an argument list to the left, so that the second variable becomes the last.

![{\displaystyle \ pF^{n}\ {\overset {\underset {\mathrm {def} }{}}{=}}\ \{x_{1}\cdots x_{n}:F^{n}x_{1}x_{3}\cdots x_{n}x_{2}\}.}](https://wikimedia.org/api/rest_v1/media/math/render/svg/219d94e244d65c06f2272ea718406935dc400514)

![{\displaystyle pFx_{1}\cdots x_{n}\leftrightarrow \operatorname {Inv} \operatorname {inv} Fx_{1}x_{3}\cdots x_{n}x_{2}.}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0d66ae0bdf069d0fcf3e50adc3020fb3013104cd)

Given an argument list consisting of *n* variables, __p__ implicitly treats the last *n*−1 variables like a bicycle chain, with each variable constituting a link in the chain. One application of __p__ advances the chain by one link. *k* consecutive applications of __p__ to *F**n* moves the *k*+1 variable to the second argument position in *F*.

When *n*\=2, __Inv__ and __inv__ merely interchange *x*1 and *x*2. When *n*\=1, they have no effect. Hence __p__ has no effect when *n* < 3.

Kuhn (1983) takes *Major inversion* and *Minor inversion* as primitive. The notation __p__ in Kuhn corresponds to __inv__; he has no analog to *Permutation* and hence has no axioms for it. If, following Quine (1976), __p__ is taken as primitive, __Inv__ and __inv__ can be defined as nontrivial combinations of __+__, __∃__, and iterated __p__.

The following table summarizes how the functors affect the degrees of their arguments.

### Rules\[[edit][85]\]

All instances of a predicate letter may be replaced by another predicate letter of the same degree, without affecting validity. The [rules][86] are:

### Some useful results\[[edit][87]\]

Instead of axiomatizing PFL, Quine (1976) proposed the following conjectures as candidate axioms.

![\exist I](https://wikimedia.org/api/rest_v1/media/math/render/svg/fd7fdbd6351bced8ef3335315d959394db0364dd)

*n*−1 consecutive iterations of __p__ restores the *status quo ante*:

![F^n \leftrightarrow p^{n-1}F^n](https://wikimedia.org/api/rest_v1/media/math/render/svg/1657d09154dc9b33102ae6419fa9ebffd0dbc3a4)

__+__ and __∃__ annihilate each other:

![{\displaystyle {\begin{cases}F^{n}\rightarrow +\exists F^{n}\\F^{n}\leftrightarrow \exists +F^{n}\end{cases}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/6921681a73ef509e76a8a1083f7e0637dcd9ad33)

Negation distributes over __+__, __∃__, and __p__:

![{\displaystyle {\begin{cases}+\lnot F^{n}\leftrightarrow \lnot +F^{n}\\\lnot \exists F^{n}\rightarrow \exists \lnot F^{n}\\p\lnot F^{n}\leftrightarrow \lnot pF^{n}\end{cases}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e725f69c3bb202738d3c6fc224594e0758984d6a)

__+__ and __p__ distributes over conjunction:

![{\displaystyle {\begin{cases}+(F^{n}G^{m})\leftrightarrow (+F^{n}+G^{m})\\p(F^{n}G^{m})\leftrightarrow (pF^{n}pG^{m})\end{cases}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8ead5889a7b8b1d56eb50bf2a9aa31827d9155f3)

Identity has the interesting implication:

![IF^n \rightarrow p^{n-2} \exist p+F^n](https://wikimedia.org/api/rest_v1/media/math/render/svg/4c8a305a8cb3dca2add649bfe5fd1cc448cc906f)

Quine also conjectured the rule: If α is a PFL theorem, then so are *pα*, +α, and ![\lnot \exist \lnot \alpha](https://wikimedia.org/api/rest_v1/media/math/render/svg/c7bd1d50e3738c8e4c023ab08b5d22ab11388cd3).

## Bacon's work\[[edit][88]\]

Bacon (1985) takes the [conditional][89], [negation][90], *Identity*, *Padding*, and *Major* and *Minor inversion* as primitive, and *Cropping* as defined. Employing terminology and notation differing somewhat from the above, Bacon (1985) sets out two formulations of PFL:

-   A [natural deduction][91] formulation in the style of [Frederick Fitch][92]. Bacon proves this formulation [sound][93] and [complete][94] in full detail.
-   An axiomatic formulation, which Bacon asserts, but does not prove, equivalent to the preceding one. Some of these axioms are simply Quine conjectures restated in Bacon's notation.

Bacon also:

-   Discusses the relation of PFL to the [term logic][95] of Sommers (1982), and argues that recasting PFL using a syntax proposed in Lockwood's appendix to Sommers, should make PFL easier to "read, use, and teach";
-   Touches on the [group theoretic][96] structure of __Inv__ and __inv__;
-   Mentions that [sentential logic][97], [monadic predicate logic][98], the [modal logic][99] [S5][100], and the Boolean logic of (un)permuted [relations][101], are all fragments of PFL.

## From first-order logic to PFL\[[edit][102]\]

The following [algorithm][103] is adapted from Quine (1976: 300-2). Given a [closed formula][104] of [first-order logic][105], first do the following:

-   Attach a numerical subscript to every predicate letter, stating its degree;
-   Translate all [universal quantifiers][106] into [existential quantifiers][107] and negation;
-   Restate all [atomic formulas][108] of the form *x*\=*y* as *Ixy*.

Now apply the following algorithm to the preceding result:

The reverse translation, from PFL to first-order logic, is discussed in Quine (1976: 302-4).

The canonical [foundation of mathematics][109] is [axiomatic set theory][110], with a background logic consisting of [first-order logic][111] with [identity][112], with a [universe of discourse][113] consisting entirely of sets. There is a single [predicate letter][114] of degree 2, interpreted as set membership. The PFL translation of the canonical [axiomatic set theory][115] [ZFC][116] is not difficult, as no [ZFC][117] axiom requires more than 6 quantified variables.[\[2\]][118]

## See also\[[edit][119]\]

-   [Algebraic logic][120]

## Footnotes\[[edit][121]\]

1.  __[^][122]__ Johannes Stern, *Toward Predicate Approaches to Modality*, Springer, 2015, p. 11.
2.  __[^][123]__ [Metamath axioms.][124]

## References\[[edit][125]\]

-   Bacon, John, 1985, "The completeness of a predicate-functor logic," *Journal of Symbolic Logic 50*: 903–26.
-   [Paul Bernays][126], 1959, "Uber eine naturliche Erweiterung des Relationenkalkuls" in Heyting, A., ed., *Constructivity in Mathematics*. North Holland: 1–14.
-   [Kuhn, Steven T.][127], 1983, "[An Axiomatization of Predicate Functor Logic][128]," *Notre Dame Journal of Formal Logic 24*: 233–41.
-   [Willard Quine][129], 1976, "Algebraic Logic and Predicate Functors" in *Ways of Paradox and Other Essays*, enlarged ed. Harvard Univ. Press: 283–307.
-   Willard Quine, 1982. *Methods of Logic*, 4th ed. Harvard Univ. Press. Chpt. 45.
-   Sommers, Fred, 1982. *The Logic of Natural Language*. Oxford Univ. Press.
-   [Alfred Tarski][130] and Givant, Steven, 1987. *A Formalization of Set Theory Without Variables*. [AMS][131].
-   [Jean Van Heijenoort][132], 1967. *From Frege to Gödel: A Source Book on Mathematical Logic*. Harvard Univ. Press.

## External links\[[edit][133]\]

-   [*An introduction to predicate-functor logic*][134] (one-click download, PS file) by Mats Dahllöf (Department of Linguistics, Uppsala University)

[1]: https://en.wikipedia.org/wiki/Mathematical_logic "Mathematical logic"
[2]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[3]: https://en.wikipedia.org/wiki/Predicate_logic "Predicate logic"
[4]: https://en.wikipedia.org/wiki/Quantification_(logic) "Quantification (logic)"
[5]: https://en.wikipedia.org/wiki/Predicate_functor_logic#cite_note-1
[6]: https://en.wikipedia.org/wiki/Logic "Logic"
[7]: https://en.wikipedia.org/wiki/Philosopher "Philosopher"
[8]: https://en.wikipedia.org/wiki/Willard_Quine "Willard Quine"
[9]: https://en.wikipedia.org/w/index.php?title=Predicate_functor_logic&action=edit&section=1 "Edit section: Motivation"
[10]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[11]: https://en.wikipedia.org/wiki/Boolean_algebra_(logic) "Boolean algebra (logic)"
[12]: https://en.wikipedia.org/wiki/Propositional_logic "Propositional logic"
[13]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[14]: https://en.wikipedia.org/wiki/Identity_(mathematics) "Identity (mathematics)"
[15]: https://en.wikipedia.org/wiki/Metamathematics "Metamathematics"
[16]: https://en.wikipedia.org/wiki/Consistency_proof "Consistency proof"
[17]: https://en.wikipedia.org/wiki/Completeness_(logic) "Completeness (logic)"
[18]: https://en.wikipedia.org/wiki/Undecidable_problem "Undecidable problem"
[19]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[20]: https://en.wikipedia.org/wiki/Rudolf_Carnap "Rudolf Carnap"
[21]: https://en.wikipedia.org/wiki/Philosophy "Philosophy"
[22]: https://en.wikipedia.org/wiki/Mathematical_logic "Mathematical logic"
[23]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[24]: https://en.wikipedia.org/wiki/Cylindric_algebra "Cylindric algebra"
[25]: https://en.wikipedia.org/wiki/Alfred_Tarski "Alfred Tarski"
[26]: https://en.wikipedia.org/wiki/Polyadic_algebra "Polyadic algebra"
[27]: https://en.wikipedia.org/wiki/Paul_Halmos "Paul Halmos"
[28]: https://en.wikipedia.org/wiki/Relation_algebra "Relation algebra"
[29]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[30]: https://en.wikipedia.org/wiki/Quantifier_(logic) "Quantifier (logic)"
[31]: https://en.wikipedia.org/wiki/Peano_arithmetic "Peano arithmetic"
[32]: https://en.wikipedia.org/wiki/Axiomatic_set_theory "Axiomatic set theory"
[33]: https://en.wikipedia.org/wiki/ZFC "ZFC"
[34]: https://en.wikipedia.org/wiki/G%C3%B6del%27s_incompleteness_theorem "Gödel's incompleteness theorem"
[35]: https://en.wikipedia.org/wiki/Combinatory_logic "Combinatory logic"
[36]: https://en.wikipedia.org/wiki/Combinator "Combinator"
[37]: https://en.wikipedia.org/wiki/Higher_order_function "Higher order function"
[38]: https://en.wikipedia.org/wiki/Domain_of_a_function "Domain of a function"
[39]: https://en.wikipedia.org/wiki/Range_of_a_function "Range of a function"
[40]: https://en.wikipedia.org/wiki/Combinatory_logic "Combinatory logic"
[41]: https://en.wikipedia.org/wiki/Set_theory "Set theory"
[42]: https://en.wikipedia.org/wiki/Paradox "Paradox"
[43]: https://en.wikipedia.org/wiki/Term_(logic) "Term (logic)"
[44]: https://en.wikipedia.org/wiki/Combinatory_logic "Combinatory logic"
[45]: https://en.wikipedia.org/wiki/Moses_Sch%C3%B6nfinkel "Moses Schönfinkel"
[46]: https://en.wikipedia.org/wiki/Dana_Scott "Dana Scott"
[47]: https://en.wikipedia.org/wiki/Model_theory "Model theory"
[48]: https://en.wikipedia.org/wiki/Haskell_Curry "Haskell Curry"
[49]: https://en.wikipedia.org/wiki/Robert_Feys "Robert Feys"
[50]: https://en.wikipedia.org/wiki/Consistency_proof "Consistency proof"
[51]: https://en.wikipedia.org/wiki/Curry_paradox "Curry paradox"
[52]: https://en.wikipedia.org/wiki/Lambda_calculus "Lambda calculus"
[53]: https://en.wikipedia.org/wiki/Combinatory_logic "Combinatory logic"
[54]: https://en.wikipedia.org/w/index.php?title=Predicate_functor_logic&action=edit&section=2 "Edit section: Kuhn's formalization"
[55]: https://en.wikipedia.org/wiki/Syntax "Syntax"
[56]: https://en.wikipedia.org/wiki/Steven_Kuhn "Steven Kuhn"
[57]: https://en.wikipedia.org/wiki/Semantics "Semantics"
[58]: https://en.wikipedia.org/w/index.php?title=Predicate_functor_logic&action=edit&section=3 "Edit section: Syntax"
[59]: https://en.wikipedia.org/wiki/Superscript "Superscript"
[60]: https://en.wikipedia.org/wiki/Boolean_variable "Boolean variable"
[61]: https://en.wikipedia.org/wiki/Truth_value "Truth value"
[62]: https://en.wikipedia.org/wiki/Natural_number "Natural number"
[63]: https://en.wikipedia.org/wiki/Negation "Negation"
[64]: https://en.wikipedia.org/wiki/Logical_connective "Logical connective"
[65]: https://en.wikipedia.org/wiki/Functional_completeness "Functional completeness"
[66]: https://en.wikipedia.org/wiki/Logical_conjunction "Logical conjunction"
[67]: https://en.wikipedia.org/wiki/Negation "Negation"
[68]: https://en.wikipedia.org/wiki/Syntax "Syntax"
[69]: https://en.wikipedia.org/wiki/Semantics "Semantics"
[70]: https://en.wikipedia.org/wiki/Sheffer_stroke "Sheffer stroke"
[71]: https://en.wikipedia.org/wiki/Logical_NOR "Logical NOR"
[72]: https://en.wikipedia.org/w/index.php?title=Predicate_functor_logic&action=edit&section=4 "Edit section: Axioms and semantics"
[73]: https://en.wikipedia.org/wiki/Free_variable "Free variable"
[74]: https://en.wikipedia.org/wiki/Consistency_proof "Consistency proof"
[75]: https://en.wikipedia.org/wiki/Completeness_(logic) "Completeness (logic)"
[76]: https://en.wikipedia.org/wiki/Sentential_logic "Sentential logic"
[77]: https://en.wikipedia.org/wiki/Tautology_(logic) "Tautology (logic)"
[78]: https://en.wikipedia.org/wiki/Abstraction "Abstraction"
[79]: https://en.wikipedia.org/wiki/N-tuple "N-tuple"
[80]: https://en.wikipedia.org/wiki/Reflexive_relation "Reflexive relation"
[81]: https://en.wikipedia.org/wiki/Symmetric "Symmetric"
[82]: https://en.wikipedia.org/wiki/Transitive_relation "Transitive relation"
[83]: https://en.wikipedia.org/wiki/Combinatory_logic "Combinatory logic"
[84]: https://en.wikipedia.org/wiki/Cartesian_product "Cartesian product"
[85]: https://en.wikipedia.org/w/index.php?title=Predicate_functor_logic&action=edit&section=5 "Edit section: Rules"
[86]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[87]: https://en.wikipedia.org/w/index.php?title=Predicate_functor_logic&action=edit&section=6 "Edit section: Some useful results"
[88]: https://en.wikipedia.org/w/index.php?title=Predicate_functor_logic&action=edit&section=7 "Edit section: Bacon's work"
[89]: https://en.wikipedia.org/wiki/Material_conditional "Material conditional"
[90]: https://en.wikipedia.org/wiki/Negation "Negation"
[91]: https://en.wikipedia.org/wiki/Natural_deduction "Natural deduction"
[92]: https://en.wikipedia.org/w/index.php?title=Frederick_Fitch&action=edit&redlink=1 "Frederick Fitch (page does not exist)"
[93]: https://en.wikipedia.org/wiki/Consistency_proof "Consistency proof"
[94]: https://en.wikipedia.org/wiki/Completeness_(logic) "Completeness (logic)"
[95]: https://en.wikipedia.org/wiki/Term_logic "Term logic"
[96]: https://en.wikipedia.org/wiki/Group_theory "Group theory"
[97]: https://en.wikipedia.org/wiki/Sentential_logic "Sentential logic"
[98]: https://en.wikipedia.org/wiki/Monadic_predicate_logic "Monadic predicate logic"
[99]: https://en.wikipedia.org/wiki/Modal_logic "Modal logic"
[100]: https://en.wikipedia.org/wiki/S5_(modal_logic) "S5 (modal logic)"
[101]: https://en.wikipedia.org/wiki/Relation_(mathematics) "Relation (mathematics)"
[102]: https://en.wikipedia.org/w/index.php?title=Predicate_functor_logic&action=edit&section=8 "Edit section: From first-order logic to PFL"
[103]: https://en.wikipedia.org/wiki/Algorithm "Algorithm"
[104]: https://en.wikipedia.org/wiki/Sentence_(mathematical_logic) "Sentence (mathematical logic)"
[105]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[106]: https://en.wikipedia.org/wiki/Universal_quantifier "Universal quantifier"
[107]: https://en.wikipedia.org/wiki/Existential_quantifier "Existential quantifier"
[108]: https://en.wikipedia.org/wiki/Atomic_formula "Atomic formula"
[109]: https://en.wikipedia.org/wiki/Foundation_of_mathematics "Foundation of mathematics"
[110]: https://en.wikipedia.org/wiki/Axiomatic_set_theory "Axiomatic set theory"
[111]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[112]: https://en.wikipedia.org/wiki/Identity_(mathematics) "Identity (mathematics)"
[113]: https://en.wikipedia.org/wiki/Universe_of_discourse "Universe of discourse"
[114]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[115]: https://en.wikipedia.org/wiki/Axiomatic_set_theory "Axiomatic set theory"
[116]: https://en.wikipedia.org/wiki/ZFC "ZFC"
[117]: https://en.wikipedia.org/wiki/ZFC "ZFC"
[118]: https://en.wikipedia.org/wiki/Predicate_functor_logic#cite_note-2
[119]: https://en.wikipedia.org/w/index.php?title=Predicate_functor_logic&action=edit&section=9 "Edit section: See also"
[120]: https://en.wikipedia.org/wiki/Algebraic_logic "Algebraic logic"
[121]: https://en.wikipedia.org/w/index.php?title=Predicate_functor_logic&action=edit&section=10 "Edit section: Footnotes"
[122]: https://en.wikipedia.org/wiki/Predicate_functor_logic#cite_ref-1 "Jump up"
[123]: https://en.wikipedia.org/wiki/Predicate_functor_logic#cite_ref-2 "Jump up"
[124]: http://us.metamath.org/mpegif/mmset.html#staxioms
[125]: https://en.wikipedia.org/w/index.php?title=Predicate_functor_logic&action=edit&section=11 "Edit section: References"
[126]: https://en.wikipedia.org/wiki/Paul_Bernays "Paul Bernays"
[127]: https://en.wikipedia.org/wiki/Steven_Kuhn "Steven Kuhn"
[128]: https://projecteuclid.org/journals/notre-dame-journal-of-formal-logic/volume-24/issue-2/An-axiomatization-of-predicate-functor-logic/10.1305/ndjfl/1093870313.full
[129]: https://en.wikipedia.org/wiki/Willard_Quine "Willard Quine"
[130]: https://en.wikipedia.org/wiki/Alfred_Tarski "Alfred Tarski"
[131]: https://en.wikipedia.org/wiki/American_Mathematical_Society "American Mathematical Society"
[132]: https://en.wikipedia.org/wiki/Jean_Van_Heijenoort "Jean Van Heijenoort"
[133]: https://en.wikipedia.org/w/index.php?title=Predicate_functor_logic&action=edit&section=12 "Edit section: External links"
[134]: http://stp.ling.uu.se/~matsd/pub/pfl.ps

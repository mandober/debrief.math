---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Existential_quantification
page-title:       Existential quantification - Wikipedia
article-title:    Existential quantification - Wikipedia
---
# Existential quantification - Wikipedia

"∃" redirects here. It is not to be confused with Ǝ or ヨ.
"∃" redirects here. It is not to be confused with [Ǝ][1] or [ヨ][2].

In [predicate logic][3], an __existential quantification__ is a type of [quantifier][4], a [logical constant][5] which is [interpreted][6] as "there exists", "there is at least one", or "for some". It is usually denoted by the [logical operator][7] [symbol][8] ∃, which, when used together with a predicate variable, is called an __existential quantifier__ ("∃*x*" or "∃(*x*)"). Existential quantification is distinct from [universal quantification][9] ("for all"), which asserts that the property or relation holds for *all* members of the domain.[\[1\]][10][\[2\]][11] Some sources use the term __existentialization__ to refer to existential quantification.[\[3\]][12]

## Basics\[[edit][13]\]

Consider a formula that states that some [natural number][14] multiplied by itself is 25.

> 0·0 = 25, __or__ 1·1 = 25, __or__ 2·2 = 25, __or__ 3·3 = 25, and so on.

This would seem to be a [logical disjunction][15] because of the repeated use of "or". However, the "and so on" makes this impossible to integrate and to interpret it as a disjunction in [formal logic][16]. Instead, the statement could be rephrased more formally as

> For some natural number *n*, *n*·*n* = 25.

This is a single statement using existential quantification.

This statement is more precise than the original one, since the phrase "and so on" does not necessarily include all [natural numbers][17] and exclude everything else. And since the domain was not stated explicitly, the phrase could not be interpreted formally. In the quantified statement, however, the natural numbers are mentioned explicitly.

This particular example is true, because 5 is a natural number, and when we substitute 5 for *n*, we produce "5·5 = 25", which is true. It does not matter that "*n*·*n* = 25" is only true for a single natural number, 5; even the existence of a single [solution][18] is enough to prove this existential quantification as being true. In contrast, "For some [even number][19] *n*, *n*·*n* = 25" is false, because there are no even solutions.

The *[domain of discourse][20]*, which specifies the values the variable *n* is allowed to take, is therefore critical to a statement's trueness or falseness. [Logical conjunctions][21] are used to restrict the domain of discourse to fulfill a given predicate. For example:

> For some positive odd number *n*, *n*·*n* = 25

is [logically equivalent][22] to

> For some natural number *n*, *n* is odd and *n*·*n* = 25.

Here, "and" is the logical conjunction.

In [symbolic logic][23], "∃" (a rotated letter "[E][24]", in a [sans-serif][25] font) is used to indicate existential quantification.[\[4\]][26] Thus, if *P*(*a*, *b*, *c*) is the predicate "*a*·*b* = c", and ![\mathbb {N} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/fdf9a96b565ea202d0f4322e9195613fb26a9bed) is the [set][27] of natural numbers, then

![\exists {n}{\in }\mathbb {N} \,P(n,n,25)](https://wikimedia.org/api/rest_v1/media/math/render/svg/a6df4defaba17888a1b470c4fb73b1d68363632f)

is the (true) statement

> For some natural number *n*, *n*·*n* = 25.

Similarly, if *Q*(*n*) is the predicate "*n* is even", then

![\exists {n}{\in }\mathbb {N} \,{\big (}Q(n)\;\!\;\!{\wedge }\;\!\;\!P(n,n,25){\big )}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d089225807773f5e3ec7b55bcff78fcc5dfc0169)

is the (false) statement

> For some natural number *n*, *n* is even and *n*·*n* = 25.

In [mathematics][28], the proof of a "some" statement may be achieved either by a [constructive proof][29], which exhibits an object satisfying the "some" statement, or by a [nonconstructive proof][30], which shows that there must be such an object but without exhibiting one.

## Properties\[[edit][31]\]

### Negation\[[edit][32]\]

A quantified propositional function is a statement; thus, like statements, quantified functions can be negated. The ![\lnot \ ](https://wikimedia.org/api/rest_v1/media/math/render/svg/45da51f08f430e85dfe24c3a089796e2ff93ed6a) symbol is used to denote negation.

For example, if *P*(*x*) is the predicate "*x* is greater than 0 and less than 1", then, for a domain of discourse *X* of all natural numbers, the existential quantification "There exists a natural number *x* which is greater than 0 and less than 1" can be symbolically stated as:

![\exists {x}{\in }\mathbf {X} \,P(x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/0840968d9dee4e0caf37654b4563d5a3c3f78f1c)

This can be demonstrated to be false. Truthfully, it must be said, "It is not the case that there is a natural number *x* that is greater than 0 and less than 1", or, symbolically:

![\lnot \ \exists {x}{\in }\mathbf {X} \,P(x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/89ae85ab4a73d2617c258175540b38b5ad79d9fa).

If there is no element of the domain of discourse for which the statement is true, then it must be false for all of those elements. That is, the negation of

![\exists {x}{\in }\mathbf {X} \,P(x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/0840968d9dee4e0caf37654b4563d5a3c3f78f1c)

is logically equivalent to "For any natural number *x*, *x* is not greater than 0 and less than 1", or:

![\forall {x}{\in }\mathbf {X} \,\lnot P(x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/7512a058a27b75cfd3d7fd498f8dcd92b2d1994d)

Generally, then, the negation of a [propositional function][33]'s existential quantification is a [universal quantification][34] of that propositional function's negation; symbolically,

![\lnot \ \exists {x}{\in }\mathbf {X} \,P(x)\equiv \ \forall {x}{\in }\mathbf {X} \,\lnot P(x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/0558865334fade926ccced9d0ae38bf7117198cf)

(This is a generalization of [De Morgan's laws][35] to predicate logic.)

A common error is stating "all persons are not married" (i.e., "there exists no person who is married"), when "not all persons are married" (i.e., "there exists a person who is not married") is intended:

![\lnot \ \exists {x}{\in }\mathbf {X} \,P(x)\equiv \ \forall {x}{\in }\mathbf {X} \,\lnot P(x)\not \equiv \ \lnot \ \forall {x}{\in }\mathbf {X} \,P(x)\equiv \ \exists {x}{\in }\mathbf {X} \,\lnot P(x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/bb278b878ceb930d8885fa09384e82df80c77a37)

Negation is also expressible through a statement of "for no", as opposed to "for some":

![\nexists {x}{\in }\mathbf {X} \,P(x)\equiv \lnot \ \exists {x}{\in }\mathbf {X} \,P(x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/7b3378061022ebee0c0934f43b95434bf44aafcf)

Unlike the universal quantifier, the existential quantifier distributes over logical disjunctions:

![{\displaystyle \exists {x}{\in }\mathbf {X} \,P(x)\lor Q(x)\to \ (\exists {x}{\in }\mathbf {X} \,P(x)\lor \exists {x}{\in }\mathbf {X} \,Q(x))}](https://wikimedia.org/api/rest_v1/media/math/render/svg/be6134b946a245b062589fe32cb4e8134df0d797)

### Rules of Inference\[[edit][36]\]

A [rule of inference][37] is a rule justifying a logical step from hypothesis to conclusion. There are several rules of inference which utilize the existential quantifier.

*[Existential introduction][38]* (∃I) concludes that, if the propositional function is known to be true for a particular element of the domain of discourse, then it must be true that there exists an element for which the proposition function is true. Symbolically,

![P(a)\to \ \exists {x}{\in }\mathbf {X} \,P(x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/b902121ba2ae5fa3f7e0b9b71905422323ec920a)

[Existential instantiation][39], when conducted in a Fitch style deduction, proceeds by entering a new sub-derivation while substituting an existentially quantified variable for a subject—which does not appear within any active sub-derivation. If a conclusion can be reached within this sub-derivation in which the substituted subject does not appear, then one can exit that sub-derivation with that conclusion. The reasoning behind existential elimination (∃E) is as follows: If it is given that there exists an element for which the proposition function is true, and if a conclusion can be reached by giving that element an arbitrary name, that conclusion is [necessarily true][40], as long as it does not contain the name. Symbolically, for an arbitrary *c* and for a proposition *Q* in which *c* does not appear:

![\exists {x}{\in }\mathbf {X} \,P(x)\to \ ((P(c)\to \ Q)\to \ Q)](https://wikimedia.org/api/rest_v1/media/math/render/svg/474d8e0bee10d8b1258a834448b783f80dc6871e)

![P(c)\to \ Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/b1438353e957c3b4c206ee4443bbd6cbf40daaa2) must be true for all values of *c* over the same domain *X*; else, the logic does not follow: If *c* is not arbitrary, and is instead a specific element of the domain of discourse, then stating *P*(*c*) might unjustifiably give more information about that object.

### The empty set\[[edit][41]\]

The formula ![\exists {x}{\in }\emptyset \,P(x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/c77891f2d5e044dd8015d1a35d3253761e013a36) is always false, regardless of *P*(*x*). This is because ![\emptyset ](https://wikimedia.org/api/rest_v1/media/math/render/svg/6af50205f42bb2ec3c666b7b847d2c7f96e464c7) denotes the [empty set][42], and no *x* of any description – let alone an *x* fulfilling a given predicate *P*(*x*) – exist in the empty set. See also [Vacuous truth][43] for more information.

## As adjoint\[[edit][44]\]

In [category theory][45] and the theory of [elementary topoi][46], the existential quantifier can be understood as the [left adjoint][47] of a [functor][48] between [power sets][49], the [inverse image][50] functor of a function between sets; likewise, the [universal quantifier][51] is the [right adjoint][52].[\[5\]][53]

## Encoding\[[edit][54]\]

In Unicode and HTML, symbols are encoded [U+][55]2203 ∃ THERE EXISTS (HTML `&#8707;` __·__ `&exist;, &Exists;` __·__ as a mathematical symbol) and U+2204 ∄ THERE DOES *NOT* EXIST (HTML `&#8708;` __·__ `&nexist;, &nexists;, &NotExists;`).

In [TeX][56], the symbol is produced with "\\exists".

## See also\[[edit][57]\]

-   [Existential clause][58]
-   [Existence theorem][59]
-   [First-order logic][60]
-   [Lindström quantifier][61]
-   [List of logic symbols][62] – for the unicode symbol ∃
-   [Quantifier variance][63]
-   [Quantifiers][64]
-   [Uniqueness quantification][65]
-   [Universal quantification][66]

## Notes\[[edit][67]\]

## References\[[edit][68]\]

-   Hinman, P. (2005). *Fundamentals of Mathematical Logic*. A K Peters. [ISBN][69] [1-56881-262-0][70].

[1]: https://en.wikipedia.org/wiki/%C6%8E "Ǝ"
[2]: https://en.wikipedia.org/wiki/%E3%83%A8 "ヨ"
[3]: https://en.wikipedia.org/wiki/Predicate_logic "Predicate logic"
[4]: https://en.wikipedia.org/wiki/Quantification_(logic) "Quantification (logic)"
[5]: https://en.wikipedia.org/wiki/Logical_constant "Logical constant"
[6]: https://en.wikipedia.org/wiki/Interpretation_(logic) "Interpretation (logic)"
[7]: https://en.wikipedia.org/wiki/Logical_connective "Logical connective"
[8]: https://en.wikipedia.org/wiki/Symbol_(formal) "Symbol (formal)"
[9]: https://en.wikipedia.org/wiki/Universal_quantification "Universal quantification"
[10]: https://en.wikipedia.org/wiki/Existential_quantification#cite_note-1
[11]: https://en.wikipedia.org/wiki/Existential_quantification#cite_note-2
[12]: https://en.wikipedia.org/wiki/Existential_quantification#cite_note-3
[13]: https://en.wikipedia.org/w/index.php?title=Existential_quantification&action=edit&section=1 "Edit section: Basics"
[14]: https://en.wikipedia.org/wiki/Natural_number "Natural number"
[15]: https://en.wikipedia.org/wiki/Logical_disjunction "Logical disjunction"
[16]: https://en.wikipedia.org/wiki/Formal_logic "Formal logic"
[17]: https://en.wikipedia.org/wiki/Natural_number "Natural number"
[18]: https://en.wikipedia.org/wiki/Solution_(equation) "Solution (equation)"
[19]: https://en.wikipedia.org/wiki/Even_number "Even number"
[20]: https://en.wikipedia.org/wiki/Domain_of_discourse "Domain of discourse"
[21]: https://en.wikipedia.org/wiki/Logical_conjunction "Logical conjunction"
[22]: https://en.wikipedia.org/wiki/Logically_equivalent "Logically equivalent"
[23]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[24]: https://en.wikipedia.org/wiki/E "E"
[25]: https://en.wikipedia.org/wiki/Sans-serif "Sans-serif"
[26]: https://en.wikipedia.org/wiki/Existential_quantification#cite_note-4
[27]: https://en.wikipedia.org/wiki/Set_(mathematics) "Set (mathematics)"
[28]: https://en.wikipedia.org/wiki/Mathematical_proof "Mathematical proof"
[29]: https://en.wikipedia.org/wiki/Constructive_proof "Constructive proof"
[30]: https://en.wikipedia.org/wiki/Nonconstructive_proof "Nonconstructive proof"
[31]: https://en.wikipedia.org/w/index.php?title=Existential_quantification&action=edit&section=2 "Edit section: Properties"
[32]: https://en.wikipedia.org/w/index.php?title=Existential_quantification&action=edit&section=3 "Edit section: Negation"
[33]: https://en.wikipedia.org/wiki/Propositional_function "Propositional function"
[34]: https://en.wikipedia.org/wiki/Universal_quantification "Universal quantification"
[35]: https://en.wikipedia.org/wiki/De_Morgan%27s_laws "De Morgan's laws"
[36]: https://en.wikipedia.org/w/index.php?title=Existential_quantification&action=edit&section=4 "Edit section: Rules of Inference"
[37]: https://en.wikipedia.org/wiki/Rule_of_inference "Rule of inference"
[38]: https://en.wikipedia.org/wiki/Existential_generalization "Existential generalization"
[39]: https://en.wikipedia.org/wiki/Existential_elimination "Existential elimination"
[40]: https://en.wikipedia.org/wiki/Logical_truth "Logical truth"
[41]: https://en.wikipedia.org/w/index.php?title=Existential_quantification&action=edit&section=5 "Edit section: The empty set"
[42]: https://en.wikipedia.org/wiki/Empty_set "Empty set"
[43]: https://en.wikipedia.org/wiki/Vacuous_truth "Vacuous truth"
[44]: https://en.wikipedia.org/w/index.php?title=Existential_quantification&action=edit&section=6 "Edit section: As adjoint"
[45]: https://en.wikipedia.org/wiki/Category_theory "Category theory"
[46]: https://en.wikipedia.org/wiki/Elementary_topos "Elementary topos"
[47]: https://en.wikipedia.org/wiki/Left_adjoint "Left adjoint"
[48]: https://en.wikipedia.org/wiki/Functor "Functor"
[49]: https://en.wikipedia.org/wiki/Power_set "Power set"
[50]: https://en.wikipedia.org/wiki/Inverse_image "Inverse image"
[51]: https://en.wikipedia.org/wiki/Universal_quantifier "Universal quantifier"
[52]: https://en.wikipedia.org/wiki/Right_adjoint "Right adjoint"
[53]: https://en.wikipedia.org/wiki/Existential_quantification#cite_note-5
[54]: https://en.wikipedia.org/w/index.php?title=Existential_quantification&action=edit&section=7 "Edit section: Encoding"
[55]: https://en.wikipedia.org/wiki/Unicode "Unicode"
[56]: https://en.wikipedia.org/wiki/TeX "TeX"
[57]: https://en.wikipedia.org/w/index.php?title=Existential_quantification&action=edit&section=8 "Edit section: See also"
[58]: https://en.wikipedia.org/wiki/Existential_clause "Existential clause"
[59]: https://en.wikipedia.org/wiki/Existence_theorem "Existence theorem"
[60]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[61]: https://en.wikipedia.org/wiki/Lindstr%C3%B6m_quantifier "Lindström quantifier"
[62]: https://en.wikipedia.org/wiki/List_of_logic_symbols "List of logic symbols"
[63]: https://en.wikipedia.org/wiki/Quantifier_variance "Quantifier variance"
[64]: https://en.wikipedia.org/wiki/Quantifier_(logic) "Quantifier (logic)"
[65]: https://en.wikipedia.org/wiki/Uniqueness_quantification "Uniqueness quantification"
[66]: https://en.wikipedia.org/wiki/Universal_quantification "Universal quantification"
[67]: https://en.wikipedia.org/w/index.php?title=Existential_quantification&action=edit&section=9 "Edit section: Notes"
[68]: https://en.wikipedia.org/w/index.php?title=Existential_quantification&action=edit&section=10 "Edit section: References"
[69]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[70]: https://en.wikipedia.org/wiki/Special:BookSources/1-56881-262-0 "Special:BookSources/1-56881-262-0"

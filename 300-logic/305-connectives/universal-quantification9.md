---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Universal_quantification
page-title:       Universal quantification - Wikipedia
article-title:    Universal quantification - Wikipedia
---
# Universal quantification - Wikipedia

In mathematical logic, a universal quantification is a type of quantifier, a logical constant which is interpreted as "given any" or "for all". It expresses that a predicate can be satisfied by every member of a domain of discourse. In other words, it is the predication of a property or relation to every member of the domain. It asserts that a predicate within the scope of a universal quantifier is true of every value of a predicate variable.
In [mathematical logic][1], a __universal quantification__ is a type of [quantifier][2], a [logical constant][3] which is [interpreted][4] as "given any" or "for all". It expresses that a [predicate][5] can be [satisfied][6] by every [member][7] of a [domain of discourse][8]. In other words, it is the [predication][9] of a [property][10] or [relation][11] to every member of the domain. It [asserts][12] that a predicate within the [scope][13] of a universal quantifier is true of every [value][14] of a [predicate variable][15].

It is usually denoted by the [turned A][16] (∀) [logical operator][17] [symbol][18], which, when used together with a predicate variable, is called a __universal quantifier__ ("∀*x*", "∀(*x*)", or sometimes by "(*x*)" alone). Universal quantification is distinct from [*existential* quantification][19] ("there exists"), which only asserts that the property or relation holds for at least one member of the domain.

Quantification in general is covered in the article on [quantification (logic)][20]. The universal quantifier is encoded as U+2200 ∀ FOR ALL in [Unicode][21], and as `\forall` in [LaTeX][22] and related formula editors.

## Basics\[[edit][23]\]

Suppose it is given that

> 2·0 = 0 + 0, and 2·1 = 1 + 1, and 2·2 = 2 + 2, etc.

This would seem to be a [logical conjunction][24] because of the repeated use of "and". However, the "etc." cannot be interpreted as a conjunction in [formal logic][25]. Instead, the statement must be rephrased:

> For all natural numbers *n*, one has 2·*n* = *n* + *n*.

This is a single statement using universal quantification.

This statement can be said to be more precise than the original one. While the "etc." informally includes [natural numbers][26], and nothing more, this was not rigorously given. In the universal quantification, on the other hand, the natural numbers are mentioned explicitly.

This particular example is [true][27], because any natural number could be substituted for *n* and the statement "2·*n* = *n* + *n*" would be true. In contrast,

> For all natural numbers *n*, one has 2·*n* > 2 + *n*

is [false][28], because if *n* is substituted with, for instance, 1, the statement "2·1 > 2 + 1" is false. It is immaterial that "2·*n* > 2 + *n*" is true for *most* natural numbers *n*: even the existence of a single [counterexample][29] is enough to prove the universal quantification false.

On the other hand, for all [composite numbers][30] *n*, one has 2·*n* > 2 + *n* is true, because none of the counterexamples are composite numbers. This indicates the importance of the *[domain of discourse][31]*, which specifies which values *n* can take.[\[note 1\]][32] In particular, note that if the domain of discourse is restricted to consist only of those objects that satisfy a certain predicate, then for universal quantification this requires a [logical conditional][33]. For example,

> For all composite numbers *n*, one has 2·*n* > 2 + *n*

is [logically equivalent][34] to

> For all natural numbers *n*, if *n* is composite, then 2·*n* > 2 + *n*.

Here the "if ... then" construction indicates the logical conditional.

### Notation\[[edit][35]\]

In [symbolic logic][36], the universal quantifier symbol ![ \forall ](https://wikimedia.org/api/rest_v1/media/math/render/svg/bfc1a1a9c4c0f8d5df989c98aa2773ed657c5937) (a turned "[A][37]" in a [sans-serif][38] font, Unicode U+2200) is used to indicate universal quantification. It was first used in this way by [Gerhard Gentzen][39] in 1935, by analogy with [Giuseppe Peano][40]'s ![\exists ](https://wikimedia.org/api/rest_v1/media/math/render/svg/77ed842b6b90b2fdd825320cf8e5265fa937b583) (turned E) notation for [existential quantification][41] and the later use of Peano's notation by [Bertrand Russell][42].[\[1\]][43]

For example, if *P*(*n*) is the predicate "2·*n* > 2 + *n*" and __N__ is the [set][44] of natural numbers, then

![ \forall n\!\in\!\mathbb{N}\; P(n) ](https://wikimedia.org/api/rest_v1/media/math/render/svg/8b78370115d6c0f493f003e2176ca57b7fd59b56)

is the (false) statement

"for all natural numbers *n*, one has 2·*n* > 2 + *n*".

Similarly, if *Q*(*n*) is the predicate "*n* is composite", then

![ \forall n\!\in\!\mathbb{N}\; \bigl( Q(n) \rightarrow  P(n) \bigr) ](https://wikimedia.org/api/rest_v1/media/math/render/svg/8e2098bbcbe68fdb361481d00f832b2b8ade866f)

is the (true) statement

"for all natural numbers *n*, if *n* is composite, then 2·*n* > 2 + n".

Several variations in the notation for quantification (which apply to all forms) can be found in the *[Quantifier][45]* article.

## Properties\[[edit][46]\]

### Negation\[[edit][47]\]

The negation of a universally quantified function is obtained by changing the universal quantifier into an [existential quantifier][48] and negating the quantified formula. That is,

![{\displaystyle \lnot \forall x\;P(x)\quad {\text{is equivalent to}}\quad \exists x\;\lnot P(x)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5685277c81ae7da164a9d44cea654193e3129d6f)

where ![\lnot ](https://wikimedia.org/api/rest_v1/media/math/render/svg/099107443792f5fec9bebe39b919a690db7198c1) denotes [negation][49].

For example, if *P*(*x*) is the [propositional function][50] "*x* is married", then, for the [set][51] X of all living human beings, the universal quantification

> Given any living person *x*, that person is married

is written

![{\displaystyle \forall x\in X\,P(x)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ceaeb576d37f52bee7c7c6f5f86f41bb3e6e1ce3)

This statement is false. Truthfully, it is stated that

> It is not the case that, given any living person *x*, that person is married

or, symbolically:

![{\displaystyle \lnot \ \forall x\in X\,P(x)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1a0642955c0b9b3e72599de293dbe190ab591f84).

If the function *P*(*x*) is not true for *every* element of X, then there must be at least one element for which the statement is false. That is, the negation of ![{\displaystyle \forall x\in X\,P(x)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ceaeb576d37f52bee7c7c6f5f86f41bb3e6e1ce3) is logically equivalent to "There exists a living person *x* who is not married", or:

![{\displaystyle \exists x\in X\,\lnot P(x)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/aa4d55b9a95176d61e37efca769cd12c7e2e54c9)

It is erroneous to confuse "all persons are not married" (i.e. "there exists no person who is married") with "not all persons are married" (i.e. "there exists a person who is not married"):

![{\displaystyle \lnot \ \exists x\in X\,P(x)\equiv \ \forall x\in X\,\lnot P(x)\not \equiv \ \lnot \ \forall x\in X\,P(x)\equiv \ \exists x\in X\,\lnot P(x)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/bdf12a1b97e76018494f931fb2bf2a6fce7d68af)

### Other connectives\[[edit][52]\]

The universal (and existential) quantifier moves unchanged across the [logical connectives][53] [∧][54], [∨][55], [→][56], and [↚][57], as long as the other operand is not affected; that is:

![{\displaystyle {\begin{aligned}P(x)\land (\exists {y}{\in }\mathbf {Y} \,Q(y))&\equiv \ \exists {y}{\in }\mathbf {Y} \,(P(x)\land Q(y))\\P(x)\lor (\exists {y}{\in }\mathbf {Y} \,Q(y))&\equiv \ \exists {y}{\in }\mathbf {Y} \,(P(x)\lor Q(y)),&{\text{provided that }}\mathbf {Y} \neq \emptyset \\P(x)\to (\exists {y}{\in }\mathbf {Y} \,Q(y))&\equiv \ \exists {y}{\in }\mathbf {Y} \,(P(x)\to Q(y)),&{\text{provided that }}\mathbf {Y} \neq \emptyset \\P(x)\nleftarrow (\exists {y}{\in }\mathbf {Y} \,Q(y))&\equiv \ \exists {y}{\in }\mathbf {Y} \,(P(x)\nleftarrow Q(y))\\P(x)\land (\forall {y}{\in }\mathbf {Y} \,Q(y))&\equiv \ \forall {y}{\in }\mathbf {Y} \,(P(x)\land Q(y)),&{\text{provided that }}\mathbf {Y} \neq \emptyset \\P(x)\lor (\forall {y}{\in }\mathbf {Y} \,Q(y))&\equiv \ \forall {y}{\in }\mathbf {Y} \,(P(x)\lor Q(y))\\P(x)\to (\forall {y}{\in }\mathbf {Y} \,Q(y))&\equiv \ \forall {y}{\in }\mathbf {Y} \,(P(x)\to Q(y))\\P(x)\nleftarrow (\forall {y}{\in }\mathbf {Y} \,Q(y))&\equiv \ \forall {y}{\in }\mathbf {Y} \,(P(x)\nleftarrow Q(y)),&{\text{provided that }}\mathbf {Y} \neq \emptyset \end{aligned}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/45507410100e3078a5739c9e12b6e149546e362f)

Conversely, for the logical connectives [↑][58], [↓][59], [↛][60], and [←][61], the quantifiers flip:

![{\displaystyle {\begin{aligned}P(x)\uparrow (\exists {y}{\in }\mathbf {Y} \,Q(y))&\equiv \ \forall {y}{\in }\mathbf {Y} \,(P(x)\uparrow Q(y))\\P(x)\downarrow (\exists {y}{\in }\mathbf {Y} \,Q(y))&\equiv \ \forall {y}{\in }\mathbf {Y} \,(P(x)\downarrow Q(y)),&{\text{provided that }}\mathbf {Y} \neq \emptyset \\P(x)\nrightarrow (\exists {y}{\in }\mathbf {Y} \,Q(y))&\equiv \ \forall {y}{\in }\mathbf {Y} \,(P(x)\nrightarrow Q(y)),&{\text{provided that }}\mathbf {Y} \neq \emptyset \\P(x)\gets (\exists {y}{\in }\mathbf {Y} \,Q(y))&\equiv \ \forall {y}{\in }\mathbf {Y} \,(P(x)\gets Q(y))\\P(x)\uparrow (\forall {y}{\in }\mathbf {Y} \,Q(y))&\equiv \ \exists {y}{\in }\mathbf {Y} \,(P(x)\uparrow Q(y)),&{\text{provided that }}\mathbf {Y} \neq \emptyset \\P(x)\downarrow (\forall {y}{\in }\mathbf {Y} \,Q(y))&\equiv \ \exists {y}{\in }\mathbf {Y} \,(P(x)\downarrow Q(y))\\P(x)\nrightarrow (\forall {y}{\in }\mathbf {Y} \,Q(y))&\equiv \ \exists {y}{\in }\mathbf {Y} \,(P(x)\nrightarrow Q(y))\\P(x)\gets (\forall {y}{\in }\mathbf {Y} \,Q(y))&\equiv \ \exists {y}{\in }\mathbf {Y} \,(P(x)\gets Q(y)),&{\text{provided that }}\mathbf {Y} \neq \emptyset \\\end{aligned}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d6f57ddb417f54b2695734090a9388fada832f0b)

### Rules of inference\[[edit][62]\]

A [rule of inference][63] is a rule justifying a logical step from hypothesis to conclusion. There are several rules of inference which utilize the universal quantifier.

*[Universal instantiation][64]* concludes that, if the propositional function is known to be universally true, then it must be true for any arbitrary element of the universe of discourse. Symbolically, this is represented as

![{\displaystyle \forall {x}{\in }\mathbf {X} \,P(x)\to P(c)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/f08ddcf1aa94b5fbc82cd36ffa4a139b91188b1d)

where *c* is a completely arbitrary element of the universe of discourse.

*[Universal generalization][65]* concludes the propositional function must be universally true if it is true for any arbitrary element of the universe of discourse. Symbolically, for an arbitrary *c*,

![ P(c) \to\ \forall{x}{\in}\mathbf{X}\, P(x).](https://wikimedia.org/api/rest_v1/media/math/render/svg/54d6cac2c447f60de746845d71a13f17a540a13b)

The element *c* must be completely arbitrary; else, the logic does not follow: if *c* is not arbitrary, and is instead a specific element of the universe of discourse, then P(*c*) only implies an existential quantification of the propositional function.

### The empty set\[[edit][66]\]

By convention, the formula ![\forall{x}{\in}\emptyset \, P(x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/1ef0201f4e5024e22e63fe812661a288be877446) is always true, regardless of the formula *P*(*x*); see [vacuous truth][67].

## Universal closure\[[edit][68]\]

The __universal closure__ of a formula φ is the formula with no [free variables][69] obtained by adding a universal quantifier for every free variable in φ. For example, the universal closure of

![P(y) \land \exists x Q(x,z)](https://wikimedia.org/api/rest_v1/media/math/render/svg/2ed97db27425cb2d3a943dceb41b94adabe6c4d1)

is

![\forall y \forall z ( P(y) \land \exists x Q(x,z))](https://wikimedia.org/api/rest_v1/media/math/render/svg/b9e5f48409e2aa0d04e4843eb8f4e3736b9f36ce).

## As adjoint\[[edit][70]\]

In [category theory][71] and the theory of [elementary topoi][72], the universal quantifier can be understood as the [right adjoint][73] of a [functor][74] between [power sets][75], the [inverse image][76] functor of a function between sets; likewise, the [existential quantifier][77] is the [left adjoint][78].[\[2\]][79]

For a set ![X](https://wikimedia.org/api/rest_v1/media/math/render/svg/68baa052181f707c662844a465bfeeb135e82bab), let ![\mathcal{P}X](https://wikimedia.org/api/rest_v1/media/math/render/svg/6b17bc92bbd09a931be3b782bb8396d5f7dedb04) denote its [powerset][80]. For any function ![f:X\to Y](https://wikimedia.org/api/rest_v1/media/math/render/svg/abd1e080abef4bbdab67b43819c6431e7561361c) between sets ![X](https://wikimedia.org/api/rest_v1/media/math/render/svg/68baa052181f707c662844a465bfeeb135e82bab) and ![Y](https://wikimedia.org/api/rest_v1/media/math/render/svg/961d67d6b454b4df2301ac571808a3538b3a6d3f), there is an [inverse image][81] functor ![f^*:\mathcal{P}Y\to \mathcal{P}X](https://wikimedia.org/api/rest_v1/media/math/render/svg/e5d6ecc6833d3ca54892368df51f5399159ad18d) between powersets, that takes subsets of the codomain of *f* back to subsets of its domain. The left adjoint of this functor is the existential quantifier ![\exists _{f}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2a82acacd0c36c028cd8fa527c634090ea496908) and the right adjoint is the universal quantifier ![\forall _{f}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5ca2bf0b3bccb6b57c37922ef7d50ce685e8531c).

That is, ![\exists_f\colon \mathcal{P}X\to \mathcal{P}Y](https://wikimedia.org/api/rest_v1/media/math/render/svg/5e850e636e1b52d928962e824949c02862cfcbd2) is a functor that, for each subset ![S \subset X](https://wikimedia.org/api/rest_v1/media/math/render/svg/616c8a284e5623c9ca7184dddef9b84da4cd251b), gives the subset ![\exists_f S \subset Y](https://wikimedia.org/api/rest_v1/media/math/render/svg/ac78b208238f2e8956296a5305ea6877cf736f08) given by

![{\displaystyle \exists _{f}S=\{y\in Y\;|\;\exists x\in X.\ f(x)=y\quad \land \quad x\in S\},}](https://wikimedia.org/api/rest_v1/media/math/render/svg/db6a6a15b7b59fc531b76deae2d37a980d043231)

those ![y](https://wikimedia.org/api/rest_v1/media/math/render/svg/b8a6208ec717213d4317e666f1ae872e00620a0d) in the image of ![S](https://wikimedia.org/api/rest_v1/media/math/render/svg/4611d85173cd3b508e67077d4a1252c9c05abca2) under ![f](https://wikimedia.org/api/rest_v1/media/math/render/svg/132e57acb643253e7810ee9702d9581f159a1c61). Similarly, the universal quantifier ![\forall_f\colon \mathcal{P}X\to \mathcal{P}Y](https://wikimedia.org/api/rest_v1/media/math/render/svg/0cc6626403cda1c2104277c9c7eb3e26279aa5a4) is a functor that, for each subset ![S \subset X](https://wikimedia.org/api/rest_v1/media/math/render/svg/616c8a284e5623c9ca7184dddef9b84da4cd251b), gives the subset ![{\displaystyle \forall _{f}S\subset Y}](https://wikimedia.org/api/rest_v1/media/math/render/svg/68eb53fd36707363a6b849f2adf7ccdaad248214) given by

![{\displaystyle \forall _{f}S=\{y\in Y\;|\;\forall x\in X.\ f(x)=y\quad \implies \quad x\in S\},}](https://wikimedia.org/api/rest_v1/media/math/render/svg/a01bd650c1b09133ea2f44abd063cbe820ef982d)

those ![y](https://wikimedia.org/api/rest_v1/media/math/render/svg/b8a6208ec717213d4317e666f1ae872e00620a0d) whose preimage under ![f](https://wikimedia.org/api/rest_v1/media/math/render/svg/132e57acb643253e7810ee9702d9581f159a1c61) is contained in ![S](https://wikimedia.org/api/rest_v1/media/math/render/svg/4611d85173cd3b508e67077d4a1252c9c05abca2).

The more familiar form of the quantifiers as used in [first-order logic][82] is obtained by taking the function *f* to be the unique function ![{\displaystyle !:X\to 1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e887d064b7b812b49c998d5d2bdafd886f86138f) so that ![{\displaystyle {\mathcal {P}}(1)=\{T,F\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/97e054bdb7349111d710376d19f617f367a6b592) is the two-element set holding the values true and false, a subset *S* is that subset for which the [predicate][83] ![S(x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/1886b5a535ed8f168a7c3a83afc8ca440edcdc6d) holds, and

![{\displaystyle {\begin{array}{rl}{\mathcal {P}}(!)\colon {\mathcal {P}}(1)&\to {\mathcal {P}}(X)\\T&\mapsto X\\F&\mapsto \{\}\end{array}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/98baa23b1f14f029e52a1c2eb4af78eba45ec396)

![{\displaystyle \exists _{!}S=\exists x.S(x),}](https://wikimedia.org/api/rest_v1/media/math/render/svg/26983502c4888b77ef8198d56255dc3a5504319f)

which is true if ![S](https://wikimedia.org/api/rest_v1/media/math/render/svg/4611d85173cd3b508e67077d4a1252c9c05abca2) is not empty, and

![{\displaystyle \forall _{!}S=\forall x.S(x),}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9176ffb83971cec35c4d342f6f9192c6ada9673b)

which is false if S is not X.

The universal and existential quantifiers given above generalize to the [presheaf category][84].

## See also\[[edit][85]\]

-   [Existential quantification][86]
-   [First-order logic][87]
-   [List of logic symbols][88]—for the Unicode symbol ∀

## Notes\[[edit][89]\]

1.  __[^][90]__ Further information on using domains of discourse with quantified statements can be found in the [Quantification (logic)][91] article.

## References\[[edit][92]\]

-   Hinman, P. (2005). *Fundamentals of Mathematical Logic*. [A K Peters][93]. [ISBN][94] [1-56881-262-0][95].
-   [Franklin, J.][96] and Daoud, A. (2011). [*Proof in Mathematics: An Introduction*][97]. Kew Books. [ISBN][98] [978-0-646-54509-7][99].CS1 maint: multiple names: authors list ([link][100]) (ch. 2)

## External links\[[edit][101]\]

-   [![](https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Wiktionary-logo-en-v2.svg/16px-Wiktionary-logo-en-v2.svg.png)][102] The dictionary definition of [*every*][103] at Wiktionary

[1]: https://en.wikipedia.org/wiki/Mathematical_logic "Mathematical logic"
[2]: https://en.wikipedia.org/wiki/Quantification_(logic) "Quantification (logic)"
[3]: https://en.wikipedia.org/wiki/Logical_constant "Logical constant"
[4]: https://en.wikipedia.org/wiki/Interpretation_(logic) "Interpretation (logic)"
[5]: https://en.wikipedia.org/wiki/Predicate_(mathematical_logic) "Predicate (mathematical logic)"
[6]: https://en.wikipedia.org/wiki/Satisfiability "Satisfiability"
[7]: https://en.wikipedia.org/wiki/Element_(mathematics) "Element (mathematics)"
[8]: https://en.wikipedia.org/wiki/Domain_of_discourse "Domain of discourse"
[9]: https://en.wikipedia.org/wiki/Predicate_(mathematical_logic) "Predicate (mathematical logic)"
[10]: https://en.wikipedia.org/wiki/Property_(philosophy) "Property (philosophy)"
[11]: https://en.wikipedia.org/wiki/Binary_relation "Binary relation"
[12]: https://en.wikipedia.org/wiki/Logical_assertion "Logical assertion"
[13]: https://en.wikipedia.org/wiki/Scope_(logic) "Scope (logic)"
[14]: https://en.wikipedia.org/wiki/Valuation_(logic) "Valuation (logic)"
[15]: https://en.wikipedia.org/wiki/Predicate_variable "Predicate variable"
[16]: https://en.wikipedia.org/wiki/Turned_A "Turned A"
[17]: https://en.wikipedia.org/wiki/Logical_connective "Logical connective"
[18]: https://en.wikipedia.org/wiki/Symbol_(formal) "Symbol (formal)"
[19]: https://en.wikipedia.org/wiki/Existential_quantification "Existential quantification"
[20]: https://en.wikipedia.org/wiki/Quantification_(logic) "Quantification (logic)"
[21]: https://en.wikipedia.org/wiki/Unicode "Unicode"
[22]: https://en.wikipedia.org/wiki/LaTeX "LaTeX"
[23]: https://en.wikipedia.org/w/index.php?title=Universal_quantification&action=edit&section=1 "Edit section: Basics"
[24]: https://en.wikipedia.org/wiki/Logical_conjunction "Logical conjunction"
[25]: https://en.wikipedia.org/wiki/Formal_logic "Formal logic"
[26]: https://en.wikipedia.org/wiki/Natural_number "Natural number"
[27]: https://en.wikipedia.org/wiki/True_(logic) "True (logic)"
[28]: https://en.wikipedia.org/wiki/False_(logic) "False (logic)"
[29]: https://en.wikipedia.org/wiki/Counterexample "Counterexample"
[30]: https://en.wikipedia.org/wiki/Composite_number "Composite number"
[31]: https://en.wikipedia.org/wiki/Domain_of_discourse "Domain of discourse"
[32]: https://en.wikipedia.org/wiki/Universal_quantification#cite_note-1
[33]: https://en.wikipedia.org/wiki/Logical_conditional "Logical conditional"
[34]: https://en.wikipedia.org/wiki/Logically_equivalent "Logically equivalent"
[35]: https://en.wikipedia.org/w/index.php?title=Universal_quantification&action=edit&section=2 "Edit section: Notation"
[36]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[37]: https://en.wikipedia.org/wiki/A "A"
[38]: https://en.wikipedia.org/wiki/Sans-serif "Sans-serif"
[39]: https://en.wikipedia.org/wiki/Gerhard_Gentzen "Gerhard Gentzen"
[40]: https://en.wikipedia.org/wiki/Giuseppe_Peano "Giuseppe Peano"
[41]: https://en.wikipedia.org/wiki/Existential_quantification "Existential quantification"
[42]: https://en.wikipedia.org/wiki/Bertrand_Russell "Bertrand Russell"
[43]: https://en.wikipedia.org/wiki/Universal_quantification#cite_note-2
[44]: https://en.wikipedia.org/wiki/Set_(mathematics) "Set (mathematics)"
[45]: https://en.wikipedia.org/wiki/Quantifier_(logic)#Notation "Quantifier (logic)"
[46]: https://en.wikipedia.org/w/index.php?title=Universal_quantification&action=edit&section=3 "Edit section: Properties"
[47]: https://en.wikipedia.org/w/index.php?title=Universal_quantification&action=edit&section=4 "Edit section: Negation"
[48]: https://en.wikipedia.org/wiki/Existential_quantifier "Existential quantifier"
[49]: https://en.wikipedia.org/wiki/Negation "Negation"
[50]: https://en.wikipedia.org/wiki/Propositional_function "Propositional function"
[51]: https://en.wikipedia.org/wiki/Set_(mathematics) "Set (mathematics)"
[52]: https://en.wikipedia.org/w/index.php?title=Universal_quantification&action=edit&section=5 "Edit section: Other connectives"
[53]: https://en.wikipedia.org/wiki/Logical_connective "Logical connective"
[54]: https://en.wikipedia.org/wiki/Logical_conjunction "Logical conjunction"
[55]: https://en.wikipedia.org/wiki/Logical_disjunction "Logical disjunction"
[56]: https://en.wikipedia.org/wiki/Material_conditional "Material conditional"
[57]: https://en.wikipedia.org/wiki/Converse_nonimplication "Converse nonimplication"
[58]: https://en.wikipedia.org/wiki/Sheffer_stroke "Sheffer stroke"
[59]: https://en.wikipedia.org/wiki/Logical_NOR "Logical NOR"
[60]: https://en.wikipedia.org/wiki/Material_nonimplication "Material nonimplication"
[61]: https://en.wikipedia.org/wiki/Converse_implication "Converse implication"
[62]: https://en.wikipedia.org/w/index.php?title=Universal_quantification&action=edit&section=6 "Edit section: Rules of inference"
[63]: https://en.wikipedia.org/wiki/Rule_of_inference "Rule of inference"
[64]: https://en.wikipedia.org/wiki/Universal_instantiation "Universal instantiation"
[65]: https://en.wikipedia.org/wiki/Universal_generalization "Universal generalization"
[66]: https://en.wikipedia.org/w/index.php?title=Universal_quantification&action=edit&section=7 "Edit section: The empty set"
[67]: https://en.wikipedia.org/wiki/Vacuous_truth "Vacuous truth"
[68]: https://en.wikipedia.org/w/index.php?title=Universal_quantification&action=edit&section=8 "Edit section: Universal closure"
[69]: https://en.wikipedia.org/wiki/Free_variable "Free variable"
[70]: https://en.wikipedia.org/w/index.php?title=Universal_quantification&action=edit&section=9 "Edit section: As adjoint"
[71]: https://en.wikipedia.org/wiki/Category_theory "Category theory"
[72]: https://en.wikipedia.org/wiki/Elementary_topos "Elementary topos"
[73]: https://en.wikipedia.org/wiki/Right_adjoint "Right adjoint"
[74]: https://en.wikipedia.org/wiki/Functor "Functor"
[75]: https://en.wikipedia.org/wiki/Power_set "Power set"
[76]: https://en.wikipedia.org/wiki/Inverse_image "Inverse image"
[77]: https://en.wikipedia.org/wiki/Existential_quantifier "Existential quantifier"
[78]: https://en.wikipedia.org/wiki/Left_adjoint "Left adjoint"
[79]: https://en.wikipedia.org/wiki/Universal_quantification#cite_note-3
[80]: https://en.wikipedia.org/wiki/Powerset "Powerset"
[81]: https://en.wikipedia.org/wiki/Inverse_image "Inverse image"
[82]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[83]: https://en.wikipedia.org/wiki/Predicate_(mathematical_logic) "Predicate (mathematical logic)"
[84]: https://en.wikipedia.org/wiki/Presheaf_category "Presheaf category"
[85]: https://en.wikipedia.org/w/index.php?title=Universal_quantification&action=edit&section=10 "Edit section: See also"
[86]: https://en.wikipedia.org/wiki/Existential_quantification "Existential quantification"
[87]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[88]: https://en.wikipedia.org/wiki/List_of_logic_symbols "List of logic symbols"
[89]: https://en.wikipedia.org/w/index.php?title=Universal_quantification&action=edit&section=11 "Edit section: Notes"
[90]: https://en.wikipedia.org/wiki/Universal_quantification#cite_ref-1
[91]: https://en.wikipedia.org/wiki/Quantification_(logic) "Quantification (logic)"
[92]: https://en.wikipedia.org/w/index.php?title=Universal_quantification&action=edit&section=12 "Edit section: References"
[93]: https://en.wikipedia.org/wiki/A_K_Peters "A K Peters"
[94]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[95]: https://en.wikipedia.org/wiki/Special:BookSources/1-56881-262-0 "Special:BookSources/1-56881-262-0"
[96]: https://en.wikipedia.org/wiki/James_Franklin_(philosopher) "James Franklin (philosopher)"
[97]: http://www.maths.unsw.edu.au/~jim/proofs.html
[98]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[99]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-646-54509-7 "Special:BookSources/978-0-646-54509-7"
[100]: https://en.wikipedia.org/wiki/Category:CS1_maint:_multiple_names:_authors_list "Category:CS1 maint: multiple names: authors list"
[101]: https://en.wikipedia.org/w/index.php?title=Universal_quantification&action=edit&section=13 "Edit section: External links"
[102]: https://en.wikipedia.org/wiki/File:Wiktionary-logo-en-v2.svg
[103]: https://en.wiktionary.org/wiki/every "wiktionary:every"

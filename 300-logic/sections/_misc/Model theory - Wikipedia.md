---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Model_theory
page-title:       Model theory - Wikipedia
article-title:    Model theory - Wikipedia
---
# Model theory - Wikipedia

This article is about the mathematical discipline. For the informal notion in other parts of mathematics and science, see Mathematical model.
This article is about the mathematical discipline. For the informal notion in other parts of mathematics and science, see [Mathematical model][1].

In [mathematical logic][2], __model theory__ is the study of the relationship between [formal theories][3] (a collection of [sentences][4] in a [formal language][5] expressing statements about a [mathematical structure][6]), and their models (those structures in which the statements of the theory hold).[\[1\]][7] The aspects investigated include the number and size of models of a theory, the relationship of different models to each other, and their interaction with the formal language itself. In particular, model theorists also investigate the sets that can be [defined][8] in a model of a theory, and the relationship of such definable sets to each other. As a separate discipline, model theory goes back to [Alfred Tarski][9], who first used the term "Theory of Models" in publication in 1954.[\[2\]][10] Since the 1970s, the subject has been shaped decisively by [Saharon Shelah][11]'s [stability theory][12].

Compared to other areas of mathematical logic such as [proof theory][13], model theory is often less concerned with formal rigour and closer in spirit to classical mathematics. This has prompted the comment that *"if [proof theory][14] is about the sacred, then model theory is about the profane"*.[\[3\]][15] The applications of model theory to [algebraic][16] and [diophantine geometry][17] reflect this proximity to classical mathematics, as they often involve an integration of algebraic and model-theoretic results and techniques.

The most prominent scholarly organization in the field of model theory is the [Association for Symbolic Logic][18].

## Varied emphasis\[[edit][19]\]

The relative emphasis placed on the class of models of a theory as opposed to the class of definable sets within a model fluctuated in the history of the subject, and the two directions are summarised by the pithy characterisations from 1973 and 1997 respectively:

__model theory__ = [universal algebra][20] + [logic][21][\[4\]][22]

where universal algebra stands for mathematical structures and logic for logical theories; and

__model theory__ = [algebraic geometry][23] − [fields][24].

where logical formulas are to definable sets what equations are to varieties over a field.[\[5\]][25]

Nonetheless, the interplay of classes of models and the sets definable in them has been crucial to the development of model theory throughout its history. For instance, while stability was originally introduced to classify theories by their numbers of models in a given cardinality, stability theory proved crucial to understanding the geometry of definable sets.

## Branches\[[edit][26]\]

This page focuses on [finitary][27] [first order][28] model theory of infinite structures. [Finite model theory][29], which concentrates on finite structures, diverges significantly from the study of infinite structures in both the problems studied and the techniques used. Model theory in [higher-order logics][30] or [infinitary logics][31] is hampered by the fact that [completeness][32] and [compactness][33] do not in general hold for these logics. However, a great deal of study has also been done in such logics.

Informally, model theory can be divided into classical model theory, model theory applied to groups and fields, and geometric model theory. A missing subdivision is [computable model theory][34], but this can arguably be viewed as an independent subfield of logic.

Examples of early theorems from classical model theory include [Gödel's completeness theorem][35], the upward and downward [Löwenheim–Skolem theorems][36], [Vaught][37]'s two-cardinal theorem, [Scott][38]'s isomorphism theorem, the [omitting types theorem][39], and the [Ryll-Nardzewski theorem][40]. Examples of early results from model theory applied to fields are [Tarski][41]'s [elimination of quantifiers][42] for [real closed fields][43], [Ax][44]'s theorem on [pseudo-finite fields][45], and [Robinson][46]'s development of [non-standard analysis][47]. An important step in the evolution of classical model theory occurred with the birth of [stability theory][48] (through [Morley's theorem][49] on uncountably categorical theories and [Shelah][50]'s classification program), which developed a calculus of independence and rank based on syntactical conditions satisfied by theories.

During the last several decades applied model theory has repeatedly merged with the more pure stability theory. The result of this synthesis is called geometric model theory in this article (which is taken to include o-minimality, for example, as well as classical geometric stability theory). An example of a proof from geometric model theory is [Hrushovski][51]'s proof of the [Mordell–Lang conjecture][52] for function fields. The ambition of geometric model theory is to provide a *geography of mathematics* by embarking on a detailed study of definable sets in various mathematical structures, aided by the substantial tools developed in the study of pure model theory.

## Fundamental notions of first-order model theory\[[edit][53]\]

### First-order logic\[[edit][54]\]

A first-order *formula* is built out of [atomic formulas][55] such as *R*(*f*(*x*,*y*),*z*) or *y* = *x* + 1 by means of the [Boolean connectives][56] ![\neg ,\land ,\lor ,\rightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/07de6c13413a3072130860c0684cc31943ece076) and prefixing of quantifiers ![\forall v](https://wikimedia.org/api/rest_v1/media/math/render/svg/4bad58755186b434fa597197db79e7146b46e160) or ![\exists v](https://wikimedia.org/api/rest_v1/media/math/render/svg/b3efa4e863b2ee0335c1afeacc0f7e9d51ea051a). A sentence is a formula in which each occurrence of a variable is in the scope of a corresponding quantifier. Examples for formulas are φ (or φ(x) to mark the fact that at most x is an unbound variable in φ) and ψ defined as follows:

![{\varphi \;=\;\forall u\forall v(\exists w(x\times w=u\times v)\rightarrow (\exists w(x\times w=u)\lor \exists w(x\times w=v)))\land x\neq 0\land x\neq 1,}](https://wikimedia.org/api/rest_v1/media/math/render/svg/660a7c8c546c045e5a55a5f72ff0bcbf78772749)

![\psi \;=\;\forall u\forall v((u\times v=x)\rightarrow (u=x)\lor (v=x))\land x\neq 0\land x\neq 1.](https://wikimedia.org/api/rest_v1/media/math/render/svg/fc9665e82b434d6e12ade670337c9531d1648572)

(Note that the equality symbol has a double meaning here.) It is intuitively clear how to translate such formulas into mathematical meaning. In the σsmr\-structure ![{\mathcal {N}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b7551c7bed2cd2ee83e10536d157c94a5f8f72fd) of the natural numbers, for example, an element *n* *satisfies* the formula φ if and only if *n* is a prime number. The formula ψ similarly defines irreducibility. Tarski gave a rigorous definition, sometimes called ["Tarski's definition of truth"][57], for the satisfaction relation ![\models ](https://wikimedia.org/api/rest_v1/media/math/render/svg/89dbad9a523091069a540122aeb15e41d1fe18b8), so that one easily proves:

![{\mathcal {N}}\models \varphi (n)\iff n](https://wikimedia.org/api/rest_v1/media/math/render/svg/9d5353cab63e33b3a1a47655a15429277d24099c) is a prime number.

![{\mathcal {N}}\models \psi (n)\iff n](https://wikimedia.org/api/rest_v1/media/math/render/svg/17040b9d60d91995755e8cf7b27bdd8ad48ba820) is irreducible.

A set *T* of sentences is called a (first-order) [theory][58]. A theory is *satisfiable* if it has a *model* ![{\mathcal {M}}\models T](https://wikimedia.org/api/rest_v1/media/math/render/svg/0af15ded1ca006201dec27f73950cfe8d1ba4237), i.e. a structure (of the appropriate signature) which satisfies all the sentences in the set *T*. A complete theory is a theory that contains every [sentence][59] or its negation. The complete theory of all sentences satisfied by a structure is also called the *theory of that structure*.

Gödel's completeness theorem (not to be confused with his [incompleteness theorems][60]) says that a theory has a model if and only if it is [consistent][61], i.e. no contradiction is proved by the theory. Therefore, model theorists often use "consistent" as a synonym for "satisfiable".

### Basic model-theoretic concepts\[[edit][62]\]

A [signature][63] or [language][64] is a set of [non-logical symbols][65] such that each symbol is either a function symbol or a relation symbol and has a specified [arity][66]. A [structure][67] is a set ![ M](https://wikimedia.org/api/rest_v1/media/math/render/svg/f82cade9898ced02fdd08712e5f0c0151758a0dd) together with interpretations of each of the symbols of the signature as relations and functions on ![M](https://wikimedia.org/api/rest_v1/media/math/render/svg/f82cade9898ced02fdd08712e5f0c0151758a0dd) (not to be confused with the [interpretation][68] of one structure in another). A common signature for ordered rings is ![{\displaystyle \sigma _{or}=\{0,1,+,\times ,-,<\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ea7abeb62edd47e91ac210eaec7251e649f8c37e), where ![{\displaystyle 0}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2aae8864a3c1fec9585261791a809ddec1489950) and ![1](https://wikimedia.org/api/rest_v1/media/math/render/svg/92d98b82a3778f043108d4e20960a9193df57cbf) are 0-ary function symbols (also known as constant symbols), ![+](https://wikimedia.org/api/rest_v1/media/math/render/svg/fe6ef363cd19902d1a7a71fb1c8b21e8ede52406) and ![\times ](https://wikimedia.org/api/rest_v1/media/math/render/svg/0ffafff1ad26cbe49045f19a67ce532116a32703) are binary function symbols, ![-](https://wikimedia.org/api/rest_v1/media/math/render/svg/04bd52ce670743d3b61bec928a7ec9f47309eb36) is a unary function symbol, and ![<](https://wikimedia.org/api/rest_v1/media/math/render/svg/33737c89a17785dacc8638b4d66db3d5c8670de1) is a binary relation symbol. Then, when these symbols are interpreted to correspond with their usual meaning on ![\mathbb {Q} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/c5909f0b54e4718fa24d5fd34d54189d24a66e9a) (so that e.g. ![+](https://wikimedia.org/api/rest_v1/media/math/render/svg/fe6ef363cd19902d1a7a71fb1c8b21e8ede52406) is a function from ![{\displaystyle \mathbb {Q} ^{2}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b34ada693d0caa6a18f306839c57b2d78569312f) to ![\mathbb {Q} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/c5909f0b54e4718fa24d5fd34d54189d24a66e9a) and ![<](https://wikimedia.org/api/rest_v1/media/math/render/svg/33737c89a17785dacc8638b4d66db3d5c8670de1) is a subset of ![{\displaystyle \mathbb {Q} ^{2}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b34ada693d0caa6a18f306839c57b2d78569312f)), one obtains a structure ![{\displaystyle (\mathbb {Q} ,\sigma _{or})}](https://wikimedia.org/api/rest_v1/media/math/render/svg/fe0a2f9d950a85761cbb3a8a3117f659f5900c70). A structure ![{\displaystyle {\mathcal {N}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b7551c7bed2cd2ee83e10536d157c94a5f8f72fd) is said to model a set of first-order sentences ![ T](https://wikimedia.org/api/rest_v1/media/math/render/svg/ec7200acd984a1d3a3d7dc455e262fbe54f7f6e0) in the given language if each sentence in ![T](https://wikimedia.org/api/rest_v1/media/math/render/svg/ec7200acd984a1d3a3d7dc455e262fbe54f7f6e0) is true in ![{\displaystyle {\mathcal {N}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b7551c7bed2cd2ee83e10536d157c94a5f8f72fd) with respect to the interpretation of the signature previously specified for ![{\displaystyle {\mathcal {N}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b7551c7bed2cd2ee83e10536d157c94a5f8f72fd).

A [substructure][69] ![{\mathcal {A}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/280ae03440942ab348c2ca9b8db6b56ffa9618f8) of a σ-structure ![{\mathcal {B}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e5622de88a69f68340f8dcb43d0b8bd443ba9e13) is a subset of its domain, closed under all functions in its signature σ, which is regarded as a σ-structure by restricting all functions and relations in σ to the subset. This generalises the analogous concepts from algebra; For instance, a subgroup is a substructure in the signature with multiplication and inverse.

A substructure is said to be *elementary* if for any first-order formula φ and any elements *a*1, ..., *a**n* of ![{\mathcal {A}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/280ae03440942ab348c2ca9b8db6b56ffa9618f8),

![{\displaystyle {\mathcal {A}}\models \varphi (a_{1},...,a_{n})}](https://wikimedia.org/api/rest_v1/media/math/render/svg/dd16f9058a74dd8d3280482d792e30bba45da7eb) if and only if ![{\displaystyle {\mathcal {B}}\models \varphi (a_{1},...,a_{n})}](https://wikimedia.org/api/rest_v1/media/math/render/svg/6c1e1ab1eda78379e917115e15703ee8de597da6).

In particular, if *φ* is a sentence and ![{\mathcal {A}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/280ae03440942ab348c2ca9b8db6b56ffa9618f8) an elementary substructure of ![{\mathcal {B}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e5622de88a69f68340f8dcb43d0b8bd443ba9e13), then ![{\displaystyle {\mathcal {A}}\models \varphi }](https://wikimedia.org/api/rest_v1/media/math/render/svg/c533f8e43b985976ecc92f8624ce9fd49aaa5be3) if and only if ![{\displaystyle {\mathcal {B}}\models \varphi }](https://wikimedia.org/api/rest_v1/media/math/render/svg/f18e74150f1c29366a1eddf015347fde3ccc2ee2). Thus, an elementary substructure is a model of a theory exactly when the superstructure is a model. Therefore, while the field of algebraic numbers ![{\overline {\mathbb {Q} }}](https://wikimedia.org/api/rest_v1/media/math/render/svg/377a8814b1ca454c488e409813988dd5dd906148) is an elementary substructure of the field of complex numbers ![\mathbb {C} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/f9add4085095b9b6d28d045fd9c92c2c09f549a7), the rational field ![\mathbb {Q} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/c5909f0b54e4718fa24d5fd34d54189d24a66e9a) is not, as we can express "There is a square root of 2" as a first-order sentence satisfied by ![\mathbb {C} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/f9add4085095b9b6d28d045fd9c92c2c09f549a7) but not by ![\mathbb {Q} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/c5909f0b54e4718fa24d5fd34d54189d24a66e9a).

An [embedding][70] of a σ-structure ![{\mathcal {A}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/280ae03440942ab348c2ca9b8db6b56ffa9618f8) into another σ-structure ![{\mathcal {B}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e5622de88a69f68340f8dcb43d0b8bd443ba9e13) is a map *f*: *A* → *B* between the domains which can be written as an isomorphism of ![{\mathcal {A}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/280ae03440942ab348c2ca9b8db6b56ffa9618f8) with a substructure of ![{\mathcal {B}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e5622de88a69f68340f8dcb43d0b8bd443ba9e13). If it can be written as an isomorphism with an elementary substructure, it is called an elementary embedding. Every embedding is an [injective][71] homomorphism, but the converse holds only if the signature contains no relation symbols, such as in groups or fields.

A field or a vector space can be regarded as a (commutative) group by simply ignoring some of its structure. The corresponding notion in model theory is that of a *reduct* of a structure to a subset of the original signature. The opposite relation is called an *expansion* - e.g. the (additive) group of the [rational numbers][72], regarded as a structure in the signature {+,0} can be expanded to a field with the signature {×,+,1,0} or to an ordered group with the signature {+,0,<}.

Similarly, if σ' is a signature that extends another signature σ, then a complete σ'-theory can be restricted to σ by intersecting the set of its sentences with the set of σ-formulas. Conversely, a complete σ-theory can be regarded as a σ'-theory, and one can extend it (in more than one way) to a complete σ'-theory. The terms reduct and expansion are sometimes applied to this relation as well.

### Compactness and the Löwenheim-Skolem theorem\[[edit][73]\]

The [compactness theorem][74] states that a set of sentences S is satisfiable if every finite subset of S is satisfiable. The analogous statement with *consistent* instead of *satisfiable* is trivial, since every proof can have only a finite number of antecedents used in the proof. The completeness theorem allows us to transfer this to satsifiability. However, there are also several direct (semantic) proofs of the compactness theorem. As a corollary (i.e., its contrapositive), the [compactness theorem][75] says that every unsatisfiable first-order theory has a finite unsatisfiable subset. This theorem is of central importance in model theory, where the words "by compactness" are commonplace.

Another cornerstone of first-order model theory is the Löwenheim-Skolem theorem. According to the Löwenheim-Skolem Theorem, every infinite structure in a countable signature has a countable elementary substructure. Conversely, for any infinite cardinal κ every infinite structure in a countable signature that is of cardinality less than κ can be elementarily embedded in another structure of cardinality κ (There is a straightforward generalisation to uncountable signatures). In particular, the Löwenheim-Skolem Theorem implies that any theory in a countable signature with infinite models has a countable model as well as arbitrarily large models.

In a certain sense made precise by [Lindström's theorem][76], first-order logic is the most expressive logic for which both the Löwenheim–Skolem theorem and the compactness theorem hold.

## Definability\[[edit][77]\]

### Definable sets\[[edit][78]\]

In model theory, [definable sets][79] are important objects of study. For instance, in ![\mathbb N](https://wikimedia.org/api/rest_v1/media/math/render/svg/fdf9a96b565ea202d0f4322e9195613fb26a9bed) the formula

![{\displaystyle \forall u\forall v(\exists w(x\times w=u\times v)\rightarrow (\exists w(x\times w=u)\lor \exists w(x\times w=v)))\land x\neq 0\land x\neq 1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/388b2a51511a33a67f381f8b3878fabc18ee4925)

defines the subset of prime numbers, while the formula

![{\displaystyle \exists y(2\times y=x)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/36753cad474b5962c7fa4086c506122cebbc1ea3)

defines the subset of even numbers. In a similar way, formulas with *n* free variables define subsets of ![{\displaystyle {\mathcal {M}}^{n}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/408648944ae497471688835f7f2eacc8f259cc1d). For example, in a field, the formula

![{\displaystyle y=x\times x}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b40c08e2be2dfad78913de1dfa29625ce76befc8)

defines the curve of all ![(x,y)](https://wikimedia.org/api/rest_v1/media/math/render/svg/41cf50e4a314ca8e2c30964baa8d26e5be7a9386) such that ![y=x^{2}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ad1108c4c9ee8ac7de90b77f9bd27415b13b6bf1).

Both of the definitions mentioned here are *parameter-free*, that is, the defining formulas don't mention any fixed domain elements. However, one can also consider definitions *with parameters from the model*. For instance, in ![\mathbb {R} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/786849c765da7a84dbc3cce43e96aad58a5868dc), the formula

![{\displaystyle y=x\times x+\pi }](https://wikimedia.org/api/rest_v1/media/math/render/svg/90fc56f6fb2d79db0b7c4083bbe9434462047db9)

uses the parameter ![\pi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/9be4ba0bb8df3af72e90a0535fabcc17431e540a) from ![\mathbb {R} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/786849c765da7a84dbc3cce43e96aad58a5868dc) to define a curve.

### Eliminating quantifiers\[[edit][80]\]

In general, definable sets without quantifiers are easy to describe, while definable sets involving possibly nested quantifiers can be much more complicated.

This makes [quantifier elimination][81] a crucial tool for analysing definable sets: A theory *T* has quantifier elimination if every first-order formula φ(*x*1, ..., *x**n*) over its signature is equivalent modulo *T* to a first-order formula ψ(*x*1, ..., *x**n*) without quantifiers, i.e. ![\forall x_{1}\dots \forall x_{n}(\phi (x_{1},\dots ,x_{n})\leftrightarrow \psi (x_{1},\dots ,x_{n}))](https://wikimedia.org/api/rest_v1/media/math/render/svg/54bfd1095840e73f6a2d66f519f1c121643a7a01) holds in all models of *T*. If the theory of a structure has quantifier elimination, every set definable in a structure is definable by a quantifier-free formula over the same parameters as the original definition. For example, the theory of algebraically closed fields in the signature σring = (×,+,−,0,1) has quantifier elimination. This means that in an algebraically closed field, every formula is equivalent to a Boolean combination of equations between polynomials.

If a theory does not have quantifier elimination, one can add additional symbols to its signature so that it does. Early model theory spent much effort on proving axiomatizability and quantifier elimination results for specific theories, especially in algebra. But often instead of quantifier elimination a weaker property suffices:

A theory *T* is called [model-complete][82] if every substructure of a model of *T* which is itself a model of *T* is an elementary substructure. There is a useful criterion for testing whether a substructure is an elementary substructure, called the [Tarski–Vaught test][83]. It follows from this criterion that a theory *T* is model-complete if and only if every first-order formula φ(*x*1, ..., *x**n*) over its signature is equivalent modulo *T* to an existential first-order formula, i.e. a formula of the following form:

![\exists v_{1}\dots \exists v_{m}\psi (x_{1},\dots ,x_{n},v_{1},\dots ,v_{m})](https://wikimedia.org/api/rest_v1/media/math/render/svg/54621e5adcbdc26b2b41393eae6dbd46a770e042),

where ψ is quantifier free. A theory that is not model-complete may or may not have a *model completion*, which is a related model-complete theory that is not, in general, an extension of the original theory. A more general notion is that of a *model companion*.

### Minimality\[[edit][84]\]

In every structure, every finite subset ![{\displaystyle \{a_{1},\dots ,a_{n}\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b03a4717452ffacfd3b9c4d10f5c557ee2da592d) is definable with parameters: Simply use the formula

![{\displaystyle x=a_{1}\vee \dots \vee a_{n}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/26d81138debb61156721b97d1e51921a3b018308).

Since we can negate this formula, every cofinite subset (which includes all but finitely many elements of the domain) is also always definable.

This leads to the concept of a *minimal structure*. A structure ![{\mathcal {M}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2cc2abebd45ec020509a0ec548b67c9a2cb7cecd) is called minimal if every subset ![{\displaystyle A\subseteq {\mathcal {M}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/06194c9ee01e83e699e43c72cecc07f6f7910953) definable with parameters from ![{\mathcal {M}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2cc2abebd45ec020509a0ec548b67c9a2cb7cecd) is either finite or cofinite. The corresponding concept at the level of theories is called *strong minimality*: A theory *T* is called [strongly minimal][85] if every model of *T* is minimal. A structure is called *strongly minimal* if the theory of that structure is strongly minimal. Equivalently, a structure is strongly minimal if every elementary extension is minimal. Since the theory of algebraically closed fields has quantifier elimination, every definable subset of an algebraically closed field is definable by a quantifier-free formula in one variable. Quantifier-free formulas in one variable express Boolean combinations of polynomial equations in one variable, and since a nontrivial polynomial equation in one variable has only a finite number of solutions, the theory of algebraically closed fields is strongly minimal.

On the other hand, the field ![\mathbb {R} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/786849c765da7a84dbc3cce43e96aad58a5868dc) of real numbers is not minimal: Consider, for instance, the definable set

![{\displaystyle \varphi (x)\;=\;\exists y(y\times y=x)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/63121ec9ef984d56682f865ded4777e513eafe32).

This defines the subset of non-negative real numbers, which is neither finite nor cofinite. One can in fact use ![\varphi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/33ee699558d09cf9d653f6351f9fda0b2f4aaa3e) to define arbitrary intervals on the real number line. It turns out that these suffice to represent every definable subset of ![\mathbb {R} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/786849c765da7a84dbc3cce43e96aad58a5868dc). This generalisation of minimality has been very useful in the model theory of ordered structures. A [densely totally ordered][86] structure ![{\mathcal {M}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2cc2abebd45ec020509a0ec548b67c9a2cb7cecd) in a signature including a symbol for the order relation is called [o-minimal][87] if every subset ![{\displaystyle A\subseteq {\mathcal {M}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/06194c9ee01e83e699e43c72cecc07f6f7910953) definable with parameters from ![{\mathcal {M}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2cc2abebd45ec020509a0ec548b67c9a2cb7cecd) is a finite union of points and intervals.

### Definable and interpretable structures\[[edit][88]\]

Particularly important are those definable sets that are also substructures, i. e. contain all constants and are closed under function application. For instance, one can study the definable subgroups of a certain group. However, there is no need to limit oneself to substructures in the same signature. Since formulas with *n* free variables define subsets of ![{\displaystyle {\mathcal {M}}^{n}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/408648944ae497471688835f7f2eacc8f259cc1d), *n*\-ary relations can also be definable. Functions are definable if the function graph is a definable relation, and constants ![{\displaystyle a\in {\mathcal {M}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/80668254f34ae3692537bf8ddeedb0edfa0660b0) are definable if there is a formula ![\varphi (x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/4c4046f1f2de7df04bde418ba2bc4d3898ac2385) such that *a* is the only element of ![{\mathcal {M}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2cc2abebd45ec020509a0ec548b67c9a2cb7cecd) such that ![{\displaystyle \varphi (a)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/fe9cf649dc87bdaa7c46020d2f6e0223596d31df) is true. In this way, one can study definable groups and fields in general structures, for instance, which has been important in geometric stability theory.

One can even go one step further, and move beyond immediate substructures. Given a mathematical structure, there are very often associated structures which can be constructed as a quotient of part of the original structure via an equivalence relation. An important example is a quotient group of a group. One might say that to understand the full structure one must understand these quotients. When the equivalence relation is definable, we can give the previous sentence a precise meaning. We say that these structures are *interpretable*. A key fact is that one can translate sentences from the language of the interpreted structures to the language of the original structure. Thus one can show that if a structure ![{\mathcal {M}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2cc2abebd45ec020509a0ec548b67c9a2cb7cecd) interprets another whose theory is undecidable, then ![{\mathcal {M}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2cc2abebd45ec020509a0ec548b67c9a2cb7cecd) itself is undecidable.

## Types\[[edit][89]\]

### Basic notions\[[edit][90]\]

For a sequence of elements ![a_{1},\dots ,a_{n}](https://wikimedia.org/api/rest_v1/media/math/render/svg/852381be25b656d697c7a4a9634d3dc4c182d833) of a structure ![{\mathcal {M}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2cc2abebd45ec020509a0ec548b67c9a2cb7cecd) and a subset *A* of ![{\mathcal {M}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2cc2abebd45ec020509a0ec548b67c9a2cb7cecd), one can consider the set of all first-order formulas ![{\displaystyle \varphi (x_{1},\dots ,x_{n})}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e4110f1cb84cf29c6c3e3be18146d1d2c63aea84) with parameters in *A* that are satisfied by ![a_{1},\dots ,a_{n}](https://wikimedia.org/api/rest_v1/media/math/render/svg/852381be25b656d697c7a4a9634d3dc4c182d833). This is called the *complete (n-)type realised by* ![a_{1},\dots ,a_{n}](https://wikimedia.org/api/rest_v1/media/math/render/svg/852381be25b656d697c7a4a9634d3dc4c182d833) *over A*. If there is an [automorphism][91] of ![{\mathcal {M}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2cc2abebd45ec020509a0ec548b67c9a2cb7cecd) that is constant on *A* and sends ![a_{1},\dots ,a_{n}](https://wikimedia.org/api/rest_v1/media/math/render/svg/852381be25b656d697c7a4a9634d3dc4c182d833) to ![b_{1},\dots ,b_{n}](https://wikimedia.org/api/rest_v1/media/math/render/svg/587581db539b299b2771f8ee28d4a9a248e11c88) respectively, then ![a_{1},\dots ,a_{n}](https://wikimedia.org/api/rest_v1/media/math/render/svg/852381be25b656d697c7a4a9634d3dc4c182d833) and ![b_{1},\dots ,b_{n}](https://wikimedia.org/api/rest_v1/media/math/render/svg/587581db539b299b2771f8ee28d4a9a248e11c88) realise the same complete type over *A*.

The real number line ![\mathbb {R} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/786849c765da7a84dbc3cce43e96aad58a5868dc), viewed as a structure with only the order relation {<}, will serve as a running example in this section. Every element ![a\in {\mathbb  {R}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b044c60e01b54c7116ee355431f37ed846badc53) satisfies the same 1-type over the empty set. This is clear since any two real numbers *a* and *b* are connected by the order automorphism that shifts all numbers by *b-a*. The complete 2-type over the empty set realised by a pair of numbers ![a_{1},a_{2}](https://wikimedia.org/api/rest_v1/media/math/render/svg/f8b5d82d5470d50559b42305a85875056db80099) depends on their order: either ![{\displaystyle a_{1}<a_{2}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/444d1d8e0860f5e383541a869aa4dbfc131d17ad), ![{\displaystyle a_{1}=a_{2}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/173771d8ea85f56928ca7a9f41d50790589eb344) or ![{\displaystyle a_{2}<a_{1}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/eb31c0d22605863ba844aae6bef0d6412ce80234). Over the subset ![{\displaystyle \mathbb {Z} \subseteq \mathbb {R} }](https://wikimedia.org/api/rest_v1/media/math/render/svg/a61c48935dc99f72777c4866d91d687ad16b7741) of integers, the 1-type of a non-integer real number *a* depends on its value rounded down to the nearest integer.

More generally, whenever ![{\mathcal {M}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2cc2abebd45ec020509a0ec548b67c9a2cb7cecd) is a structure and *A* a subset of ![{\mathcal {M}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2cc2abebd45ec020509a0ec548b67c9a2cb7cecd), a (partial) *n-type over A* is a set of formulas *p* with at most *n* free variables that are realised in an elementary extension ![{\mathcal {N}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b7551c7bed2cd2ee83e10536d157c94a5f8f72fd) of ![{\mathcal {M}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2cc2abebd45ec020509a0ec548b67c9a2cb7cecd). If *p* contains every such formula or its negation, then *p* is *complete*. The set of complete *n*\-types over *A* is often written as ![{\displaystyle S_{n}^{\mathcal {M}}(A)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/de533c829d32e1fa5cc14f2b3b59bd6965cefd2b). If *A* is the empty set, then the type space only depends on the theory *T* of ![{\mathcal {M}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2cc2abebd45ec020509a0ec548b67c9a2cb7cecd). The notation ![{\displaystyle S_{n}(T)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ad18dd7f5fd3dd309e31dd67a5285a06db112198) is commonly used for the set of types over the empty set consistent with *T*. If there is a single formula ![\varphi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/33ee699558d09cf9d653f6351f9fda0b2f4aaa3e) such that the theory of ![{\mathcal {M}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2cc2abebd45ec020509a0ec548b67c9a2cb7cecd) implies ![{\displaystyle \varphi \rightarrow \psi }](https://wikimedia.org/api/rest_v1/media/math/render/svg/724678bd1e82d05bae3d261b9160d514add0de3b) for every formula ![\psi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/45e5789e5d9c8f7c79744f43ecaaf8ba42a8553a) in *p*, then *p* is called *isolated*.

Since the real numbers ![\mathbb {R} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/786849c765da7a84dbc3cce43e96aad58a5868dc) are [Archimedean][92], there is no real number larger than every integer. However, a compactness argument shows that there is an elementary extension of the real number line in which there is an element larger than any integer. Therefore, the set of formulas ![{\displaystyle \{n<x|n\in \mathbb {Z} \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d67b2a0ac9809469ea848e7a4f059df42777e81d) is a 1-type over ![{\displaystyle \mathbb {Z} \subseteq \mathbb {R} }](https://wikimedia.org/api/rest_v1/media/math/render/svg/a61c48935dc99f72777c4866d91d687ad16b7741) that is not realised in the real number line ![\mathbb {R} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/786849c765da7a84dbc3cce43e96aad58a5868dc).

A subset of ![{\displaystyle {\mathcal {M}}^{n}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/408648944ae497471688835f7f2eacc8f259cc1d) that can be expressed as exactly those elements of ![{\displaystyle {\mathcal {M}}^{n}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/408648944ae497471688835f7f2eacc8f259cc1d) realising a certain type over *A* is called *type-definable* over *A*. For an algebraic example, suppose ![M](https://wikimedia.org/api/rest_v1/media/math/render/svg/f82cade9898ced02fdd08712e5f0c0151758a0dd) is an [algebraically closed field][93]. The theory has quantifier elimination . This allows us to show that a type is determined exactly by the polynomial equations it contains. Thus the set of complete ![n](https://wikimedia.org/api/rest_v1/media/math/render/svg/a601995d55609f2d9f5e233e36fbe9ea26011b3b)\-types over a subfield ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) corresponds to the set of [prime ideals][94] of the [polynomial ring][95] ![A[x_{1},\ldots ,x_{n}]](https://wikimedia.org/api/rest_v1/media/math/render/svg/9878551d3c43d5d887ee0230a5eb2ab1abe2bcfe), and the type-definable sets are exactly the affine varieties.

### Structures and types\[[edit][96]\]

While not every type is realised in every structure, every structure realises its isolated types. If the only types over the empty set that are realised in a structure are the isolated types, then the structure is called *atomic*.

On the other hand, no structure realises every type over every parameter set; if one takes all of ![{\mathcal {M}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2cc2abebd45ec020509a0ec548b67c9a2cb7cecd) as the parameter set, then every 1-type over ![{\mathcal {M}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2cc2abebd45ec020509a0ec548b67c9a2cb7cecd) realised in ![{\mathcal {M}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2cc2abebd45ec020509a0ec548b67c9a2cb7cecd) is isolated by a formula of the form *a = x* for an ![{\displaystyle a\in {\mathcal {M}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/80668254f34ae3692537bf8ddeedb0edfa0660b0). However, any proper elementary extension of ![{\mathcal {M}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2cc2abebd45ec020509a0ec548b67c9a2cb7cecd) contains an element that is *not* in ![{\mathcal {M}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2cc2abebd45ec020509a0ec548b67c9a2cb7cecd). Therefore a weaker notion has been introduced that captures the idea of a structure realising all types it could be expected to realise. A structure is called *saturated* if it realises every type over a parameter set ![{\displaystyle A\subset {\mathcal {M}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/335445cfcb317b4f5d411ccef12bd1dc642813d6) that is of smaller cardinality than ![{\mathcal {M}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2cc2abebd45ec020509a0ec548b67c9a2cb7cecd) itself.

While an automorphism that is constant on *A* will always preserve types over *A*, it is generally not true that any two sequences ![a_{1},\dots ,a_{n}](https://wikimedia.org/api/rest_v1/media/math/render/svg/852381be25b656d697c7a4a9634d3dc4c182d833) and ![b_{1},\dots ,b_{n}](https://wikimedia.org/api/rest_v1/media/math/render/svg/587581db539b299b2771f8ee28d4a9a248e11c88) that satisfy the same type over *A* can be mapped to each other by such an automorphism. A structure ![{\mathcal {M}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2cc2abebd45ec020509a0ec548b67c9a2cb7cecd) in which this converse does holds for all *A* of smaller cardinality than ![{\mathcal {M}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2cc2abebd45ec020509a0ec548b67c9a2cb7cecd) is called __homogeneous__.

The real number line is atomic in the language that contains only the order ![<](https://wikimedia.org/api/rest_v1/media/math/render/svg/33737c89a17785dacc8638b4d66db3d5c8670de1), since all *n*\-types over the empty set realised by ![a_{1},\dots ,a_{n}](https://wikimedia.org/api/rest_v1/media/math/render/svg/852381be25b656d697c7a4a9634d3dc4c182d833) in ![\mathbb {R} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/786849c765da7a84dbc3cce43e96aad58a5868dc) are isolated by the order relations between the ![a_{1},\dots ,a_{n}](https://wikimedia.org/api/rest_v1/media/math/render/svg/852381be25b656d697c7a4a9634d3dc4c182d833). It is not saturated, however, since it does not realise any 1-type over the countable set ![\mathbb {Z} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/449494a083e0a1fda2b61c62b2f09b6bee4633dc) that implies *x* to be larger than any integer. The rational number line ![\mathbb {Q} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/c5909f0b54e4718fa24d5fd34d54189d24a66e9a) is saturated, in contrast, since ![\mathbb {Q} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/c5909f0b54e4718fa24d5fd34d54189d24a66e9a) is itself countable and therefore only has to realise types over finite subsets to be saturated.

### Stone Spaces\[[edit][97]\]

The set of definable subsets of ![{\displaystyle {\mathcal {M}}^{n}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/408648944ae497471688835f7f2eacc8f259cc1d) over some parameters ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) is a [Boolean algebra][98]. By [Stone's representation theorem for Boolean algebras][99] there is a natural dual [topological space][100], which consists exactly of the complete ![n](https://wikimedia.org/api/rest_v1/media/math/render/svg/a601995d55609f2d9f5e233e36fbe9ea26011b3b)\-types over ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3). The topology [generated][101] by sets of the form ![{\displaystyle \{p|\varphi \in p\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/4c8c45d86de00b0ffaeb6dbc5caf4abf7fff52ea) for single formulas ![\varphi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/33ee699558d09cf9d653f6351f9fda0b2f4aaa3e). This is called the *Stone space of n-types over A*. This topology explains some of the terminology used in model theory: The compactness theorem says that the Stone Space is a compact topological space, and a type *p* is isolated if and only if *p* is an isolated point in the Stone topology.

While types in algebraically closed fields correspond to the spectrum of the polynomial ring, the topology on the type space is the [constructible topology][102]: a set of types is basic [open][103] iff it is of the form ![\{p:f(x)=0\in p\}](https://wikimedia.org/api/rest_v1/media/math/render/svg/01a1c225aed13b3f176f1e540895635b98c0808c) or of the form ![\{p:f(x)\neq 0\in p\}](https://wikimedia.org/api/rest_v1/media/math/render/svg/92b2cf0a7513855b3741487f1f87a0c64ea8283e). This is finer than the [Zariski topology][104].

## Categoricity\[[edit][105]\]

A theory was originally called *categorical* if it determines a structure up to isomorphism. It turns out that this definition is not useful, due to serious restrictions in the expressivity of first-order logic. The Löwenheim–Skolem theorem implies that if a theory *T* has an infinite model for some infinite [cardinal number][106], then it has a model of size κ for any sufficiently large [cardinal number][107] κ. Since two models of different sizes cannot possibly be isomorphic, only finite structures can be described by a categorical theory.

However, the weaker notion of κ-categoricity for a cardinal κ has become a key concept in model theory. A theory *T* is called *κ-categorical* if any two models of *T* that are of cardinality κ are isomorphic. It turns out that the question of κ-categoricity depends critically on whether κ is bigger than the cardinality of the language (i.e. ![\aleph _{0}](https://wikimedia.org/api/rest_v1/media/math/render/svg/721cd7f8c15a2e72ad162bdfa5baea8eef98aab1) + |σ|, where |σ| is the cardinality of the signature). For finite or countable signatures this means that there is a fundamental difference between ![\omega ](https://wikimedia.org/api/rest_v1/media/math/render/svg/48eff443f9de7a985bb94ca3bde20813ea737be8)\-cardinality and κ-cardinality for uncountable κ.

### ω-categoricity\[[edit][108]\]

[![\omega ](https://wikimedia.org/api/rest_v1/media/math/render/svg/48eff443f9de7a985bb94ca3bde20813ea737be8)\-categorical theories][109] can be characterised by properties of their type space:

For a complete first-order theory *T* in a finite or countable signature the following conditions are equivalent:

1.  *T* is ![\omega ](https://wikimedia.org/api/rest_v1/media/math/render/svg/48eff443f9de7a985bb94ca3bde20813ea737be8)\-categorical.
2.  Every type in *Sn*(*T*) is isolated.
3.  For every natural number *n*, *Sn*(*T*) is finite.
4.  For every natural number *n*, the number of formulas φ(*x*1, ..., *x*n) in *n* free variables, up to equivalence modulo *T*, is finite.

The theory of ![{\displaystyle (\mathbb {Q} ,<)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/43c487a052f5cefd2a85361e480e641af11aabb3), which is also the theory of ![{\displaystyle (\mathbb {R} ,<)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/630bf7c33e982061586b0ba2140ab83ed68db8d3), is ![\omega ](https://wikimedia.org/api/rest_v1/media/math/render/svg/48eff443f9de7a985bb94ca3bde20813ea737be8)\-categorical, as every *n*\-type ![{\displaystyle p(x_{1},\dots ,x_{n})}](https://wikimedia.org/api/rest_v1/media/math/render/svg/822f39061c45d72ce45558c86f5645e06f114176) over the empty set is isolated by the pairwise order relation between the ![x_{i}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e87000dd6142b81d041896a30fe58f0c3acb2158). This means that every countable [dense linear order][110] is order-isomorphic to the rational number line. On the other hand, the theories of ![\mathbb {Q} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/c5909f0b54e4718fa24d5fd34d54189d24a66e9a), ![\mathbb {R} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/786849c765da7a84dbc3cce43e96aad58a5868dc) and ![\mathbb {C} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/f9add4085095b9b6d28d045fd9c92c2c09f549a7) as fields are not ![\omega ](https://wikimedia.org/api/rest_v1/media/math/render/svg/48eff443f9de7a985bb94ca3bde20813ea737be8)\-categorical. This follows from the fact that in all those fields, any of the infinitely many natural numbers can be defined by a formula of the form ![{\displaystyle x=1+\dots +1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/35b79902322292ebaa98d12ef5bdf586d3f46fd4).

![\aleph _{0}](https://wikimedia.org/api/rest_v1/media/math/render/svg/721cd7f8c15a2e72ad162bdfa5baea8eef98aab1)\-categorical theories and their countable models also have strong ties with [oligomorphic groups][111]:

A complete first-order theory *T* in a finite or countable signature is ![\omega ](https://wikimedia.org/api/rest_v1/media/math/render/svg/48eff443f9de7a985bb94ca3bde20813ea737be8)\-categorical if and only if its automorphism group is oligomorphic.

The equivalent charcaterisations of this subsection, due independently to [Engeler][112], [Ryll-Nardzewski][113] and [Svenonius][114], are sometimes referred to as the Ryll-Nardzewski theorem.

In combinatorial signatures, a common source of ![\omega ](https://wikimedia.org/api/rest_v1/media/math/render/svg/48eff443f9de7a985bb94ca3bde20813ea737be8)\-categorical theories are [Fraïssé limits][115], which are obtained as the limit of amalgamating all possible configurations of a class of finite relational structures.

### Uncountable categoricity\[[edit][116]\]

[Michael Morley][117] showed in 1963 that there is only one notion of *uncountable categoricity* for theories in countable languages.[\[6\]][118]

[Morley's categoricity theorem][119]

If a first-order theory *T* in a finite or countable signature is κ-categorical for some uncountable cardinal κ, then *T* is κ-categorical for all uncountable cardinals κ.

Morley's proof revealed deep connections between uncountable categoricity and the internal structure of the models, which became the starting point of classification theory and stability theory. Uncountably categorical theories are from many points of view the most well-behaved theories. In particular, complete strongly minimal theories are uncountably categorical. This shows that the theory of algebraically closed fields of a given characteristic is uncountably categorical, with the transcendence degree of the field determining its isomorphism type.

A theory that is both ![\omega ](https://wikimedia.org/api/rest_v1/media/math/render/svg/48eff443f9de7a985bb94ca3bde20813ea737be8)\-categorical and uncountably categorical is called *totally categorical*.

## Selected applications\[[edit][120]\]

Among the early successes of model theory are Tarski's proofs of the [decidability][121] of various algebraically interesting classes, such as the [real closed fields][122], [Boolean algebras][123] and [algebraically closed fields][124] of a given [characteristic][125].

In the 1960s, considerations around [saturated models][126] and the [ultraproduct][127] construction lead to the [Abraham Robinson][128]'s development of [non-standard analysis][129].

In 1965, [James Ax][130] and [Simon B. Kochen][131] showed a special case of Artin's conjecture on diophantine equations, the [Ax-Kochen theorem][132], again using an ultraproduct construction.[\[7\]][133]

More recently, the connection between stability and the geometry of definable sets led to several applications from algebraic and diophantine geometry, including [Ehud Hrushovski][134]'s 1996 proof of the geometric [Mordell-Lang conjecture][135] in all characteristics[\[8\]][136]

In 2011, [Jonathan Pila][137] applied techniques around [o-minimality][138] to prove the [André-Oort conjecture][139] for products of Modular curves. [\[9\]][140]

In a separate strand of inquiries that also grew around stable theories, Laskowski showed in 1992 that [NIP theories][141] describe exactly those definable classes that are [PAC-learnable][142] in machine learning theory. [\[10\]][143]

## History\[[edit][144]\]

Model theory as a subject has existed since approximately the middle of the 20th century. However some earlier research, especially in [mathematical logic][145], is often regarded as being of a model-theoretical nature in retrospect. The first significant result in what is now model theory was a special case of the downward Löwenheim–Skolem theorem, published by [Leopold Löwenheim][146] in 1915. The [compactness theorem][147] was implicit in work by [Thoralf Skolem][148],[\[11\]][149] but it was first published in 1930, as a lemma in [Kurt Gödel][150]'s proof of his [completeness theorem][151]. The Löwenheim–Skolem theorem and the compactness theorem received their respective general forms in 1936 and 1941 from [Anatoly Maltsev][152]. The development of model theory as an independent discipline was brought on by [Alfred Tarski][153], a member of the [Lwów–Warsaw school][154] during the [interbellum][155]. Tarski's work included [logical consequence][156], [deductive systems][157], the algebra of logic, the theory of definability, and the [semantic definition of truth][158], among other topics. His semantic methods culminated in the model theory he and a number of his [Berkeley][159] students developed in the 1950s and '60s.

In the further history of the discipline, different strands began to emerge, and the focus of the subject shifted. In the 1960s, techniques around ultraproducts became a popular tool in model theory. At the same time, researchers such as James Ax were investigating the first-order model theory of various algebraic classes, and others such as [H. Jerome Keisler][160] were extending the concepts and results of first-order model theory to other logical systems. Then, [Saharon Shelah][161]'s work around categoricity and [Morley's problem][162] changed the complexion of model theory, giving rise to a whole new class of concepts. The [stability theory][163] (classification theory) Shelah developed since the late 1960s aims to classify theories by the number of different models they have of any given cardinality. Over the next decades, it became clear that the resulting stability hierarchy is closely connected to the geometry of sets that are definable in those models; this gave rise to the subdiscipline now known as geometric stability theory.

## \[[edit][164]\]

### Finite model theory\[[edit][165]\]

Finite model theory (FMT) is the subarea of model theory (MT) that deals with its restriction to interpretations on finite structures, which have a finite universe.

Since many central theorems of model theory do not hold when restricted to finite structures, FMT is quite different from MT in its methods of proof. Central results of classical model theory that fail for finite structures under FMT include the [compactness theorem][166], [Gödel's completeness theorem][167], and the method of [ultraproducts][168] for [first-order logic][169].

The main application areas of FMT are [descriptive complexity theory][170], [database theory][171] and [formal language theory][172].

### Set theory\[[edit][173]\]

Any [set theory][174] (which is expressed in a [countable][175] language), if it is consistent, has a countable model; this is known as [Skolem's paradox][176], since there are sentences in set theory which postulate the existence of uncountable sets and yet these sentences are true in our countable model. Particularly the proof of the independence of the [continuum hypothesis][177] requires considering sets in models which appear to be uncountable when viewed from *within* the model, but are countable to someone *outside* the model.

The model-theoretic viewpoint has been useful in [set theory][178]; for example in [Kurt Gödel][179]'s work on the constructible universe, which, along with the method of [forcing][180] developed by [Paul Cohen][181] can be shown to prove the (again philosophically interesting) [independence][182] of the [axiom of choice][183] and the continuum hypothesis from the other axioms of set theory.

In the other direction, model theory itself can be formalized within ZFC set theory. For instance, the formalization of [satisfaction][184] in ZFC is done inductively, based on [Tarski's T-schema][185] and observation of where the members of the range of variable assignments lie.[\[12\]][186] The development of the fundamentals of model theory (such as the compactness theorem) rely on the axiom of choice, or more exactly the Boolean prime ideal theorem. Other results in model theory depend on set-theoretic axioms beyond the standard ZFC framework. For example, if the Continuum Hypothesis holds then every countable model has an ultrapower which is saturated (in its own cardinality). Similarly, if the Generalized Continuum Hypothesis holds then every model has a saturated elementary extension. Neither of these results are provable in ZFC alone. Finally, some questions arising from model theory (such as compactness for infinitary logics) have been shown to be equivalent to large cardinal axioms.

## See also\[[edit][187]\]

## Notes\[[edit][188]\]

1.  __[^][189]__ Chang and Keisler, [p. 1][190]
2.  __[^][191]__ ["Model Theory"][192]. *The Stanford Encyclopedia of Philosophy*. Metaphysics Research Lab, Stanford University. 2020.
3.  __[^][193]__ Dirk van Dalen, (1980; Fifth revision 2013) "Logic and Structure" Springer. *(See [page 1.][194]*)
4.  __[^][195]__ Chang and Keisler, [p. 1][196]
5.  __[^][197]__ Hodges (1997), p. vii
6.  __[^][198]__ Morley, Michael (1963). ["On theories categorical in uncountable powers"][199]. *[Proceedings of the National Academy of Sciences of the United States of America][200]*. __49__ (2): 213–216. [Bibcode][201]:[1963PNAS...49..213M][202]. [doi][203]:[10.1073/pnas.49.2.213][204]. [PMC][205] [299780][206]. [PMID][207] [16591050][208].
7.  __[^][209]__ Ax, James; Kochen, Simon (1965). "Diophantine Problems Over Local Fields: I.". *American Journal of Mathematics*. 87pages=605-630.
8.  __[^][210]__ Ehud Hrushovski, The Mordell-Lang Conjecture for Function Fields. [Journal of the American Mathematical Society][211] 9:3 (1996), pp. 667-690.
9.  __[^][212]__ Jonathan Pila, Rational points of definable sets and results of André–Oort–Manin–Mumford type, O-minimality and the André–Oort conjecture for *C**n*. [Annals of Mathematics][213] 173:3 (2011), pp. 1779–1840. doi=10.4007/annals.2011.173.3.11
10.  __[^][214]__ Michael C. Laskowski, Vapnik-Chervonenkis Classes of Definable Sets. [Journal of the London Mathematical Society][215] s2-45:2 (1992), pp. 377-384.
11.  __[^][216]__ "All three commentators \[i.e. Vaught, van Heijenoort and Dreben\] agree that both the completeness and compactness theorems were implicit in Skolem 1923…." \[Dawson, J. W. (1993). "The compactness of first-order logic:from gödel to lindström". *History and Philosophy of Logic*. __14__: 15–37. [doi][217]:[10.1080/01445349308837208][218].\]
12.  __[^][219]__ Open Logic Project, [First-order logic][220] (p.27). Accessed September 27, 2021.

## References\[[edit][221]\]

### Canonical textbooks\[[edit][222]\]

-   [Chang, Chen Chung][223]; [Keisler, H. Jerome][224] (1990) \[1973\]. *Model Theory*. Studies in Logic and the Foundations of Mathematics (3rd ed.). Elsevier. [ISBN][225] [978-0-444-88054-3][226].
-   [Hodges, Wilfrid][227] (1997). *A shorter model theory*. Cambridge: [Cambridge University Press][228]. [ISBN][229] [978-0-521-58713-6][230].
-   Kopperman, R. (1972). *Model Theory and Its Applications*. Boston: [Allyn and Bacon][231].
-   Marker, David (2002). *Model Theory: An Introduction*. [Graduate Texts in Mathematics][232] 217. Springer. [ISBN][233] [0-387-98760-6][234].

### Other textbooks\[[edit][235]\]

-   Bell, John L.; Slomson, Alan B. (2006) \[1969\]. *Models and Ultraproducts: An Introduction* (reprint of 1974 ed.). [Dover Publications][236]. [ISBN][237] [0-486-44979-3][238].
-   Ebbinghaus, Heinz-Dieter; Flum, Jörg; Thomas, Wolfgang (1994). [*Mathematical Logic*][239]. [Springer][240]. [ISBN][241] [0-387-94258-0][242].
-   Hinman, Peter G. (2005). *Fundamentals of Mathematical Logic*. [A K Peters][243]. [ISBN][244] [1-56881-262-0][245].
-   [Hodges, Wilfrid][246] (1993). [*Model theory*][247]. [Cambridge University Press][248]. [ISBN][249] [0-521-30442-3][250].
-   [Manzano, María][251] (1999). *Model theory*. [Oxford University Press][252]. [ISBN][253] [0-19-853851-0][254].
-   Poizat, Bruno (2000). [*A Course in Model Theory*][255]. Springer. [ISBN][256] [0-387-98655-3][257].
-   [Rautenberg, Wolfgang][258] (2010). *A Concise Introduction to Mathematical Logic* (3rd ed.). [New York][259]: [Springer Science+Business Media][260]. [doi][261]:[10.1007/978-1-4419-1221-3][262]. [ISBN][263] [978-1-4419-1220-6][264].
-   Rothmaler, Philipp (2000). *Introduction to Model Theory* (new ed.). [Taylor & Francis][265]. [ISBN][266] [90-5699-313-5][267].
-   [Tent, Katrin][268]; Ziegler, Martin (2012). *A Course in Model Theory*. [Cambridge University Press][269]. [ISBN][270] [9780521763240][271].
-   Kirby, Jonathan (2019). *An Invitation to Model Theory*. [Cambridge University Press][272]. [ISBN][273] [978-1-107-16388-1][274].

### Free online texts\[[edit][275]\]

-   [Chatzidakis, Zoé][276] (2001). [*Introduction to Model Theory*][277] (PDF). pp. 26 pages.
-   Pillay, Anand (2002). [*Lecture Notes – Model Theory*][278] (PDF). pp. 61 pages.
-   ["Model theory"][279], *[Encyclopedia of Mathematics][280]*, [EMS Press][281], 2001 \[1994\]
-   [Hodges, Wilfrid][282], *[Model theory][283]*. The Stanford Encyclopedia Of Philosophy, E. Zalta (ed.).
-   [Hodges, Wilfrid][284], *[First-order Model theory][285]*. The Stanford Encyclopedia Of Philosophy, E. Zalta (ed.).
-   Simmons, Harold (2004), *[An introduction to Good old fashioned model theory][286]*. Notes of an introductory course for postgraduates (with exercises).
-   [J. Barwise][287] and [S. Feferman][288] (editors), [Model-Theoretic Logics][289], Perspectives in Mathematical Logic, Volume 8, New York: Springer-Verlag, 1985.

[1]: https://en.wikipedia.org/wiki/Mathematical_model "Mathematical model"
[2]: https://en.wikipedia.org/wiki/Mathematical_logic "Mathematical logic"
[3]: https://en.wikipedia.org/wiki/Theory_(mathematical_logic) "Theory (mathematical logic)"
[4]: https://en.wikipedia.org/wiki/Sentence_(mathematical_logic) "Sentence (mathematical logic)"
[5]: https://en.wikipedia.org/wiki/Formal_language "Formal language"
[6]: https://en.wikipedia.org/wiki/Structure_(mathematical_logic) "Structure (mathematical logic)"
[7]: https://en.wikipedia.org/wiki/Model_theory#cite_note-1
[8]: https://en.wikipedia.org/wiki/Definable_set "Definable set"
[9]: https://en.wikipedia.org/wiki/Alfred_Tarski "Alfred Tarski"
[10]: https://en.wikipedia.org/wiki/Model_theory#cite_note-2
[11]: https://en.wikipedia.org/wiki/Saharon_Shelah "Saharon Shelah"
[12]: https://en.wikipedia.org/wiki/Stable_theory "Stable theory"
[13]: https://en.wikipedia.org/wiki/Proof_theory "Proof theory"
[14]: https://en.wikipedia.org/wiki/Proof_theory "Proof theory"
[15]: https://en.wikipedia.org/wiki/Model_theory#cite_note-3
[16]: https://en.wikipedia.org/wiki/Algebraic_geometry "Algebraic geometry"
[17]: https://en.wikipedia.org/wiki/Diophantine_geometry "Diophantine geometry"
[18]: https://en.wikipedia.org/wiki/Association_for_Symbolic_Logic "Association for Symbolic Logic"
[19]: https://en.wikipedia.org/w/index.php?title=Model_theory&action=edit&section=1 "Edit section: Varied emphasis"
[20]: https://en.wikipedia.org/wiki/Universal_algebra "Universal algebra"
[21]: https://en.wikipedia.org/wiki/Logic "Logic"
[22]: https://en.wikipedia.org/wiki/Model_theory#cite_note-4
[23]: https://en.wikipedia.org/wiki/Algebraic_geometry "Algebraic geometry"
[24]: https://en.wikipedia.org/wiki/Field_(mathematics) "Field (mathematics)"
[25]: https://en.wikipedia.org/wiki/Model_theory#cite_note-5
[26]: https://en.wikipedia.org/w/index.php?title=Model_theory&action=edit&section=2 "Edit section: Branches"
[27]: https://en.wikipedia.org/wiki/Finitary "Finitary"
[28]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[29]: https://en.wikipedia.org/wiki/Finite_model_theory "Finite model theory"
[30]: https://en.wikipedia.org/wiki/Higher-order_logic "Higher-order logic"
[31]: https://en.wikipedia.org/wiki/Infinitary_logic "Infinitary logic"
[32]: https://en.wikipedia.org/wiki/G%C3%B6del%27s_completeness_theorem "Gödel's completeness theorem"
[33]: https://en.wikipedia.org/wiki/Compactness_theorem "Compactness theorem"
[34]: https://en.wikipedia.org/wiki/Computable_model_theory "Computable model theory"
[35]: https://en.wikipedia.org/wiki/G%C3%B6del%27s_completeness_theorem "Gödel's completeness theorem"
[36]: https://en.wikipedia.org/wiki/L%C3%B6wenheim%E2%80%93Skolem_theorem "Löwenheim–Skolem theorem"
[37]: https://en.wikipedia.org/wiki/Robert_Lawson_Vaught "Robert Lawson Vaught"
[38]: https://en.wikipedia.org/wiki/Dana_Scott "Dana Scott"
[39]: https://en.wikipedia.org/wiki/Omitting_types_theorem "Omitting types theorem"
[40]: https://en.wikipedia.org/wiki/Ryll-Nardzewski_theorem "Ryll-Nardzewski theorem"
[41]: https://en.wikipedia.org/wiki/Alfred_Tarski "Alfred Tarski"
[42]: https://en.wikipedia.org/wiki/Quantifier_elimination "Quantifier elimination"
[43]: https://en.wikipedia.org/wiki/Real_closed_fields "Real closed fields"
[44]: https://en.wikipedia.org/wiki/James_Ax "James Ax"
[45]: https://en.wikipedia.org/wiki/Pseudo-finite_field "Pseudo-finite field"
[46]: https://en.wikipedia.org/wiki/Abraham_Robinson "Abraham Robinson"
[47]: https://en.wikipedia.org/wiki/Non-standard_analysis "Non-standard analysis"
[48]: https://en.wikipedia.org/wiki/Stable_theory "Stable theory"
[49]: https://en.wikipedia.org/wiki/Morley%27s_categoricity_theorem "Morley's categoricity theorem"
[50]: https://en.wikipedia.org/wiki/Saharon_Shelah "Saharon Shelah"
[51]: https://en.wikipedia.org/wiki/Ehud_Hrushovski "Ehud Hrushovski"
[52]: https://en.wikipedia.org/wiki/Mordell-Lang_conjecture "Mordell-Lang conjecture"
[53]: https://en.wikipedia.org/w/index.php?title=Model_theory&action=edit&section=3 "Edit section: Fundamental notions of first-order model theory"
[54]: https://en.wikipedia.org/w/index.php?title=Model_theory&action=edit&section=4 "Edit section: First-order logic"
[55]: https://en.wikipedia.org/wiki/Atomic_formula "Atomic formula"
[56]: https://en.wikipedia.org/wiki/Table_of_logic_symbols "Table of logic symbols"
[57]: https://en.wikipedia.org/wiki/T-schema "T-schema"
[58]: https://en.wikipedia.org/wiki/Theory_(mathematical_logic) "Theory (mathematical logic)"
[59]: https://en.wikipedia.org/wiki/Sentence_(mathematical_logic) "Sentence (mathematical logic)"
[60]: https://en.wikipedia.org/wiki/G%C3%B6del%27s_incompleteness_theorems "Gödel's incompleteness theorems"
[61]: https://en.wikipedia.org/wiki/Consistency "Consistency"
[62]: https://en.wikipedia.org/w/index.php?title=Model_theory&action=edit&section=5 "Edit section: Basic model-theoretic concepts"
[63]: https://en.wikipedia.org/wiki/Signature_(logic) "Signature (logic)"
[64]: https://en.wikipedia.org/wiki/Signature_(logic) "Signature (logic)"
[65]: https://en.wikipedia.org/wiki/Non-logical_symbols "Non-logical symbols"
[66]: https://en.wikipedia.org/wiki/Arity "Arity"
[67]: https://en.wikipedia.org/wiki/Structure "Structure"
[68]: https://en.wikipedia.org/wiki/Interpretation_(model_theory) "Interpretation (model theory)"
[69]: https://en.wikipedia.org/wiki/Substructure_(mathematics) "Substructure (mathematics)"
[70]: https://en.wikipedia.org/wiki/Embedding "Embedding"
[71]: https://en.wikipedia.org/wiki/Injective "Injective"
[72]: https://en.wikipedia.org/wiki/Rational_numbers "Rational numbers"
[73]: https://en.wikipedia.org/w/index.php?title=Model_theory&action=edit&section=6 "Edit section: Compactness and the Löwenheim-Skolem theorem"
[74]: https://en.wikipedia.org/wiki/Compactness_theorem "Compactness theorem"
[75]: https://en.wikipedia.org/wiki/Compactness_theorem "Compactness theorem"
[76]: https://en.wikipedia.org/wiki/Lindstr%C3%B6m%27s_theorem "Lindström's theorem"
[77]: https://en.wikipedia.org/w/index.php?title=Model_theory&action=edit&section=7 "Edit section: Definability"
[78]: https://en.wikipedia.org/w/index.php?title=Model_theory&action=edit&section=8 "Edit section: Definable sets"
[79]: https://en.wikipedia.org/wiki/Definable_sets "Definable sets"
[80]: https://en.wikipedia.org/w/index.php?title=Model_theory&action=edit&section=9 "Edit section: Eliminating quantifiers"
[81]: https://en.wikipedia.org/wiki/Quantifier_elimination "Quantifier elimination"
[82]: https://en.wikipedia.org/wiki/Model-complete "Model-complete"
[83]: https://en.wikipedia.org/wiki/Tarski%E2%80%93Vaught_test "Tarski–Vaught test"
[84]: https://en.wikipedia.org/w/index.php?title=Model_theory&action=edit&section=10 "Edit section: Minimality"
[85]: https://en.wikipedia.org/wiki/Strongly_minimal_theory "Strongly minimal theory"
[86]: https://en.wikipedia.org/wiki/Dense_linear_order "Dense linear order"
[87]: https://en.wikipedia.org/wiki/O-minimal "O-minimal"
[88]: https://en.wikipedia.org/w/index.php?title=Model_theory&action=edit&section=11 "Edit section: Definable and interpretable structures"
[89]: https://en.wikipedia.org/w/index.php?title=Model_theory&action=edit&section=12 "Edit section: Types"
[90]: https://en.wikipedia.org/w/index.php?title=Model_theory&action=edit&section=13 "Edit section: Basic notions"
[91]: https://en.wikipedia.org/wiki/Automorphism "Automorphism"
[92]: https://en.wikipedia.org/wiki/Archimedean_field "Archimedean field"
[93]: https://en.wikipedia.org/wiki/Algebraically_closed_field "Algebraically closed field"
[94]: https://en.wikipedia.org/wiki/Prime_ideal "Prime ideal"
[95]: https://en.wikipedia.org/wiki/Polynomial_ring "Polynomial ring"
[96]: https://en.wikipedia.org/w/index.php?title=Model_theory&action=edit&section=14 "Edit section: Structures and types"
[97]: https://en.wikipedia.org/w/index.php?title=Model_theory&action=edit&section=15 "Edit section: Stone Spaces"
[98]: https://en.wikipedia.org/wiki/Boolean_algebra_(structure) "Boolean algebra (structure)"
[99]: https://en.wikipedia.org/wiki/Stone%27s_representation_theorem_for_Boolean_algebras "Stone's representation theorem for Boolean algebras"
[100]: https://en.wikipedia.org/wiki/Topological_space "Topological space"
[101]: https://en.wikipedia.org/wiki/Base_(topology) "Base (topology)"
[102]: https://en.wikipedia.org/wiki/Constructible_topology "Constructible topology"
[103]: https://en.wikipedia.org/wiki/Open_set "Open set"
[104]: https://en.wikipedia.org/wiki/Zariski_topology "Zariski topology"
[105]: https://en.wikipedia.org/w/index.php?title=Model_theory&action=edit&section=16 "Edit section: Categoricity"
[106]: https://en.wikipedia.org/wiki/Cardinal_number "Cardinal number"
[107]: https://en.wikipedia.org/wiki/Cardinal_number "Cardinal number"
[108]: https://en.wikipedia.org/w/index.php?title=Model_theory&action=edit&section=17 "Edit section: ω-categoricity"
[109]: https://en.wikipedia.org/wiki/Omega-categorical_theory "Omega-categorical theory"
[110]: https://en.wikipedia.org/wiki/Dense_linear_order "Dense linear order"
[111]: https://en.wikipedia.org/wiki/Oligomorphic_group "Oligomorphic group"
[112]: https://en.wikipedia.org/wiki/Erwin_Engeler "Erwin Engeler"
[113]: https://en.wikipedia.org/wiki/Czes%C5%82aw_Ryll-Nardzewski "Czesław Ryll-Nardzewski"
[114]: https://en.wikipedia.org/wiki/Lars_Svenonius "Lars Svenonius"
[115]: https://en.wikipedia.org/wiki/Fra%C3%AFss%C3%A9_limit "Fraïssé limit"
[116]: https://en.wikipedia.org/w/index.php?title=Model_theory&action=edit&section=18 "Edit section: Uncountable categoricity"
[117]: https://en.wikipedia.org/wiki/Michael_D._Morley "Michael D. Morley"
[118]: https://en.wikipedia.org/wiki/Model_theory#cite_note-6
[119]: https://en.wikipedia.org/wiki/Morley%27s_categoricity_theorem "Morley's categoricity theorem"
[120]: https://en.wikipedia.org/w/index.php?title=Model_theory&action=edit&section=19 "Edit section: Selected applications"
[121]: https://en.wikipedia.org/wiki/Decidable_(logic) "Decidable (logic)"
[122]: https://en.wikipedia.org/wiki/Real_closed_field "Real closed field"
[123]: https://en.wikipedia.org/wiki/Boolean_algebra "Boolean algebra"
[124]: https://en.wikipedia.org/wiki/Algebraically_closed_field "Algebraically closed field"
[125]: https://en.wikipedia.org/wiki/Characteristic_(algebra) "Characteristic (algebra)"
[126]: https://en.wikipedia.org/wiki/Saturated_model "Saturated model"
[127]: https://en.wikipedia.org/wiki/Ultraproduct "Ultraproduct"
[128]: https://en.wikipedia.org/wiki/Abraham_Robinson "Abraham Robinson"
[129]: https://en.wikipedia.org/wiki/Non-standard_analysis "Non-standard analysis"
[130]: https://en.wikipedia.org/wiki/James_Ax "James Ax"
[131]: https://en.wikipedia.org/wiki/Simon_B._Kochen "Simon B. Kochen"
[132]: https://en.wikipedia.org/wiki/Ax-Kochen_theorem "Ax-Kochen theorem"
[133]: https://en.wikipedia.org/wiki/Model_theory#cite_note-7
[134]: https://en.wikipedia.org/wiki/Ehud_Hrushovski "Ehud Hrushovski"
[135]: https://en.wikipedia.org/wiki/Mordell-Lang_conjecture "Mordell-Lang conjecture"
[136]: https://en.wikipedia.org/wiki/Model_theory#cite_note-8
[137]: https://en.wikipedia.org/wiki/Jonathan_Pila "Jonathan Pila"
[138]: https://en.wikipedia.org/wiki/O-minimality "O-minimality"
[139]: https://en.wikipedia.org/wiki/Andr%C3%A9-Oort_conjecture "André-Oort conjecture"
[140]: https://en.wikipedia.org/wiki/Model_theory#cite_note-9
[141]: https://en.wikipedia.org/wiki/NIP_(model_theory) "NIP (model theory)"
[142]: https://en.wikipedia.org/wiki/Probably_approximately_correct_learning "Probably approximately correct learning"
[143]: https://en.wikipedia.org/wiki/Model_theory#cite_note-10
[144]: https://en.wikipedia.org/w/index.php?title=Model_theory&action=edit&section=20 "Edit section: History"
[145]: https://en.wikipedia.org/wiki/Mathematical_logic "Mathematical logic"
[146]: https://en.wikipedia.org/wiki/Leopold_L%C3%B6wenheim "Leopold Löwenheim"
[147]: https://en.wikipedia.org/wiki/Compactness_theorem "Compactness theorem"
[148]: https://en.wikipedia.org/wiki/Thoralf_Skolem "Thoralf Skolem"
[149]: https://en.wikipedia.org/wiki/Model_theory#cite_note-11
[150]: https://en.wikipedia.org/wiki/Kurt_G%C3%B6del "Kurt Gödel"
[151]: https://en.wikipedia.org/wiki/G%C3%B6del%27s_completeness_theorem "Gödel's completeness theorem"
[152]: https://en.wikipedia.org/wiki/Anatoly_Maltsev "Anatoly Maltsev"
[153]: https://en.wikipedia.org/wiki/Alfred_Tarski "Alfred Tarski"
[154]: https://en.wikipedia.org/wiki/Lw%C3%B3w%E2%80%93Warsaw_school "Lwów–Warsaw school"
[155]: https://en.wikipedia.org/wiki/Interwar_period "Interwar period"
[156]: https://en.wikipedia.org/wiki/Logical_consequence "Logical consequence"
[157]: https://en.wikipedia.org/wiki/Deductive_system "Deductive system"
[158]: https://en.wikipedia.org/wiki/Semantic_theory_of_truth "Semantic theory of truth"
[159]: https://en.wikipedia.org/wiki/University_of_California,_Berkeley "University of California, Berkeley"
[160]: https://en.wikipedia.org/wiki/H._Jerome_Keisler "H. Jerome Keisler"
[161]: https://en.wikipedia.org/wiki/Saharon_Shelah "Saharon Shelah"
[162]: https://en.wikipedia.org/wiki/Morley%27s_problem "Morley's problem"
[163]: https://en.wikipedia.org/wiki/Stable_theory "Stable theory"
[164]: https://en.wikipedia.org/w/index.php?title=Model_theory&action=edit&section=21 "Edit section: Connections to related branches of mathematical logic"
[165]: https://en.wikipedia.org/w/index.php?title=Model_theory&action=edit&section=22 "Edit section: Finite model theory"
[166]: https://en.wikipedia.org/wiki/Compactness_theorem "Compactness theorem"
[167]: https://en.wikipedia.org/wiki/G%C3%B6del%27s_completeness_theorem "Gödel's completeness theorem"
[168]: https://en.wikipedia.org/wiki/Ultraproducts "Ultraproducts"
[169]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[170]: https://en.wikipedia.org/wiki/Descriptive_complexity_theory "Descriptive complexity theory"
[171]: https://en.wikipedia.org/wiki/Database_theory "Database theory"
[172]: https://en.wikipedia.org/wiki/Formal_language_theory "Formal language theory"
[173]: https://en.wikipedia.org/w/index.php?title=Model_theory&action=edit&section=23 "Edit section: Set theory"
[174]: https://en.wikipedia.org/wiki/Formal_system "Formal system"
[175]: https://en.wikipedia.org/wiki/Countable "Countable"
[176]: https://en.wikipedia.org/wiki/Skolem%27s_paradox "Skolem's paradox"
[177]: https://en.wikipedia.org/wiki/Continuum_hypothesis "Continuum hypothesis"
[178]: https://en.wikipedia.org/wiki/Set_theory "Set theory"
[179]: https://en.wikipedia.org/wiki/Kurt_G%C3%B6del "Kurt Gödel"
[180]: https://en.wikipedia.org/wiki/Forcing_(mathematics) "Forcing (mathematics)"
[181]: https://en.wikipedia.org/wiki/Paul_Cohen_(mathematician) "Paul Cohen (mathematician)"
[182]: https://en.wikipedia.org/wiki/Independence_(mathematical_logic) "Independence (mathematical logic)"
[183]: https://en.wikipedia.org/wiki/Axiom_of_choice "Axiom of choice"
[184]: https://en.wikipedia.org/wiki/Satisfaction_relation "Satisfaction relation"
[185]: https://en.wikipedia.org/wiki/T-schema "T-schema"
[186]: https://en.wikipedia.org/wiki/Model_theory#cite_note-12
[187]: https://en.wikipedia.org/w/index.php?title=Model_theory&action=edit&section=24 "Edit section: See also"
[188]: https://en.wikipedia.org/w/index.php?title=Model_theory&action=edit&section=25 "Edit section: Notes"
[189]: https://en.wikipedia.org/wiki/Model_theory#cite_ref-1 "Jump up"
[190]: https://books.google.com/books?id=uiHq0EmaFp0C&pg=PA1
[191]: https://en.wikipedia.org/wiki/Model_theory#cite_ref-2 "Jump up"
[192]: https://plato.stanford.edu/entries/model-theory/
[193]: https://en.wikipedia.org/wiki/Model_theory#cite_ref-3 "Jump up"
[194]: https://link.springer.com/content/pdf/bfm%3A978-1-4471-4558-5%2F1.pdf
[195]: https://en.wikipedia.org/wiki/Model_theory#cite_ref-4 "Jump up"
[196]: https://books.google.com/books?id=uiHq0EmaFp0C&pg=PA1
[197]: https://en.wikipedia.org/wiki/Model_theory#cite_ref-5 "Jump up"
[198]: https://en.wikipedia.org/wiki/Model_theory#cite_ref-6 "Jump up"
[199]: https://www.ncbi.nlm.nih.gov/pmc/articles/PMC299780
[200]: https://en.wikipedia.org/wiki/Proceedings_of_the_National_Academy_of_Sciences_of_the_United_States_of_America "Proceedings of the National Academy of Sciences of the United States of America"
[201]: https://en.wikipedia.org/wiki/Bibcode_(identifier) "Bibcode (identifier)"
[202]: https://ui.adsabs.harvard.edu/abs/1963PNAS...49..213M
[203]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[204]: https://doi.org/10.1073%2Fpnas.49.2.213
[205]: https://en.wikipedia.org/wiki/PMC_(identifier) "PMC (identifier)"
[206]: https://www.ncbi.nlm.nih.gov/pmc/articles/PMC299780
[207]: https://en.wikipedia.org/wiki/PMID_(identifier) "PMID (identifier)"
[208]: https://pubmed.ncbi.nlm.nih.gov/16591050
[209]: https://en.wikipedia.org/wiki/Model_theory#cite_ref-7 "Jump up"
[210]: https://en.wikipedia.org/wiki/Model_theory#cite_ref-8 "Jump up"
[211]: https://en.wikipedia.org/wiki/Journal_of_the_American_Mathematical_Society "Journal of the American Mathematical Society"
[212]: https://en.wikipedia.org/wiki/Model_theory#cite_ref-9 "Jump up"
[213]: https://en.wikipedia.org/wiki/Annals_of_Mathematics "Annals of Mathematics"
[214]: https://en.wikipedia.org/wiki/Model_theory#cite_ref-10 "Jump up"
[215]: https://en.wikipedia.org/wiki/Journal_of_the_London_Mathematical_Society "Journal of the London Mathematical Society"
[216]: https://en.wikipedia.org/wiki/Model_theory#cite_ref-11 "Jump up"
[217]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[218]: https://doi.org/10.1080%2F01445349308837208
[219]: https://en.wikipedia.org/wiki/Model_theory#cite_ref-12 "Jump up"
[220]: https://builds.openlogicproject.org/content/first-order-logic/first-order-logic.pdf
[221]: https://en.wikipedia.org/w/index.php?title=Model_theory&action=edit&section=26 "Edit section: References"
[222]: https://en.wikipedia.org/w/index.php?title=Model_theory&action=edit&section=27 "Edit section: Canonical textbooks"
[223]: https://en.wikipedia.org/wiki/Chen_Chung_Chang "Chen Chung Chang"
[224]: https://en.wikipedia.org/wiki/Howard_Jerome_Keisler "Howard Jerome Keisler"
[225]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[226]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-444-88054-3 "Special:BookSources/978-0-444-88054-3"
[227]: https://en.wikipedia.org/wiki/Wilfrid_Hodges "Wilfrid Hodges"
[228]: https://en.wikipedia.org/wiki/Cambridge_University_Press "Cambridge University Press"
[229]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[230]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-521-58713-6 "Special:BookSources/978-0-521-58713-6"
[231]: https://en.wikipedia.org/wiki/Allyn_and_Bacon "Allyn and Bacon"
[232]: https://en.wikipedia.org/wiki/Graduate_Texts_in_Mathematics "Graduate Texts in Mathematics"
[233]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[234]: https://en.wikipedia.org/wiki/Special:BookSources/0-387-98760-6 "Special:BookSources/0-387-98760-6"
[235]: https://en.wikipedia.org/w/index.php?title=Model_theory&action=edit&section=28 "Edit section: Other textbooks"
[236]: https://en.wikipedia.org/wiki/Dover_Publications "Dover Publications"
[237]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[238]: https://en.wikipedia.org/wiki/Special:BookSources/0-486-44979-3 "Special:BookSources/0-486-44979-3"
[239]: https://archive.org/details/mathematicallogi1996ebbi
[240]: https://en.wikipedia.org/wiki/Springer_Science%2BBusiness_Media "Springer Science+Business Media"
[241]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[242]: https://en.wikipedia.org/wiki/Special:BookSources/0-387-94258-0 "Special:BookSources/0-387-94258-0"
[243]: https://en.wikipedia.org/wiki/A_K_Peters,_Ltd. "A K Peters, Ltd."
[244]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[245]: https://en.wikipedia.org/wiki/Special:BookSources/1-56881-262-0 "Special:BookSources/1-56881-262-0"
[246]: https://en.wikipedia.org/wiki/Wilfrid_Hodges "Wilfrid Hodges"
[247]: https://archive.org/details/modeltheory0000hodg
[248]: https://en.wikipedia.org/wiki/Cambridge_University_Press "Cambridge University Press"
[249]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[250]: https://en.wikipedia.org/wiki/Special:BookSources/0-521-30442-3 "Special:BookSources/0-521-30442-3"
[251]: https://en.wikipedia.org/wiki/Mar%C3%ADa_Manzano "María Manzano"
[252]: https://en.wikipedia.org/wiki/Oxford_University_Press "Oxford University Press"
[253]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[254]: https://en.wikipedia.org/wiki/Special:BookSources/0-19-853851-0 "Special:BookSources/0-19-853851-0"
[255]: https://archive.org/details/courseinmodelthe0000poiz
[256]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[257]: https://en.wikipedia.org/wiki/Special:BookSources/0-387-98655-3 "Special:BookSources/0-387-98655-3"
[258]: https://en.wikipedia.org/wiki/Wolfgang_Rautenberg "Wolfgang Rautenberg"
[259]: https://en.wikipedia.org/wiki/New_York_City "New York City"
[260]: https://en.wikipedia.org/wiki/Springer_Science%2BBusiness_Media "Springer Science+Business Media"
[261]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[262]: https://doi.org/10.1007%2F978-1-4419-1221-3
[263]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[264]: https://en.wikipedia.org/wiki/Special:BookSources/978-1-4419-1220-6 "Special:BookSources/978-1-4419-1220-6"
[265]: https://en.wikipedia.org/wiki/Taylor_and_Francis "Taylor and Francis"
[266]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[267]: https://en.wikipedia.org/wiki/Special:BookSources/90-5699-313-5 "Special:BookSources/90-5699-313-5"
[268]: https://en.wikipedia.org/wiki/Katrin_Tent "Katrin Tent"
[269]: https://en.wikipedia.org/wiki/Cambridge_University_Press "Cambridge University Press"
[270]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[271]: https://en.wikipedia.org/wiki/Special:BookSources/9780521763240 "Special:BookSources/9780521763240"
[272]: https://en.wikipedia.org/wiki/Cambridge_University_Press "Cambridge University Press"
[273]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[274]: https://en.wikipedia.org/wiki/Special:BookSources/978-1-107-16388-1 "Special:BookSources/978-1-107-16388-1"
[275]: https://en.wikipedia.org/w/index.php?title=Model_theory&action=edit&section=29 "Edit section: Free online texts"
[276]: https://en.wikipedia.org/wiki/Zo%C3%A9_Chatzidakis "Zoé Chatzidakis"
[277]: http://www.math.ens.fr/~zchatzid/papiers/MTluminy.pdf
[278]: https://www3.nd.edu/~apillay/pdf/lecturenotes_modeltheory.pdf
[279]: https://www.encyclopediaofmath.org/index.php?title=Model_theory
[280]: https://en.wikipedia.org/wiki/Encyclopedia_of_Mathematics "Encyclopedia of Mathematics"
[281]: https://en.wikipedia.org/wiki/European_Mathematical_Society "European Mathematical Society"
[282]: https://en.wikipedia.org/wiki/Wilfrid_Hodges "Wilfrid Hodges"
[283]: http://plato.stanford.edu/entries/model-theory/
[284]: https://en.wikipedia.org/wiki/Wilfrid_Hodges "Wilfrid Hodges"
[285]: http://plato.stanford.edu/entries/modeltheory-fo/
[286]: https://web.archive.org/web/20110522083749/http://www.cs.man.ac.uk/~hsimmons/BOOKS/ModelTheory.pdf
[287]: https://en.wikipedia.org/wiki/Jon_Barwise "Jon Barwise"
[288]: https://en.wikipedia.org/wiki/Solomon_Feferman "Solomon Feferman"
[289]: http://projecteuclid.org/euclid.pl/1235417263

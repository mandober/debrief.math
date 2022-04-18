---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Quantifier_(logic)
page-title:       Quantifier (logic) - Wikipedia
article-title:    Quantifier (logic) - Wikipedia
---
# Quantifier (logic) - Wikipedia

In logic, a quantifier is an operator that specifies how many individuals in the domain of discourse satisfy an open formula. For instance, the universal quantifier  in the first order formula  expresses that everything in the domain satisfies the property denoted by . On the other hand, the existential quantifier  in the formula  expresses that there is something in the domain which satisfies that property. A formula where a quantifier takes widest scope is called a quantified formula. A quantified formula must contain a bound variable and a subformula specifying a property of the referent of that variable.
In [logic][1], a __quantifier__ is an operator that specifies how many individuals in the [domain of discourse][2] satisfy an [open formula][3]. For instance, the [universal quantifier][4] ![ \forall ](https://wikimedia.org/api/rest_v1/media/math/render/svg/bfc1a1a9c4c0f8d5df989c98aa2773ed657c5937) in the [first order][5] formula ![{\displaystyle \forall xP(x)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/25873948fc98344950ea1b91f88dd52239cf9c87) expresses that everything in the domain satisfies the property denoted by ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a). On the other hand, the [existential quantifier][6] ![{\displaystyle \exists }](https://wikimedia.org/api/rest_v1/media/math/render/svg/77ed842b6b90b2fdd825320cf8e5265fa937b583) in the formula ![{\displaystyle \exists xP(x)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d4bb6d8a3cf6275a71b7183604aa81e8ba7edb50) expresses that there is something in the domain which satisfies that property. A formula where a quantifier takes widest [scope][7] is called a quantified formula. A quantified formula must contain a [bound variable][8] and a [subformula][9] specifying a property of the referent of that variable.

The mostly commonly used quantifiers are ![\forall ](https://wikimedia.org/api/rest_v1/media/math/render/svg/bfc1a1a9c4c0f8d5df989c98aa2773ed657c5937) and ![\exists ](https://wikimedia.org/api/rest_v1/media/math/render/svg/77ed842b6b90b2fdd825320cf8e5265fa937b583). These quantifiers are standardly defined as [duals][10] and are thus interdefinable using [negation][11]. They can also be used to define more complex quantifiers, as in the formula ![{\displaystyle \neg \exists xP(x)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/833054c01cd2f7c59c1978d1e259bb39661dad53) which expresses that nothing has the property ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a). Other quantifiers are only definable within [second order logic][12] or [higher order logics][13]. Quantifiers have been generalized beginning with the work of [Mostowski][14] and [Lindström][15].

First order quantifiers approximate the meanings of some [natural language][16] quantifiers such as "some" and "all". However, many natural language quantifiers can only be analyzed in terms of [generalized quantifiers][17].

## Relations to logical conjunction and disjunction\[[edit][18]\]

For a finite domain of discourse D = {a1,...an}, the universal quantifier is equivalent to a [logical conjunction][19] of propositions with singular terms ai (having the form Pai for [monadic predicates][20]).

The [existential quantifier][21] is equivalent to a [logical disjunction][22] of propositions having the same structure as before. For infinite domains of discourse, the equivalences are similar.

### Infinite domain of discourse\[[edit][23]\]

Consider the following statement (*using dot notation for multiplication*):

1 · 2 = 1 + 1, and 2 · 2 = 2 + 2, and 3 · 2 = 3 + 3, ..., and 100 · 2 = 100 + 100, and ..., etc.

This has the appearance of an *infinite [conjunction][24]* of propositions. From the point of view of [formal languages][25], this is immediately a problem, since [syntax][26] rules are expected to generate [finite][27] words.

The example above is fortunate in that there is a [procedure][28] to generate all the conjuncts. However, if an assertion were to be made about every [irrational number][29], there would be no way to enumerate all the conjuncts, since irrationals cannot be enumerated. A succinct, equivalent formulation which avoids these problems uses *universal quantification*:

For each [natural number][30] *n*, *n* · 2 = *n* + *n*.

A similar analysis applies to the [disjunction][31],

1 is equal to 5 + 5, or 2 is equal to 5 + 5, or 3 is equal to 5 + 5, ... , or 100 is equal to 5 + 5, or ..., etc.

which can be rephrased using *existential quantification*:

For some [natural number][32] *n*, *n* is equal to 5+5.

## Algebraic approaches to quantification\[[edit][33]\]

It is possible to devise [abstract algebras][34] whose [models][35] include [formal languages][36] with quantification, but progress has been slow\[*[clarification needed][37]*\] and interest in such algebra has been limited. Three approaches have been devised to date:

-   [Relation algebra][38], invented by [Augustus De Morgan][39], and developed by [Charles Sanders Peirce][40], [Ernst Schröder][41], [Alfred Tarski][42], and Tarski's students. Relation algebra cannot represent any formula with quantifiers nested more than three deep. Surprisingly, the models of relation algebra include the [axiomatic set theory][43] [ZFC][44] and [Peano arithmetic][45];
-   [Cylindric algebra][46], devised by [Alfred Tarski][47], [Leon Henkin][48], and others;
-   The [polyadic algebra][49] of [Paul Halmos][50].

## Notation\[[edit][51]\]

The two most common quantifiers are the universal quantifier and the existential quantifier. The traditional symbol for the universal quantifier is "[∀][52]", a rotated letter "[A][53]", which stands for "for all" or "all". The corresponding symbol for the existential quantifier is "[∃][54]", a rotated letter "[E][55]", which stands for "there exists" or "exists".[\[1\]][56][\[2\]][57]

An example of translating a quantified statement in a natural language such as English would be as follows. Given the statement, "Each of Peter's friends either likes to dance or likes to go to the beach (or both)", key aspects can be identified and rewritten using symbols including quantifiers. So, let *X* be the set of all Peter's friends, *P*(*x*) the [predicate][58] "*x* likes to dance", and *Q*(*x*) the predicate "*x* likes to go to the beach". Then the above sentence can be written in formal notation as ![{\displaystyle \forall {x}{\in }X,P(x)\lor Q(x)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c8b794a1e77247442948e5626d5b3dc33fc5acd7), which is read, "for every *x* that is a member of *X*, *P* applies to *x* [or][59] *Q* applies to *x*".

Some other quantified expressions are constructed as follows,

![{\displaystyle \exists {x}\,P}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b227c46ed5c44401a56548d410afa22009209231)[\[3\]][60]     ![{\displaystyle \forall {x}\,P}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8d6fc1e1ac7362750e5b5d09f67d44f4eccd204c)

for a formula *P*. These two expressions (using the definitions above) are read as "there exists a friend of Peter who likes to dance" and "all friends of Peter like to dance", respectively. Variant notations include, for set *X* and set members *x*:

![{\displaystyle \bigvee _{x}P}](https://wikimedia.org/api/rest_v1/media/math/render/svg/535cab302719f9699a629ed04643251f5ca240cd)     ![{\displaystyle (\exists {x})P}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9d02413093ef269af0bbeb4a7904101c6c57bd32)     ![{\displaystyle (\exists x\ .\ P)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/a98f239b7ef34ff8bd6edbcb2bd2fe9f6fba5383)     ![{\displaystyle \exists x\ \cdot \ P}](https://wikimedia.org/api/rest_v1/media/math/render/svg/f02646fa8fd1404511d35080af16071c84291ac3)     ![{\displaystyle (\exists x:P)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ab23b47a4c97536f6249e91ffd13b23e6c3f22e5)     ![{\displaystyle \exists {x}(P)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/97d483ed1b63980df7352507a306afed5a0d8ef4)[\[4\]][61]     ![{\displaystyle \exists _{x}\,P}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c7f75779ccc84a5bee61d4b3ba49ae00f5cc3f1b)     ![{\displaystyle \exists {x}{,}\,P}](https://wikimedia.org/api/rest_v1/media/math/render/svg/635ed14eb6168f36ea87716cf7c4e01be896127d)     ![{\displaystyle \exists {x}{\in }X\,P}](https://wikimedia.org/api/rest_v1/media/math/render/svg/bef5701065bab130e781cf02fffd4195fd8be44e)     ![{\displaystyle \exists \,x{:}X\,P}](https://wikimedia.org/api/rest_v1/media/math/render/svg/269db1d6ab264492bac58e4ad8629ed139080c6c)

All of these variations also apply to universal quantification. Other variations for the universal quantifier are

![{\displaystyle \bigwedge _{x}P}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e0b888a93297af78548faf3b448aedf5445c9413)     ![{\displaystyle \bigwedge xP}](https://wikimedia.org/api/rest_v1/media/math/render/svg/df2d86df96603a23288fd687bc642ae2f1b73fd6)[\[5\]][62]     ![{\displaystyle (x)\,P}](https://wikimedia.org/api/rest_v1/media/math/render/svg/bb8d6562b4b4361a4a10a6559f69e3b8c6dde19e)\[*[citation needed][63]*\]

Some versions of the notation explicitly mention the range of quantification. The range of quantification must always be specified; for a given mathematical theory, this can be done in several ways:

-   Assume a fixed domain of discourse for every quantification, as is done in [Zermelo–Fraenkel set theory][64],
-   Fix several domains of discourse in advance and require that each variable have a declared domain, which is the *type* of that variable. This is analogous to the situation in [statically typed][65] [computer programming][66] languages, where variables have declared types.
-   Mention explicitly the range of quantification, perhaps using a symbol for the set of all objects in that domain (or the [type][67] of the objects in that domain).

One can use any variable as a quantified variable in place of any other, under certain restrictions in which *variable capture* does not occur. Even if the notation uses typed variables, variables of that type may be used.

Informally or in natural language, the "∀*x*" or "∃*x*" might appear after or in the middle of *P*(*x*). Formally, however, the phrase that introduces the dummy variable is placed in front.

Mathematical formulas mix symbolic expressions for quantifiers with natural language quantifiers such as,

For every natural number *x*, ...

There exists an *x* such that ...

For at least one *x, ....*

Keywords for [uniqueness quantification][68] include:

For exactly one natural number *x*, ...

There is one and only one *x* such that ....

Further, *x* may be replaced by a [pronoun][69]. For example,

For every natural number, its product with 2 equals to its sum with itself.

Some natural number is prime.

## Order of quantifiers (nesting)\[[edit][70]\]

The order of quantifiers is critical to meaning, as is illustrated by the following two propositions:

For every natural number *n*, there exists a natural number *s* such that *s* = *n*2.

This is clearly true; it just asserts that every natural number has a square. The meaning of the assertion in which the order of quantifiers is inversed is different:

There exists a natural number *s* such that for every natural number *n*, *s* = *n*2.

This is clearly false; it asserts that there is a single natural number *s* that is the square of *every* natural number. This is because the syntax directs that any variable cannot be a function of subsequently introduced variables.

A less trivial example from [mathematical analysis][71] are the concepts of [uniform][72] and [pointwise][73] continuity, whose definitions differ only by an exchange in the positions of two quantifiers. A function *f* from [__R__][74] to __R__ is called

In the former case, the particular value chosen for *δ* can be a function of both *ε* and *x*, the variables that precede it. In the latter case, *δ* can be a function only of *ε* (i.e., it has to be chosen independent of *x*). For example, *f*(*x*) = *x*2 satisfies pointwise, but not uniform continuity. In contrast, interchanging the two initial universal quantifiers in the definition of pointwise continuity does not change the meaning.

The maximum depth of nesting of quantifiers in a formula is called its "[quantifier rank][75]".

## Equivalent expressions\[[edit][76]\]

If *D* is a domain of *x* and *P*(*x*) is a predicate dependent on object variable *x*, then the universal proposition can be expressed as

![{\displaystyle \forall x\!\in \!D\;P(x).}](https://wikimedia.org/api/rest_v1/media/math/render/svg/4545696d0811ab5ec0802f0b3f18b6c3679a9b0b)

This notation is known as restricted or relativized or [bounded quantification][77]. Equivalently one can write,

![{\displaystyle \forall x\;(x\!\in \!D\to P(x)).}](https://wikimedia.org/api/rest_v1/media/math/render/svg/db6e3b976de52bd3a23f5777b79b481376d8f719)

The existential proposition can be expressed with bounded quantification as

![{\displaystyle \exists x\!\in \!D\;P(x),}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c0dc37edf253087f70dbaedd99bdfae103de164f)

or equivalently

![{\displaystyle \exists x\;(x\!\in \!\!D\land P(x)).}](https://wikimedia.org/api/rest_v1/media/math/render/svg/bd90ca2dcc913d32faed506ba05b781dfab6381d)

Together with negation, only one of either the universal or existential quantifier is needed to perform both tasks:

![{\displaystyle \neg (\forall x\!\in \!D\;P(x))\equiv \exists x\!\in \!D\;\neg P(x),}](https://wikimedia.org/api/rest_v1/media/math/render/svg/6ba0f046027ab4a7bdea9274d9f47f68d9fae5d3)

which shows that to disprove a "for all *x*" proposition, one needs no more than to find an *x* for which the predicate is false. Similarly,

![{\displaystyle \neg (\exists x\!\in \!D\;P(x))\equiv \forall x\!\in \!D\;\neg P(x),}](https://wikimedia.org/api/rest_v1/media/math/render/svg/6fe522dea2eee3b7bd005ee19a1012f4e5f836c9)

to disprove a "there exists an *x*" proposition, one needs to show that the predicate is false for all *x*.

## Range of quantification\[[edit][78]\]

Every quantification involves one specific variable and a [domain of discourse][79] or __range of quantification__ of that variable. The range of quantification specifies the set of values that the variable takes. In the examples above, the range of quantification is the set of natural numbers. Specification of the range of quantification allows us to express the difference between, say, asserting that a predicate holds for some natural number or for some [real number][80]. Expository conventions often reserve some variable names such as "*n*" for natural numbers, and "*x*" for real numbers, although relying exclusively on naming conventions cannot work in general, since ranges of variables can change in the course of a mathematical argument.

A more natural way to restrict the domain of discourse uses *guarded quantification*. For example, the guarded quantification

For some natural number *n*, *n* is even and *n* is prime

means

For some [even number][81] *n*, *n* is prime.

In some [mathematical theories][82], a single domain of discourse fixed in advance is assumed. For example, in [Zermelo–Fraenkel set theory][83], variables range over all sets. In this case, guarded quantifiers can be used to mimic a smaller range of quantification. Thus in the example above, to express

For every natural number *n*, *n*·2 = *n* + *n*

in Zermelo–Fraenkel set theory, one would write

For every *n*, if *n* belongs to __N__, then *n*·2 = *n* + *n*,

where __N__ is the set of all natural numbers.

## Formal semantics\[[edit][84]\]

Mathematical semantics is the application of [mathematics][85] to study the meaning of expressions in a formal language. It has three elements: a mathematical specification of a class of objects via [syntax][86], a mathematical specification of various [semantic domains][87] and the relation between the two, which is usually expressed as a function from syntactic objects to semantic ones. This article only addresses the issue of how quantifier elements are interpreted. The syntax of a formula can be given by a syntax tree. A quantifier has a [scope][88], and an occurrence of a variable *x* is [free][89] if it is not within the scope of a quantification for that variable. Thus in

![ \forall x (\exists y  B(x,y)) \vee C(y,x) ](https://wikimedia.org/api/rest_v1/media/math/render/svg/136f694d97fb7a22d3999e94dc8f3b5b525245ae)

the occurrence of both *x* and *y* in *C*(*y*, *x*) is free, while the occurrence of *x* and *y* in *B*(*y*, *x*) is bound (i.e. non-free).

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/QuantifierScopes_svg.svg/350px-QuantifierScopes_svg.svg.png)][90]

Syntax tree of the formula ![ \forall x (\exists y  B(x,y)) \vee C(y,x) ](https://wikimedia.org/api/rest_v1/media/math/render/svg/136f694d97fb7a22d3999e94dc8f3b5b525245ae), illustrating scope and variable capture. Bound and free variable occurrences are colored in red and green, respectively.

An [interpretation][91] for [first-order predicate calculus][92] assumes as given a domain of individuals *X*. A formula *A* whose free variables are *x*1, ..., *x*n is interpreted as a [boolean][93]\-valued function *F*(*v*1, ..., *v**n*) of *n* arguments, where each argument ranges over the domain *X*. Boolean-valued means that the function assumes one of the values __T__ (interpreted as truth) or __F__ (interpreted as falsehood). The interpretation of the formula

![ \forall x_n A(x_1, \ldots , x_n) ](https://wikimedia.org/api/rest_v1/media/math/render/svg/5eb8446639a2a6dc8de5abbba022a7e8a100f105)

is the function *G* of *n*\-1 arguments such that *G*(*v*1, ..., *v**n*\-1) = __T__ if and only if *F*(*v*1, ..., *v**n*\-1, *w*) = __T__ for every *w* in *X*. If *F*(*v*1, ..., *v**n*\-1, *w*) = __F__ for at least one value of *w*, then *G*(*v*1, ..., *v**n*\-1) = __F__. Similarly the interpretation of the formula

![ \exists x_n A(x_1, \ldots , x_n) ](https://wikimedia.org/api/rest_v1/media/math/render/svg/e8dd6667a3d1825e8e5d474ecb95e9a358d22ea5)

is the function *H* of *n*\-1 arguments such that *H*(*v*1, ..., *v**n*\-1) = __T__ if and only if *F*(*v*1, ..., *v**n*\-1, *w*) = __T__ for at least one *w* and *H*(*v*1, ..., *v**n*\-1) = __F__ otherwise.

The semantics for [uniqueness quantification][94] requires first-order predicate calculus with equality. This means there is given a distinguished two-placed predicate "="; the semantics is also modified accordingly so that "=" is always interpreted as the two-place equality relation on *X*. The interpretation of

![ \exists !   x_n A(x_1, \ldots , x_n) ](https://wikimedia.org/api/rest_v1/media/math/render/svg/b15b5c2fe62a6b15ea712099a5d1b0e0b8ea125c)

then is the function of *n*\-1 arguments, which is the logical *and* of the interpretations of

![ \exists  x_n A(x_1, \ldots , x_n) ](https://wikimedia.org/api/rest_v1/media/math/render/svg/e8dd6667a3d1825e8e5d474ecb95e9a358d22ea5)

![{\displaystyle \forall y,z{\big (}A(x_{1},\ldots ,x_{n-1},y)\wedge A(x_{1},\ldots ,x_{n-1},z)\implies y=z{\big )}.}](https://wikimedia.org/api/rest_v1/media/math/render/svg/cb5628c521d35488d5f1e8d8ab62ea3ab4dfde78)

Each kind of quantification defines a corresponding [closure operator][95] on the set of formulas, by adding, for each free variable *x*, a quantifier to bind *x*.[\[6\]][96] For example, the *existential closure* of the [open formula][97] *n*\>2 ∧ *x**n*+*y**n*\=*z**n* is the closed formula ∃*n* ∃*x* ∃*y* ∃*z* (*n*\>2 ∧ *x**n*+*y**n*\=*z**n*); the latter formula, when interpreted over the natural numbers, is known to be false by [Fermat's Last Theorem][98]. As another example, equational axioms, like *x*+*y*\=*y*+*x*, are usually meant to denote their *universal closure*, like ∀*x* ∀*y* (*x*+*y*\=*y*+*x*) to express [commutativity][99].

## Paucal, multal and other degree quantifiers\[[edit][100]\]

None of the quantifiers previously discussed apply to a quantification such as

There are many integers *n* < 100, such that *n* is divisible by 2 or 3 or 5.

One possible interpretation mechanism can be obtained as follows: Suppose that in addition to a semantic domain *X*, we have given a [probability measure][101] P defined on *X* and cutoff numbers 0 < *a* ≤ *b* ≤ 1. If *A* is a formula with free variables *x*1,...,*x**n* whose interpretation is the function *F* of variables *v*1,...,*v**n* then the interpretation of

![ \exists^{\mathrm{many}} x_n A(x_1, \ldots, x_{n-1}, x_n) ](https://wikimedia.org/api/rest_v1/media/math/render/svg/c47fb8ee2146d01a5cf91d4e1cc4bf327f0a7883)

is the function of *v*1,...,*v**n*\-1 which is __T__ if and only if

![ \operatorname{P} \{w: F(v_1, \ldots, v_{n-1}, w) = \mathbf{T} \} \geq b ](https://wikimedia.org/api/rest_v1/media/math/render/svg/789b8d8d984c0f8d564b694213500b16ed00448d)

and __F__ otherwise. Similarly, the interpretation of

![ \exists^{\mathrm{few}}  x_n  A(x_1, \ldots, x_{n-1}, x_n) ](https://wikimedia.org/api/rest_v1/media/math/render/svg/ed17b8efefe0ecd2b8bbee21baf4567a37d1247b)

is the function of *v*1,...,*v**n*\-1 which is __F__ if and only if

![ 0< \operatorname{P} \{w: F(v_1, \ldots, v_{n-1}, w) = \mathbf{T}\} \leq a ](https://wikimedia.org/api/rest_v1/media/math/render/svg/695f8bf544096a784aba3821611df0ef29fc573b)

and __T__ otherwise.\[*[citation needed][102]*\]

## Other quantifiers\[[edit][103]\]

A few other quantifiers have been proposed over time. In particular, the solution quantifier,[\[7\]][104]: 28  noted § ([section sign][105]) and read "those". For example,

![{\displaystyle \left[\S n\in \mathbb {N} \quad n^{2}\leq 4\right]=\{0,1,2\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1d23c1dea39d57915c78be8af2410258de45cccc)

is read "those *n* in __N__ such that *n*2 ≤ 4 are in {0,1,2}." The same construct is expressible in [set-builder notation][106] as

![{\displaystyle \{n\in \mathbb {N} :n^{2}\leq 4\}=\{0,1,2\}.}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4f81f13cc32bd091ad3d2cf4bf24f8385998346)

Contrary to the other quantifiers, § yields a set rather than a formula.[\[8\]][107]

Some other quantifiers sometimes used in mathematics include:

-   There are infinitely many elements such that...
-   For all but finitely many elements... (sometimes expressed as "for [almost all][108] elements...").
-   There are uncountably many elements such that...
-   For all but countably many elements...
-   For all elements in a set of positive measure...
-   For all elements except those in a set of measure zero...

## History\[[edit][109]\]

[Term logic][110], also called Aristotelian logic, treats quantification in a manner that is closer to natural language, and also less suited to formal analysis. Term logic treated *All*, *Some* and *No* in the 4th century BC, in an account also touching on the [alethic modalities][111].

In 1827, [George Bentham][112] published his *Outline of a new system of logic, with a critical examination of Dr Whately's Elements of Logic*, describing the principle of the quantifier, but the book was not widely circulated.[\[9\]][113]

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/De_Morgan_Augustus.jpg/190px-De_Morgan_Augustus.jpg)][114]

[William Hamilton][115] claimed to have coined the terms "quantify" and "quantification", most likely in his Edinburgh lectures c. 1840. [Augustus De Morgan][116] confirmed this in 1847, but modern usage began with De Morgan in 1862 where he makes statements such as "We are to take in both *all* and *some-not-all* as quantifiers".[\[10\]][117]

[Gottlob Frege][118], in his 1879 *[Begriffsschrift][119]*, was the first to employ a quantifier to bind a variable ranging over a [domain of discourse][120] and appearing in [predicates][121]. He would universally quantify a variable (or relation) by writing the variable over a dimple in an otherwise straight line appearing in his diagrammatic formulas. Frege did not devise an explicit notation for existential quantification, instead employing his equivalent of ~∀*x*~, or [contraposition][122]. Frege's treatment of quantification went largely unremarked until [Bertrand Russell][123]'s 1903 *Principles of Mathematics*.

In work that culminated in Peirce (1885), [Charles Sanders Peirce][124] and his student [Oscar Howard Mitchell][125] independently invented universal and existential quantifiers, and [bound variables][126]. Peirce and Mitchell wrote Πx and Σx where we now write ∀*x* and ∃*x*. Peirce's notation can be found in the writings of [Ernst Schröder][127], [Leopold Loewenheim][128], [Thoralf Skolem][129], and Polish logicians into the 1950s. Most notably, it is the notation of [Kurt Gödel][130]'s landmark 1930 paper on the [completeness][131] of [first-order logic][132], and 1931 paper on the [incompleteness][133] of [Peano arithmetic][134].

Peirce's approach to quantification also influenced [William Ernest Johnson][135] and [Giuseppe Peano][136], who invented yet another notation, namely (*x*) for the universal quantification of *x* and (in 1897) ∃*x* for the existential quantification of *x*. Hence for decades, the canonical notation in philosophy and mathematical logic was (*x*)*P* to express "all individuals in the domain of discourse have the property *P*," and "(∃*x*)*P*" for "there exists at least one individual in the domain of discourse having the property *P*." Peano, who was much better known than Peirce, in effect diffused the latter's thinking throughout Europe. Peano's notation was adopted by the *[Principia Mathematica][137]* of [Whitehead][138] and [Russell][139], [Quine][140], and [Alonzo Church][141]. In 1935, [Gentzen][142] introduced the ∀ symbol, by analogy with Peano's ∃ symbol. ∀ did not become canonical until the 1960s.

Around 1895, Peirce began developing his [existential graphs][143], whose variables can be seen as tacitly quantified. Whether the shallowest instance of a variable is even or odd determines whether that variable's quantification is universal or existential. (Shallowness is the contrary of depth, which is determined by the nesting of negations.) Peirce's graphical logic has attracted some attention in recent years by those researching [heterogeneous reasoning][144] and [diagrammatic inference][145].

## See also\[[edit][146]\]

-   [Absolute generality][147]
-   [Almost all][148]
-   [Branching quantifier][149]
-   [Conditional quantifier][150]
-   [Counting quantification][151]
-   [Eventually (mathematics)][152]
-   [Generalized quantifier][153] — a higher-order property used as standard semantics of quantified [noun phrases][154]
-   [Lindström quantifier][155] — a generalized polyadic quantifier
-   [Quantifier elimination][156]
-   [Quantifier shift][157]

## References\[[edit][158]\]

1.  __[^][159]__ ["Predicates and Quantifiers"][160]. *www.csm.ornl.gov*. Retrieved 2020-09-04.
2.  __[^][161]__ ["1.2 Quantifiers"][162]. *www.whitman.edu*. Retrieved 2020-09-04.
3.  __[^][163]__ K.R. Apt (1990). "Logic Programming". In Jan van Leeuwen (ed.). *Formal Models and Semantics*. Handbook of Theoretical Computer Science. __B__. Elsevier. pp. 493–574. [ISBN][164] [0-444-88074-7][165]. Here: p.497
4.  __[^][166]__ John E. Hopcroft and Jeffrey D. Ullman (1979). *Introduction to Automata Theory, Languages, and Computation*. Reading/MA: Addison-Wesley. [ISBN][167] [0-201-02988-X][168]. Here: p.p.344
5.  __[^][169]__ Hans Hermes (1973). *Introduction to Mathematical Logic*. Hochschultext (Springer-Verlag). London: Springer. [ISBN][170] [3540058192][171]. [ISSN][172] [1431-4657][173]. Here: Def. II.1.5
6.  __[^][174]__ in general, for a quantifer __Q__, closure makes sense only if the order of __Q__ quantification does not matter, i.e. if __Q__*x* __Q__*y* *p*(*x*,*y*) is equivalent to __Q__*y* __Q__*x* *p*(*x*,*y*). This is satisfied for __Q__ ∈ {∀,∃}, cf. [#Order of quantifiers (nesting)][175] above.
7.  __[^][176]__ [Hehner, Eric C. R.][177], 2004, [*Practical Theory of Programming*][178], 2nd edition, p. 28
8.  __[^][179]__ Hehner (2004) uses the term "quantifier" in a very general sense, also including e.g. [summation][180].
9.  __[^][181]__ George Bentham, *Outline of a new system of logic: with a critical examination of Dr. Whately's Elements of Logic* (1827); Thoemmes; Facsimile edition (1990) [ISBN][182] [1-85506-029-9][183]
10.  __[^][184]__ Peters, Stanley; Westerståhl, Dag (2006-04-27). [*Quantifiers in Language and Logic*][185]. Clarendon Press. pp. 34–. [ISBN][186] [978-0-19-929125-0][187].

## Bibliography\[[edit][188]\]

-   [Barwise, Jon][189]; and [Etchemendy, John][190], 2000. *Language Proof and Logic*. CSLI (University of Chicago Press) and New York: Seven Bridges Press. A gentle introduction to [first-order logic][191] by two first-rate logicians.
-   [Frege, Gottlob][192], 1879. *[Begriffsschrift][193]*. Translated in [Jean van Heijenoort][194], 1967. *From Frege to Gödel: A Source Book on Mathematical Logic, 1879-1931*. Harvard University Press. The first appearance of quantification.
-   [Hilbert, David][195]; and [Ackermann, Wilhelm][196], 1950 (1928). *[Principles of Mathematical Logic][197]*. Chelsea. Translation of *Grundzüge der theoretischen Logik*. Springer-Verlag. The 1928 first edition is the first time quantification was consciously employed in the now-standard manner, namely as binding variables ranging over some fixed domain of discourse. This is the defining aspect of [first-order logic][198].
-   [Peirce, C. S.][199], 1885, "On the Algebra of Logic: A Contribution to the Philosophy of Notation, *American Journal of Mathematics*, Vol. 7, pp. 180–202. Reprinted in Kloesel, N. *et al.*, eds., 1993. *Writings of C. S. Peirce, Vol. 5*. Indiana University Press. The first appearance of quantification in anything like its present form.
-   [Reichenbach, Hans][200], 1975 (1947). *Elements of Symbolic Logic*, Dover Publications. The quantifiers are discussed in chapters §18 "Binding of variables" through §30 "Derivations from Synthetic Premises".
-   Westerståhl, Dag, 2001, "Quantifiers," in Goble, Lou, ed., *The Blackwell Guide to Philosophical Logic*. Blackwell.
-   Wiese, Heike, 2003. *Numbers, language, and the human mind*. Cambridge University Press. [ISBN][201] [0-521-83182-2][202].

## External links\[[edit][203]\]

-   ["Quantifier"][204], *[Encyclopedia of Mathematics][205]*, [EMS Press][206], 2001 \[1994\]
-   [""For all" and "there exists" topical phrases, sentences and expressions"][207]. Archived from [the original][208] on March 1, 2000.. From College of Natural Sciences, [University of Hawaii at Manoa][209].
-   [Stanford Encyclopedia of Philosophy][210]:
    -   Shapiro, Stewart (2000). ["Classical Logic"][211] (Covers syntax, model theory, and metatheory for first order logic in the natural deduction style.)
    -   Westerståhl, Dag (2005). ["Generalized quantifiers"][212]
-   Peters, Stanley; Westerståhl, Dag (2002). ["Quantifiers"][213]

[1]: https://en.wikipedia.org/wiki/Mathematical_logic "Mathematical logic"
[2]: https://en.wikipedia.org/wiki/Domain_of_discourse "Domain of discourse"
[3]: https://en.wikipedia.org/wiki/Open_formula "Open formula"
[4]: https://en.wikipedia.org/wiki/Universal_quantifier "Universal quantifier"
[5]: https://en.wikipedia.org/wiki/First_order_logic "First order logic"
[6]: https://en.wikipedia.org/wiki/Existential_quantifier "Existential quantifier"
[7]: https://en.wikipedia.org/wiki/Scope_(logic) "Scope (logic)"
[8]: https://en.wikipedia.org/wiki/Free_variables_and_bound_variables "Free variables and bound variables"
[9]: https://en.wikipedia.org/wiki/Subformula "Subformula"
[10]: https://en.wikipedia.org/wiki/Dual_(mathematics) "Dual (mathematics)"
[11]: https://en.wikipedia.org/wiki/Negation "Negation"
[12]: https://en.wikipedia.org/wiki/Second_order_logic "Second order logic"
[13]: https://en.wikipedia.org/wiki/Higher_order_logic "Higher order logic"
[14]: https://en.wikipedia.org/wiki/Andrzej_Mostowski "Andrzej Mostowski"
[15]: https://en.wikipedia.org/wiki/Per_Lindstr%C3%B6m "Per Lindström"
[16]: https://en.wikipedia.org/wiki/Natural_language "Natural language"
[17]: https://en.wikipedia.org/wiki/Generalized_quantifier "Generalized quantifier"
[18]: https://en.wikipedia.org/w/index.php?title=Quantifier_(logic)&action=edit&section=1 "Edit section: Relations to logical conjunction and disjunction"
[19]: https://en.wikipedia.org/wiki/Logical_conjunction "Logical conjunction"
[20]: https://en.wikipedia.org/wiki/Monadic_predicate_calculus "Monadic predicate calculus"
[21]: https://en.wikipedia.org/wiki/Existential_quantification "Existential quantification"
[22]: https://en.wikipedia.org/wiki/Logical_disjunction "Logical disjunction"
[23]: https://en.wikipedia.org/w/index.php?title=Quantifier_(logic)&action=edit&section=2 "Edit section: Infinite domain of discourse"
[24]: https://en.wikipedia.org/wiki/Logical_conjunction "Logical conjunction"
[25]: https://en.wikipedia.org/wiki/Formal_language "Formal language"
[26]: https://en.wikipedia.org/wiki/Syntax_(logic) "Syntax (logic)"
[27]: https://en.wikipedia.org/wiki/Finite_set "Finite set"
[28]: https://en.wikipedia.org/wiki/Algorithm "Algorithm"
[29]: https://en.wikipedia.org/wiki/Irrational_number "Irrational number"
[30]: https://en.wikipedia.org/wiki/Natural_number "Natural number"
[31]: https://en.wikipedia.org/wiki/Disjunction_(logic) "Disjunction (logic)"
[32]: https://en.wikipedia.org/wiki/Natural_number "Natural number"
[33]: https://en.wikipedia.org/w/index.php?title=Quantifier_(logic)&action=edit&section=3 "Edit section: Algebraic approaches to quantification"
[34]: https://en.wikipedia.org/wiki/Abstract_algebra "Abstract algebra"
[35]: https://en.wikipedia.org/wiki/Model_theory "Model theory"
[36]: https://en.wikipedia.org/wiki/Formal_language "Formal language"
[37]: https://en.wikipedia.org/wiki/Wikipedia:Please_clarify "Wikipedia:Please clarify"
[38]: https://en.wikipedia.org/wiki/Relation_algebra "Relation algebra"
[39]: https://en.wikipedia.org/wiki/Augustus_De_Morgan "Augustus De Morgan"
[40]: https://en.wikipedia.org/wiki/Charles_Sanders_Peirce "Charles Sanders Peirce"
[41]: https://en.wikipedia.org/wiki/Ernst_Schr%C3%B6der_(mathematician) "Ernst Schröder (mathematician)"
[42]: https://en.wikipedia.org/wiki/Alfred_Tarski "Alfred Tarski"
[43]: https://en.wikipedia.org/wiki/Axiomatic_set_theory "Axiomatic set theory"
[44]: https://en.wikipedia.org/wiki/ZFC "ZFC"
[45]: https://en.wikipedia.org/wiki/Peano_arithmetic "Peano arithmetic"
[46]: https://en.wikipedia.org/wiki/Cylindric_algebra "Cylindric algebra"
[47]: https://en.wikipedia.org/wiki/Alfred_Tarski "Alfred Tarski"
[48]: https://en.wikipedia.org/wiki/Leon_Henkin "Leon Henkin"
[49]: https://en.wikipedia.org/wiki/Polyadic_algebra "Polyadic algebra"
[50]: https://en.wikipedia.org/wiki/Paul_Halmos "Paul Halmos"
[51]: https://en.wikipedia.org/w/index.php?title=Quantifier_(logic)&action=edit&section=4 "Edit section: Notation"
[52]: https://en.wikipedia.org/wiki/%E2%88%80 "∀"
[53]: https://en.wikipedia.org/wiki/A "A"
[54]: https://en.wikipedia.org/wiki/%E2%88%83 "∃"
[55]: https://en.wikipedia.org/wiki/E "E"
[56]: https://en.wikipedia.org/wiki/Quantifier_(logic)#cite_note-1
[57]: https://en.wikipedia.org/wiki/Quantifier_(logic)#cite_note-2
[58]: https://en.wikipedia.org/wiki/Predicate_(mathematical_logic) "Predicate (mathematical logic)"
[59]: https://en.wikipedia.org/wiki/Inclusive_or "Inclusive or"
[60]: https://en.wikipedia.org/wiki/Quantifier_(logic)#cite_note-3
[61]: https://en.wikipedia.org/wiki/Quantifier_(logic)#cite_note-4
[62]: https://en.wikipedia.org/wiki/Quantifier_(logic)#cite_note-5
[63]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[64]: https://en.wikipedia.org/wiki/Zermelo%E2%80%93Fraenkel_set_theory "Zermelo–Fraenkel set theory"
[65]: https://en.wikipedia.org/wiki/Type_system "Type system"
[66]: https://en.wikipedia.org/wiki/Computer_programming "Computer programming"
[67]: https://en.wikipedia.org/wiki/Type_(type_theory) "Type (type theory)"
[68]: https://en.wikipedia.org/wiki/Uniqueness_quantification "Uniqueness quantification"
[69]: https://en.wikipedia.org/wiki/Pronoun "Pronoun"
[70]: https://en.wikipedia.org/w/index.php?title=Quantifier_(logic)&action=edit&section=5 "Edit section: Order of quantifiers (nesting)"
[71]: https://en.wikipedia.org/wiki/Mathematical_analysis "Mathematical analysis"
[72]: https://en.wikipedia.org/wiki/Uniform_continuity "Uniform continuity"
[73]: https://en.wikipedia.org/wiki/Continuous_function "Continuous function"
[74]: https://en.wikipedia.org/wiki/Real_numbers "Real numbers"
[75]: https://en.wikipedia.org/wiki/Quantifier_rank "Quantifier rank"
[76]: https://en.wikipedia.org/w/index.php?title=Quantifier_(logic)&action=edit&section=6 "Edit section: Equivalent expressions"
[77]: https://en.wikipedia.org/wiki/Bounded_quantifier "Bounded quantifier"
[78]: https://en.wikipedia.org/w/index.php?title=Quantifier_(logic)&action=edit&section=7 "Edit section: Range of quantification"
[79]: https://en.wikipedia.org/wiki/Domain_of_discourse "Domain of discourse"
[80]: https://en.wikipedia.org/wiki/Real_number "Real number"
[81]: https://en.wikipedia.org/wiki/Even_number "Even number"
[82]: https://en.wikipedia.org/wiki/Mathematical_theory "Mathematical theory"
[83]: https://en.wikipedia.org/wiki/Zermelo%E2%80%93Fraenkel_set_theory "Zermelo–Fraenkel set theory"
[84]: https://en.wikipedia.org/w/index.php?title=Quantifier_(logic)&action=edit&section=8 "Edit section: Formal semantics"
[85]: https://en.wikipedia.org/wiki/Mathematics "Mathematics"
[86]: https://en.wikipedia.org/wiki/Syntax_(logic) "Syntax (logic)"
[87]: https://en.wikipedia.org/wiki/Semantic_domain "Semantic domain"
[88]: https://en.wikipedia.org/wiki/Scope_(logic) "Scope (logic)"
[89]: https://en.wikipedia.org/wiki/Free_variable "Free variable"
[90]: https://en.wikipedia.org/wiki/File:QuantifierScopes_svg.svg
[91]: https://en.wikipedia.org/wiki/Interpretation_(logic) "Interpretation (logic)"
[92]: https://en.wikipedia.org/wiki/First-order_predicate_calculus "First-order predicate calculus"
[93]: https://en.wikipedia.org/wiki/Boolean_function "Boolean function"
[94]: https://en.wikipedia.org/wiki/Uniqueness_quantification "Uniqueness quantification"
[95]: https://en.wikipedia.org/wiki/Closure_operator "Closure operator"
[96]: https://en.wikipedia.org/wiki/Quantifier_(logic)#cite_note-6
[97]: https://en.wikipedia.org/wiki/Open_formula "Open formula"
[98]: https://en.wikipedia.org/wiki/Fermat%27s_Last_Theorem "Fermat's Last Theorem"
[99]: https://en.wikipedia.org/wiki/Commutativity "Commutativity"
[100]: https://en.wikipedia.org/w/index.php?title=Quantifier_(logic)&action=edit&section=9 "Edit section: Paucal, multal and other degree quantifiers"
[101]: https://en.wikipedia.org/wiki/Probability_measure "Probability measure"
[102]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[103]: https://en.wikipedia.org/w/index.php?title=Quantifier_(logic)&action=edit&section=10 "Edit section: Other quantifiers"
[104]: https://en.wikipedia.org/wiki/Quantifier_(logic)#cite_note-7
[105]: https://en.wikipedia.org/wiki/Section_sign "Section sign"
[106]: https://en.wikipedia.org/wiki/Set-builder_notation "Set-builder notation"
[107]: https://en.wikipedia.org/wiki/Quantifier_(logic)#cite_note-8
[108]: https://en.wikipedia.org/wiki/Almost_all "Almost all"
[109]: https://en.wikipedia.org/w/index.php?title=Quantifier_(logic)&action=edit&section=11 "Edit section: History"
[110]: https://en.wikipedia.org/wiki/Term_logic "Term logic"
[111]: https://en.wikipedia.org/wiki/Alethic_modalities "Alethic modalities"
[112]: https://en.wikipedia.org/wiki/George_Bentham "George Bentham"
[113]: https://en.wikipedia.org/wiki/Quantifier_(logic)#cite_note-9
[114]: https://en.wikipedia.org/wiki/File:De_Morgan_Augustus.jpg
[115]: https://en.wikipedia.org/wiki/Sir_William_Hamilton,_9th_Baronet "Sir William Hamilton, 9th Baronet"
[116]: https://en.wikipedia.org/wiki/Augustus_De_Morgan "Augustus De Morgan"
[117]: https://en.wikipedia.org/wiki/Quantifier_(logic)#cite_note-10
[118]: https://en.wikipedia.org/wiki/Gottlob_Frege "Gottlob Frege"
[119]: https://en.wikipedia.org/wiki/Begriffsschrift "Begriffsschrift"
[120]: https://en.wikipedia.org/wiki/Domain_of_discourse "Domain of discourse"
[121]: https://en.wikipedia.org/wiki/Predicate_(mathematical_logic) "Predicate (mathematical logic)"
[122]: https://en.wikipedia.org/wiki/Contraposition "Contraposition"
[123]: https://en.wikipedia.org/wiki/Bertrand_Russell "Bertrand Russell"
[124]: https://en.wikipedia.org/wiki/Charles_Sanders_Peirce "Charles Sanders Peirce"
[125]: https://en.wikipedia.org/w/index.php?title=Oscar_Howard_Mitchell&action=edit&redlink=1 "Oscar Howard Mitchell (page does not exist)"
[126]: https://en.wikipedia.org/wiki/Bound_variable "Bound variable"
[127]: https://en.wikipedia.org/wiki/Ernst_Schr%C3%B6der_(mathematician) "Ernst Schröder (mathematician)"
[128]: https://en.wikipedia.org/wiki/Leopold_Loewenheim "Leopold Loewenheim"
[129]: https://en.wikipedia.org/wiki/Thoralf_Skolem "Thoralf Skolem"
[130]: https://en.wikipedia.org/wiki/Kurt_G%C3%B6del "Kurt Gödel"
[131]: https://en.wikipedia.org/wiki/G%C3%B6del%27s_completeness_theorem "Gödel's completeness theorem"
[132]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[133]: https://en.wikipedia.org/wiki/G%C3%B6del%27s_incompleteness_theorem "Gödel's incompleteness theorem"
[134]: https://en.wikipedia.org/wiki/Peano_arithmetic "Peano arithmetic"
[135]: https://en.wikipedia.org/wiki/William_Ernest_Johnson "William Ernest Johnson"
[136]: https://en.wikipedia.org/wiki/Giuseppe_Peano "Giuseppe Peano"
[137]: https://en.wikipedia.org/wiki/Principia_Mathematica "Principia Mathematica"
[138]: https://en.wikipedia.org/wiki/Alfred_North_Whitehead "Alfred North Whitehead"
[139]: https://en.wikipedia.org/wiki/Bertrand_Russell "Bertrand Russell"
[140]: https://en.wikipedia.org/wiki/Willard_Van_Orman_Quine "Willard Van Orman Quine"
[141]: https://en.wikipedia.org/wiki/Alonzo_Church "Alonzo Church"
[142]: https://en.wikipedia.org/wiki/Gentzen "Gentzen"
[143]: https://en.wikipedia.org/wiki/Existential_graph "Existential graph"
[144]: https://en.wikipedia.org/w/index.php?title=Heterogeneous_reasoning&action=edit&redlink=1 "Heterogeneous reasoning (page does not exist)"
[145]: https://en.wikipedia.org/wiki/Logical_graph "Logical graph"
[146]: https://en.wikipedia.org/w/index.php?title=Quantifier_(logic)&action=edit&section=12 "Edit section: See also"
[147]: https://en.wikipedia.org/wiki/Absolute_generality "Absolute generality"
[148]: https://en.wikipedia.org/wiki/Almost_all "Almost all"
[149]: https://en.wikipedia.org/wiki/Branching_quantifier "Branching quantifier"
[150]: https://en.wikipedia.org/wiki/Conditional_quantifier "Conditional quantifier"
[151]: https://en.wikipedia.org/wiki/Counting_quantification "Counting quantification"
[152]: https://en.wikipedia.org/wiki/Eventually_(mathematics) "Eventually (mathematics)"
[153]: https://en.wikipedia.org/wiki/Generalized_quantifier "Generalized quantifier"
[154]: https://en.wikipedia.org/wiki/Noun_phrases "Noun phrases"
[155]: https://en.wikipedia.org/wiki/Lindstr%C3%B6m_quantifier "Lindström quantifier"
[156]: https://en.wikipedia.org/wiki/Quantifier_elimination "Quantifier elimination"
[157]: https://en.wikipedia.org/wiki/Quantifier_shift "Quantifier shift"
[158]: https://en.wikipedia.org/w/index.php?title=Quantifier_(logic)&action=edit&section=13 "Edit section: References"
[159]: https://en.wikipedia.org/wiki/Quantifier_(logic)#cite_ref-1 "Jump up"
[160]: https://www.csm.ornl.gov/~sheldon/ds/sec1.6.html
[161]: https://en.wikipedia.org/wiki/Quantifier_(logic)#cite_ref-2 "Jump up"
[162]: https://www.whitman.edu/mathematics/higher_math_online/section01.02.html
[163]: https://en.wikipedia.org/wiki/Quantifier_(logic)#cite_ref-3 "Jump up"
[164]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[165]: https://en.wikipedia.org/wiki/Special:BookSources/0-444-88074-7 "Special:BookSources/0-444-88074-7"
[166]: https://en.wikipedia.org/wiki/Quantifier_(logic)#cite_ref-4 "Jump up"
[167]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[168]: https://en.wikipedia.org/wiki/Special:BookSources/0-201-02988-X "Special:BookSources/0-201-02988-X"
[169]: https://en.wikipedia.org/wiki/Quantifier_(logic)#cite_ref-5 "Jump up"
[170]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[171]: https://en.wikipedia.org/wiki/Special:BookSources/3540058192 "Special:BookSources/3540058192"
[172]: https://en.wikipedia.org/wiki/ISSN_(identifier) "ISSN (identifier)"
[173]: https://www.worldcat.org/issn/1431-4657
[174]: https://en.wikipedia.org/wiki/Quantifier_(logic)#cite_ref-6 "Jump up"
[175]: https://en.wikipedia.org/wiki/Quantifier_(logic)#Order_of_quantifiers_(nesting)
[176]: https://en.wikipedia.org/wiki/Quantifier_(logic)#cite_ref-7 "Jump up"
[177]: https://en.wikipedia.org/wiki/E._C._R._Hehner "E. C. R. Hehner"
[178]: http://www.cs.utoronto.ca/~hehner/aPToP
[179]: https://en.wikipedia.org/wiki/Quantifier_(logic)#cite_ref-8 "Jump up"
[180]: https://en.wikipedia.org/wiki/Summation "Summation"
[181]: https://en.wikipedia.org/wiki/Quantifier_(logic)#cite_ref-9 "Jump up"
[182]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[183]: https://en.wikipedia.org/wiki/Special:BookSources/1-85506-029-9 "Special:BookSources/1-85506-029-9"
[184]: https://en.wikipedia.org/wiki/Quantifier_(logic)#cite_ref-10 "Jump up"
[185]: https://books.google.com/books?id=PrYUDAAAQBAJ&pg=PA34
[186]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[187]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-19-929125-0 "Special:BookSources/978-0-19-929125-0"
[188]: https://en.wikipedia.org/w/index.php?title=Quantifier_(logic)&action=edit&section=14 "Edit section: Bibliography"
[189]: https://en.wikipedia.org/wiki/Jon_Barwise "Jon Barwise"
[190]: https://en.wikipedia.org/wiki/John_Etchemendy "John Etchemendy"
[191]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[192]: https://en.wikipedia.org/wiki/Gottlob_Frege "Gottlob Frege"
[193]: https://en.wikipedia.org/wiki/Begriffsschrift "Begriffsschrift"
[194]: https://en.wikipedia.org/wiki/Jean_van_Heijenoort "Jean van Heijenoort"
[195]: https://en.wikipedia.org/wiki/David_Hilbert "David Hilbert"
[196]: https://en.wikipedia.org/wiki/Wilhelm_Ackermann "Wilhelm Ackermann"
[197]: https://en.wikipedia.org/wiki/Principles_of_Mathematical_Logic "Principles of Mathematical Logic"
[198]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[199]: https://en.wikipedia.org/wiki/Charles_Sanders_Peirce "Charles Sanders Peirce"
[200]: https://en.wikipedia.org/wiki/Hans_Reichenbach "Hans Reichenbach"
[201]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[202]: https://en.wikipedia.org/wiki/Special:BookSources/0-521-83182-2 "Special:BookSources/0-521-83182-2"
[203]: https://en.wikipedia.org/w/index.php?title=Quantifier_(logic)&action=edit&section=15 "Edit section: External links"
[204]: https://www.encyclopediaofmath.org/index.php?title=Quantifier
[205]: https://en.wikipedia.org/wiki/Encyclopedia_of_Mathematics "Encyclopedia of Mathematics"
[206]: https://en.wikipedia.org/wiki/European_Mathematical_Society "European Mathematical Society"
[207]: https://web.archive.org/web/20000301144835/http://www.math.hawaii.edu/~ramsey/Logic/ForAll.html
[208]: http://www.math.hawaii.edu/~ramsey/Logic/ForAll.html
[209]: https://en.wikipedia.org/wiki/University_of_Hawaii_at_Manoa "University of Hawaii at Manoa"
[210]: https://en.wikipedia.org/wiki/Stanford_Encyclopedia_of_Philosophy "Stanford Encyclopedia of Philosophy"
[211]: http://plato.stanford.edu/entries/logic-classical/
[212]: http://plato.stanford.edu/entries/generalized-quantifiers/
[213]: http://www.stanford.edu/group/nasslli/courses/peters-wes/PWbookdraft2-3.pdf

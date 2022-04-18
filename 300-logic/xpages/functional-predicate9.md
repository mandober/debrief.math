---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Functional_predicate
page-title:       Functional predicate - Wikipedia
article-title:    Functional predicate - Wikipedia
---
# Functional predicate - Wikipedia

In formal logic and related branches of mathematics, a functional predicate, or function symbol, is a logical symbol that may be applied to an object term to produce another object term.
Functional predicates are also sometimes called mappings, but that term has additional meanings in mathematics.
In a model, a function symbol will be modelled by a function.
In [formal logic][1] and related branches of [mathematics][2], a __functional predicate__, or __function symbol__, is a logical symbol that may be applied to an object term to produce another object term. Functional predicates are also sometimes called __mappings__, but that term has [additional meanings in mathematics][3]. In a [model][4], a function symbol will be modelled by a [function][5].

Specifically, the symbol *F* in a [formal language][6] is a functional symbol if, [given any][7] symbol *X* representing an object in the language, *F*(*X*) is again a symbol representing an object in that language. In [typed logic][8], *F* is a functional symbol with *domain* type __T__ and *codomain* type __U__ if, given any symbol *X* representing an object of type __T__, *F*(*X*) is a symbol representing an object of type __U__. One can similarly define function symbols of more than one variable, analogous to functions of more than one variable; a function symbol in [zero][9] variables is simply a [constant][10] symbol.

Now consider a model of the formal language, with the types __T__ and __U__ modelled by [sets][11] \[__T__\] and \[__U__\] and each symbol *X* of type __T__ modelled by an element \[*X*\] in \[__T__\]. Then *F* can be modelled by the set

![[F]:=\big\{([X],[F(X)]):[X]\in[\mathbf{T}]\big\},](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4330f8ae04afd533c5bf1fbe3fc20c065056d4d)

which is simply a [function][12] with domain \[__T__\] and codomain \[__U__\]. It is a requirement of a consistent model that \[*F*(*X*)\] = \[*F*(*Y*)\] whenever \[*X*\] = \[*Y*\].

## Introducing new function symbols\[[edit][13]\]

In a treatment of [predicate logic][14] that allows one to introduce new predicate symbols, one will also want to be able to introduce new function symbols. Given the function symbols *F* and *G*, one can introduce a new function symbol *F* ∘ *G*, the *[composition][15]* of *F* and *G*, satisfying (*F* ∘ *G*)(*X*) = *F*(*G*(*X*)), [for all][16] *X*. Of course, the right side of this equation doesn't make sense in typed logic unless the domain type of *F* matches the codomain type of *G*, so this is required for the composition to be defined.

One also gets certain function symbols automatically. In untyped logic, there is an *identity predicate* id that satisfies id(*X*) = *X* for all *X*. In typed logic, given any type __T__, there is an identity predicate id__T__ with domain and codomain type __T__; it satisfies id__T__(*X*) = *X* for all *X* of type __T__. Similarly, if __T__ is a [subtype][17] of __U__, then there is an inclusion predicate of domain type __T__ and codomain type __U__ that satisfies the same equation; there are additional function symbols associated with other ways of constructing new types out of old ones.

Additionally, one can define functional predicates after proving an appropriate [theorem][18]. (If you're working in a [formal system][19] that doesn't allow you to introduce new symbols after proving theorems, then you will have to use relation symbols to get around this, as in the next section.) Specifically, if you can prove that for every *X* (or every *X* of a certain type), [there exists][20] a [unique][21] *Y* satisfying some condition *P*, then you can introduce a function symbol *F* to indicate this. Note that *P* will itself be a relational [predicate][22] involving both *X* and *Y*. So if there is such a predicate *P* and a theorem:

For all *X* of type __T__, for some unique *Y* of type __U__, *P*(*X*,*Y*),

then you can introduce a function symbol *F* of domain type __T__ and codomain type __U__ that satisfies:

For all *X* of type __T__, for all *Y* of type __U__, *P*(*X*,*Y*) [if and only if][23] *Y* = *F*(*X*).

## Doing without functional predicates\[[edit][24]\]

Many treatments of predicate logic don't allow functional predicates, only relational [predicates][25]. This is useful, for example, in the context of proving [metalogical][26] theorems (such as [Gödel's incompleteness theorems][27]), where one doesn't want to allow the introduction of new functional symbols (nor any other new symbols, for that matter). But there is a method of replacing functional symbols with relational symbols wherever the former may occur; furthermore, this is algorithmic and thus suitable for applying most metalogical theorems to the result.

Specifically, if *F* has domain type __T__ and [codomain][28] type __U__, then it can be replaced with a predicate *P* of type (__T__,__U__). Intuitively, *P*(*X*,*Y*) means *F*(*X*) = *Y*. Then whenever *F*(*X*) would appear in a statement, you can replace it with a new symbol *Y* of type __U__ and include another statement *P*(*X*,*Y*). To be able to make the same deductions, you need an additional proposition:

[For all][29] *X* of type __T__, for some [unique][30] *Y* of type __U__, *P*(*X*,*Y*).

(Of course, this is the same proposition that had to be proven as a theorem before introducing a new function symbol in the previous section.)

Because the elimination of functional predicates is both convenient for some purposes and possible, many treatments of formal logic do not deal explicitly with function symbols but instead use only relation symbols; another way to think of this is that a functional predicate is a *special kind of* predicate, specifically one that satisfies the proposition above. This may seem to be a problem if you wish to specify a proposition [schema][31] that applies only to functional predicates *F*; how do you know ahead of time whether it satisfies that condition? To get an equivalent formulation of the schema, first replace anything of the form *F*(*X*) with a new variable *Y*. Then [universally quantify][32] over each *Y* immediately after the corresponding *X* is introduced (that is, after *X* is quantified over, or at the beginning of the statement if *X* is free), and guard the quantification with *P*(*X*,*Y*). Finally, make the entire statement a [material consequence][33] of the uniqueness condition for a functional predicate above.

Let us take as an example the [axiom schema of replacement][34] in [Zermelo–Fraenkel set theory][35]. (This example uses [mathematical symbols][36].) This schema states (in one form), for any functional predicate *F* in one variable:

![\forall A, \exists B, \forall C, C \in A \rightarrow F(C)\in B.](https://wikimedia.org/api/rest_v1/media/math/render/svg/52385a21698e3e5fa57b43421e7647ad81946e33)

First, we must replace *F*(*C*) with some other variable *D*:

![\forall A, \exists B, \forall C, C \in A\rightarrow D \in B.](https://wikimedia.org/api/rest_v1/media/math/render/svg/33872fc8613b90e18ffe3f4cde3db2f78111cc23)

Of course, this statement isn't correct; *D* must be quantified over just after *C*:

![\forall A, \exists B, \forall C, \forall D, C \in A \rightarrow D\in B.](https://wikimedia.org/api/rest_v1/media/math/render/svg/731e71011bc9c417dd0f8034eceb4f75d0a3f283)

We still must introduce *P* to guard this quantification:

![\forall A, \exists B, \forall C, \forall D, P(C,D) \rightarrow (C \in A \rightarrow D \in B).](https://wikimedia.org/api/rest_v1/media/math/render/svg/0baee1b6082bceeb7b67b17983ee75eab6345560)

This is almost correct, but it applies to too many predicates; what we actually want is:

![(\forall X, \exists ! Y, P(X,Y))\rightarrow (\forall A, \exists B, \forall C, \forall D, P(C,D)\rightarrow (C \in A \rightarrow D \in B)).](https://wikimedia.org/api/rest_v1/media/math/render/svg/02f489cb820e3b74d2689a46b67fb91989a242db)

This version of the axiom schema of replacement is now suitable for use in a formal language that doesn't allow the introduction of new function symbols. Alternatively, one may interpret the original statement as a statement in such a formal language; it was merely an abbreviation for the statement produced at the end.

## See also\[[edit][37]\]

-   [Function symbol (logic)][38]
-   [Logical connective][39]
-   [Logical constant][40]

[1]: https://en.wikipedia.org/wiki/Formal_logic "Formal logic"
[2]: https://en.wikipedia.org/wiki/Mathematics "Mathematics"
[3]: https://en.wikipedia.org/wiki/Mapping_(mathematics) "Mapping (mathematics)"
[4]: https://en.wikipedia.org/wiki/Model_(logic) "Model (logic)"
[5]: https://en.wikipedia.org/wiki/Function_(mathematics) "Function (mathematics)"
[6]: https://en.wikipedia.org/wiki/Formal_language "Formal language"
[7]: https://en.wikipedia.org/wiki/Given_any "Given any"
[8]: https://en.wikipedia.org/wiki/Typed_logic "Typed logic"
[9]: https://en.wikipedia.org/wiki/0_(number) "0 (number)"
[10]: https://en.wikipedia.org/wiki/Logical_constant "Logical constant"
[11]: https://en.wikipedia.org/wiki/Set_(mathematics) "Set (mathematics)"
[12]: https://en.wikipedia.org/wiki/Function_(mathematics) "Function (mathematics)"
[13]: https://en.wikipedia.org/w/index.php?title=Functional_predicate&action=edit&section=1 "Edit section: Introducing new function symbols"
[14]: https://en.wikipedia.org/wiki/Predicate_logic "Predicate logic"
[15]: https://en.wikipedia.org/wiki/Function_composition "Function composition"
[16]: https://en.wikipedia.org/wiki/For_all "For all"
[17]: https://en.wikipedia.org/wiki/Subtyping "Subtyping"
[18]: https://en.wikipedia.org/wiki/Theorem "Theorem"
[19]: https://en.wikipedia.org/wiki/Formal_system "Formal system"
[20]: https://en.wikipedia.org/wiki/There_exists "There exists"
[21]: https://en.wikipedia.org/wiki/Unique_(mathematics) "Unique (mathematics)"
[22]: https://en.wikipedia.org/wiki/Predicate_(logic) "Predicate (logic)"
[23]: https://en.wikipedia.org/wiki/If_and_only_if "If and only if"
[24]: https://en.wikipedia.org/w/index.php?title=Functional_predicate&action=edit&section=2 "Edit section: Doing without functional predicates"
[25]: https://en.wikipedia.org/wiki/Predicate_(logic) "Predicate (logic)"
[26]: https://en.wikipedia.org/wiki/Metalogic "Metalogic"
[27]: https://en.wikipedia.org/wiki/G%C3%B6del%27s_incompleteness_theorem "Gödel's incompleteness theorem"
[28]: https://en.wikipedia.org/wiki/Codomain "Codomain"
[29]: https://en.wikipedia.org/wiki/For_all "For all"
[30]: https://en.wikipedia.org/wiki/Unique_(mathematics) "Unique (mathematics)"
[31]: https://en.wikipedia.org/wiki/Schema_(logic) "Schema (logic)"
[32]: https://en.wikipedia.org/wiki/Universally_quantify "Universally quantify"
[33]: https://en.wikipedia.org/wiki/Material_conditional "Material conditional"
[34]: https://en.wikipedia.org/wiki/Axiom_schema_of_replacement "Axiom schema of replacement"
[35]: https://en.wikipedia.org/wiki/Zermelo%E2%80%93Fraenkel_set_theory "Zermelo–Fraenkel set theory"
[36]: https://en.wikipedia.org/wiki/Mathematical_symbols "Mathematical symbols"
[37]: https://en.wikipedia.org/w/index.php?title=Functional_predicate&action=edit&section=3 "Edit section: See also"
[38]: https://en.wikipedia.org/wiki/Function_symbol_(logic) "Function symbol (logic)"
[39]: https://en.wikipedia.org/wiki/Logical_connective "Logical connective"
[40]: https://en.wikipedia.org/wiki/Logical_constant "Logical constant"

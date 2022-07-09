---
downloaded:       2021-11-05
author:           
page-url:         https://en.wikipedia.org/wiki/De_Bruijn_index
page-title:       De Bruijn index - Wikipedia
article-title:    De Bruijn index - Wikipedia
article-length:   8212
article-created:  {Date-Creation-yyyymmdd}
article-modified: {Date-Revision-yyyymmdd}
desc:             {description}
---
# De Bruijn index - Wikipedia

This article is about a method for avoiding naming bound variables in lambda calculus. For an alternative syntax for lambda expressions, see De Bruijn notation.
This article is about a method for avoiding naming bound variables in lambda calculus. For an alternative syntax for lambda expressions, see [De Bruijn notation][1].

In [mathematical logic][2], the __De Bruijn index__ is a tool invented by the [Dutch][3] [mathematician][4] [Nicolaas Govert de Bruijn][5] for representing terms of [lambda calculus][6] without naming the bound variables.[\[1\]][7] Terms written using these indices are invariant with respect to [α-conversion][8], so the check for [α-equivalence][9] is the same as that for syntactic equality. Each De Bruijn index is a [natural number][10] that represents an occurrence of a [variable][11] in a λ-term, and denotes the number of [binders][12] that are in [scope][13] between that occurrence and its corresponding binder. The following are some examples:

-   The term λ*x*. λ*y*. *x*, sometimes called the [K combinator][14], is written as λ λ 2 with De Bruijn indices. The binder for the occurrence *x* is the second λ in scope.
-   The term λ*x*. λ*y*. λ*z*. *x* *z* (*y* *z*) (the [S combinator][15]), with De Bruijn indices, is λ λ λ 3 1 (2 1).
-   The term λ*z*. (λ*y*. *y* (λ*x*. *x*)) (λ*x*. *z* *x*) is λ (λ 1 (λ 1)) (λ 2 1). See the following illustration, where the binders are coloured and the references are shown with arrows.

[![Pictorial depiction of example](https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/De_Bruijn_index_illustration_1.svg/208px-De_Bruijn_index_illustration_1.svg.png)][16]

De Bruijn indices are commonly used in [higher-order][17] reasoning systems such as [automated theorem provers][18] and [logic programming][19] systems.[\[2\]][20]

## Formal definition\[[edit][21]\]

Formally, [λ-terms][22] (*M*, *N*, ...) written using De Bruijn indices have the following syntax (parentheses allowed freely):

*M*, *N*, ... ::= *n* | *M* *N* | λ *M*

where *n*—[natural numbers][23] greater than 0—are the variables. A variable *n* is [bound][24] if it is in the scope of at least *n* binders (λ); otherwise it is [free][25]. The binding site for a variable *n* is the *n*th binder it is in the [scope][26] of, starting from the innermost binder.

The most primitive operation on λ-terms is substitution: replacing free variables in a term with other terms. In the [β-reduction][27] (λ *M*) *N*, for example, we must

1.  find the instances of the variables *n*1, *n*2, ..., *n*k in *M* that are bound by the λ in λ *M*,
2.  decrement the free variables of *M* to match the removal of the outer λ-binder, and
3.  replace *n*1, *n*2, ..., *n*k with *N*, suitably incrementing the free variables occurring in *N* each time, to match the number of λ-binders, under which the corresponding variable occurs when *N* substitutes for one of the *ni*.

To illustrate, consider the application

(λ λ 4 2 (λ 1 3)) (λ 5 1)

which might correspond to the following term written in the usual notation

(λ*x*. λ*y*. *z* *x* (λ*u*. *u* *x*)) (λ*x*. *w* *x*).

After step 1, we obtain the term λ 4 □ (λ 1 □), where the variables that are destined for substitution are replaced with boxes. Step 2 decrements the free variables, giving λ 3 □ (λ 1 □). Finally, in step 3, we replace the boxes with the argument, namely λ 5 1; the first box is under one binder, so we replace it with λ 6 1 (which is λ 5 1 with the free variables increased by 1); the second is under two binders, so we replace it with λ 7 1. The final result is λ 3 (λ 6 1) (λ 1 (λ 7 1)).

Formally, a substitution is an unbounded list of term replacements for the free variables, written *M*1.*M*2..., where *M**i* is the replacement for the *i*th free variable. The increasing operation in step 3 is sometimes called *shift* and written ↑*k* where *k* is a natural number indicating the amount to increase the variables; for example, ↑0 is the identity substitution, leaving a term unchanged.

The application of a substitution *s* to a term *M* is written *M*\[*s*\]. The composition of two substitutions *s**1* and *s*2 is written *s*1 *s*2 and defined by

*M* \[*s*1 *s*2\] = (*M* \[*s*1\]) \[*s*2\].

The rules for application are as follows:

> ![{\begin{aligned}n[N_{1}\ldots N_{n}\ldots ]=&N_{n}\\(M_{1}\;M_{2})[s]=&(M_{1}[s])(M_{2}[s])\\(\lambda \;M)[s]=&\lambda \;(M[1.1[s'].2[s'].3[s']\ldots ])\\&{\text{where }}s'=s\uparrow ^{1}\end{aligned}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ec33f2584b700e198a892aeff5340bd2ff517d3d)

The steps outlined for the β-reduction above are thus more concisely expressed as:

(λ *M*) *N* →β *M* \[*N*.1.2.3...\].

## Alternatives to De Bruijn indices\[[edit][28]\]

When using the standard "named" representation of λ-terms, where variables are treated as labels or strings, one must explicitly handle α-conversion when defining any operation on the terms. In practice this is cumbersome, inefficient, and often error-prone. It has therefore led to the search for different representations of such terms. On the other hand, the named representation of λ-terms is more pervasive and can be more immediately understandable by others because the variables can be given descriptive names. Thus, even if a system uses De Bruijn indices internally, it will present a user interface with names.

An alternative way to view De Bruijn indices is as De Bruijn levels, which indexes variables from the bottom of the stack rather than from the top. This eliminates the need to reindex free variables, for example when weakening the context, whereas De Bruijn indices eliminate the need to reindex bound variables, for example when substituting a closed expression in another context.[\[3\]][29]

De Bruijn indices are not the only representation of λ-terms that obviates the problem of α-conversion. Among named representations, the [nominal techniques][30] of Pitts and Gabbay is one approach, where the representation of a λ-term is treated as an equivalence class of all terms [rewritable][31] to it using variable permutations.[\[4\]][32] This approach is taken by the Nominal Datatype Package of [Isabelle/HOL][33].[\[5\]][34]

Another common alternative is an appeal to [higher-order representations][35] where the λ-binder is treated as a true function. In such representations, the issues of α-equivalence, substitution, etc. are identified with the same operations in a [meta-logic][36].

When reasoning about the meta-theoretic properties of a deductive system in a [proof assistant][37], it is sometimes desirable to limit oneself to first-order representations and to have the ability to name or rename assumptions. The *locally nameless approach* uses a mixed representation of variables—De Bruijn indices for bound variables and names for free variables—that is able to benefit from the α-canonical form of De Bruijn indexed terms when appropriate.[\[6\]][38][\[7\]][39]

### Barendregt's variable convention \[[edit][40]\]

__Barendregt's variable convention__[\[8\]][41] is a convention commonly used in proofs and definitions where it is assumed that:

-   bound variables are distinct from free variables, and
-   all binders bind variables not already in scope.

In the general context of an inductive definition, it is not possible to apply α-conversion as needed to convert an inductive definition using the convention to one where the convention is not used, because a variable may appear in both a binding position and a non-binding position in the rule. The induction principle holds if every rule satisfies the following two conditions:[\[9\]][42]

-   the rule is [equivariant][43] in the sense of nominal logic, that is to say that its validity is unchanged by renaming variables
-   assuming the premises of the rule, the variables in binding positions in the rule are distinct and are free in the conclusion

## See also\[[edit][44]\]

-   The [De Bruijn notation][45] for λ-terms.
-   [Combinatory logic][46], a more essential way to eliminate variable names.

## References\[[edit][47]\]

1.  __[^][48]__ de Bruijn, Nicolaas Govert (1972). ["Lambda Calculus Notation with Nameless Dummies: A Tool for Automatic Formula Manipulation, with Application to the Church-Rosser Theorem"][49] (PDF). *[Indagationes Mathematicae][50]*. __34__: 381–392. [ISSN][51] [0019-3577][52].
2.  __[^][53]__ Gabbay, Murdoch J.; Pitts, Andy M. (1999). "A New Approach to Abstract Syntax Involving Binders". *14th Annual [IEEE Symposium on Logic in Computer Science][54]*. pp. 214–224. [doi][55]:[10.1109/LICS.1999.782617][56].
3.  __[^][57]__ Bauer, Andrej. ["How to implement dependent type theory III"][58]. *Mathematics and Computation*. Retrieved 20 October 2021.
4.  __[^][59]__ Pitts, Andy M. (2003). ["Nominal Logic: A First Order Theory of Names and Binding"][60]. *[Information and Computation][61]*. __186__ (2): 165–193. [doi][62]:[10.1016/S0890-5401(03)00138-X][63]. [ISSN][64] [0890-5401][65].
5.  __[^][66]__ ["Nominal Isabelle web-site"][67]. Retrieved 2007-03-28.
6.  __[^][68]__ McBride, McKinna. [*I Am Not a Number; I Am a Free Variable*][69] (PDF).
7.  __[^][70]__ Aydemir, Chargueraud, Pierce, Pollack, Weirich. [*Engineering Formal Metatheory*][71].CS1 maint: multiple names: authors list ([link][72])
8.  __[^][73]__ [Barendregt, Henk P.][74] (1984). *The Lambda Calculus: Its Syntax and Semantics*. [North Holland][75]. p. 26. [ISBN][76] [978-0-444-87508-2][77].
9.  __[^][78]__ Urban, Christian; Berghofer, Stefan; Norrish, Michael (2007). ["Barendregt's Variable Convention in Rule Inductions"][79] (PDF). *Automated Deduction – CADE-21*. __4603__: 35–50. [doi][80]:[10.1007/978-3-540-73595-3\_4][81].

[1]: https://en.wikipedia.org/wiki/De_Bruijn_notation "De Bruijn notation"
[2]: https://en.wikipedia.org/wiki/Mathematical_logic "Mathematical logic"
[3]: https://en.wikipedia.org/wiki/Netherlands "Netherlands"
[4]: https://en.wikipedia.org/wiki/Mathematician
[5]: https://en.wikipedia.org/wiki/Nicolaas_Govert_de_Bruijn
[6]: https://en.wikipedia.org/wiki/Lambda_calculus "Lambda calculus"
[7]: https://en.wikipedia.org/wiki/De_Bruijn_index#cite_note-de_bruijn_72-1
[8]: https://en.wikipedia.org/wiki/%CE%91-conversion "Α-conversion"
[9]: https://en.wikipedia.org/wiki/Lambda_calculus#Alpha_equivalence "Lambda calculus"
[10]: https://en.wikipedia.org/wiki/Natural_number "Natural number"
[11]: https://en.wikipedia.org/wiki/Variable_(mathematics) "Variable (mathematics)"
[12]: https://en.wikipedia.org/wiki/Free_variables_and_bound_variables "Free variables and bound variables"
[13]: https://en.wikipedia.org/wiki/Scope_(programming) "Scope (programming)"
[14]: https://en.wikipedia.org/wiki/K_combinator "K combinator"
[15]: https://en.wikipedia.org/wiki/S_combinator "S combinator"
[16]: https://en.wikipedia.org/wiki/File:De_Bruijn_index_illustration_1.svg "Pictorial depiction of example"
[17]: https://en.wikipedia.org/wiki/Higher-order_logic "Higher-order logic"
[18]: https://en.wikipedia.org/wiki/Automated_theorem_proving "Automated theorem proving"
[19]: https://en.wikipedia.org/wiki/Logic_programming "Logic programming"
[20]: https://en.wikipedia.org/wiki/De_Bruijn_index#cite_note-gabbay_03-2
[21]: https://en.wikipedia.org/w/index.php?title=De_Bruijn_index&action=edit&section=1 "Edit section: Formal definition"
[22]: https://en.wikipedia.org/wiki/%CE%9B_calculus "Λ calculus"
[23]: https://en.wikipedia.org/wiki/Natural_number "Natural number"
[24]: https://en.wikipedia.org/wiki/Bound_variable "Bound variable"
[25]: https://en.wikipedia.org/wiki/Free_variable "Free variable"
[26]: https://en.wikipedia.org/wiki/Scope_(programming) "Scope (programming)"
[27]: https://en.wikipedia.org/wiki/%CE%92-reduction "Β-reduction"
[28]: https://en.wikipedia.org/w/index.php?title=De_Bruijn_index&action=edit&section=2 "Edit section: Alternatives to De Bruijn indices"
[29]: https://en.wikipedia.org/wiki/De_Bruijn_index#cite_note-3
[30]: https://en.wikipedia.org/wiki/Nominal_techniques "Nominal techniques"
[31]: https://en.wikipedia.org/wiki/Rewriting "Rewriting"
[32]: https://en.wikipedia.org/wiki/De_Bruijn_index#cite_note-pitts_03-4
[33]: https://en.wikipedia.org/wiki/Isabelle_theorem_prover "Isabelle theorem prover"
[34]: https://en.wikipedia.org/wiki/De_Bruijn_index#cite_note-nominal_isabelle-5
[35]: https://en.wikipedia.org/wiki/Higher-order_abstract_syntax "Higher-order abstract syntax"
[36]: https://en.wikipedia.org/wiki/Meta-logic "Meta-logic"
[37]: https://en.wikipedia.org/wiki/Proof_assistant "Proof assistant"
[38]: https://en.wikipedia.org/wiki/De_Bruijn_index#cite_note-mckinna_mcbride-6
[39]: https://en.wikipedia.org/wiki/De_Bruijn_index#cite_note-aydemir-7
[40]: https://en.wikipedia.org/w/index.php?title=De_Bruijn_index&action=edit&section=3 "Edit section: Barendregt's variable convention"
[41]: https://en.wikipedia.org/wiki/De_Bruijn_index#cite_note-barendregt_84-8
[42]: https://en.wikipedia.org/wiki/De_Bruijn_index#cite_note-9
[43]: https://en.wikipedia.org/wiki/Equivariant "Equivariant"
[44]: https://en.wikipedia.org/w/index.php?title=De_Bruijn_index&action=edit&section=4 "Edit section: See also"
[45]: https://en.wikipedia.org/wiki/De_Bruijn_notation "De Bruijn notation"
[46]: https://en.wikipedia.org/wiki/Combinatory_logic "Combinatory logic"
[47]: https://en.wikipedia.org/w/index.php?title=De_Bruijn_index&action=edit&section=5 "Edit section: References"
[48]: https://en.wikipedia.org/wiki/De_Bruijn_index#cite_ref-de_bruijn_72_1-0 "Jump up"
[49]: http://alexandria.tue.nl/repository/freearticles/597619.pdf
[50]: https://en.wikipedia.org/wiki/Indagationes_Mathematicae "Indagationes Mathematicae"
[51]: https://en.wikipedia.org/wiki/ISSN_(identifier) "ISSN (identifier)"
[52]: https://www.worldcat.org/issn/0019-3577
[53]: https://en.wikipedia.org/wiki/De_Bruijn_index#cite_ref-gabbay_03_2-0 "Jump up"
[54]: https://en.wikipedia.org/wiki/IEEE_Symposium_on_Logic_in_Computer_Science "IEEE Symposium on Logic in Computer Science"
[55]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[56]: https://doi.org/10.1109%2FLICS.1999.782617
[57]: https://en.wikipedia.org/wiki/De_Bruijn_index#cite_ref-3 "Jump up"
[58]: http://math.andrej.com/2012/11/29/how-to-implement-dependent-type-theory-iii/
[59]: https://en.wikipedia.org/wiki/De_Bruijn_index#cite_ref-pitts_03_4-0 "Jump up"
[60]: https://doi.org/10.1016%2FS0890-5401%2803%2900138-X
[61]: https://en.wikipedia.org/wiki/Information_and_Computation "Information and Computation"
[62]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[63]: https://doi.org/10.1016%2FS0890-5401%2803%2900138-X
[64]: https://en.wikipedia.org/wiki/ISSN_(identifier) "ISSN (identifier)"
[65]: https://www.worldcat.org/issn/0890-5401
[66]: https://en.wikipedia.org/wiki/De_Bruijn_index#cite_ref-nominal_isabelle_5-0 "Jump up"
[67]: http://isabelle.in.tum.de/nominal/
[68]: https://en.wikipedia.org/wiki/De_Bruijn_index#cite_ref-mckinna_mcbride_6-0 "Jump up"
[69]: https://www.cs.ru.nl/~james/RESEARCH/haskell2004.pdf
[70]: https://en.wikipedia.org/wiki/De_Bruijn_index#cite_ref-aydemir_7-0 "Jump up"
[71]: http://repository.upenn.edu/cgi/viewcontent.cgi?article=1394&context=cis_papers
[72]: https://en.wikipedia.org/wiki/Category:CS1_maint:_multiple_names:_authors_list "Category:CS1 maint: multiple names: authors list"
[73]: https://en.wikipedia.org/wiki/De_Bruijn_index#cite_ref-barendregt_84_8-0 "Jump up"
[74]: https://en.wikipedia.org/wiki/Henk_Barendregt "Henk Barendregt"
[75]: https://en.wikipedia.org/wiki/North_Holland "North Holland"
[76]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[77]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-444-87508-2 "Special:BookSources/978-0-444-87508-2"
[78]: https://en.wikipedia.org/wiki/De_Bruijn_index#cite_ref-9 "Jump up"
[79]: https://www21.in.tum.de/~berghofe/papers/CADE2007.pdf
[80]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[81]: https://doi.org/10.1007%2F978-3-540-73595-3_4

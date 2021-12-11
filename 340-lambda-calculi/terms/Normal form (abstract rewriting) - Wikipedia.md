---
downloaded:       2021-11-05
author:           
page-url:         https://en.wikipedia.org/wiki/Normal_form_(abstract_rewriting)
page-title:       Normal form (abstract rewriting) - Wikipedia
article-title:    Normal form (abstract rewriting) - Wikipedia
article-length:   5384
article-created:  {Date-Creation-yyyymmdd}
article-modified: {Date-Revision-yyyymmdd}
desc:             {description}
---
# Normal form (abstract rewriting) - Wikipedia

In abstract rewriting, an object is in normal form if it cannot be rewritten any further, i.e. it is irreducible. Depending on the rewriting system, an object may rewrite to several normal forms or none at all. Many properties of rewriting systems relate to normal forms.
In [abstract rewriting][1], an object is in __normal form__ if it cannot be rewritten any further, i.e. it is irreducible. Depending on the rewriting system, an object may rewrite to several normal forms or none at all. Many properties of rewriting systems relate to normal forms.

## Definitions \[[edit][2]\]

Stated formally, if (*A*,→) is an [abstract rewriting system][3], *x*∈*A* is in __normal form__ if no *y*∈*A* exists such that *x*→*y*, i.e. *x* is an irreducible term.

An object *a* is __weakly normalizing__ if there exists at least one particular sequence of rewrites starting from *a* that eventually yields a normal form. A rewriting system has the __weak normalization property__ or is *(weakly) normalizing* (WN) if every object is weakly normalizing. An object *a* is __strongly normalizing__ if every sequence of rewrites starting from *a* eventually terminates with a normal form. An abstract rewriting system is *strongly normalizing*, *terminating*, *noetherian*, or has the __(strong) normalization property__ (SN), if each of its objects is strongly normalizing.[\[1\]][4]

A rewriting system has the *normal form property* (NF) if for all objects *a* and normal forms *b*, *b* can be reached from *a* by a series of rewrites and inverse rewrites only if *a* reduces to *b*. A rewriting system has the *unique normal form property* (UN) if for all normal forms *a*, *b* ∈ *S*, *a* can be reached from *b* by a series of rewrites and inverse rewrites only if *a* is equal to *b*. A rewriting system has the *unique normal form property with respect to reduction* (UN→) if for every term reducing to normal forms *a* and *b*, *a* is equal to *b*.[\[2\]][5]

## Results\[[edit][6]\]

This section presents some well known results. First, SN implies WN.[\[3\]][7]

[Confluence][8] (abbreviated CR) implies NF implies UN implies UN→.[\[2\]][9] The reverse implications do not generally hold. {a→b,a→c,c→c,d→c,d→e} is UN→ but not UN as b=e and b,e are normal forms. {a→b,a→c,b→b} is UN but not NF as b=c, c is a normal form, and b does not reduce to c. {a→b,a→c,b→b,c→c} is NF as there are no normal forms, but not CR as a reduces to b and c, and b,c have no common reduct.

WN and UN→ imply confluence. Hence CR, NF, UN, and UN→ coincide if WN holds.[\[4\]][10]

## Examples\[[edit][11]\]

For example, using the term rewriting system with a single rule *g*(*x*,*y*)→*x*, the term *g*(*g*(4,2),*g*(3,1)) can be rewritten as follows, applying the rule to the outermost occurrence [\[note 1\]][12] of *g*:

*__g__*(*g*(4,2),*g*(3,1)) → *__g__*(4,2) → 4.

Since no rule applies to the last term, 4, it cannot be rewritten any further, and hence is a normal form of the term *g*(*g*(4,2),*g*(3,1)) with respect to this term rewriting system. The rule system is strongly normalizing, since each rule application properly decreases term size and hence there cannot be an infinite rewrite sequence starting from any term. In contrast, the two-rule system { *g*(*x*,*y*) → *x*, *g*(*x*,*x*) → *g*(3,*x*) } is weakly, [\[note 2\]][13] but not strongly [\[note 3\]][14] normalizing, although each term not containing *g*(3,3) is strongly normalizing. [\[note 4\]][15] The term *g*(4,4) has two normal forms in this system, viz. *g*(4,4) → 4 and *g*(4,4) → *g*(3,4) → 3, hence the system is not [confluent][16].

Another example: The single-rule system { *r*(*x*,*y*) → *r*(*y*,*x*) } has no normalizing properties (not weakly or strongly), since from any term, e.g. *r*(4,2) a single rewrite sequence starts, viz. *r*(4,2) → *r*(2,4) → *r*(4,2) → *r*(2,4) → ..., which is infinitely long.

### Untyped lambda calculus\[[edit][17]\]

The *pure* untyped [lambda calculus][18] does not satisfy the strong normalization property, and not even the weak normalization property. Consider the term ![\lambda x . x x x](https://wikimedia.org/api/rest_v1/media/math/render/svg/045e69194b63852bf8f5197360129c42bb36704d). It has the following rewrite rule: For any term ![t](https://wikimedia.org/api/rest_v1/media/math/render/svg/65658b7b223af9e1acc877d848888ecdb4466560),

![(\mathbf{\lambda} x . x x x) t \rightarrow t t t](https://wikimedia.org/api/rest_v1/media/math/render/svg/fedd95b77544a566757aea82b5b54b789341c6c5)

But consider what happens when we apply ![\lambda x . x x x](https://wikimedia.org/api/rest_v1/media/math/render/svg/045e69194b63852bf8f5197360129c42bb36704d) to itself:

![{\displaystyle {\begin{aligned}(\mathbf {\lambda } x.xxx)(\lambda x.xxx)&\rightarrow (\mathbf {\lambda } x.xxx)(\lambda x.xxx)(\lambda x.xxx)\\&\rightarrow (\mathbf {\lambda } x.xxx)(\lambda x.xxx)(\lambda x.xxx)(\lambda x.xxx)\\&\rightarrow (\mathbf {\lambda } x.xxx)(\lambda x.xxx)(\lambda x.xxx)(\lambda x.xxx)(\lambda x.xxx)\\&\rightarrow \ \cdots \,\end{aligned}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/02b5e1c5b55efa9c1211e61d01b362d3edf05612)

Therefore the term ![(\lambda x . x x x) (\lambda x . x x x)](https://wikimedia.org/api/rest_v1/media/math/render/svg/8f772f9537bb277f3ee2f74eaaabb26658f6d015) is neither strongly nor weakly normalizing.

### Typed lambda calculus\[[edit][19]\]

Various systems of [typed lambda calculus][20] including the [simply typed lambda calculus][21], [Jean-Yves Girard][22]'s [System F][23], and [Thierry Coquand][24]'s [calculus of constructions][25] are strongly normalizing.

A lambda calculus system with the normalization property can be viewed as a programming language with the property that every program [terminates][26]. Although this is a very useful property, it has a drawback: a programming language with the normalization property cannot be [Turing complete][27], otherwise one could solve the halting problem by seeing if the program type-checks. That means that there are computable functions that cannot be defined in the simply typed lambda calculus (and similarly there are computable functions that cannot be computed in the [calculus of constructions][28] or [System F][29]), for example a [self-interpreter][30].[\[5\]][31]

## See also\[[edit][32]\]

-   [Canonical form][33]
-   [Typed lambda calculus][34]
-   [Rewriting][35]
-   [Total functional programming][36]
-   [Barendregt–Geuvers–Klop conjecture][37]
-   [Newman's lemma][38]
-   [Normalization by evaluation][39]

## Notes\[[edit][40]\]

1.  __[^][41]__ Each occurrence of *g* where the rule is applied is highlighted in __boldface__.
2.  __[^][42]__ Since every term containing *g* can be rewritten by a finite number of applications of the first rule to a term without any *g*, which is in normal form.
3.  __[^][43]__ Since to the term *g*(3,3), the second rule can be applied over and over again, without reaching any normal form.
4.  __[^][44]__ For a given term, let *m* and *n* denote the total number of *g* and of *g* applied to identical arguments, respectively. Application of any rule properly decreases the value of *m* + *n*, which is possible only finitely many times.

## References\[[edit][45]\]

-   [Baader, Franz][46]; [Nipkow, Tobias][47] (1998). [*Term Rewriting and All That*][48]. Cambridge University Press. [ISBN][49] [9780521779203][50].

[1]: https://en.wikipedia.org/wiki/Abstract_rewriting "Abstract rewriting"
[2]: https://en.wikipedia.org/w/index.php?title=Normal_form_(abstract_rewriting)&action=edit&section=1 "Edit section: Definitions"
[3]: https://en.wikipedia.org/wiki/Abstract_rewriting_system#Definition "Abstract rewriting system"
[4]: https://en.wikipedia.org/wiki/Normal_form_(abstract_rewriting)#cite_note-1
[5]: https://en.wikipedia.org/wiki/Normal_form_(abstract_rewriting)#cite_note-NF-2
[6]: https://en.wikipedia.org/w/index.php?title=Normal_form_(abstract_rewriting)&action=edit&section=2 "Edit section: Results"
[7]: https://en.wikipedia.org/wiki/Normal_form_(abstract_rewriting)#cite_note-3
[8]: https://en.wikipedia.org/wiki/Confluence_(term_rewriting) "Confluence (term rewriting)"
[9]: https://en.wikipedia.org/wiki/Normal_form_(abstract_rewriting)#cite_note-NF-2
[10]: https://en.wikipedia.org/wiki/Normal_form_(abstract_rewriting)#cite_note-4
[11]: https://en.wikipedia.org/w/index.php?title=Normal_form_(abstract_rewriting)&action=edit&section=3 "Edit section: Examples"
[12]: https://en.wikipedia.org/wiki/Normal_form_(abstract_rewriting)#cite_note-5
[13]: https://en.wikipedia.org/wiki/Normal_form_(abstract_rewriting)#cite_note-6
[14]: https://en.wikipedia.org/wiki/Normal_form_(abstract_rewriting)#cite_note-7
[15]: https://en.wikipedia.org/wiki/Normal_form_(abstract_rewriting)#cite_note-8
[16]: https://en.wikipedia.org/wiki/Confluence_(term_rewriting)#General_case_and_theory "Confluence (term rewriting)"
[17]: https://en.wikipedia.org/w/index.php?title=Normal_form_(abstract_rewriting)&action=edit&section=4 "Edit section: Untyped lambda calculus"
[18]: https://en.wikipedia.org/wiki/Lambda_calculus "Lambda calculus"
[19]: https://en.wikipedia.org/w/index.php?title=Normal_form_(abstract_rewriting)&action=edit&section=5 "Edit section: Typed lambda calculus"
[20]: https://en.wikipedia.org/wiki/Typed_lambda_calculus "Typed lambda calculus"
[21]: https://en.wikipedia.org/wiki/Simply_typed_lambda_calculus "Simply typed lambda calculus"
[22]: https://en.wikipedia.org/wiki/Jean-Yves_Girard "Jean-Yves Girard"
[23]: https://en.wikipedia.org/wiki/System_F "System F"
[24]: https://en.wikipedia.org/wiki/Thierry_Coquand "Thierry Coquand"
[25]: https://en.wikipedia.org/wiki/Calculus_of_constructions "Calculus of constructions"
[26]: https://en.wikipedia.org/wiki/Termination_analysis "Termination analysis"
[27]: https://en.wikipedia.org/wiki/Turing_complete "Turing complete"
[28]: https://en.wikipedia.org/wiki/Calculus_of_constructions "Calculus of constructions"
[29]: https://en.wikipedia.org/wiki/System_F "System F"
[30]: https://en.wikipedia.org/wiki/Meta-circular_evaluator#Self-interpretation_in_total_programming_languages "Meta-circular evaluator"
[31]: https://en.wikipedia.org/wiki/Normal_form_(abstract_rewriting)#cite_note-9
[32]: https://en.wikipedia.org/w/index.php?title=Normal_form_(abstract_rewriting)&action=edit&section=6 "Edit section: See also"
[33]: https://en.wikipedia.org/wiki/Canonical_form "Canonical form"
[34]: https://en.wikipedia.org/wiki/Typed_lambda_calculus "Typed lambda calculus"
[35]: https://en.wikipedia.org/wiki/Rewriting "Rewriting"
[36]: https://en.wikipedia.org/wiki/Total_functional_programming "Total functional programming"
[37]: https://en.wikipedia.org/wiki/Barendregt%E2%80%93Geuvers%E2%80%93Klop_conjecture "Barendregt–Geuvers–Klop conjecture"
[38]: https://en.wikipedia.org/wiki/Newman%27s_lemma "Newman's lemma"
[39]: https://en.wikipedia.org/wiki/Normalization_by_evaluation "Normalization by evaluation"
[40]: https://en.wikipedia.org/w/index.php?title=Normal_form_(abstract_rewriting)&action=edit&section=7 "Edit section: Notes"
[41]: https://en.wikipedia.org/wiki/Normal_form_(abstract_rewriting)#cite_ref-5 "Jump up"
[42]: https://en.wikipedia.org/wiki/Normal_form_(abstract_rewriting)#cite_ref-6 "Jump up"
[43]: https://en.wikipedia.org/wiki/Normal_form_(abstract_rewriting)#cite_ref-7 "Jump up"
[44]: https://en.wikipedia.org/wiki/Normal_form_(abstract_rewriting)#cite_ref-8 "Jump up"
[45]: https://en.wikipedia.org/w/index.php?title=Normal_form_(abstract_rewriting)&action=edit&section=8 "Edit section: References"
[46]: https://en.wikipedia.org/wiki/Franz_Baader "Franz Baader"
[47]: https://en.wikipedia.org/wiki/Tobias_Nipkow "Tobias Nipkow"
[48]: https://books.google.com/books?id=N7BvXVUCQk8C&q=%22normal+form%22
[49]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[50]: https://en.wikipedia.org/wiki/Special:BookSources/9780521779203 "Special:BookSources/9780521779203"

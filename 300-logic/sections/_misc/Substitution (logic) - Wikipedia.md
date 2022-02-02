---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Substitution_(logic)
page-title:       Substitution (logic) - Wikipedia
article-title:    Substitution (logic) - Wikipedia
---
# Substitution (logic) - Wikipedia

Substitution is a fundamental concept in logic.
A substitution is a syntactic transformation on formal expressions.
To apply a substitution to an expression means to consistently replace its variable, or placeholder, symbols by other expressions.
The resulting expression is called a substitution instance, or short instance, of the original expression.
__Substitution__ is a fundamental [concept][1] in [logic][2]. A __substitution__ is a [syntactic][3] transformation on [formal][4] expressions. To __apply__ a substitution to an [expression][5] means to consistently replace its variable, or placeholder, symbols by other expressions. The resulting expression is called a __substitution instance__, or short __instance__, of the original expression.

## Propositional logic\[[edit][6]\]

### Definition\[[edit][7]\]

Where *ψ* and *φ* represent [formulas][8] of propositional logic, *ψ* is a __substitution instance__ of *φ* [if and only if][9] *ψ* may be obtained from *φ* by substituting formulas for symbols in *φ*, replacing each occurrence of the same symbol by an occurrence of the same formula. For example:

(R → S) & (T → S)

is a substitution instance of:

P & Q

and

(A ↔ A) ↔ (A ↔ A)

is a substitution instance of:

(A ↔ A)

In some deduction systems for propositional logic, a new expression (a [proposition][10]) may be entered on a line of a derivation if it is a substitution instance of a previous line of the derivation (Hunter 1971, p. 118). This is how new lines are introduced in some [axiomatic systems][11]. In systems that use [rules of transformation][12], a rule may include the use of a *substitution instance* for the purpose of introducing certain variables into a derivation.

In [first-order logic][13], every [closed propositional formula][14] that can be [derived][15] from an open propositional formula *a* by substitution is said to be a substitution instance of *a*. If *a* is a closed propositional formula we count *a* itself as its only substitution instance.

### Tautologies\[[edit][16]\]

A propositional formula is a [tautology][17] if it is true under every [valuation][18] (or [interpretation][19]) of its predicate symbols. If Φ is a tautology, and Θ is a substitution instance of Φ, then Θ is again a tautology. This fact implies the soundness of the deduction rule described in the previous section.\[*[citation needed][20]*\]

## First-order logic\[[edit][21]\]

In [first-order logic][22], a __substitution__ is a total mapping *σ*: *V* → *T* from [variables][23] to [terms][24]; many,[\[1\]][25]: 73 [\[2\]][26]: 445  but not all[\[3\]][27]: 250  authors additionally require *σ*(*x*) = *x* for all but finitely many variables *x*. The notation { *x*1 ↦ *t*1, …, *x**k* ↦ *t**k* }[\[note 1\]][28] refers to a substitution mapping each variable *x**i* to the corresponding term *t**i*, for *i*\=1,…,*k*, and every other variable to itself; the *x**i* must be pairwise distinct. __Applying__ that substitution to a term *t* is written in [postfix notation][29] as *t* { *x*1 ↦ *t*1, ..., *x**k* ↦ *t**k* }; it means to (simultaneously) replace every occurrence of each *x**i* in *t* by *t**i*.[\[note 2\]][30] The result *tσ* of applying a substitution *σ* to a term *t* is called an __instance__ of that term *t*. For example, applying the substitution { *x* ↦ *z*, *z* ↦ *h*(*a*,*y*) } to the term

*f*(

*z*

, *a*, *g*(

*x*

), *y*)  

yields

*f*(

*h*(*a*,*y*)

, *a*, *g*(

*z*

), *y*)

.

The __domain__ *dom*(*σ*) of a substitution *σ* is commonly defined as the set of variables actually replaced, i.e. *dom*(*σ*) = { *x* ∈ *V* | *xσ* ≠ *x* }. A substitution is called a __ground__ substitution if it maps all variables of its domain to [ground][31], i.e. variable-free, terms. The substitution instance *tσ* of a ground substitution is a ground term if all of *t'*s variables are in *σ*'s domain, i.e. if *vars*(*t*) ⊆ *dom*(*σ*). A substitution *σ* is called a __linear__ substitution if *tσ* is a [linear][32] term for some (and hence every) linear term *t* containing precisely the variables of *σ*'s domain, i.e. with *vars*(*t*) = *dom*(*σ*). A substitution *σ* is called a __flat__ substitution if *xσ* is a variable for every variable *x*. A substitution *σ* is called a __renaming__ substitution if it is a [permutation][33] on the set of all variables. Like every permutation, a renaming substitution σ always has an __inverse__ substitution *σ*−1, such that *tσσ*−1 = *t* = *tσ*−1*σ* for every term *t*. However, it is not possible to define an inverse for an arbitrary substitution.

For example, { *x* ↦ 2, *y* ↦ 3+4 } is a ground substitution, { *x* ↦ *x*1, *y* ↦ *y*2+4 } is non-ground and non-flat, but linear, { *x* ↦ *y*2, *y* ↦ *y*2+4 } is non-linear and non-flat, { *x* ↦ *y*2, *y* ↦ *y*2 } is flat, but non-linear, { *x* ↦ *x*1, *y* ↦ *y*2 } is both linear and flat, but not a renaming, since is maps both *y* and *y*2 to *y*2; each of these substitutions has the set {*x*,*y*} as its domain. An example for a renaming substitution is { *x* ↦ *x*1, *x*1 ↦ *y*, *y* ↦ *y*2, *y*2 ↦ *x* }, it has the inverse { *x* ↦ *y*2, *y*2 ↦ *y*, *y* ↦ *x*1, *x*1 ↦ *x* }. The flat substitution { *x* ↦ *z*, *y* ↦ *z* } cannot have an inverse, since e.g. (*x*+*y*) { *x* ↦ *z*, *y* ↦ *z* } = *z*+*z*, and the latter term cannot be transformed back to *x*+*y*, as the information about the origin a *z* stems from is lost. The ground substitution { *x* ↦ 2 } cannot have an inverse due to a similar loss of origin information e.g. in (*x*+2) { *x* ↦ 2 } = 2+2, even if replacing constants by variables was allowed by some fictitious kind of "generalized substitutions".

Two substitutions are considered __equal__ if they map each variable to [structurally equal][34] result terms, formally: *σ* = *τ* if *xσ* = *xτ* for each variable *x* ∈ *V*. The __composition__ of two substitutions *σ* = { *x*1 ↦ *t*1, …, *x**k* ↦ *t**k* } and τ = { *y*1 ↦ *u*1, …, *y**l* ↦ u*l* } is obtained by removing from the substitution { *x*1 ↦ *t*1*τ*, …, *x**k* ↦ *t**k**τ*, *y*1 ↦ *u*1, …, *y**l* ↦ *u**l* } those pairs *y**i* ↦ *u**i* for which *y**i* ∈ { *x*1, …, *x**k* }. The composition of *σ* and *τ* is denoted by *στ*. Composition is an associative operation, and is compatible with substitution application, i.e. (*ρσ*)*τ* = *ρ*(*στ*), and (*tσ*)*τ* = *t*(*στ*), respectively, for every substitutions *ρ*, *σ*, *τ*, and every term *t*. The __identity substitution__, which maps every variable to itself, is the neutral element of substitution composition. A substitution *σ* is called __idempotent__ if *σσ* = *σ*, and hence *tσσ* = *tσ* for every term *t*. The substitution { *x*1 ↦ *t*1, …, *x**k* ↦ *t**k* } is idempotent if and only if none of the variables *x**i* occurs in any *t**i*. Substitution composition is not commutative, that is, στ may be different from τσ, even if σ and τ are idempotent.[\[1\]][35]: 73–74 [\[2\]][36]: 445–446 

For example, { *x* ↦ 2, *y* ↦ 3+4 } is equal to { *y* ↦ 3+4, *x* ↦ 2 }, but different from { *x* ↦ 2, *y* ↦ 7 }. The substitution { *x* ↦ *y*+*y* } is idempotent, e.g. ((*x*+*y*) {*x*↦*y*+*y*}) {*x*↦*y*+*y*} = ((*y*+*y*)+*y*) {*x*↦*y*+*y*} = (*y*+*y*)+*y*, while the substitution { *x* ↦ *x*+*y* } is non-idempotent, e.g. ((*x*+*y*) {*x*↦*x*+*y*}) {*x*↦*x*+*y*} = ((*x*+*y*)+*y*) {*x*↦*x*+*y*} = ((*x*+*y*)+*y*)+*y*. An example for non-commuting substitutions is { *x* ↦ *y* } { *y* ↦ *z* } = { *x* ↦ *z*, *y* ↦ *z* }, but { *y* ↦ *z*} { *x* ↦ *y*} = { *x* ↦ *y*, *y* ↦ *z* }.

## See also\[[edit][37]\]

-   Substitution property in [Equality (mathematics)#Some basic logical properties of equality][38]
-   [First-order logic#Rules of inference][39]
-   [Universal instantiation][40]
-   [Lambda calculus#Substitution][41]
-   [Truth-value semantics][42]
-   [Unification (computer science)][43]
-   [Metavariable][44]
-   [Mutatis mutandis][45]
-   [Rule of replacement][46]
-   [Substitution (algebra)][47] — about applying substitutions to polynoms and other algebraic expressions
-   [String interpolation][48] — as seen in computer programming

## Notes\[[edit][49]\]

1.  __[^][50]__ some authors use \[ *t*1/*x*1, …, *t**k*/*x**k* \] to denote that substitution, e.g. M. Wirsing (1990). Jan van Leeuwen (ed.). *Algebraic Specification*. Handbook of Theoretical Computer Science. __B__. Elsevier. pp. 675–788., here: p. 682;
2.  __[^][51]__ From a [term algebra][52] point of view, the set *T* of terms is the [free term algebra][53] over the set *V* of variables, hence for each substitution mapping σ: *V* → *T* there is a unique [homomorphism][54] σ: *T* → *T* that agrees with σ on *V* ⊆ *T*; the above-defined application of *σ* to a term *t* is then viewed as applying the function *σ* to the argument *t*.

## References\[[edit][55]\]

-   Crabbé, M. (2004). *[On the Notion of Substitution][56]*. Logic Journal of the IGPL, 12, 111–124.
-   Curry, H. B. (1952) *[On the definition of substitution, replacement and allied notions in an abstract formal system][57]*. Revue philosophique de Louvain 50, 251–269.
-   Hunter, G. (1971). *Metalogic: An Introduction to the Metatheory of Standard First Order Logic*. University of California Press. [ISBN][58] [0-520-01822-2][59]
-   Kleene, S. C. (1967). *Mathematical Logic*. Reprinted 2002, Dover. [ISBN][60] [0-486-42533-9][61]

## External links\[[edit][62]\]

-   [Substitution][63] in *[nLab][64]*

[1]: https://en.wikipedia.org/wiki/Concept "Concept"
[2]: https://en.wikipedia.org/wiki/Logic "Logic"
[3]: https://en.wikipedia.org/wiki/Syntax_(logic) "Syntax (logic)"
[4]: https://en.wikipedia.org/wiki/Formal_language "Formal language"
[5]: https://en.wikipedia.org/wiki/Expression_(mathematics) "Expression (mathematics)"
[6]: https://en.wikipedia.org/w/index.php?title=Substitution_(logic)&action=edit&section=1 "Edit section: Propositional logic"
[7]: https://en.wikipedia.org/w/index.php?title=Substitution_(logic)&action=edit&section=2 "Edit section: Definition"
[8]: https://en.wikipedia.org/wiki/Well-formed_formula "Well-formed formula"
[9]: https://en.wikipedia.org/wiki/If_and_only_if "If and only if"
[10]: https://en.wikipedia.org/wiki/Proposition "Proposition"
[11]: https://en.wikipedia.org/wiki/Axiomatic_system "Axiomatic system"
[12]: https://en.wikipedia.org/wiki/Rule_of_inference "Rule of inference"
[13]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[14]: https://en.wikipedia.org/wiki/Ground_expression "Ground expression"
[15]: https://en.wikipedia.org/wiki/Formal_proof "Formal proof"
[16]: https://en.wikipedia.org/w/index.php?title=Substitution_(logic)&action=edit&section=3 "Edit section: Tautologies"
[17]: https://en.wikipedia.org/wiki/Tautology_(logic) "Tautology (logic)"
[18]: https://en.wikipedia.org/wiki/Valuation_(logic) "Valuation (logic)"
[19]: https://en.wikipedia.org/wiki/Interpretation_(logic) "Interpretation (logic)"
[20]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[21]: https://en.wikipedia.org/w/index.php?title=Substitution_(logic)&action=edit&section=4 "Edit section: First-order logic"
[22]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[23]: https://en.wikipedia.org/wiki/Term_(logic)#Formal_definition "Term (logic)"
[24]: https://en.wikipedia.org/wiki/Term_(logic) "Term (logic)"
[25]: https://en.wikipedia.org/wiki/Substitution_(logic)#cite_note-Duffy.1991-1
[26]: https://en.wikipedia.org/wiki/Substitution_(logic)#cite_note-Baader.Snyder.2001-2
[27]: https://en.wikipedia.org/wiki/Substitution_(logic)#cite_note-Dershowitz.Jouannaud.1990-3
[28]: https://en.wikipedia.org/wiki/Substitution_(logic)#cite_note-4
[29]: https://en.wikipedia.org/wiki/Postfix_notation "Postfix notation"
[30]: https://en.wikipedia.org/wiki/Substitution_(logic)#cite_note-5
[31]: https://en.wikipedia.org/wiki/Term_(logic)#Ground_and_linear_terms "Term (logic)"
[32]: https://en.wikipedia.org/wiki/Term_(logic)#Ground_and_linear_terms "Term (logic)"
[33]: https://en.wikipedia.org/wiki/Permutation#Permutations_in_group_theory "Permutation"
[34]: https://en.wikipedia.org/wiki/Term_(logic)#Structural_equality "Term (logic)"
[35]: https://en.wikipedia.org/wiki/Substitution_(logic)#cite_note-Duffy.1991-1
[36]: https://en.wikipedia.org/wiki/Substitution_(logic)#cite_note-Baader.Snyder.2001-2
[37]: https://en.wikipedia.org/w/index.php?title=Substitution_(logic)&action=edit&section=5 "Edit section: See also"
[38]: https://en.wikipedia.org/wiki/Equality_(mathematics)#Some_basic_logical_properties_of_equality "Equality (mathematics)"
[39]: https://en.wikipedia.org/wiki/First-order_logic#Rules_of_inference "First-order logic"
[40]: https://en.wikipedia.org/wiki/Universal_instantiation "Universal instantiation"
[41]: https://en.wikipedia.org/wiki/Lambda_calculus#Substitution "Lambda calculus"
[42]: https://en.wikipedia.org/wiki/Truth-value_semantics "Truth-value semantics"
[43]: https://en.wikipedia.org/wiki/Unification_(computer_science) "Unification (computer science)"
[44]: https://en.wikipedia.org/wiki/Metavariable "Metavariable"
[45]: https://en.wikipedia.org/wiki/Mutatis_mutandis "Mutatis mutandis"
[46]: https://en.wikipedia.org/wiki/Rule_of_replacement "Rule of replacement"
[47]: https://en.wikipedia.org/wiki/Substitution_(algebra) "Substitution (algebra)"
[48]: https://en.wikipedia.org/wiki/String_interpolation "String interpolation"
[49]: https://en.wikipedia.org/w/index.php?title=Substitution_(logic)&action=edit&section=6 "Edit section: Notes"
[50]: https://en.wikipedia.org/wiki/Substitution_(logic)#cite_ref-4 "Jump up"
[51]: https://en.wikipedia.org/wiki/Substitution_(logic)#cite_ref-5 "Jump up"
[52]: https://en.wikipedia.org/wiki/Term_algebra "Term algebra"
[53]: https://en.wikipedia.org/wiki/Free_object#Definition "Free object"
[54]: https://en.wikipedia.org/wiki/Universal_algebra#Basic_constructions "Universal algebra"
[55]: https://en.wikipedia.org/w/index.php?title=Substitution_(logic)&action=edit&section=7 "Edit section: References"
[56]: https://web.archive.org/web/20180112160331/https://pdfs.semanticscholar.org/28db/f1c89f36976bc41b38ff757991ca09e95524.pdf
[57]: http://www.persee.fr/doc/phlou_0035-3841_1952_num_50_26_4394
[58]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[59]: https://en.wikipedia.org/wiki/Special:BookSources/0-520-01822-2 "Special:BookSources/0-520-01822-2"
[60]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[61]: https://en.wikipedia.org/wiki/Special:BookSources/0-486-42533-9 "Special:BookSources/0-486-42533-9"
[62]: https://en.wikipedia.org/w/index.php?title=Substitution_(logic)&action=edit&section=8 "Edit section: External links"
[63]: https://ncatlab.org/nlab/show/substitution
[64]: https://en.wikipedia.org/wiki/NLab "NLab"

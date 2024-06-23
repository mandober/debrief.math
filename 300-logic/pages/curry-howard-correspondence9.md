---
downloaded:       2021-12-18
page-url:         https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence
page-title:       Curry–Howard correspondence - Wikipedia
article-title:    Curry–Howard correspondence - Wikipedia
---
# Curry–Howard correspondence - Wikipedia

In programming language theory and proof theory, the Curry–Howard correspondence (also known as the Curry–Howard isomorphism or equivalence, or the proofs-as-programs and propositions- or formulae-as-types interpretation) is the direct relationship between computer programs and mathematical proofs.
In [programming language theory][1] and [proof theory][2], the __Curry–Howard correspondence__ (also known as the __Curry–Howard isomorphism__ or __equivalence__, or the __proofs-as-programs__ and __propositions-__ or __formulae-as-types interpretation__) is the direct relationship between [computer programs][3] and [mathematical proofs][4].

It is a generalization of a syntactic [analogy][5] between systems of formal logic and computational calculi that was first discovered by the American [mathematician][6] [Haskell Curry][7] and [logician][8] [William Alvin Howard][9].[\[1\]][10] It is the link between logic and computation that is usually attributed to Curry and Howard, although the idea is related to the operational interpretation of [intuitionistic logic][11] given in various formulations by [L. E. J. Brouwer][12], [Arend Heyting][13] and [Andrey Kolmogorov][14] (see [Brouwer–Heyting–Kolmogorov interpretation][15])[\[2\]][16] and [Stephen Kleene][17] (see [Realizability][18]). The relationship has been extended to include [category theory][19] as the three-way __Curry–Howard–Lambek correspondence__.

## Origin, scope, and consequences\[[edit][20]\]

The beginnings of the __Curry–Howard correspondence__ lie in several observations:

1.  In 1934 [Curry][21] observes that the [types][22] of the combinators could be seen as [axiom-schemes][23] for [intuitionistic][24] implicational logic.[\[3\]][25]
2.  In 1958 he observes that a certain kind of [proof system][26], referred to as [Hilbert-style deduction systems][27], coincides on some fragment to the typed fragment of a standard [model of computation][28] known as [combinatory logic][29].[\[4\]][30]
3.  In 1969 [Howard][31] observes that another, more "high-level" [proof system][32], referred to as [natural deduction][33], can be directly interpreted in its [intuitionistic][34] version as a typed variant of the [model of computation][35] known as [lambda calculus][36].[\[5\]][37]

In other words, the Curry–Howard correspondence is the observation that two families of seemingly unrelated formalisms—namely, the proof systems on one hand, and the models of computation on the other—are in fact the same kind of mathematical objects.

If one abstracts on the peculiarities of either formalism, the following generalization arises: *a proof is a program, and the formula it proves is the type for the program*. More informally, this can be seen as an [analogy][38] that states that the [return type][39] of a function (i.e., the type of values returned by a function) is analogous to a logical theorem, subject to hypotheses corresponding to the types of the argument values passed to the function; and that the program to compute that function is analogous to a proof of that theorem. This sets a form of [logic programming][40] on a rigorous foundation: *proofs can be represented as programs, and especially as lambda terms*, or *proofs can be __run__*.

The correspondence has been the starting point of a large spectrum of new research after its discovery, leading in particular to a new class of [formal systems][41] designed to act both as a [proof system][42] and as a typed [functional programming language][43]. This includes [Martin-Löf][44]'s [intuitionistic type theory][45] and [Coquand][46]'s [Calculus of Constructions][47], two calculi in which proofs are regular objects of the discourse and in which one can state properties of proofs the same way as of any program. This field of research is usually referred to as modern [type theory][48].

Such [typed lambda calculi][49] derived from the Curry–Howard paradigm led to software like [Coq][50] in which proofs seen as programs can be formalized, checked, and run.

A converse direction is to *use a program to extract a proof*, given its [correctness][51]—an area of research closely related to [proof-carrying code][52]. This is only feasible if the [programming language][53] the program is written for is very richly typed: the development of such type systems has been partly motivated by the wish to make the Curry–Howard correspondence practically relevant.

The Curry–Howard correspondence also raised new questions regarding the computational content of proof concepts that were not covered by the original works of Curry and Howard. In particular, [classical logic][54] has been shown to correspond to the ability to manipulate the [continuation][55] of programs and the symmetry of [sequent calculus][56] to express the duality between the two [evaluation strategies][57] known as call-by-name and call-by-value.

Speculatively, the Curry–Howard correspondence might be expected to lead to a substantial [unification][58] between mathematical logic and foundational computer science:

Hilbert-style logic and natural deduction are but two kinds of proof systems among a large family of formalisms. Alternative syntaxes include [sequent calculus][59], [proof nets][60], [calculus of structures][61], etc. If one admits the Curry–Howard correspondence as the general principle that any proof system hides a model of computation, a theory of the underlying untyped computational structure of these kinds of proof system should be possible. Then, a natural question is whether something mathematically interesting can be said about these underlying computational calculi.

Conversely, [combinatory logic][62] and [simply typed lambda calculus][63] are not the only [models of computation][64], either. Girard's [linear logic][65] was developed from the fine analysis of the use of resources in some models of lambda calculus; is there typed version of [Turing's machine][66] that would behave as a proof system? [Typed assembly languages][67] are such an instance of "low-level" models of computation that carry types.

Because of the possibility of writing non-terminating programs, [Turing-complete][68] models of computation (such as languages with arbitrary [recursive functions][69]) must be interpreted with care, as naive application of the correspondence leads to an inconsistent logic. The best way of dealing with arbitrary computation from a logical point of view is still an actively debated research question, but one popular approach is based on using [monads][70] to segregate provably terminating from potentially non-terminating code (an approach that also generalizes to much richer models of computation,[\[6\]][71] and is itself related to modal logic by a natural extension of the Curry–Howard isomorphism[\[ext 1\]][72]). A more radical approach, advocated by [total functional programming][73], is to eliminate unrestricted recursion (and forgo [Turing completeness][74], although still retaining high computational complexity), using more controlled [corecursion][75] wherever non-terminating behavior is actually desired.

## General formulation\[[edit][76]\]

In its more general formulation, the Curry–Howard correspondence is a correspondence between formal [proof calculi][77] and [type systems][78] for [models of computation][79]. In particular, it splits into two correspondences. One at the level of [formulas][80] and [types][81] that is independent of which particular proof system or model of computation is considered, and one at the level of [proofs][82] and [programs][83] which, this time, is specific to the particular choice of proof system and model of computation considered.

At the level of formulas and types, the correspondence says that implication behaves the same as a function type, conjunction as a "product" type (this may be called a tuple, a struct, a list, or some other term depending on the language), disjunction as a sum type (this type may be called a union), the false formula as the empty type and the true formula as the singleton type (whose sole member is the null object). Quantifiers correspond to [dependent][84] function space or products (as appropriate). This is summarized in the following table:

Logic side

Programming side

[universal quantification][85]

[generalised product type][86] (Π type)

[existential quantification][87]

[generalised sum type][88] (Σ type)

[implication][89]

[function type][90]

[conjunction][91]

[product type][92]

[disjunction][93]

[sum type][94]

true formula

[unit type][95]

false formula

[bottom type][96]

At the level of proof systems and models of computations, the correspondence mainly shows the identity of structure, first, between some particular formulations of systems known as [Hilbert-style deduction system][97] and [combinatory logic][98], and, secondly, between some particular formulations of systems known as [natural deduction][99] and [lambda calculus][100].

Logic side

Programming side

[Hilbert-style deduction system][101]

type system for [combinatory logic][102]

[natural deduction][103]

type system for [lambda calculus][104]

Between the natural deduction system and the lambda calculus there are the following correspondences:

Logic side

Programming side

[hypotheses][105]

free variables

[implication elimination][106] (*modus ponens*)

[application][107]

[implication introduction][108]

abstraction

## Corresponding systems\[[edit][109]\]

### Hilbert-style deduction systems and combinatory logic\[[edit][110]\]

It was at the beginning a simple remark in Curry and Feys's 1958 book on combinatory logic: the simplest types for the basic combinators K and S of [combinatory logic][111] surprisingly corresponded to the respective [axiom schemes][112] *α* → (*β* → *α*) and (*α* → (*β* → *γ*)) → ((*α* → *β*) → (*α* → *γ*)) used in [Hilbert-style deduction systems][113]. For this reason, these schemes are now often called axioms K and S. Examples of programs seen as proofs in a Hilbert-style logic are given [below][114].

If one restricts to the implicational intuitionistic fragment, a simple way to formalize logic in Hilbert's style is as follows. Let Γ be a finite collection of formulas, considered as hypotheses. Then δ is *derivable* from Γ, denoted Γ ⊢ δ, in the following cases:

-   δ is an hypothesis, i.e. it is a formula of Γ,
-   δ is an instance of an axiom scheme; i.e., under the most common axiom system:
    -   δ has the form *α* → (*β* → *α*), or
    -   δ has the form (*α* → (*β* → *γ*)) → ((*α* → *β*) → (*α* → *γ*)),
-   δ follows by deduction, i.e., for some *α*, both *α* → *δ* and *α* are already derivable from Γ (this is the rule of [modus ponens][115])

This can be formalized using [inference rules][116], as in the left column of the following table.

Typed combinatory logic can be formulated using a similar syntax: let Γ be a finite collection of variables, annotated with their types. A term T (also annotated with its type) will depend on these variables \[Γ ⊢ T:*δ*\] when:

-   T is one of the variables in Γ,
-   T is a basic combinator; i.e., under the most common combinator basis:
    -   T is K:*α* → (*β* → *α*) \[where *α* and *β* denote the types of its arguments\], or
    -   T is S:(*α* → (*β* → *γ*)) → ((*α* → *β*) → (*α* → *γ*)),
-   T is the composition of two subterms which depend on the variables in Γ.

The generation rules defined here are given in the right-column below. Curry's remark simply states that both columns are in one-to-one correspondence. The restriction of the correspondence to [intuitionistic logic][117] means that some [classical][118] [tautologies][119], such as [Peirce's law][120] ((*α* → *β*) → *α*) → *α*, are excluded from the correspondence.

Hilbert-style intuitionistic implicational logic

Simply typed combinatory logic

![{\frac {\alpha \in \Gamma }{\Gamma \vdash \alpha }}\qquad \qquad {\text{Assum}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3641f73b1e4b2ad9ce8c4d27b5376fc07100f906)

![{\frac {x:\alpha \in \Gamma }{\Gamma \vdash x:\alpha }}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d8f8d22ce8241a095ae4771c9141746cf4c92dd6)

![{\frac {}{\Gamma \vdash \alpha \rightarrow (\beta \rightarrow \alpha )}}\qquad {\text{Ax}}_{K}](https://wikimedia.org/api/rest_v1/media/math/render/svg/a15e4356a8e5398644546ea54d6ed1a119cec4f8)

![{\frac {}{\Gamma \vdash K:\alpha \rightarrow (\beta \rightarrow \alpha )}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5eb85924a060cb0069e664c22ed067523bbb18d6)

![{\frac {}{\Gamma \vdash (\alpha \!\rightarrow \!(\beta \!\rightarrow \!\gamma ))\!\rightarrow \!((\alpha \!\rightarrow \!\beta )\!\rightarrow \!(\alpha \!\rightarrow \!\gamma ))}}\;{\text{Ax}}_{S}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ad8288185dda5d00bbf72be3c4fdb0febbab7595)

![{\frac {}{\Gamma \vdash S:(\alpha \!\rightarrow \!(\beta \!\rightarrow \!\gamma ))\!\rightarrow \!((\alpha \!\rightarrow \!\beta )\!\rightarrow \!(\alpha \!\rightarrow \!\gamma ))}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/6e831ead78ee8ed2a56b8a64b5c17b20db2014ad)

![{\frac {\Gamma \vdash \alpha \rightarrow \beta \qquad \Gamma \vdash \alpha }{\Gamma \vdash \beta }}\quad {\text{Modus Ponens}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/efb88e291c3eb88331db9c6e107f1f2fa7d86698)

![{\frac {\Gamma \vdash E_{1}:\alpha \rightarrow \beta \qquad \Gamma \vdash E_{2}:\alpha }{\Gamma \vdash E_{1}\;E_{2}:\beta }}](https://wikimedia.org/api/rest_v1/media/math/render/svg/cda9890adec8b3d8a82a177a040dab881d0e268c)

Seen at a more abstract level, the correspondence can be restated as shown in the following table. Especially, the [deduction theorem][121] specific to Hilbert-style logic matches the process of [abstraction elimination][122] of combinatory logic.

Logic side

Programming side

assumption

variable

axioms

combinators

modus ponens

application

[deduction theorem][123]

[abstraction elimination][124]

Thanks to the correspondence, results from combinatory logic can be transferred to Hilbert-style logic and vice versa. For instance, the notion of [reduction][125] of terms in combinatory logic can be transferred to Hilbert-style logic and it provides a way to canonically transform proofs into other proofs of the same statement. One can also transfer the notion of normal terms to a notion of normal proofs, expressing that the hypotheses of the axioms never need to be all detached (since otherwise a simplification can happen).

Conversely, the non provability in intuitionistic logic of [Peirce's law][126] can be transferred back to combinatory logic: there is no typed term of combinatory logic that is typable with type

((*α* → *β*) → *α*) → *α*.

Results on the completeness of some sets of combinators or axioms can also be transferred. For instance, the fact that the combinator __X__ constitutes a [one-point basis][127] of (extensional) combinatory logic implies that the single axiom scheme

(((*α* → (*β* → *γ*)) → ((*α* → *β*) → (*α* → *γ*))) → ((*δ* → (*ε* → *δ*)) → *ζ*)) → *ζ*,

which is the [principal type][128] of __X__, is an adequate replacement to the combination of the axiom schemes

*α* → (*β* → *α*) and

(*α* → (*β* → *γ*)) → ((*α* → *β*) → (*α* → *γ*)).

### Natural deduction and lambda calculus\[[edit][129]\]

After [Curry][130] emphasized the syntactic correspondence between [Hilbert-style deduction][131] and [combinatory logic][132], [Howard][133] made explicit in 1969 a syntactic analogy between the programs of [simply typed lambda calculus][134] and the proofs of [natural deduction][135]. Below, the left-hand side formalizes intuitionistic implicational natural deduction as a calculus of [sequents][136] (the use of sequents is standard in discussions of the Curry–Howard isomorphism as it allows the deduction rules to be stated more cleanly) with implicit weakening and the right-hand side shows the typing rules of [lambda calculus][137]. In the left-hand side, Γ, Γ1 and Γ2 denote ordered sequences of formulas while in the right-hand side, they denote sequences of named (i.e., typed) formulas with all names different.

Intuitionistic implicational natural deduction

Lambda calculus type assignment rules

![{\frac {}{\Gamma _{1},\alpha ,\Gamma _{2}\vdash \alpha }}{\text{Ax}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5753e4f38cf3dc6e915ed22b2e1dba428eb831ab)

![{\frac {}{\Gamma _{1},x:\alpha ,\Gamma _{2}\vdash x:\alpha }}](https://wikimedia.org/api/rest_v1/media/math/render/svg/4e9d8b7ef819a197ad623de2293b5d176bf36568)

![{\frac {\Gamma ,\alpha \vdash \beta }{\Gamma \vdash \alpha \rightarrow \beta }}\rightarrow I](https://wikimedia.org/api/rest_v1/media/math/render/svg/8a7a354ea03998259d86cc897bb71eddac92bf89)

![{\displaystyle {\frac {\Gamma ,x:\alpha \vdash t:\beta }{\Gamma \vdash (\lambda x\!:\!\alpha .~t):\alpha \rightarrow \beta }}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/521084fcb55f73fb52d7d831747bd6f81730cd81)

![{\frac {\Gamma \vdash \alpha \rightarrow \beta \qquad \Gamma \vdash \alpha }{\Gamma \vdash \beta }}\rightarrow E](https://wikimedia.org/api/rest_v1/media/math/render/svg/f2f5b3258a688f002853b78d819418390d8fca7c)

![{\frac {\Gamma \vdash t:\alpha \rightarrow \beta \qquad \Gamma \vdash u:\alpha }{\Gamma \vdash t\;u:\beta }}](https://wikimedia.org/api/rest_v1/media/math/render/svg/77485e43a66d89aa5b8472b989ca2274ca6b04e9)

To paraphrase the correspondence, proving Γ ⊢ *α* means having a program that, given values with the types listed in Γ, manufactures an object of type *α*. An axiom corresponds to the introduction of a new variable with a new, unconstrained type, the → *I* rule corresponds to function abstraction and the → *E* rule corresponds to function application. Observe that the correspondence is not exact if the context Γ is taken to be a set of formulas as, e.g., the λ-terms λ*x*.λ*y*.*x* and λ*x*.λ*y*.*y* of type *α* → *α* → *α* would not be distinguished in the correspondence. Examples are given [below][138].

Howard showed that the correspondence extends to other connectives of the logic and other constructions of simply typed lambda calculus. Seen at an abstract level, the correspondence can then be summarized as shown in the following table. Especially, it also shows that the notion of normal forms in [lambda calculus][139] matches [Prawitz][140]'s notion of normal deduction in [natural deduction][141], from which it follows that the algorithms for the [type inhabitation problem][142] can be turned into algorithms for deciding [intuitionistic][143] provability.

Logic side

Programming side

axiom

variable

introduction rule

constructor

elimination rule

destructor

normal deduction

normal form

normalisation of deductions

[weak normalisation][144]

provability

[type inhabitation problem][145]

intuitionistic tautology

inhabited type

Howard's correspondence naturally extends to other extensions of [natural deduction][146] and [simply typed lambda calculus][147]. Here is a non-exhaustive list:

### Classical logic and control operators\[[edit][148]\]

At the time of Curry, and also at the time of Howard, the proofs-as-programs correspondence concerned only [intuitionistic logic][149], i.e. a logic in which, in particular, [Peirce's law][150] was *not* deducible. The extension of the correspondence to Peirce's law and hence to [classical logic][151] became clear from the work of Griffin on typing operators that capture the evaluation context of a given program execution so that this evaluation context can be later on reinstalled. The basic Curry–Howard-style correspondence for classical logic is given below. Note the correspondence between the [double-negation translation][152] used to map classical proofs to intuitionistic logic and the [continuation-passing-style][153] translation used to map lambda terms involving control to pure lambda terms. More particularly, call-by-name continuation-passing-style translations relates to [Kolmogorov][154]'s double negation translation and call-by-value continuation-passing-style translations relates to a kind of double-negation translation due to Kuroda.

Logic side

Programming side

[Peirce's law][155]: ((*α* → *β*) → *α*) → *α*

[call-with-current-continuation][156]

[double-negation translation][157]

[continuation-passing-style translation][158]

A finer Curry–Howard correspondence exists for classical logic if one defines classical logic not by adding an axiom such as [Peirce's law][159], but by allowing several conclusions in sequents. In the case of classical natural deduction, there exists a proofs-as-programs correspondence with the typed programs of Parigot's [λμ-calculus][160].

### Sequent calculus\[[edit][161]\]

A proofs-as-programs correspondence can be settled for the formalism known as [Gentzen][162]'s [sequent calculus][163] but it is not a correspondence with a well-defined pre-existing model of computation as it was for Hilbert-style and natural deductions.

Sequent calculus is characterized by the presence of left introduction rules, right introduction rule and a cut rule that can be eliminated. The structure of sequent calculus relates to a calculus whose structure is close to the one of some [abstract machines][164]. The informal correspondence is as follows:

Logic side

Programming side

cut elimination

reduction in a form of abstract machine

right introduction rules

constructors of code

left introduction rules

constructors of evaluation stacks

priority to right-hand side in cut-elimination

[call-by-name][165] reduction

priority to left-hand side in cut-elimination

[call-by-value][166] reduction

## \[[edit][167]\]

### The role of de Bruijn\[[edit][168]\]

[N. G. de Bruijn][169] used the lambda notation for representing proofs of the theorem checker [Automath][170], and represented propositions as "categories" of their proofs. It was in the late 1960s at the same period of time Howard wrote his manuscript; de Bruijn was likely unaware of Howard's work, and stated the correspondence independently (Sørensen & Urzyczyn \[1998\] 2006, pp 98–99). Some researchers tend to use the term Curry–Howard–de Bruijn correspondence in place of Curry–Howard correspondence.

### BHK interpretation\[[edit][171]\]

The [BHK interpretation][172] interprets intuitionistic proofs as functions but it does not specify the class of functions relevant for the interpretation. If one takes lambda calculus for this class of function, then the [BHK interpretation][173] tells the same as Howard's correspondence between natural deduction and lambda calculus.

### Realizability\[[edit][174]\]

[Kleene][175]'s recursive [realizability][176] splits proofs of intuitionistic arithmetic into the pair of a recursive function and of a proof of a formula expressing that the recursive function "realizes", i.e. correctly instantiates the disjunctions and existential quantifiers of the initial formula so that the formula gets true.

[Kreisel][177]'s modified realizability applies to intuitionistic higher-order predicate logic and shows that the [simply typed lambda term][178] inductively extracted from the proof realizes the initial formula. In the case of propositional logic, it coincides with Howard's statement: the extracted lambda term is the proof itself (seen as an untyped lambda term) and the realizability statement is a paraphrase of the fact that the extracted lambda term has the type that the formula means (seen as a type).

[Gödel][179]'s [dialectica interpretation][180] realizes (an extension of) intuitionistic arithmetic with computable functions. The connection with lambda calculus is unclear, even in the case of natural deduction.

### Curry–Howard–Lambek correspondence\[[edit][181]\]

[Joachim Lambek][182] showed in the early 1970s that the proofs of intuitionistic propositional logic and the combinators of typed [combinatory logic][183] share a common equational theory which is the one of [cartesian closed categories][184]. The expression Curry–Howard–Lambek correspondence is now used by some people to refer to the three way isomorphism between intuitionistic logic, typed lambda calculus and cartesian closed categories, with objects being interpreted as types or propositions and morphisms as terms or proofs. The correspondence works at the equational level and is not the expression of a syntactic identity of structures as it is the case for each of Curry's and Howard's correspondences: i.e. the structure of a well-defined morphism in a cartesian-closed category is not comparable to the structure of a proof of the corresponding judgment in either Hilbert-style logic or natural deduction. To clarify this distinction, the underlying syntactic structure of cartesian closed categories is rephrased below.

Objects (types) are defined by

Morphisms (terms) are defined by

Well-defined morphisms (typed terms) are defined by the following [typing rules][185] (in which the usual categorical morphism notation ![f:\alpha \to \beta ](https://wikimedia.org/api/rest_v1/media/math/render/svg/71a95e1bc8374e6acb4cb602d4797868594621a5) is replaced with [sequent calculus][186] notation ![f:\!\!-~~\alpha ~\vdash ~\beta ](https://wikimedia.org/api/rest_v1/media/math/render/svg/238bb0d5ef985a84fdbc2dd66fbf349b8d6a9dbd)).

Identity:

![{\frac {}{id:\!\!-~~\alpha ~\vdash ~\alpha }}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5f28b62e6cff3094ef9b76ce252e5b2523fd4bf6)

Composition:

![{\frac {t:\!\!-~~\alpha ~\vdash ~\beta \qquad u:\!\!-~~\beta ~\vdash ~\gamma }{u\circ t:\!\!-~\alpha ~\vdash ~\gamma }}](https://wikimedia.org/api/rest_v1/media/math/render/svg/99f853404cbaf78c218e8a7de3c3176a4d64e52c)

[Unit type][187] ([terminal object][188]):

![{\frac {}{\star :\!\!-~~\alpha ~\vdash ~\top }}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ff24ea002a32e7038928baa197a2eec8235b0208)

Cartesian product:

![{\frac {t:\!\!-~~\alpha ~\vdash ~\beta \qquad u:\!\!-~~\alpha ~\vdash ~\gamma }{(t,u):\!\!-~~\alpha ~\vdash ~\beta \times \gamma }}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1d94d3f6a534171155a1eeae7430b26c76d55cd7)

Left and right projection:

![{\frac {}{\pi _{1}:\!\!-~~\alpha \times \beta ~\vdash ~\alpha }}\qquad {\frac {}{\pi _{2}:\!\!-~~\alpha \times \beta ~\vdash ~\beta }}](https://wikimedia.org/api/rest_v1/media/math/render/svg/f9715ae4b9d2808b249846a6787f05714d7f57de)

[Currying][189]:

![{\frac {t:\!\!-~~\alpha \times \beta ~\vdash ~\gamma }{\lambda t:\!\!-~~\alpha ~\vdash ~\beta \rightarrow \gamma }}](https://wikimedia.org/api/rest_v1/media/math/render/svg/68bfac6d77510a0819f8e6d41d27dccece8fc75a)

[Application][190]:

![{\frac {}{eval:\!\!-~~(\alpha \rightarrow \beta )\times \alpha ~\vdash ~\beta }}](https://wikimedia.org/api/rest_v1/media/math/render/svg/043cc87eec7d9d9ee739650f9b8a86ce772c86e7)

Finally, the equations of the category are

These equations imply the following ![\eta ](https://wikimedia.org/api/rest_v1/media/math/render/svg/e4d701857cf5fbec133eebaf94deadf722537f64)\-laws:

Now, there exists t such that ![t:\!\!-~\alpha _{1}\times \ldots \times \alpha _{n}\vdash \beta ](https://wikimedia.org/api/rest_v1/media/math/render/svg/14a5b5ff9801bdd4b2df1cb69ec9a7773d1d171e) iff ![\alpha _{1},\ldots ,\alpha _{n}\vdash \beta ](https://wikimedia.org/api/rest_v1/media/math/render/svg/d00548c3acb16beb1f4ba0659be5ddb279cce9d3) is provable in implicational intuitionistic logic,.

## Examples\[[edit][191]\]

Thanks to the Curry–Howard correspondence, a typed expression whose type corresponds to a logical formula is analogous to a proof of that formula. Here are examples.

### The identity combinator seen as a proof of *α* → *α* in Hilbert-style logic\[[edit][192]\]

As an example, consider a proof of the theorem *α* → *α*. In [lambda calculus][193], this is the type of the identity function __I__ = λ*x*.*x* and in combinatory logic, the identity function is obtained by applying __S__ = λ*fgx*.*fx*(*gx*) twice to __K__ = λ*xy*.*x*. That is, __I__ = ((__S__ __K__) __K__). As a description of a proof, this says that the following steps can be used to prove *α* → *α*:

-   instantiate the second axiom scheme with the formulas *α*, *β* → *α* and *α* to obtain a proof of (*α* → ((*β* → *α*) → *α*)) → ((*α* → (*β* → *α*)) → (*α* → *α*)),
-   instantiate the first axiom scheme once with *α* and *β* → *α* to obtain a proof of *α* → ((*β* → *α*) → *α*),
-   instantiate the first axiom scheme a second time with α and β to obtain a proof of *α* → (*β* → *α*),
-   apply modus ponens twice to obtain a proof of *α* → *α*

In general, the procedure is that whenever the program contains an application of the form (*P* *Q*), these steps should be followed:

1.  First prove theorems corresponding to the types of *P* and *Q*.
2.  Since *P* is being applied to *Q*, the type of *P* must have the form *α* → *β* and the type of *Q* must have the form *α* for some *α* and *β*. Therefore, it is possible to detach the conclusion, β, via the modus ponens rule.

### The composition combinator seen as a proof of (*β* → *α*) → (*γ* → *β*) → *γ* → *α* in Hilbert-style logic\[[edit][194]\]

As a more complicated example, let's look at the theorem that corresponds to the __B__ function. The type of __B__ is (*β* → *α*) → (*γ* → *β*) → *γ* → *α*. __B__ is equivalent to (__S__ (__K__ __S__) __K__). This is our roadmap for the proof of the theorem (*β* → *α*) → (*γ* → *β*) → *γ* → *α*.

The first step is to construct (__K__ __S__). To make the antecedent of the __K__ axiom look like the __S__ axiom, set *α* equal to (*α* → *β* → *γ*) → (*α* → *β*) → *α* → *γ*, and *β* equal to *δ* (to avoid variable collisions):

__K__ : *α* → *β* → *α*

__K__\[*α* = (*α* → *β* → *γ*) → (*α* → *β*) → *α* → *γ*, *β* = δ\] : ((*α* → *β* → *γ*) → (*α* → *β*) → *α* → *γ*) → *δ* → (*α* → *β* → *γ*) → (*α* → *β*) → *α* → *γ*

Since the antecedent here is just __S__, the consequent can be detached using Modus Ponens:

__K S__ : *δ* → (*α* → *β* → *γ*) → (*α* → *β*) → *α* → *γ*

This is the theorem that corresponds to the type of (__K__ __S__). Now apply __S__ to this expression. Taking __S__ as follows

__S__ : (*α* → *β* → *γ*) → (*α* → *β*) → *α* → *γ*,

put *α* = *δ*, *β* = *α* → *β* → *γ*, and *γ* = (*α* → *β*) → *α* → *γ*, yielding

__S__\[*α* = *δ*, *β* = *α* → *β* → *γ*, *γ* = (*α* → *β*) → *α* → *γ*\] : (*δ* → (*α* → *β* → *γ*) → (*α* → *β*) → *α* → *γ*) → (*δ* → (*α* → *β* → *γ*)) → δ → (*α* → *β*) → *α* → *γ*

and then detach the consequent:

__S (K S)__ : (*δ* → *α* → *β* → *γ*) → δ → (*α* → *β*) → *α* → *γ*

This is the formula for the type of (__S__ (__K__ __S__)). A special case of this theorem has *δ* = (*β* → *γ*):

__S (K S)__\[*δ* = *β* → *γ*\] : ((*β* → *γ*) → *α* → *β* → *γ*) → (*β* → *γ*) → (*α* → *β*) → *α* → *γ*

This last formula must be applied to __K__. Specialize __K__ again, this time by replacing *α* with (*β* → *γ*) and *β* with *α*:

__K__ : *α* → *β* → *α*

__K__\[*α* = *β* → *γ*, *β* = *α*\] : (*β* → *γ*) → *α* → (*β* → *γ*)

This is the same as the antecedent of the prior formula so, detaching the consequent:

__S (K S) K__ : (*β* → *γ*) → (*α* → *β*) → *α* → *γ*

Switching the names of the variables *α* and *γ* gives us

(*β* → *α*) → (*γ* → *β*) → *γ* → *α*

which was what remained to prove.

### The normal proof of (*β* → *α*) → (*γ* → *β*) → *γ* → *α* in natural deduction seen as a λ-term\[[edit][195]\]

The diagram below gives proof of (*β* → *α*) → (*γ* → *β*) → *γ* → *α* in natural deduction and shows how it can be interpreted as the λ-expression λ*a*.λ*b*.λ*g*.(*a* (*b* *g*)) of type (*β* → *α*) → (*γ* → *β*) → *γ* → *α*.

                                     a:β → α, b:γ → β, g:γ ⊢ b : γ → β    a:β → α, b:γ → β, g:γ ⊢ g : γ
———————————————————————————————————  ————————————————————————————————————————————————————————————————————
a:β → α, b:γ → β, g:γ ⊢ a : β → α      a:β → α, b:γ → β, g:γ ⊢ b g : β
————————————————————————————————————————————————————————————————————————
               a:β → α, b:γ → β, g:γ ⊢ a (b g) : α
               ————————————————————————————————————
               a:β → α, b:γ → β ⊢ λ g. a (b g) : γ → α
               ————————————————————————————————————————
                        a:β → α ⊢ λ b. λ g. a (b g) : (γ → β) -> γ → α
                        ————————————————————————————————————
                                ⊢ λ a. λ b. λ g. a (b g) : (β → α) -> (γ → β) -> γ → α

## Other applications\[[edit][196]\]

Recently, the isomorphism has been proposed as a way to define search space partition in [genetic programming][197].[\[9\]][198] The method indexes sets of genotypes (the program trees evolved by the GP system) by their Curry–Howard isomorphic proof (referred to as a species).

As noted by [INRIA][199] research director Bernard Lang,[\[10\]][200] the Curry-Howard correspondence constitutes an argument against the patentability of software: since algorithms are mathematical proofs, patentability of the former would imply patentability of the latter. A theorem could be private property; a mathematician would have to pay for using it, and to trust the company that sells it but keeps its proof secret and rejects responsibility for any errors.

## Generalizations\[[edit][201]\]

The correspondences listed here go much farther and deeper. For example, cartesian closed categories are generalized by [closed monoidal categories][202]. The [internal language][203] of these categories is the [linear type system][204] (corresponding to [linear logic][205]), which generalizes simply-typed lambda calculus as the internal language of cartesian closed categories. Moreover, these can be shown to correspond to [cobordisms][206],[\[11\]][207] which play a vital role in [string theory][208].

An extended set of equivalences is also explored in [homotopy type theory][209], which became a very active area of research around 2013 and as of 2018 still is.[\[12\]][210] Here, [type theory][211] is extended by the [univalence axiom][212] ("equivalence is equivalent to equality") which permits homotopy type theory to be used as a foundation for all of mathematics (including [set theory][213] and classical logic, providing new ways to discuss the [axiom of choice][214] and many other things). That is, the Curry–Howard correspondence that proofs are elements of inhabited types is generalized to the notion of [homotopic equivalence][215] of proofs (as paths in space, the [identity type][216] or [equality type][217] of type theory being interpreted as a path).[\[13\]][218]

## References\[[edit][219]\]

1.  __[^][220]__ The correspondence was first made explicit in [Howard 1980][221]. See, for example section 4.6, p.53 [Gert Smolka and Jan Schwinghammer (2007-8), Lecture Notes in Semantics][222]
2.  __[^][223]__ The Brouwer–Heyting–Kolmogorov interpretation is also called the 'proof interpretation': p. 161 of Juliette Kennedy, Roman Kossak, eds. 2011. *[Set Theory, Arithmetic, and Foundations of Mathematics: Theorems, Philosophies][224]* [ISBN][225] [978-1-107-00804-5][226]
3.  __[^][227]__ [Curry 1934][228].
4.  __[^][229]__ [Curry & Feys 1958][230].
5.  __[^][231]__ [Howard 1980][232].
6.  __[^][233]__ Moggi, Eugenio (1991), ["Notions of Computation and Monads"][234] (PDF), *Information and Computation*, __93__ (1): 55–92, [doi][235]:[10.1016/0890-5401(91)90052-4][236]
7.  __[^][237]__ Sørenson, Morten; Urzyczyn, Paweł (1998), *Lectures on the Curry-Howard Isomorphism*, [CiteSeerX][238] [10.1.1.17.7385][239]
8.  __[^][240]__ Goldblatt, ["7.6 Grothendieck Topology as Intuitionistic Modality"][241] (PDF), *Mathematical Modal Logic: A Model of its Evolution*, pp. 76–81. The "lax" modality referred to is from Benton; Bierman; de Paiva (1998), "Computational types from a logical perspective", *Journal of Functional Programming*, __8__ (2): 177–193, [CiteSeerX][242] [10.1.1.258.6004][243], [doi][244]:[10.1017/s0956796898002998][245]
9.  __[^][246]__ F. Binard and A. Felty, "Genetic programming with polymorphic types and higher-order functions." In *Proceedings of the 10th annual conference on Genetic and evolutionary computation,* pages 1187 1194, 2008.[\[1\]][247]
10.  __[^][248]__ ["Article"][249]. *bat8.inria.fr*. Retrieved 2020-01-31.
11.  __[^][250]__ John c. Baez and Mike Stay, "[Physics, Topology, Logic and Computation: A Rosetta Stone][251]", (2009) [ArXiv 0903.0340][252] in *New Structures for Physics*, ed. Bob Coecke, *Lecture Notes in Physics* vol. __813__, Springer, Berlin, 2011, pp. 95–174.
12.  __[^][253]__ ["homotopy type theory - Google Trends"][254]. *trends.google.com*. Retrieved 2018-01-26.
13.  __[^][255]__ [*Homotopy Type Theory: Univalent Foundations of Mathematics*][256]. (2013) The Univalent Foundations Program. [Institute for Advanced Study][257].

### Seminal references\[[edit][258]\]

-   Curry, H B (1934-09-20). ["Functionality in Combinatory Logic"][259]. *Proceedings of the National Academy of Sciences of the United States of America*. __20__ (11): 584–90. [Bibcode][260]:[1934PNAS...20..584C][261]. [doi][262]:[10.1073/pnas.20.11.584][263]. [ISSN][264] [0027-8424][265]. [PMC][266] [1076489][267]. [PMID][268] [16577644][269].
-   Curry, Haskell B; Feys, Robert (1958). Craig, William (ed.). *Combinatory Logic*. Studies in Logic and the Foundations of Mathematics. __1__. North-Holland Publishing Company. [LCCN][270] [a59001593][271]; with two sections by Craig, William; see paragraph 9ECS1 maint: postscript ([link][272])
-   De Bruijn, Nicolaas (1968), *Automath, a language for mathematics*, Department of Mathematics, Eindhoven University of Technology, TH-report 68-WSK-05. Reprinted in revised form, with two pages commentary, in: *Automation and Reasoning, vol 2, Classical papers on computational logic 1967–1970*, Springer Verlag, 1983, pp. 159–200.
-   Howard, William A. (September 1980) \[original paper manuscript from 1969\], "The formulae-as-types notion of construction", in [Seldin, Jonathan P.][273]; [Hindley, J. Roger][274] (eds.), *To H.B. Curry: Essays on Combinatory Logic, Lambda Calculus and Formalism*, [Academic Press][275], pp. 479–490, [ISBN][276] [978-0-12-349050-6][277].

### Extensions of the correspondence\[[edit][278]\]

1.  ^ [*__a__*][279] [*__b__*][280] Pfenning, Frank; Davies, Rowan (2001), ["A Judgmental Reconstruction of Modal Logic"][281] (PDF), *Mathematical Structures in Computer Science*, __11__ (4): 511–540, [CiteSeerX][282] [10.1.1.43.1611][283], [doi][284]:[10.1017/S0960129501003322][285], [S2CID][286] [16467268][287]
2.  __[^][288]__ Davies, Rowan; Pfenning, Frank (2001), ["A Modal Analysis of Staged Computation"][289] (PDF), *Journal of the ACM*, __48__ (3): 555–604, [CiteSeerX][290] [10.1.1.3.5442][291], [doi][292]:[10.1145/382780.382785][293], [S2CID][294] [52148006][295]

-   Griffin, Timothy G. (1990), "The Formulae-as-Types Notion of Control", *Conf. Record 17th Annual ACM Symp. on Principles of Programming Languages, POPL '90, San Francisco, CA, USA, 17–19 Jan 1990*, pp. 47–57, [doi][296]:[10.1145/96709.96714][297], [ISBN][298] [978-0-89791-343-0][299], [S2CID][300] [3005134][301].
-   Parigot, Michel (1992), "Lambda-mu-calculus: An algorithmic interpretation of classical natural deduction", [*International Conference on Logic Programming and Automated Reasoning: LPAR '92 Proceedings, St. Petersburg, Russia*][302], Lecture Notes in Computer Science, __624__, [Springer-Verlag][303], pp. 190–201, [ISBN][304] [978-3-540-55727-2][305].
-   Herbelin, Hugo (1995), "A Lambda-Calculus Structure Isomorphic to Gentzen-Style Sequent Calculus Structure", in Pacholski, Leszek; Tiuryn, Jerzy (eds.), *Computer Science Logic, 8th International Workshop, CSL '94, Kazimierz, Poland, September 25–30, 1994, Selected Papers*, Lecture Notes in Computer Science, __933__, [Springer-Verlag][306], pp. 61–75, [ISBN][307] [978-3-540-60017-6][308].
-   Gabbay, Dov; [de Queiroz, Ruy][309] (1992). "Extending the Curry–Howard interpretation to linear, relevant and other resource logics". *Journal of Symbolic Logic*. *The Journal of Symbolic Logic*. __57__. pp. 1319–1365. [doi][310]:[10.2307/2275370][311]. [JSTOR][312] [2275370][313].. (Full version of the paper presented at *Logic Colloquium '90*, Helsinki. Abstract in *JSL* 56(3):1139–1140, 1991.)
-   de Queiroz, Ruy; Gabbay, Dov (1994), "Equality in Labelled Deductive Systems and the Functional Interpretation of Propositional Equality", in Dekker, Paul; Stokhof, Martin (eds.), *Proceedings of the Ninth Amsterdam Colloquium*, ILLC/Department of Philosophy, University of Amsterdam, pp. 547–565, [ISBN][314] [978-90-74795-07-4][315].
-   de Queiroz, Ruy; Gabbay, Dov (1995), ["The Functional Interpretation of the Existential Quantifier"][316], *Bulletin of the Interest Group in Pure and Applied Logics*, __3__, pp. 243–290. (Full version of a paper presented at *Logic Colloquium '91*, Uppsala. Abstract in *JSL* 58(2):753–754, 1993.)
-   de Queiroz, Ruy; Gabbay, Dov (1997), "The Functional Interpretation of Modal Necessity", in de Rijke, Maarten (ed.), *Advances in Intensional Logic*, Applied Logic Series, __7__, [Springer-Verlag][317], pp. 61–91, [ISBN][318] [978-0-7923-4711-8][319].
-   de Queiroz, Ruy; Gabbay, Dov (1999), ["Labelled Natural Deduction"][320], in Ohlbach, Hans-Juergen; Reyle, Uwe (eds.), *Logic, Language and Reasoning. Essays in Honor of Dov Gabbay*, Trends in Logic, __7__, Kluwer, pp. 173–250, [ISBN][321] [978-0-7923-5687-5][322].
-   de Oliveira, Anjolina; de Queiroz, Ruy (1999), "A Normalization Procedure for the Equational Fragment of Labelled Natural Deduction", *Logic Journal of the Interest Group in Pure and Applied Logics*, __7__, [Oxford University Press][323], pp. 173–215. (Full version of a paper presented at *2nd WoLLIC'95*, Recife. Abstract in *Journal of the Interest Group in Pure and Applied Logics* 4(2):330–332, 1996.)
-   Poernomo, Iman; Crossley, John; Wirsing; Martin (2005), *Adapting Proofs-as-Programs: The Curry–Howard Protocol*, Monographs in Computer Science, [Springer][324], [ISBN][325] [978-0-387-23759-6][326], concerns the adaptation of proofs-as-programs program synthesis to coarse-grain and imperative program development problems, via a method the authors call the Curry–Howard protocol. Includes a discussion of the Curry–Howard correspondence from a Computer Science perspective.
-   de Queiroz, Ruy J.G.B.; de Oliveira, Anjolina (2011), "The Functional Interpretation of Direct Computations", *Electronic Notes in Theoretical Computer Science*, [Elsevier][327], __269__: 19–40, [doi][328]:[10.1016/j.entcs.2011.03.003][329]. (Full version of a paper presented at *LSFA 2010*, Natal, Brazil.)

### Philosophical interpretations\[[edit][330]\]

-   de Queiroz, Ruy J.G.B. (1994), ["Normalisation and language-games"][331], *Dialectica*, __48__, pp. 83–123. (Early version presented at *Logic Colloquium '88*, Padova. Abstract in *JSL* 55:425, 1990.)
-   de Queiroz, Ruy J.G.B. (2001), ["Meaning, function, purpose, usefulness, consequences – interconnected concepts"][332], *Logic Journal of the Interest Group in Pure and Applied Logics*, __9__, pp. 693–734. (Early version presented at *Fourteenth International Wittgenstein Symposium (Centenary Celebration)* held in Kirchberg/Wechsel, August 13–20, 1989.)
-   de Queiroz, Ruy J.G.B. (2008), "On Reduction Rules, Meaning-as-use, and Proof-theoretic Semantics", *Studia Logica*, __90__ (2): 211–247, [doi][333]:[10.1007/s11225-008-9150-5][334], [S2CID][335] [11321602][336].

### Synthetic papers\[[edit][337]\]

-   De Bruijn, Nicolaas Govert (1995), ["On the roles of types in mathematics"][338] (PDF), in Groote, Philippe de (ed.), *[De Groote 1995][339], pp. 27–54*, the contribution of de Bruijn by himself.
-   Geuvers, Herman (1995), "The Calculus of Constructions and Higher Order Logic", *[De Groote 1995][340], pp. 139–191*, contains a synthetic introduction to the Curry–Howard correspondence.
-   [Gallier, Jean H.][341] (1995), ["On the Correspondence between Proofs and Lambda-Terms"][342] (PDF), *[De Groote 1995][343], pp. 55–138*, contains a synthetic introduction to the Curry–Howard correspondence.
-   [Wadler, Philip][344] (2014), ["Propositions as Types"][345] (PDF), *Communications of the ACM*, __58__ (12): 75–84, [doi][346]:[10.1145/2699407][347], [S2CID][348] [11957500][349]

### Books\[[edit][350]\]

-   De Groote, Philippe, ed. (1995), *The Curry–Howard Isomorphism*, Cahiers du Centre de Logique (Université catholique de Louvain), __8__, Academia-Bruylant, [ISBN][351] [978-2-87209-363-2][352], reproduces the seminal papers of Curry-Feys and Howard, a paper by de Bruijn and a few other papers.
-   Sørensen, Morten Heine; Urzyczyn, Paweł (2006) \[1998\], *Lectures on the Curry–Howard isomorphism*, Studies in Logic and the Foundations of Mathematics, __149__, [Elsevier Science][353], [CiteSeerX][354] [10.1.1.17.7385][355], [ISBN][356] [978-0-444-52077-7][357], notes on proof theory and type theory, that includes a presentation of the Curry–Howard correspondence, with a focus on the formulae-as-types correspondence
-   Girard, Jean-Yves (1987–1990), [*Proof and Types*][358], Cambridge Tracts in Theoretical Computer Science, __7__, Translated by and with appendices by Lafont, Yves and Taylor, Paul, Cambridge University Press, [ISBN][359] [0-521-37181-3][360], archived from [the original][361] on 2008-04-18, notes on proof theory with a presentation of the Curry–Howard correspondence.
-   Thompson, Simon (1991), [*Type Theory and Functional Programming*][362], Addison–Wesley, [ISBN][363] [0-201-41667-0][364].
-   Poernomo, Iman; Crossley, John; Wirsing; Martin (2005), *Adapting Proofs-as-Programs: The Curry–Howard Protocol*, Monographs in Computer Science, [Springer][365], [ISBN][366] [978-0-387-23759-6][367], concerns the adaptation of proofs-as-programs program synthesis to coarse-grain and imperative program development problems, via a method the authors call the Curry–Howard protocol. Includes a discussion of the Curry–Howard correspondence from a Computer Science perspective.
-   Binard, F.; Felty, A. (2008), ["Genetic programming with polymorphic types and higher-order functions"][368] (PDF), *Proceedings of the 10th annual conference on Genetic and evolutionary computation*, Association for Computing Machinery, pp. 1187–94, [doi][369]:[10.1145/1389095.1389330][370], [ISBN][371] [9781605581309][372], [S2CID][373] [3669630][374]
-   de Queiroz, Ruy J.G.B.; de Oliveira, Anjolina G.; Gabbay, Dov M. (2011), [*The Functional Interpretation of Logical Deduction*][375], Advances in Logic, __5__, Imperial College Press/World Scientific, [ISBN][376] [978-981-4360-95-1][377].
-   Mimram, Samuel (2020), [*Program = proof*][378], Independently published, [ISBN][379] [979-8615591839][380]

## Further reading\[[edit][381]\]

-   [Johnstone, P.T.][382] (2002), "D4.2 λ-Calculus and cartesian closed categories", [*Sketches of an Elephant*][383], A Topos Theory Compendium, __2__, Clarendon Press, pp. 951–962, [ISBN][384] [978-0-19-851598-2][385] — gives a [categorical][386] view of "what happens" in the Curry–Howard correspondence.

## External links\[[edit][387]\]

-   [Howard on Curry-Howard][388]
-   [The Curry–Howard Correspondence in Haskell][389]
-   [The Monad Reader 6: Adventures in Classical-Land][390]: Curry–Howard in Haskell, Pierce's law.

[1]: https://en.wikipedia.org/wiki/Programming_language_theory "Programming language theory"
[2]: https://en.wikipedia.org/wiki/Proof_theory "Proof theory"
[3]: https://en.wikipedia.org/wiki/Computer_program "Computer program"
[4]: https://en.wikipedia.org/wiki/Mathematical_proof "Mathematical proof"
[5]: https://en.wikipedia.org/wiki/Analogy "Analogy"
[6]: https://en.wikipedia.org/wiki/Mathematician "Mathematician"
[7]: https://en.wikipedia.org/wiki/Haskell_Curry "Haskell Curry"
[8]: https://en.wikipedia.org/wiki/Logician "Logician"
[9]: https://en.wikipedia.org/wiki/William_Alvin_Howard "William Alvin Howard"
[10]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence#cite_note-1
[11]: https://en.wikipedia.org/wiki/Intuitionistic_logic "Intuitionistic logic"
[12]: https://en.wikipedia.org/wiki/L._E._J._Brouwer "L. E. J. Brouwer"
[13]: https://en.wikipedia.org/wiki/Arend_Heyting "Arend Heyting"
[14]: https://en.wikipedia.org/wiki/Andrey_Kolmogorov "Andrey Kolmogorov"
[15]: https://en.wikipedia.org/wiki/Brouwer%E2%80%93Heyting%E2%80%93Kolmogorov_interpretation "Brouwer–Heyting–Kolmogorov interpretation"
[16]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence#cite_note-2
[17]: https://en.wikipedia.org/wiki/Stephen_Kleene "Stephen Kleene"
[18]: https://en.wikipedia.org/wiki/Realizability "Realizability"
[19]: https://en.wikipedia.org/wiki/Category_theory "Category theory"
[20]: https://en.wikipedia.org/w/index.php?title=Curry%E2%80%93Howard_correspondence&action=edit&section=1 "Edit section: Origin, scope, and consequences"
[21]: https://en.wikipedia.org/wiki/Haskell_Curry "Haskell Curry"
[22]: https://en.wikipedia.org/wiki/Typed_lambda_calculus "Typed lambda calculus"
[23]: https://en.wikipedia.org/wiki/Axiom-scheme "Axiom-scheme"
[24]: https://en.wikipedia.org/wiki/Intuitionism "Intuitionism"
[25]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence#cite_note-FOOTNOTECurry1934-3
[26]: https://en.wikipedia.org/wiki/Proof_calculus "Proof calculus"
[27]: https://en.wikipedia.org/wiki/Hilbert-style_deduction_system "Hilbert-style deduction system"
[28]: https://en.wikipedia.org/wiki/Model_of_computation "Model of computation"
[29]: https://en.wikipedia.org/wiki/Combinatory_logic "Combinatory logic"
[30]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence#cite_note-FOOTNOTECurryFeys1958-4
[31]: https://en.wikipedia.org/wiki/William_Alvin_Howard "William Alvin Howard"
[32]: https://en.wikipedia.org/wiki/Proof_calculus "Proof calculus"
[33]: https://en.wikipedia.org/wiki/Natural_deduction "Natural deduction"
[34]: https://en.wikipedia.org/wiki/Intuitionistic "Intuitionistic"
[35]: https://en.wikipedia.org/wiki/Model_of_computation "Model of computation"
[36]: https://en.wikipedia.org/wiki/Lambda_calculus "Lambda calculus"
[37]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence#cite_note-FOOTNOTEHoward1980-5
[38]: https://en.wikipedia.org/wiki/Analogy "Analogy"
[39]: https://en.wikipedia.org/wiki/Return_type "Return type"
[40]: https://en.wikipedia.org/wiki/Logic_programming "Logic programming"
[41]: https://en.wikipedia.org/wiki/Formal_system "Formal system"
[42]: https://en.wikipedia.org/wiki/Proof_calculus "Proof calculus"
[43]: https://en.wikipedia.org/wiki/Functional_programming_language "Functional programming language"
[44]: https://en.wikipedia.org/wiki/Martin-L%C3%B6f "Martin-Löf"
[45]: https://en.wikipedia.org/wiki/Intuitionistic_type_theory "Intuitionistic type theory"
[46]: https://en.wikipedia.org/wiki/Thierry_Coquand "Thierry Coquand"
[47]: https://en.wikipedia.org/wiki/Calculus_of_Constructions "Calculus of Constructions"
[48]: https://en.wikipedia.org/wiki/Type_theory "Type theory"
[49]: https://en.wikipedia.org/wiki/Typed_lambda_calculus "Typed lambda calculus"
[50]: https://en.wikipedia.org/wiki/Coq "Coq"
[51]: https://en.wikipedia.org/wiki/Program_correctness "Program correctness"
[52]: https://en.wikipedia.org/wiki/Proof-carrying_code "Proof-carrying code"
[53]: https://en.wikipedia.org/wiki/Programming_language "Programming language"
[54]: https://en.wikipedia.org/wiki/Classical_logic "Classical logic"
[55]: https://en.wikipedia.org/wiki/Continuation "Continuation"
[56]: https://en.wikipedia.org/wiki/Sequent_calculus "Sequent calculus"
[57]: https://en.wikipedia.org/wiki/Evaluation_strategy "Evaluation strategy"
[58]: https://en.wikipedia.org/wiki/Unifying_theories_in_mathematics "Unifying theories in mathematics"
[59]: https://en.wikipedia.org/wiki/Sequent_calculus "Sequent calculus"
[60]: https://en.wikipedia.org/wiki/Proof_net "Proof net"
[61]: https://en.wikipedia.org/wiki/Calculus_of_structures "Calculus of structures"
[62]: https://en.wikipedia.org/wiki/Combinatory_logic "Combinatory logic"
[63]: https://en.wikipedia.org/wiki/Simply_typed_lambda_calculus "Simply typed lambda calculus"
[64]: https://en.wikipedia.org/wiki/Models_of_computation "Models of computation"
[65]: https://en.wikipedia.org/wiki/Linear_logic "Linear logic"
[66]: https://en.wikipedia.org/wiki/Turing_machine "Turing machine"
[67]: https://en.wikipedia.org/wiki/Typed_assembly_language "Typed assembly language"
[68]: https://en.wikipedia.org/wiki/Turing-complete "Turing-complete"
[69]: https://en.wikipedia.org/wiki/Recursion_(computer_science) "Recursion (computer science)"
[70]: https://en.wikipedia.org/wiki/Monad_(functional_programming) "Monad (functional programming)"
[71]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence#cite_note-6
[72]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence#cite_note-PfenningDaviesJudgmental-7
[73]: https://en.wikipedia.org/wiki/Total_functional_programming "Total functional programming"
[74]: https://en.wikipedia.org/wiki/Turing_completeness "Turing completeness"
[75]: https://en.wikipedia.org/wiki/Corecursion "Corecursion"
[76]: https://en.wikipedia.org/w/index.php?title=Curry%E2%80%93Howard_correspondence&action=edit&section=2 "Edit section: General formulation"
[77]: https://en.wikipedia.org/wiki/Proof_calculus "Proof calculus"
[78]: https://en.wikipedia.org/wiki/Type_systems "Type systems"
[79]: https://en.wikipedia.org/wiki/Model_of_computation "Model of computation"
[80]: https://en.wikipedia.org/wiki/Formula_(mathematical_logic) "Formula (mathematical logic)"
[81]: https://en.wikipedia.org/wiki/Data_type "Data type"
[82]: https://en.wikipedia.org/wiki/Mathematical_proof "Mathematical proof"
[83]: https://en.wikipedia.org/wiki/Computer_program "Computer program"
[84]: https://en.wikipedia.org/wiki/Dependent_type "Dependent type"
[85]: https://en.wikipedia.org/wiki/Universal_quantification "Universal quantification"
[86]: https://en.wikipedia.org/wiki/Dependent_type#%CE%A0_type "Dependent type"
[87]: https://en.wikipedia.org/wiki/Existential_quantification "Existential quantification"
[88]: https://en.wikipedia.org/wiki/Dependent_type#%CE%A3_type "Dependent type"
[89]: https://en.wikipedia.org/wiki/Logical_implication "Logical implication"
[90]: https://en.wikipedia.org/wiki/Function_type "Function type"
[91]: https://en.wikipedia.org/wiki/Logical_conjunction "Logical conjunction"
[92]: https://en.wikipedia.org/wiki/Product_type "Product type"
[93]: https://en.wikipedia.org/wiki/Logical_disjunction "Logical disjunction"
[94]: https://en.wikipedia.org/wiki/Sum_type "Sum type"
[95]: https://en.wikipedia.org/wiki/Unit_type "Unit type"
[96]: https://en.wikipedia.org/wiki/Bottom_type "Bottom type"
[97]: https://en.wikipedia.org/wiki/Hilbert-style_deduction_system "Hilbert-style deduction system"
[98]: https://en.wikipedia.org/wiki/Combinatory_logic "Combinatory logic"
[99]: https://en.wikipedia.org/wiki/Natural_deduction "Natural deduction"
[100]: https://en.wikipedia.org/wiki/Lambda_calculus "Lambda calculus"
[101]: https://en.wikipedia.org/wiki/Hilbert-style_deduction_system "Hilbert-style deduction system"
[102]: https://en.wikipedia.org/wiki/Combinatory_logic "Combinatory logic"
[103]: https://en.wikipedia.org/wiki/Natural_deduction "Natural deduction"
[104]: https://en.wikipedia.org/wiki/Lambda_calculus "Lambda calculus"
[105]: https://en.wikipedia.org/wiki/Hypotheses "Hypotheses"
[106]: https://en.wikipedia.org/wiki/Implication_elimination "Implication elimination"
[107]: https://en.wikipedia.org/wiki/Apply "Apply"
[108]: https://en.wikipedia.org/wiki/Implication_introduction "Implication introduction"
[109]: https://en.wikipedia.org/w/index.php?title=Curry%E2%80%93Howard_correspondence&action=edit&section=3 "Edit section: Corresponding systems"
[110]: https://en.wikipedia.org/w/index.php?title=Curry%E2%80%93Howard_correspondence&action=edit&section=4 "Edit section: Hilbert-style deduction systems and combinatory logic"
[111]: https://en.wikipedia.org/wiki/Combinatory_logic "Combinatory logic"
[112]: https://en.wikipedia.org/wiki/Axiom_scheme "Axiom scheme"
[113]: https://en.wikipedia.org/wiki/Hilbert-style_deduction_system "Hilbert-style deduction system"
[114]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence#Examples
[115]: https://en.wikipedia.org/wiki/Modus_ponens "Modus ponens"
[116]: https://en.wikipedia.org/wiki/Inference_rules "Inference rules"
[117]: https://en.wikipedia.org/wiki/Intuitionistic_logic "Intuitionistic logic"
[118]: https://en.wikipedia.org/wiki/Classical_logic "Classical logic"
[119]: https://en.wikipedia.org/wiki/Tautology_(logic) "Tautology (logic)"
[120]: https://en.wikipedia.org/wiki/Peirce%27s_law "Peirce's law"
[121]: https://en.wikipedia.org/wiki/Deduction_theorem "Deduction theorem"
[122]: https://en.wikipedia.org/wiki/Combinatory_logic#Conversion_of_a_lambda_term_to_an_equivalent_combinatorial_term "Combinatory logic"
[123]: https://en.wikipedia.org/wiki/Deduction_theorem "Deduction theorem"
[124]: https://en.wikipedia.org/wiki/Combinatory_logic#Conversion_of_a_lambda_term_to_an_equivalent_combinatorial_term "Combinatory logic"
[125]: https://en.wikipedia.org/wiki/Combinatory_logic#Reduction_in_combinatory_logic "Combinatory logic"
[126]: https://en.wikipedia.org/wiki/Peirce%27s_law "Peirce's law"
[127]: https://en.wikipedia.org/wiki/Combinatory_logic#One-point_basis "Combinatory logic"
[128]: https://en.wikipedia.org/wiki/Principal_type "Principal type"
[129]: https://en.wikipedia.org/w/index.php?title=Curry%E2%80%93Howard_correspondence&action=edit&section=5 "Edit section: Natural deduction and lambda calculus"
[130]: https://en.wikipedia.org/wiki/Haskell_Curry "Haskell Curry"
[131]: https://en.wikipedia.org/wiki/Hilbert-style_deduction_system "Hilbert-style deduction system"
[132]: https://en.wikipedia.org/wiki/Combinatory_logic "Combinatory logic"
[133]: https://en.wikipedia.org/wiki/William_Alvin_Howard "William Alvin Howard"
[134]: https://en.wikipedia.org/wiki/Simply_typed_lambda_calculus "Simply typed lambda calculus"
[135]: https://en.wikipedia.org/wiki/Natural_deduction "Natural deduction"
[136]: https://en.wikipedia.org/wiki/Sequent "Sequent"
[137]: https://en.wikipedia.org/wiki/Lambda_calculus "Lambda calculus"
[138]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence#Examples
[139]: https://en.wikipedia.org/wiki/Lambda_calculus "Lambda calculus"
[140]: https://en.wikipedia.org/wiki/Dag_Prawitz "Dag Prawitz"
[141]: https://en.wikipedia.org/wiki/Natural_deduction "Natural deduction"
[142]: https://en.wikipedia.org/wiki/Type_inhabitation_problem "Type inhabitation problem"
[143]: https://en.wikipedia.org/wiki/Intuitionistic "Intuitionistic"
[144]: https://en.wikipedia.org/wiki/Normalization_property_(lambda-calculus) "Normalization property (lambda-calculus)"
[145]: https://en.wikipedia.org/wiki/Type_inhabitation_problem "Type inhabitation problem"
[146]: https://en.wikipedia.org/wiki/Natural_deduction "Natural deduction"
[147]: https://en.wikipedia.org/wiki/Simply_typed_lambda_calculus "Simply typed lambda calculus"
[148]: https://en.wikipedia.org/w/index.php?title=Curry%E2%80%93Howard_correspondence&action=edit&section=6 "Edit section: Classical logic and control operators"
[149]: https://en.wikipedia.org/wiki/Intuitionistic_logic "Intuitionistic logic"
[150]: https://en.wikipedia.org/wiki/Peirce%27s_law "Peirce's law"
[151]: https://en.wikipedia.org/wiki/Classical_logic "Classical logic"
[152]: https://en.wikipedia.org/wiki/Double-negation_translation "Double-negation translation"
[153]: https://en.wikipedia.org/wiki/Continuation-passing_style "Continuation-passing style"
[154]: https://en.wikipedia.org/wiki/Kolmogorov "Kolmogorov"
[155]: https://en.wikipedia.org/wiki/Peirce%27s_law "Peirce's law"
[156]: https://en.wikipedia.org/wiki/Call-with-current-continuation "Call-with-current-continuation"
[157]: https://en.wikipedia.org/wiki/Double-negation_translation "Double-negation translation"
[158]: https://en.wikipedia.org/wiki/Continuation-passing_style "Continuation-passing style"
[159]: https://en.wikipedia.org/wiki/Peirce%27s_law "Peirce's law"
[160]: https://en.wikipedia.org/wiki/Lambda-mu_calculus "Lambda-mu calculus"
[161]: https://en.wikipedia.org/w/index.php?title=Curry%E2%80%93Howard_correspondence&action=edit&section=7 "Edit section: Sequent calculus"
[162]: https://en.wikipedia.org/wiki/Gentzen "Gentzen"
[163]: https://en.wikipedia.org/wiki/Sequent_calculus "Sequent calculus"
[164]: https://en.wikipedia.org/wiki/Abstract_machine "Abstract machine"
[165]: https://en.wikipedia.org/wiki/Call-by-name "Call-by-name"
[166]: https://en.wikipedia.org/wiki/Call-by-value "Call-by-value"
[167]: https://en.wikipedia.org/w/index.php?title=Curry%E2%80%93Howard_correspondence&action=edit&section=8 "Edit section: Related proofs-as-programs correspondences"
[168]: https://en.wikipedia.org/w/index.php?title=Curry%E2%80%93Howard_correspondence&action=edit&section=9 "Edit section: The role of de Bruijn"
[169]: https://en.wikipedia.org/wiki/Nicolaas_Govert_de_Bruijn "Nicolaas Govert de Bruijn"
[170]: https://en.wikipedia.org/wiki/Automath "Automath"
[171]: https://en.wikipedia.org/w/index.php?title=Curry%E2%80%93Howard_correspondence&action=edit&section=10 "Edit section: BHK interpretation"
[172]: https://en.wikipedia.org/wiki/BHK_interpretation "BHK interpretation"
[173]: https://en.wikipedia.org/wiki/BHK_interpretation "BHK interpretation"
[174]: https://en.wikipedia.org/w/index.php?title=Curry%E2%80%93Howard_correspondence&action=edit&section=11 "Edit section: Realizability"
[175]: https://en.wikipedia.org/wiki/Stephen_Cole_Kleene "Stephen Cole Kleene"
[176]: https://en.wikipedia.org/wiki/Realizability "Realizability"
[177]: https://en.wikipedia.org/wiki/Georg_Kreisel "Georg Kreisel"
[178]: https://en.wikipedia.org/wiki/Simply_typed_lambda_calculus "Simply typed lambda calculus"
[179]: https://en.wikipedia.org/wiki/Kurt_G%C3%B6del "Kurt Gödel"
[180]: https://en.wikipedia.org/wiki/Dialectica_interpretation "Dialectica interpretation"
[181]: https://en.wikipedia.org/w/index.php?title=Curry%E2%80%93Howard_correspondence&action=edit&section=12 "Edit section: Curry–Howard–Lambek correspondence"
[182]: https://en.wikipedia.org/wiki/Joachim_Lambek "Joachim Lambek"
[183]: https://en.wikipedia.org/wiki/Combinatory_logic "Combinatory logic"
[184]: https://en.wikipedia.org/wiki/Cartesian_closed_categories "Cartesian closed categories"
[185]: https://en.wikipedia.org/wiki/Type_rule "Type rule"
[186]: https://en.wikipedia.org/wiki/Sequent_calculus "Sequent calculus"
[187]: https://en.wikipedia.org/wiki/Unit_type "Unit type"
[188]: https://en.wikipedia.org/wiki/Terminal_object "Terminal object"
[189]: https://en.wikipedia.org/wiki/Currying "Currying"
[190]: https://en.wikipedia.org/wiki/Apply "Apply"
[191]: https://en.wikipedia.org/w/index.php?title=Curry%E2%80%93Howard_correspondence&action=edit&section=13 "Edit section: Examples"
[192]: https://en.wikipedia.org/w/index.php?title=Curry%E2%80%93Howard_correspondence&action=edit&section=14 "Edit section: The identity combinator seen as a proof of α → α in Hilbert-style logic"
[193]: https://en.wikipedia.org/wiki/Lambda_calculus "Lambda calculus"
[194]: https://en.wikipedia.org/w/index.php?title=Curry%E2%80%93Howard_correspondence&action=edit&section=15 "Edit section: The composition combinator seen as a proof of (β → α) → (γ → β) → γ → α in Hilbert-style logic"
[195]: https://en.wikipedia.org/w/index.php?title=Curry%E2%80%93Howard_correspondence&action=edit&section=16 "Edit section: The normal proof of (β → α) → (γ → β) → γ → α in natural deduction seen as a λ-term"
[196]: https://en.wikipedia.org/w/index.php?title=Curry%E2%80%93Howard_correspondence&action=edit&section=17 "Edit section: Other applications"
[197]: https://en.wikipedia.org/wiki/Genetic_programming "Genetic programming"
[198]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence#cite_note-11
[199]: https://en.wikipedia.org/wiki/INRIA "INRIA"
[200]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence#cite_note-12
[201]: https://en.wikipedia.org/w/index.php?title=Curry%E2%80%93Howard_correspondence&action=edit&section=18 "Edit section: Generalizations"
[202]: https://en.wikipedia.org/wiki/Closed_monoidal_category "Closed monoidal category"
[203]: https://en.wikipedia.org/wiki/Internal_language "Internal language"
[204]: https://en.wikipedia.org/wiki/Linear_type_system "Linear type system"
[205]: https://en.wikipedia.org/wiki/Linear_logic "Linear logic"
[206]: https://en.wikipedia.org/wiki/Cobordism "Cobordism"
[207]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence#cite_note-13
[208]: https://en.wikipedia.org/wiki/String_theory "String theory"
[209]: https://en.wikipedia.org/wiki/Homotopy_type_theory "Homotopy type theory"
[210]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence#cite_note-14
[211]: https://en.wikipedia.org/wiki/Type_theory "Type theory"
[212]: https://en.wikipedia.org/wiki/Univalence_axiom "Univalence axiom"
[213]: https://en.wikipedia.org/wiki/Set_theory "Set theory"
[214]: https://en.wikipedia.org/wiki/Axiom_of_choice "Axiom of choice"
[215]: https://en.wikipedia.org/wiki/Homotopy "Homotopy"
[216]: https://en.wikipedia.org/wiki/Identity_type "Identity type"
[217]: https://en.wikipedia.org/wiki/Intuitionistic_type_theory#Connectives_of_type_theory "Intuitionistic type theory"
[218]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence#cite_note-15
[219]: https://en.wikipedia.org/w/index.php?title=Curry%E2%80%93Howard_correspondence&action=edit&section=19 "Edit section: References"
[220]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence#cite_ref-1
[221]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence#CITEREFHoward1980
[222]: http://www.ps.uni-saarland.de/courses/sem-ws07/notes/0.pdf
[223]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence#cite_ref-2
[224]: https://books.google.com/books?id=x1aPcJnz4iYC&pg=PA161&dq=Brouwer%E2%80%93Heyting%E2%80%93Kolmogorov+interpretation&hl=en&sa=X&ei=CbdRVPvyB6-_iQL--YG4AQ&ved=0CCcQ6AEwAQ#v=onepage&q=Brouwer%E2%80%93Heyting%E2%80%93Kolmogorov%20interpretation&f=false
[225]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[226]: https://en.wikipedia.org/wiki/Special:BookSources/978-1-107-00804-5 "Special:BookSources/978-1-107-00804-5"
[227]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence#cite_ref-FOOTNOTECurry1934_3-0
[228]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence#CITEREFCurry1934
[229]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence#cite_ref-FOOTNOTECurryFeys1958_4-0
[230]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence#CITEREFCurryFeys1958
[231]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence#cite_ref-FOOTNOTEHoward1980_5-0
[232]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence#CITEREFHoward1980
[233]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence#cite_ref-6
[234]: http://www.disi.unige.it/person/MoggiE/ftp/ic91.pdf
[235]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[236]: https://doi.org/10.1016%2F0890-5401%2891%2990052-4
[237]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence#cite_ref-9
[238]: https://en.wikipedia.org/wiki/CiteSeerX_(identifier) "CiteSeerX (identifier)"
[239]: https://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.17.7385
[240]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence#cite_ref-10
[241]: http://homepages.mcs.vuw.ac.nz/~rob/papers/modalhist.pdf
[242]: https://en.wikipedia.org/wiki/CiteSeerX_(identifier) "CiteSeerX (identifier)"
[243]: https://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.258.6004
[244]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[245]: https://doi.org/10.1017%2Fs0956796898002998
[246]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence#cite_ref-11
[247]: http://www.site.uottawa.ca/~afelty/dist/gecco08.pdf
[248]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence#cite_ref-12
[249]: http://bat8.inria.fr/~lang/ecrits/larecherche/03280721.html
[250]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence#cite_ref-13
[251]: http://math.ucr.edu/home/baez/rosetta/rose3.pdf
[252]: https://arxiv.org/abs/0903.0340/
[253]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence#cite_ref-14
[254]: https://trends.google.com/trends/explore?date=all&q=%22homotopy%20type%20theory%22
[255]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence#cite_ref-15
[256]: http://homotopytypetheory.org/book/
[257]: https://en.wikipedia.org/wiki/Institute_for_Advanced_Study "Institute for Advanced Study"
[258]: https://en.wikipedia.org/w/index.php?title=Curry%E2%80%93Howard_correspondence&action=edit&section=20 "Edit section: Seminal references"
[259]: https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1076489
[260]: https://en.wikipedia.org/wiki/Bibcode_(identifier) "Bibcode (identifier)"
[261]: https://ui.adsabs.harvard.edu/abs/1934PNAS...20..584C
[262]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[263]: https://doi.org/10.1073%2Fpnas.20.11.584
[264]: https://en.wikipedia.org/wiki/ISSN_(identifier) "ISSN (identifier)"
[265]: https://www.worldcat.org/issn/0027-8424
[266]: https://en.wikipedia.org/wiki/PMC_(identifier) "PMC (identifier)"
[267]: https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1076489
[268]: https://en.wikipedia.org/wiki/PMID_(identifier) "PMID (identifier)"
[269]: https://pubmed.ncbi.nlm.nih.gov/16577644
[270]: https://en.wikipedia.org/wiki/LCCN_(identifier) "LCCN (identifier)"
[271]: https://lccn.loc.gov/a59001593
[272]: https://en.wikipedia.org/wiki/Category:CS1_maint:_postscript "Category:CS1 maint: postscript"
[273]: https://en.wikipedia.org/w/index.php?title=Jonathan_P._Seldin&action=edit&redlink=1 "Jonathan P. Seldin (page does not exist)"
[274]: https://en.wikipedia.org/wiki/J._Roger_Hindley "J. Roger Hindley"
[275]: https://en.wikipedia.org/wiki/Academic_Press "Academic Press"
[276]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[277]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-12-349050-6 "Special:BookSources/978-0-12-349050-6"
[278]: https://en.wikipedia.org/w/index.php?title=Curry%E2%80%93Howard_correspondence&action=edit&section=21 "Edit section: Extensions of the correspondence"
[279]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence#cite_ref-PfenningDaviesJudgmental_7-0
[280]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence#cite_ref-PfenningDaviesJudgmental_7-1
[281]: https://www.cs.cmu.edu/~fp/papers/mscs00.pdf
[282]: https://en.wikipedia.org/wiki/CiteSeerX_(identifier) "CiteSeerX (identifier)"
[283]: https://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.43.1611
[284]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[285]: https://doi.org/10.1017%2FS0960129501003322
[286]: https://en.wikipedia.org/wiki/S2CID_(identifier) "S2CID (identifier)"
[287]: https://api.semanticscholar.org/CorpusID:16467268
[288]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence#cite_ref-DaviesPfenningStaged_8-0
[289]: https://www.cs.cmu.edu/~fp/papers/jacm00.pdf
[290]: https://en.wikipedia.org/wiki/CiteSeerX_(identifier) "CiteSeerX (identifier)"
[291]: https://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.3.5442
[292]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[293]: https://doi.org/10.1145%2F382780.382785
[294]: https://en.wikipedia.org/wiki/S2CID_(identifier) "S2CID (identifier)"
[295]: https://api.semanticscholar.org/CorpusID:52148006
[296]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[297]: https://doi.org/10.1145%2F96709.96714
[298]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[299]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-89791-343-0 "Special:BookSources/978-0-89791-343-0"
[300]: https://en.wikipedia.org/wiki/S2CID_(identifier) "S2CID (identifier)"
[301]: https://api.semanticscholar.org/CorpusID:3005134
[302]: https://en.wikipedia.org/wiki/International_Conference_on_Logic_Programming_and_Automated_Reasoning "International Conference on Logic Programming and Automated Reasoning"
[303]: https://en.wikipedia.org/wiki/Springer-Verlag "Springer-Verlag"
[304]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[305]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-540-55727-2 "Special:BookSources/978-3-540-55727-2"
[306]: https://en.wikipedia.org/wiki/Springer-Verlag "Springer-Verlag"
[307]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[308]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-540-60017-6 "Special:BookSources/978-3-540-60017-6"
[309]: https://en.wikipedia.org/wiki/Ruy_de_Queiroz "Ruy de Queiroz"
[310]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[311]: https://doi.org/10.2307%2F2275370
[312]: https://en.wikipedia.org/wiki/JSTOR_(identifier) "JSTOR (identifier)"
[313]: https://www.jstor.org/stable/2275370
[314]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[315]: https://en.wikipedia.org/wiki/Special:BookSources/978-90-74795-07-4 "Special:BookSources/978-90-74795-07-4"
[316]: https://academic.oup.com/jigpal/article-abstract/3/2-3/243/2897783
[317]: https://en.wikipedia.org/wiki/Springer-Verlag "Springer-Verlag"
[318]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[319]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-7923-4711-8 "Special:BookSources/978-0-7923-4711-8"
[320]: https://www.springer.com/philosophy/logic/book/978-0-7923-5687-5
[321]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[322]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-7923-5687-5 "Special:BookSources/978-0-7923-5687-5"
[323]: https://en.wikipedia.org/wiki/Oxford_University_Press "Oxford University Press"
[324]: https://en.wikipedia.org/wiki/Springer_Science%2BBusiness_Media "Springer Science+Business Media"
[325]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[326]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-387-23759-6 "Special:BookSources/978-0-387-23759-6"
[327]: https://en.wikipedia.org/wiki/Elsevier "Elsevier"
[328]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[329]: https://doi.org/10.1016%2Fj.entcs.2011.03.003
[330]: https://en.wikipedia.org/w/index.php?title=Curry%E2%80%93Howard_correspondence&action=edit&section=22 "Edit section: Philosophical interpretations"
[331]: http://www3.interscience.wiley.com/journal/119262585/abstract?CRETRY=1&SRETRY=0
[332]: http://jigpal.oxfordjournals.org/cgi/content/abstract/9/5/693
[333]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[334]: https://doi.org/10.1007%2Fs11225-008-9150-5
[335]: https://en.wikipedia.org/wiki/S2CID_(identifier) "S2CID (identifier)"
[336]: https://api.semanticscholar.org/CorpusID:11321602
[337]: https://en.wikipedia.org/w/index.php?title=Curry%E2%80%93Howard_correspondence&action=edit&section=23 "Edit section: Synthetic papers"
[338]: http://alexandria.tue.nl/repository/freearticles/597627.pdf
[339]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence#CITEREFDe_Groote1995
[340]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence#CITEREFDe_Groote1995
[341]: https://en.wikipedia.org/wiki/Jean_Gallier "Jean Gallier"
[342]: ftp://ftp.cis.upenn.edu/pub/papers/gallier/cahiers.pdf
[343]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence#CITEREFDe_Groote1995
[344]: https://en.wikipedia.org/wiki/Philip_Wadler "Philip Wadler"
[345]: http://homepages.inf.ed.ac.uk/wadler/papers/propositions-as-types/propositions-as-types.pdf
[346]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[347]: https://doi.org/10.1145%2F2699407
[348]: https://en.wikipedia.org/wiki/S2CID_(identifier) "S2CID (identifier)"
[349]: https://api.semanticscholar.org/CorpusID:11957500
[350]: https://en.wikipedia.org/w/index.php?title=Curry%E2%80%93Howard_correspondence&action=edit&section=24 "Edit section: Books"
[351]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[352]: https://en.wikipedia.org/wiki/Special:BookSources/978-2-87209-363-2 "Special:BookSources/978-2-87209-363-2"
[353]: https://en.wikipedia.org/wiki/Elsevier_Science "Elsevier Science"
[354]: https://en.wikipedia.org/wiki/CiteSeerX_(identifier) "CiteSeerX (identifier)"
[355]: https://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.17.7385
[356]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[357]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-444-52077-7 "Special:BookSources/978-0-444-52077-7"
[358]: https://web.archive.org/web/20080418044121/http://www.monad.me.uk/stable/Proofs+Types.html
[359]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[360]: https://en.wikipedia.org/wiki/Special:BookSources/0-521-37181-3 "Special:BookSources/0-521-37181-3"
[361]: http://www.monad.me.uk/stable/Proofs+Types.html
[362]: http://www.cs.kent.ac.uk/people/staff/sjt/TTFP/
[363]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[364]: https://en.wikipedia.org/wiki/Special:BookSources/0-201-41667-0 "Special:BookSources/0-201-41667-0"
[365]: https://en.wikipedia.org/wiki/Springer_Science%2BBusiness_Media "Springer Science+Business Media"
[366]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[367]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-387-23759-6 "Special:BookSources/978-0-387-23759-6"
[368]: http://www.site.uottawa.ca/~afelty/dist/gecco08.pdf
[369]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[370]: https://doi.org/10.1145%2F1389095.1389330
[371]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[372]: https://en.wikipedia.org/wiki/Special:BookSources/9781605581309 "Special:BookSources/9781605581309"
[373]: https://en.wikipedia.org/wiki/S2CID_(identifier) "S2CID (identifier)"
[374]: https://api.semanticscholar.org/CorpusID:3669630
[375]: https://books.google.com/books?id=aFO6CgAAQBAJ
[376]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[377]: https://en.wikipedia.org/wiki/Special:BookSources/978-981-4360-95-1 "Special:BookSources/978-981-4360-95-1"
[378]: https://www.amazon.com/PROGRAM-PROOF-Samuel-Mimram/dp/B08C97TD9G
[379]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[380]: https://en.wikipedia.org/wiki/Special:BookSources/979-8615591839 "Special:BookSources/979-8615591839"
[381]: https://en.wikipedia.org/w/index.php?title=Curry%E2%80%93Howard_correspondence&action=edit&section=25 "Edit section: Further reading"
[382]: https://en.wikipedia.org/wiki/P.T._Johnstone "P.T. Johnstone"
[383]: https://books.google.com/books?id=TLHfQPHNs0QC
[384]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[385]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-19-851598-2 "Special:BookSources/978-0-19-851598-2"
[386]: https://en.wikipedia.org/wiki/Categorical_logic "Categorical logic"
[387]: https://en.wikipedia.org/w/index.php?title=Curry%E2%80%93Howard_correspondence&action=edit&section=26 "Edit section: External links"
[388]: http://wadler.blogspot.com/2014/08/howard-on-curry-howard.html
[389]: https://web.archive.org/web/20080819185521/http://www.thenewsh.com/~newsham/formal/curryhoward/
[390]: http://www.haskell.org/wikiupload/1/14/TMR-Issue6.pdf

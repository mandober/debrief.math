---
downloaded:       2021-11-06
author:           
page-url:         https://en.wikipedia.org/wiki/SKI_combinator_calculus
page-title:       SKI combinator calculus - Wikipedia
article-title:    SKI combinator calculus - Wikipedia
article-length:   11051
article-created:  {Date-Creation-yyyymmdd}
article-modified: {Date-Revision-yyyymmdd}
desc:             {description}
---
# SKI combinator calculus - Wikipedia

The SKI combinator calculus is a combinatory logic system and a computational system. It can be thought of as a computer programming language, though it is not convenient for writing software. Instead, it is important in the mathematical theory of algorithms because it is an extremely simple Turing complete language. It can be likened to a reduced version of the untyped lambda calculus. It was introduced by Moses Schönfinkel[1] and Haskell Curry.[2]
The __SKI combinator calculus__ is a [combinatory logic system][1] and a [computational system][2]. It can be thought of as a computer programming language, though it is not convenient for writing software. Instead, it is important in the mathematical theory of [algorithms][3] because it is an extremely simple [Turing complete][4] language. It can be likened to a reduced version of the untyped [lambda calculus][5]. It was introduced by [Moses Schönfinkel][6][\[1\]][7] and [Haskell Curry][8].[\[2\]][9]

All operations in lambda calculus can be encoded via [abstraction elimination][10] into the SKI calculus as [binary trees][11] whose leaves are one of the three symbols __S__, __K__, and __I__ (called *combinators*).

## Notation\[[edit][12]\]

Although the most formal representation of the objects in this system requires binary trees, but for typesettability reasons they can be represented as parenthesized expressions, either with all the subtrees parenthesized, or only the right-side children subtrees parenthesized. So, a tree whose left subtree is the tree __KS__ and whose right subtree is the tree __SK__ is usually typed as ((__KS__)(__SK__)), or more simply as __KS__(__SK__), instead of being fully drawn as a tree (as formality and readability would require). Parenthesizing only the right subtree makes this notation left-associative: __ISK__ means ((__IS__)__K__).

## Informal description\[[edit][13]\]

Informally, and using programming language jargon, a tree (*xy*) can be thought of as a function *x* applied to an argument *y*. When evaluated (*i.e.*, when the function is "applied" to the argument), the tree "returns a value", *i.e.*, transforms into another tree. The "function", "argument" and the "value" are either combinators or binary trees. If they are binary trees, they may be thought of as functions too, if needed.

The __evaluation__ operation is defined as follows:

(*x*, *y*, and *z* represent expressions made from the functions __S__, __K__, and __I__, and set values):

__I__ returns its argument:

__I__*x* = *x*

__K__, when applied to any argument *x*, yields a one-argument constant function __K__*x*, which, when applied to any argument, returns *x*:

__K__*xy* = *x*

__S__ is a substitution operator. It takes three arguments and then returns the first argument applied to the third, which is then applied to the result of the second argument applied to the third. More clearly:

__S__*xyz* = *xz*(*yz*)

Example computation: __SKSK__ evaluates to __KK__(__SK__) by the __S__\-rule. Then if we evaluate __KK__(__SK__), we get __K__ by the __K__\-rule. As no further rule can be applied, the computation halts here.

For all trees *x* and all trees *y*, __SK__*xy* will always evaluate to *y* in two steps, __K__*y*(*xy*) = *y*, so the ultimate result of evaluating __SK__*xy* will always equal the result of evaluating *y*. We say that __SK__*x* and __I__ are "functionally equivalent" because they always yield the same result when applied to any *y*.

From these definitions it can be shown that SKI calculus is not the minimum system that can fully perform the computations of lambda calculus, as all occurrences of __I__ in any expression can be replaced by (__SKK__) or (__SKS__) or (__SK__ whatever) and the resulting expression will yield the same result. So the "__I__" is merely [syntactic sugar][14]. Since __I__ is optional, the system is also referred as SK calculus or SK combinator calculus.

It is possible to define a complete system using only one (improper) combinator. An example is Chris Barker's [iota][15] combinator, which can be expressed in terms of __S__ and __K__ as follows:

ι*x* = *x*__SK__

It is possible to reconstruct __S__, __K__, and __I__ from the iota combinator. Applying ι to itself gives ιι = ι__SK__ = __SSKK__ = __SK__(__KK__) which is functionally equivalent to __I__. __K__ can be constructed by applying ι twice to __I__ (which is equivalent to application of ι to itself): ι(ι(ιι)) = ι(ιι__SK__) = ι(__ISK__) = ι(__SK__) = __SKSK__ = __K__. Applying ι one more time gives ι(ι(ι(ιι))) = ι__K__ = __KSK__ = __S__.

## Formal definition\[[edit][16]\]

The terms and derivations in this system can also be more formally defined:

__Terms__: The set *T* of terms is defined recursively by the following rules.

1.  __S__, __K__, and __I__ are terms.
2.  If τ1 and τ2 are terms, then (τ1τ2) is a term.
3.  Nothing is a term if not required to be so by the first two rules.

__Derivations__: A derivation is a finite sequence of terms defined recursively by the following rules (where α and ι are words over the alphabet {__S__, __K__, __I__, (, )} while β, γ and δ are terms):

1.  If Δ is a derivation ending in an expression of the form α(__I__β)ι, then Δ followed by the term αβι is a derivation.
2.  If Δ is a derivation ending in an expression of the form α((__K__β)γ)ι, then Δ followed by the term αβι is a derivation.
3.  If Δ is a derivation ending in an expression of the form α(((__S__β)γ)δ)ι, then Δ followed by the term α((βδ)(γδ))ι is a derivation.

Assuming a sequence is a valid derivation to begin with, it can be extended using these rules. [\[1\]][17]

## Recursive parameter passing and quoting\[[edit][18]\]

K=λq.λi.q

quotes q and ignores i

S=λx.λy.λz.((xz)(yz))

forms a binary tree that parameters can flow from root to branches and be read by identityFunc=((SK)K) or read a quoted lambda q using Kq.

## SKI expressions\[[edit][19]\]

### Self-application and recursion\[[edit][20]\]

__SII__ is an expression that takes an argument and applies that argument to itself:

__SII__α = __I__α(__I__α) = αα

One interesting property of this is that it makes the expression __SII__(__SII__) irreducible:

__SII__(__SII__) = __I__(__SII__)(__I__(__SII__)) = __I__(__SII__)(__SII__) = __SII__(__SII__)

Another thing that results from this is that it allows you to write a function that applies something to the self application of something else:

(__S__(__K__α)(__SII__))β = __K__αβ(__SII__β) = α(__SII__β) = α(ββ)

This function can be used to achieve [recursion][21]. If β is the function that applies α to the self application of something else, then self-applying β performs α recursively on ββ. More clearly, if:

β = __S__(__K__α)(__SII__)

then:

__SII__β = ββ = α(ββ) = α(α(ββ)) = ![\ldots ](https://wikimedia.org/api/rest_v1/media/math/render/svg/3b8619532e44ee1ccae3ab03405a6885260d09ed)

### The reversal expression\[[edit][22]\]

__S__(__K__(__SI__))__K__ reverses the following two terms:

__S__(__K__(__SI__))__K__αβ →

__K__(__SI__)α(__K__α)β →

__SI__(__K__α)β →

__I__β(__K__αβ) →

__I__βα →

βα

### Boolean logic\[[edit][23]\]

SKI combinator calculus can also implement [Boolean logic][24] in the form of an *if-then-else* structure. An *if-then-else* structure consists of a Boolean expression that is either true (__T__) or false (__F__) and two arguments, such that:

__T__*xy* = *x*

and

__F__*xy* = *y*

The key is in defining the two Boolean expressions. The first works just like one of our basic combinators:

__T__ = __K__

__K__*xy* = *x*

The second is also fairly simple:

__F__ = __SK__

__SK__*xy* = __K__*y(xy)* = y

Once true and false are defined, all Boolean logic can be implemented in terms of *if-then-else* structures.

Boolean __NOT__ (which returns the opposite of a given Boolean) works the same as the *if-then-else* structure, with __F__ and __T__ as the second and third values, so it can be implemented as a postfix operation:

__NOT__ = (__F__)(__T__) = (__SK__)(__K__)

If this is put in an *if-then-else* structure, it can be shown that this has the expected result

(__T__)__NOT__ = __T__(__F__)(__T__) = __F__

(__F__)__NOT__ = __F__(__F__)(__T__) = __T__

Boolean __OR__ (which returns __T__ if either of the two Boolean values surrounding it is __T__) works the same as an *if-then-else* structure with __T__ as the second value, so it can be implemented as an infix operation:

__OR__ = __T__ = __K__

If this is put in an *if-then-else* structure, it can be shown that this has the expected result:

(__T__)__OR__(__T__) = __T__(__T__)(__T__) = __T__

(__T__)__OR__(__F__) = __T__(__T__)(__F__) = __T__

(__F__)__OR__(__T__) = __F__(__T__)(__T__) = __T__

(__F__)__OR__(__F__) = __F__(__T__)(__F__) = __F__

Boolean __AND__ (which returns __T__ if both of the two Boolean values surrounding it are __T__) works the same as an *if-then-else* structure with __F__ as the third value, so it can be implemented as a postfix operation:

__AND__ = __F__ = __SK__

If this is put in an *if-then-else* structure, it can be shown that this has the expected result:

(__T__)(__T__)__AND__ = __T__(__T__)(__F__) = __T__

(__T__)(__F__)__AND__ = __T__(__F__)(__F__) = __F__

(__F__)(__T__)__AND__ = __F__(__T__)(__F__) = __F__

(__F__)(__F__)__AND__ = __F__(__F__)(__F__) = __F__

Because this defines __T__, __F__, __NOT__ (as a postfix operator), __OR__ (as an infix operator), and __AND__ (as a postfix operator) in terms of SKI notation, this proves that the SKI system can fully express Boolean logic.

As the SKI calculus is [complete][25], it is also possible to express __NOT__, __OR__ and __AND__ as prefix operators:

__NOT__ = __S__(__SI__(__KF__))(__KT__) (as __S__(__SI__(__KF__))(__KT__)*x* = __SI__(__KF__)*x*(__KT__*x*) = __I__*x*(__KF__*x*)__T__ = *x*__FT__)

__OR__ = __SI__(__KT__) (as __SI__(__KT__)*xy* = __I__*x*(__KT__*x*)*y* = *x*__T__*y*)

__AND__ = __SS__(__K__(__KF__)) (as __SS__(__K__(__KF__))*xy* = __S__*x*(__K__(__KF__)*x*)*y* = *xy*(__KF__*y*) = *xy*__F__)

## Connection to intuitionistic logic\[[edit][26]\]

The combinators __K__ and __S__ correspond to two well-known axioms of [sentential logic][27]:

__AK__: *A* → (*B* → *A*),

__AS__: (*A* → (*B* → *C*)) → ((*A* → *B*) → (*A* → *C*)).

Function application corresponds to the rule [modus ponens][28]:

__MP__: from A and *A* → *B*, infer B.

The axioms __AK__ and __AS__, and the rule __MP__ are complete for the implicational fragment of [intuitionistic logic][29]. In order for combinatory logic to have as a model:

-   The [implicational fragment][30] of [classical logic][31], would require the combinatory analog to the [law of excluded middle][32], *i.e.*, [Peirce's law][33];
-   [Complete classical logic][34], would require the combinatory analog to the sentential axiom __F__ → *A*.

This connection between the types of combinators and the corresponding logical axioms is an instance of the [Curry–Howard isomorphism][35].

## Examples of reduction\[[edit][36]\]

## See also\[[edit][37]\]

-   [Combinatory logic][38]
-   [B, C, K, W system][39]
-   [Fixed point combinator][40]
-   [Lambda calculus][41]
-   [Functional programming][42]
-   [Unlambda][43] programming language
-   The [Iota and Jot][44] programming languages, designed to be even simpler than SKI.
-   *[To Mock a Mockingbird][45]*

## References\[[edit][46]\]

1.  __[^][47]__ 1924\. "Über die Bausteine der mathematischen Logik", *Mathematische Annalen* __92__, pp. 305–316. Translated by Stefan Bauer-Mengelberg as "On the building blocks of mathematical logic" in [Jean van Heijenoort][48], 1967. *A Source Book in Mathematical Logic, 1879–1931*. Harvard Univ. Press: 355–66.
2.  __[^][49]__ [Curry, Haskell Brooks][50] (1930). "Grundlagen der Kombinatorischen Logik" \[Foundations of combinatorial logic\]. *American Journal of Mathematics* (in German). The Johns Hopkins University Press. __52__ (3): 509–536. [doi][51]:[10.2307/2370619][52]. [JSTOR][53] [2370619][54].

-   [Smullyan, Raymond][55], 1985. *[To Mock a Mockingbird][56]*. Knopf. [ISBN][57] [0-394-53491-3][58]. A gentle introduction to combinatory logic, presented as a series of recreational puzzles using bird watching metaphors.
-   \--------, 1994. *Diagonalization and Self-Reference*. Oxford Univ. Press. Chpts. 17-20 are a more formal introduction to combinatory logic, with a special emphasis on fixed point results.

## External links\[[edit][59]\]

-   O'Donnell, Mike "[The SKI Combinator Calculus as a Universal System.][60]"
-   Keenan, David C. (2001) "[To Dissect a Mockingbird.][61]"
-   Rathman, Chris, "[Combinator Birds.][62]"
-   "["Drag 'n' Drop Combinators (Java Applet).][63]"
-   [A Calculus of Mobile Processes, Part I][64] (PostScript) (by Milner, Parrow, and Walker) shows a scheme for *combinator [graph reduction][65]* for the SKI calculus in pages 25–28.
-   the [Nock programming language][66] may be seen as an assembly language based on SK combinator calculus in the same way that traditional assembly language is based on Turing machines. Nock instruction 2 (the "Nock operator") is the S combinator and Nock instruction 1 is the K combinator. The other primitive instructions in Nock (instructions 0,3,4,5, and the pseudo-instruction "implicit cons") are not necessary for universal computation, but make programming more convenient by providing facilities for dealing with binary tree data structures and arithmetic; Nock also provides 5 more instructions (6,7,8,9,10) that could have been built out of these primitives.

[1]: https://en.wikipedia.org/wiki/Combinatory_logic "Combinatory logic"
[2]: https://en.wikipedia.org/wiki/Model_of_computation "Model of computation"
[3]: https://en.wikipedia.org/wiki/Algorithm "Algorithm"
[4]: https://en.wikipedia.org/wiki/Turing_complete "Turing complete"
[5]: https://en.wikipedia.org/wiki/Lambda_calculus "Lambda calculus"
[6]: https://en.wikipedia.org/wiki/Moses_Sch%C3%B6nfinkel "Moses Schönfinkel"
[7]: https://en.wikipedia.org/wiki/SKI_combinator_calculus#cite_note-1
[8]: https://en.wikipedia.org/wiki/Haskell_Curry "Haskell Curry"
[9]: https://en.wikipedia.org/wiki/SKI_combinator_calculus#cite_note-2
[10]: https://en.wikipedia.org/wiki/Combinatory_logic#Completeness_of_the_S-K_basis "Combinatory logic"
[11]: https://en.wikipedia.org/wiki/Binary_tree "Binary tree"
[12]: https://en.wikipedia.org/w/index.php?title=SKI_combinator_calculus&action=edit&section=1 "Edit section: Notation"
[13]: https://en.wikipedia.org/w/index.php?title=SKI_combinator_calculus&action=edit&section=2 "Edit section: Informal description"
[14]: https://en.wikipedia.org/wiki/Syntactic_sugar "Syntactic sugar"
[15]: https://en.wikipedia.org/wiki/Iota_and_Jot "Iota and Jot"
[16]: https://en.wikipedia.org/w/index.php?title=SKI_combinator_calculus&action=edit&section=3 "Edit section: Formal definition"
[17]: http://people.cs.uchicago.edu/~odonnell/Teacher/Lectures/Formal_Organization_of_Knowledge/Examples/combinator_calculus/
[18]: https://en.wikipedia.org/w/index.php?title=SKI_combinator_calculus&action=edit&section=4 "Edit section: Recursive parameter passing and quoting"
[19]: https://en.wikipedia.org/w/index.php?title=SKI_combinator_calculus&action=edit&section=5 "Edit section: SKI expressions"
[20]: https://en.wikipedia.org/w/index.php?title=SKI_combinator_calculus&action=edit&section=6 "Edit section: Self-application and recursion"
[21]: https://en.wikipedia.org/wiki/Recursion "Recursion"
[22]: https://en.wikipedia.org/w/index.php?title=SKI_combinator_calculus&action=edit&section=7 "Edit section: The reversal expression"
[23]: https://en.wikipedia.org/w/index.php?title=SKI_combinator_calculus&action=edit&section=8 "Edit section: Boolean logic"
[24]: https://en.wikipedia.org/wiki/Boolean_logic "Boolean logic"
[25]: https://en.wikipedia.org/wiki/Combinatory_logic#Completeness_of_the_S-K_basis "Combinatory logic"
[26]: https://en.wikipedia.org/w/index.php?title=SKI_combinator_calculus&action=edit&section=9 "Edit section: Connection to intuitionistic logic"
[27]: https://en.wikipedia.org/wiki/Sentential_logic "Sentential logic"
[28]: https://en.wikipedia.org/wiki/Modus_ponens "Modus ponens"
[29]: https://en.wikipedia.org/wiki/Intuitionistic_logic "Intuitionistic logic"
[30]: https://en.wikipedia.org/wiki/Implicational_propositional_calculus "Implicational propositional calculus"
[31]: https://en.wikipedia.org/wiki/Classical_logic "Classical logic"
[32]: https://en.wikipedia.org/wiki/Law_of_excluded_middle "Law of excluded middle"
[33]: https://en.wikipedia.org/wiki/Peirce%27s_law "Peirce's law"
[34]: https://en.wikipedia.org/wiki/Sentential_logic "Sentential logic"
[35]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_isomorphism "Curry–Howard isomorphism"
[36]: https://en.wikipedia.org/w/index.php?title=SKI_combinator_calculus&action=edit&section=10 "Edit section: Examples of reduction"
[37]: https://en.wikipedia.org/w/index.php?title=SKI_combinator_calculus&action=edit&section=11 "Edit section: See also"
[38]: https://en.wikipedia.org/wiki/Combinatory_logic "Combinatory logic"
[39]: https://en.wikipedia.org/wiki/B,_C,_K,_W_system "B, C, K, W system"
[40]: https://en.wikipedia.org/wiki/Fixed_point_combinator "Fixed point combinator"
[41]: https://en.wikipedia.org/wiki/Lambda_calculus "Lambda calculus"
[42]: https://en.wikipedia.org/wiki/Functional_programming "Functional programming"
[43]: https://en.wikipedia.org/wiki/Unlambda "Unlambda"
[44]: https://en.wikipedia.org/wiki/Iota_and_Jot "Iota and Jot"
[45]: https://en.wikipedia.org/wiki/To_Mock_a_Mockingbird "To Mock a Mockingbird"
[46]: https://en.wikipedia.org/w/index.php?title=SKI_combinator_calculus&action=edit&section=12 "Edit section: References"
[47]: https://en.wikipedia.org/wiki/SKI_combinator_calculus#cite_ref-1 "Jump up"
[48]: https://en.wikipedia.org/wiki/Jean_van_Heijenoort "Jean van Heijenoort"
[49]: https://en.wikipedia.org/wiki/SKI_combinator_calculus#cite_ref-2 "Jump up"
[50]: https://en.wikipedia.org/wiki/Haskell_Curry "Haskell Curry"
[51]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[52]: https://doi.org/10.2307%2F2370619
[53]: https://en.wikipedia.org/wiki/JSTOR_(identifier) "JSTOR (identifier)"
[54]: https://www.jstor.org/stable/2370619
[55]: https://en.wikipedia.org/wiki/Raymond_Smullyan "Raymond Smullyan"
[56]: https://en.wikipedia.org/wiki/To_Mock_a_Mockingbird "To Mock a Mockingbird"
[57]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[58]: https://en.wikipedia.org/wiki/Special:BookSources/0-394-53491-3 "Special:BookSources/0-394-53491-3"
[59]: https://en.wikipedia.org/w/index.php?title=SKI_combinator_calculus&action=edit&section=13 "Edit section: External links"
[60]: http://people.cs.uchicago.edu/~odonnell/Teacher/Lectures/Formal_Organization_of_Knowledge/Examples/combinator_calculus/
[61]: http://dkeenan.com/Lambda/index.htm
[62]: http://www.angelfire.com/tx4/cus/combinator/birds.html
[63]: https://web.archive.org/web/20081029051502/http://cstein.kings.cam.ac.uk/~chris/combinators.html
[64]: http://www.lfcs.inf.ed.ac.uk/reports/89/ECS-LFCS-89-85/
[65]: https://en.wikipedia.org/wiki/Graph_reduction "Graph reduction"
[66]: https://web.archive.org/web/20131014210033/http://www.urbit.org/2013/08/22/Chapter-2-nock.html

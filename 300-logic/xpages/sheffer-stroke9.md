---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Sheffer_stroke
page-title:       Sheffer stroke - Wikipedia
article-title:    Sheffer stroke - Wikipedia
---
# Sheffer stroke - Wikipedia

In Boolean functions and propositional calculus, the Sheffer stroke denotes a logical operation that is equivalent to the negation of the conjunction operation, expressed in ordinary language as "not both".  It is also called nand  ("not and") or the alternative denial, since it says in effect that at least one of its operands is false.  In digital electronics, it corresponds to the NAND gate. It is named after Henry M. Sheffer and written as ↑ or as | (but not as ||, often used to represent disjunction). In Bocheński notation it can be written as Dpq.
Sheffer stroke

NAND

[![Venn diagram of Sheffer stroke](https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Venn1110.svg/150px-Venn1110.svg.png)][1]

Definition

![{\displaystyle {\overline {x\cdot y}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c7804bac8f8edbd54ffd7f9722b28960581d4205)

[Truth table][2]

![{\displaystyle (0111)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/7aea9b5ea4a57f989a327ab3d9da4078a180196f)

[Logic gate][3]

[![NAND ANSI.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/NAND_ANSI.svg/70px-NAND_ANSI.svg.png)][4]

Normal forms

[Disjunctive][5]

![{\overline {x}}+{\overline {y}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8e6d71e60fdb7117c681854580a4bdebb0fb730f)

[Conjunctive][6]

![{\overline {x}}+{\overline {y}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8e6d71e60fdb7117c681854580a4bdebb0fb730f)

[Zhegalkin polynomial][7]

![{\displaystyle 1\oplus xy}](https://wikimedia.org/api/rest_v1/media/math/render/svg/facba71d8d736424664284461f6b7b635b52e36c)

[Post's lattices][8]

0-preserving

no

1-preserving

no

Monotone

no

Affine

no

-   [v][9]
-   [t][10]
-   [e][11]

In [Boolean functions][12] and [propositional calculus][13], the __Sheffer stroke__ denotes a [logical operation][14] that is equivalent to the [negation][15] of the [conjunction][16] operation, expressed in ordinary language as "not both". It is also called __nand__ ("not and") or the __alternative denial__, since it says in effect that at least one of its operands is false. In [digital electronics][17], it corresponds to the [NAND gate][18]. It is named after [Henry M. Sheffer][19] and written as ↑ or as | (but not as ||, often used to represent [disjunction][20]). In [Bocheński notation][21] it can be written as D*pq*.

Its [dual][22] is the [NOR operator][23] (also known as the [Peirce][24] arrow or [Quine][25] dagger). Like its dual, NAND can be used by itself, without any other logical operator, to constitute a logical [formal system][26] (making NAND [functionally complete][27]). This property makes the [NAND gate][28] crucial to modern [digital electronics][29], including its use in [computer processor][30] design.

## Definition\[[edit][31]\]

The __NAND operation__ is a [logical operation][32] on two [logical values][33]. It produces a value of true, if — and only if — at least one of the [propositions][34] is false.

### Truth table\[[edit][35]\]

The [truth table][36] of ![P \uparrow Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/19a23f528d4498c639ace27b934930a92eceb3db) (also written as ![{\displaystyle P\mathop {|} Q}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ba4910c607c5959514d3a805287d76d1cade5f72), or D*pq*) is as follows

![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a)

![Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/8752c7023b4b3286800fe3238271bbca681219ed)

![{\displaystyle P\uparrow Q}](https://wikimedia.org/api/rest_v1/media/math/render/svg/19a23f528d4498c639ace27b934930a92eceb3db)

T

T

F

T

F

T

F

T

T

F

F

T

### Logical equivalences\[[edit][37]\]

The Sheffer stroke of ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a) and ![Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/8752c7023b4b3286800fe3238271bbca681219ed) is the negation of their conjunction

By [De Morgan's laws][38], this is also equivalent to the disjunction of the negations of ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a) and ![Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/8752c7023b4b3286800fe3238271bbca681219ed)

![P \uparrow Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/19a23f528d4498c639ace27b934930a92eceb3db)

  ![\Leftrightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/64812e13399c20cf3ce94e049d3bb2d85f26abcf)  

![\neg P](https://wikimedia.org/api/rest_v1/media/math/render/svg/5eb0d6c8752f8c7256d69c62e77dfe4c466dbe58)

![\lor ](https://wikimedia.org/api/rest_v1/media/math/render/svg/ab47f6b1f589aedcf14638df1d63049d233d851a)

![\neg Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/fad34798abb0bbbc063c906e459f103a09b1660e)

[![Venn1110.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Venn1110.svg/50px-Venn1110.svg.png)][39]

  ![\Leftrightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/64812e13399c20cf3ce94e049d3bb2d85f26abcf)  

[![Venn1010.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/Venn1010.svg/50px-Venn1010.svg.png)][40]

![\lor ](https://wikimedia.org/api/rest_v1/media/math/render/svg/ab47f6b1f589aedcf14638df1d63049d233d851a)

[![Venn1100.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Venn1100.svg/50px-Venn1100.svg.png)][41]

## History\[[edit][42]\]

The stroke is named after [Henry M. Sheffer][43], who in 1913 published a paper in the *[Transactions of the American Mathematical Society][44]* [\[1\]][45] providing an axiomatization of [Boolean algebras][46] using the stroke, and proved its equivalence to a standard formulation thereof by [Huntington][47] employing the familiar operators of [propositional logic][48] ([and][49], [or][50], [not][51]). Because of self-[duality][52] of Boolean algebras, Sheffer's axioms are equally valid for either of the NAND or NOR operations in place of the stroke. Sheffer interpreted the stroke as a sign for nondisjunction ([NOR][53]) in his paper, mentioning non-conjunction only in a footnote and without a special sign for it. It was [Jean Nicod][54] who first used the stroke as a sign for non-conjunction (NAND) in a paper of 1917 and which has since become current practice.[\[2\]][55][\[3\]][56] Russell and Whitehead used the Sheffer stroke in the 1927 second edition of *[Principia Mathematica][57]* and suggested it as a replacement for the "or" and "not" operations of the first edition.

[Charles Sanders Peirce][58] (1880) had discovered the [functional completeness][59] of NAND or NOR more than 30 years earlier, using the term *[ampheck][60]* (for 'cutting both ways'), but he never published his finding.

## Properties\[[edit][61]\]

NAND does not possess any of the following five properties, each of which is required to be absent from, and the absence of all of which is sufficient for, at least one member of a set of [functionally complete][62] operators: truth-preservation, falsity-preservation, [linearity][63], [monotonicity][64], [self-duality][65]. (An operator is truth- (falsity-) preserving if its value is truth (falsity) whenever all of its arguments are truth (falsity).) Therefore {NAND} is a functionally complete set.

This can also be realized as follows: All three elements of the functionally complete set {AND, OR, NOT} can be [constructed using only NAND][66]. Thus the set {NAND} must be functionally complete as well.

## Other Boolean operations in terms of the Sheffer stroke\[[edit][67]\]

Expressed in terms of NAND ![\uparrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/ddb20b28c74cdaa09e1f101d426441da1996072f), the usual operators of propositional logic are:

## Formal system based on the Sheffer stroke\[[edit][68]\]

The following is an example of a [formal system][69] based entirely on the Sheffer stroke, yet having the functional expressiveness of the [propositional logic][70]:

### Symbols\[[edit][71]\]

*pn* for natural numbers *n*:

( | )

The Sheffer stroke commutes but does not associate (e.g., (T | T) | F = T, but T | (T | F) = F). Hence any formal system including the Sheffer stroke as an infix symbol must also include a means of indicating grouping (grouping is automatic if the stroke is used as a prefix, thus: || TTF = T and | T | TF = F). We shall employ '(' and ')' to this effect.

We also write *p*, *q*, *r*, … instead of *p*0, *p*1, *p*2.

### Syntax\[[edit][72]\]

__Construction Rule I:__ For each natural number *n*, the symbol *pn* is a [well-formed formula][73] (wff), called an atom.

__Construction Rule II:__ If *X* and *Y* are wffs, then (*X* | *Y*) is a wff.

__Closure Rule:__ Any formulae which cannot be constructed by means of the first two Construction Rules are not wffs.

The letters *U*, *V*, *W*, *X*, and *Y* are metavariables standing for wffs.

A decision procedure for determining whether a formula is well-formed goes as follows: "deconstruct" the formula by applying the Construction Rules backwards, thereby breaking the formula into smaller subformulae. Then repeat this recursive deconstruction process to each of the subformulae. Eventually the formula should be reduced to its atoms, but if some subformula cannot be so reduced, then the formula is not a wff.

### Calculus\[[edit][74]\]

All wffs of the form

((*U* | (*V* | *W*)) | ((*Y* | (*Y* | *Y*)) | ((*X* | *V*) | ((*U* | *X*) | (*U* | *X*)))))

are axioms. Instances of

![{\displaystyle (U|(V|W)),U\vdash W}](https://wikimedia.org/api/rest_v1/media/math/render/svg/a887a6ece138602069f181778942b4b49d9d42ba)

are inference rules.

### Simplification\[[edit][75]\]

Since the only connective of this logic is |, the symbol | could be discarded altogether, leaving only the parentheses to group the letters. A pair of parentheses must always enclose a pair of *wff*s. Examples of theorems in this simplified notation are

(*p*(*p*(*q*(*q*((*pq*)(*pq*)))))),

(*p*(*p*((*qq*)(*pp*)))).

The notation can be simplified further, by letting

(*U*) := (*UU*)

![{\displaystyle ((U))\equiv U}](https://wikimedia.org/api/rest_v1/media/math/render/svg/fdd4290ee5158844f7fd2fca6e80ed429651cfcb)

for any *U*. This simplification causes the need to change some rules:

1.  More than two letters are allowed within parentheses.
2.  Letters or wffs within parentheses are allowed to commute.
3.  Repeated letters or wffs within a same set of parentheses can be eliminated.

The result is a parenthetical version of the Peirce [existential graphs][76].

Another way to simplify the notation is to eliminate parentheses by using [Polish Notation][77]. For example, the earlier examples with only parentheses could be rewritten using only strokes as follows

(*p*(*p*(*q*(*q*((*pq*)(*pq*)))))) becomes

| *p* | *p* | *q* | *q* || *pq* | *pq*, and

(*p*(*p*((*qq*)(*pp*)))) becomes,

| *p* | *p* || *qq* | *pp*.

This follows the same rules as the parenthesis version, with the opening parenthesis replaced with a Sheffer stroke and the (redundant) closing parenthesis removed.

Or (for some formulas) one could omit both parentheses *and* strokes and allow the order of the arguments to determine the order of [function application][78] so that for example, applying the function from right to left (reverse Polish notation – any other unambiguous convention based on ordering would do)

![{\displaystyle {\begin{aligned}&pqr\equiv (p\mid (q\mid r)),{\text{ whereas}}\\&rqp\equiv (r\mid (q\mid p)).\end{aligned}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/da36ee7dcc444decc1cb838ddcbf31d536f29b9d)

## See also\[[edit][79]\]

## Notes\[[edit][80]\]

## References\[[edit][81]\]

-   [Bocheński, Józef Maria][82] (1960), *Precis of Mathematical Logic*, rev., Albert Menne, edited and translated from the French and German editions by Otto Bird, [Dordrecht][83], [South Holland][84]: [D. Reidel][85].
-   Church, Alonzo (1956). *Introduction to mathematical logic. Volume 1*. [Princeton University Press][86].
-   [Nicod, Jean G. P.][87] (1917). "A Reduction in the Number of Primitive Propositions of Logic". *Proceedings of the Cambridge Philosophical Society*. __19__: 32–41.
-   [Charles Sanders Peirce][88], 1880, "A Boolian\[sic\] Algebra with One Constant", in [Hartshorne, C.][89] and [Weiss, P.][90], eds., (1931–35) *[Collected Papers of Charles Sanders Peirce][91], Vol. 4*: 12–20, [Cambridge][92]: [Harvard University Press][93].
-   Sheffer, H. M. (1913), "A set of five independent postulates for Boolean algebras, with application to logical constants", *Transactions of the American Mathematical Society*, __14__: 481–488, [doi][94]:[10.2307/1988701][95], [JSTOR][96] [1988701][97]

## External links\[[edit][98]\]

-   [Sheffer Stroke][99] article in the *[Internet Encyclopedia of Philosophy][100]*
-   [http://hyperphysics.phy-astr.gsu.edu/hbase/electronic/nand.html][101]
-   [implementations of 2 and 4-input NAND gates][102]
-   [Proofs of some axioms by Stroke function by Yasuo Setô][103] @ [Project Euclid][104]

[1]: https://en.wikipedia.org/wiki/File:Venn1110.svg "Venn diagram of Sheffer stroke"
[2]: https://en.wikipedia.org/wiki/Truth_table "Truth table"
[3]: https://en.wikipedia.org/wiki/Logic_gate "Logic gate"
[4]: https://en.wikipedia.org/wiki/File:NAND_ANSI.svg
[5]: https://en.wikipedia.org/wiki/Disjunctive_normal_form "Disjunctive normal form"
[6]: https://en.wikipedia.org/wiki/Conjunctive_normal_form "Conjunctive normal form"
[7]: https://en.wikipedia.org/wiki/Zhegalkin_polynomial "Zhegalkin polynomial"
[8]: https://en.wikipedia.org/wiki/Post%27s_lattice "Post's lattice"
[9]: https://en.wikipedia.org/wiki/Template:Infobox_logical_connective "Template:Infobox logical connective"
[10]: https://en.wikipedia.org/wiki/Template_talk:Infobox_logical_connective "Template talk:Infobox logical connective"
[11]: https://en.wikipedia.org/w/index.php?title=Template:Infobox_logical_connective&action=edit
[12]: https://en.wikipedia.org/wiki/Boolean_function "Boolean function"
[13]: https://en.wikipedia.org/wiki/Propositional_calculus "Propositional calculus"
[14]: https://en.wikipedia.org/wiki/Logical_operation "Logical operation"
[15]: https://en.wikipedia.org/wiki/Logical_negation "Logical negation"
[16]: https://en.wikipedia.org/wiki/Logical_conjunction "Logical conjunction"
[17]: https://en.wikipedia.org/wiki/Digital_electronics "Digital electronics"
[18]: https://en.wikipedia.org/wiki/NAND_gate "NAND gate"
[19]: https://en.wikipedia.org/wiki/Henry_M._Sheffer "Henry M. Sheffer"
[20]: https://en.wikipedia.org/wiki/Logical_disjunction "Logical disjunction"
[21]: https://en.wikipedia.org/wiki/J%C3%B3zef_Maria_Boche%C5%84ski "Józef Maria Bocheński"
[22]: https://en.wikipedia.org/wiki/Duality_(mathematics) "Duality (mathematics)"
[23]: https://en.wikipedia.org/wiki/Logical_NOR "Logical NOR"
[24]: https://en.wikipedia.org/wiki/Charles_Sanders_Peirce "Charles Sanders Peirce"
[25]: https://en.wikipedia.org/wiki/Willard_Van_Orman_Quine "Willard Van Orman Quine"
[26]: https://en.wikipedia.org/wiki/Formal_system "Formal system"
[27]: https://en.wikipedia.org/wiki/Functional_completeness "Functional completeness"
[28]: https://en.wikipedia.org/wiki/NAND_gate "NAND gate"
[29]: https://en.wikipedia.org/wiki/Digital_electronics "Digital electronics"
[30]: https://en.wikipedia.org/wiki/Computer_processor "Computer processor"
[31]: https://en.wikipedia.org/w/index.php?title=Sheffer_stroke&action=edit&section=1 "Edit section: Definition"
[32]: https://en.wikipedia.org/wiki/Logical_operation "Logical operation"
[33]: https://en.wikipedia.org/wiki/Logical_value "Logical value"
[34]: https://en.wikipedia.org/wiki/Proposition "Proposition"
[35]: https://en.wikipedia.org/w/index.php?title=Sheffer_stroke&action=edit&section=2 "Edit section: Truth table"
[36]: https://en.wikipedia.org/wiki/Truth_table "Truth table"
[37]: https://en.wikipedia.org/w/index.php?title=Sheffer_stroke&action=edit&section=3 "Edit section: Logical equivalences"
[38]: https://en.wikipedia.org/wiki/De_Morgan%27s_laws "De Morgan's laws"
[39]: https://en.wikipedia.org/wiki/File:Venn1110.svg
[40]: https://en.wikipedia.org/wiki/File:Venn1010.svg
[41]: https://en.wikipedia.org/wiki/File:Venn1100.svg
[42]: https://en.wikipedia.org/w/index.php?title=Sheffer_stroke&action=edit&section=4 "Edit section: History"
[43]: https://en.wikipedia.org/wiki/Henry_M._Sheffer "Henry M. Sheffer"
[44]: https://en.wikipedia.org/wiki/Transactions_of_the_American_Mathematical_Society "Transactions of the American Mathematical Society"
[45]: https://en.wikipedia.org/wiki/Sheffer_stroke#cite_note-FOOTNOTESheffer1913-1
[46]: https://en.wikipedia.org/wiki/Boolean_algebra_(structure) "Boolean algebra (structure)"
[47]: https://en.wikipedia.org/wiki/Edward_Vermilye_Huntington "Edward Vermilye Huntington"
[48]: https://en.wikipedia.org/wiki/Propositional_logic "Propositional logic"
[49]: https://en.wikipedia.org/wiki/Logical_conjunction "Logical conjunction"
[50]: https://en.wikipedia.org/wiki/Logical_disjunction "Logical disjunction"
[51]: https://en.wikipedia.org/wiki/Negation "Negation"
[52]: https://en.wikipedia.org/wiki/Duality_(order_theory) "Duality (order theory)"
[53]: https://en.wikipedia.org/wiki/Logical_NOR "Logical NOR"
[54]: https://en.wikipedia.org/wiki/Jean_Nicod "Jean Nicod"
[55]: https://en.wikipedia.org/wiki/Sheffer_stroke#cite_note-FOOTNOTENicod1917-2
[56]: https://en.wikipedia.org/wiki/Sheffer_stroke#cite_note-FOOTNOTEChurch1956134-3
[57]: https://en.wikipedia.org/wiki/Principia_Mathematica "Principia Mathematica"
[58]: https://en.wikipedia.org/wiki/Charles_Sanders_Peirce "Charles Sanders Peirce"
[59]: https://en.wikipedia.org/wiki/Functional_completeness "Functional completeness"
[60]: https://en.wikipedia.org/wiki/Ampheck "Ampheck"
[61]: https://en.wikipedia.org/w/index.php?title=Sheffer_stroke&action=edit&section=5 "Edit section: Properties"
[62]: https://en.wikipedia.org/wiki/Functional_completeness "Functional completeness"
[63]: https://en.wikipedia.org/wiki/Affine_transformation "Affine transformation"
[64]: https://en.wikipedia.org/wiki/Monotonic "Monotonic"
[65]: https://en.wikipedia.org/wiki/Duality_(mathematics)#Duality_in_logic_and_set_theory "Duality (mathematics)"
[66]: https://en.wikipedia.org/wiki/Sheffer_stroke#Introduction,_elimination,_and_equivalencies
[67]: https://en.wikipedia.org/w/index.php?title=Sheffer_stroke&action=edit&section=6 "Edit section: Other Boolean operations in terms of the Sheffer stroke"
[68]: https://en.wikipedia.org/w/index.php?title=Sheffer_stroke&action=edit&section=7 "Edit section: Formal system based on the Sheffer stroke"
[69]: https://en.wikipedia.org/wiki/Formal_system "Formal system"
[70]: https://en.wikipedia.org/wiki/Propositional_logic "Propositional logic"
[71]: https://en.wikipedia.org/w/index.php?title=Sheffer_stroke&action=edit&section=8 "Edit section: Symbols"
[72]: https://en.wikipedia.org/w/index.php?title=Sheffer_stroke&action=edit&section=9 "Edit section: Syntax"
[73]: https://en.wikipedia.org/wiki/Well-formed_formula "Well-formed formula"
[74]: https://en.wikipedia.org/w/index.php?title=Sheffer_stroke&action=edit&section=10 "Edit section: Calculus"
[75]: https://en.wikipedia.org/w/index.php?title=Sheffer_stroke&action=edit&section=11 "Edit section: Simplification"
[76]: https://en.wikipedia.org/wiki/Existential_graph "Existential graph"
[77]: https://en.wikipedia.org/wiki/Polish_Notation "Polish Notation"
[78]: https://en.wikipedia.org/wiki/Function_application "Function application"
[79]: https://en.wikipedia.org/w/index.php?title=Sheffer_stroke&action=edit&section=12 "Edit section: See also"
[80]: https://en.wikipedia.org/w/index.php?title=Sheffer_stroke&action=edit&section=13 "Edit section: Notes"
[81]: https://en.wikipedia.org/w/index.php?title=Sheffer_stroke&action=edit&section=14 "Edit section: References"
[82]: https://en.wikipedia.org/wiki/Boche%C5%84ski,_J%C3%B3zef_Maria "Bocheński, Józef Maria"
[83]: https://en.wikipedia.org/wiki/Dordrecht "Dordrecht"
[84]: https://en.wikipedia.org/wiki/South_Holland "South Holland"
[85]: https://en.wikipedia.org/wiki/D._Reidel "D. Reidel"
[86]: https://en.wikipedia.org/wiki/Princeton_University_Press "Princeton University Press"
[87]: https://en.wikipedia.org/wiki/Jean_Nicod "Jean Nicod"
[88]: https://en.wikipedia.org/wiki/Charles_Sanders_Peirce "Charles Sanders Peirce"
[89]: https://en.wikipedia.org/wiki/Charles_Hartshorne "Charles Hartshorne"
[90]: https://en.wikipedia.org/wiki/Paul_Weiss_(philosopher) "Paul Weiss (philosopher)"
[91]: https://en.wikipedia.org/wiki/Charles_Sanders_Peirce_bibliography#CP "Charles Sanders Peirce bibliography"
[92]: https://en.wikipedia.org/wiki/Cambridge "Cambridge"
[93]: https://en.wikipedia.org/wiki/Harvard_University_Press "Harvard University Press"
[94]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[95]: https://doi.org/10.2307%2F1988701
[96]: https://en.wikipedia.org/wiki/JSTOR_(identifier) "JSTOR (identifier)"
[97]: https://www.jstor.org/stable/1988701
[98]: https://en.wikipedia.org/w/index.php?title=Sheffer_stroke&action=edit&section=15 "Edit section: External links"
[99]: http://www.iep.utm.edu/Sheffer_stroke/
[100]: https://en.wikipedia.org/wiki/Internet_Encyclopedia_of_Philosophy "Internet Encyclopedia of Philosophy"
[101]: http://hyperphysics.phy-astr.gsu.edu/hbase/electronic/nand.html
[102]: http://www.sccs.swarthmore.edu/users/06/adem/engin/e77vlsi/lab3/
[103]: https://web.archive.org/web/20090526075041/http://projecteuclid.org/DPubS?verb=Display&version=1.0&service=UI&handle=euclid.pja/1195520940&page=record
[104]: http://projecteuclid.org/

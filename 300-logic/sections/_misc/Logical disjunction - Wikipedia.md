---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Logical_disjunction
page-title:       Logical disjunction - Wikipedia
article-title:    Logical disjunction - Wikipedia
---
# Logical disjunction - Wikipedia

(Redirected from Disjunction)
 (Redirected from [Disjunction][1])

"Disjunction" redirects here. For the logic gate, see [OR gate][2]. For separation of chromosomes, see [Meiosis][3]. For disjunctions in distribution, see [Disjunct distribution][4].

"Logical OR" redirects here. For the similarly looking doubled vertical bar notation in engineering and network theory, see [parallel addition (operator)][5].

Logical disjunction

OR

[![Venn diagram of Logical disjunction](https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Venn0111.svg/150px-Venn0111.svg.png)][6]

Definition

![x+y](https://wikimedia.org/api/rest_v1/media/math/render/svg/ffb4441dccedb5ede51a213408b17cf83eec9a27)

[Truth table][7]

![{\displaystyle (0111)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/7aea9b5ea4a57f989a327ab3d9da4078a180196f)

[Logic gate][8]

[![OR ANSI.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/OR_ANSI.svg/70px-OR_ANSI.svg.png)][9]

Normal forms

[Disjunctive][10]

![x+y](https://wikimedia.org/api/rest_v1/media/math/render/svg/ffb4441dccedb5ede51a213408b17cf83eec9a27)

[Conjunctive][11]

![x+y](https://wikimedia.org/api/rest_v1/media/math/render/svg/ffb4441dccedb5ede51a213408b17cf83eec9a27)

[Zhegalkin polynomial][12]

![{\displaystyle x\oplus y\oplus xy}](https://wikimedia.org/api/rest_v1/media/math/render/svg/7ff21bb289aa9cbe2908d93a58b59af75a8655b5)

[Post's lattices][13]

0-preserving

yes

1-preserving

yes

Monotone

yes

Affine

no

-   [v][14]
-   [t][15]
-   [e][16]

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/e/ee/Venn_0111_1111.svg/220px-Venn_0111_1111.svg.png)][17]

Venn diagram of ![{\displaystyle \scriptstyle A\lor B\lor C}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5e109d96ec11c5726afd4635b7bdc9924e594419)

In [logic][18], __disjunction__ is a [logical connective][19] typically notated ![\lor ](https://wikimedia.org/api/rest_v1/media/math/render/svg/ab47f6b1f589aedcf14638df1d63049d233d851a) whose meaning either refines or corresponds to that of natural language expressions such as "or". In [classical logic][20], it is given a [truth functional][21] [semantics][22] on which ![\phi \lor \psi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/5092176ead49fad1831b66b924957541ea52f63a) is true unless both ![\phi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/72b1f30316670aee6270a28334bdf4f5072cdde4) and ![\psi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/45e5789e5d9c8f7c79744f43ecaaf8ba42a8553a) are false. Because this semantics allows a disjunctive formula to be true when both of its disjuncts are true, it is an *inclusive* interpretation of disjunction, in contrast with [exclusive disjunction][23]. Classical [proof theoretical][24] treatments are often given in terms of rules such as [disjunction introduction][25] and [disjunction elimination][26]. Disjunction has also been given numerous non-classical treatments, motivated by problems including [Aristotle's sea battle argument][27], [Heisenberg][28]'s [uncertainty principle][29], as well the numerous mismatches between classical disjunction and its nearest equivalents in natural language.[\[1\]][30][\[2\]][31]

## Notation\[[edit][32]\]

In logic and related fields, disjunction is customarily notated with an infix operator ![\lor ](https://wikimedia.org/api/rest_v1/media/math/render/svg/ab47f6b1f589aedcf14638df1d63049d233d851a).[\[1\]][33] Alternative notations include ![+](https://wikimedia.org/api/rest_v1/media/math/render/svg/fe6ef363cd19902d1a7a71fb1c8b21e8ede52406), used mainly in [electronics][34], as well as ![\vert ](https://wikimedia.org/api/rest_v1/media/math/render/svg/93019cea46f1a0aaef5215a0bba66cb0078942d9) and ![{\displaystyle \vert \!\vert }](https://wikimedia.org/api/rest_v1/media/math/render/svg/d1e8c035d972dca265df4930810afd46e7d69865) in many [programming languages][35]. The English word "or" is sometimes used as well, often in capital letters. In [Jan Łukasiewicz][36]'s [prefix notation for logic][37], the operator is __A__, short for Polish *alternatywa* (English: alternative).[\[3\]][38]

## Classical disjunction\[[edit][39]\]

### Semantics\[[edit][40]\]

Classical disjunction is a [truth functional][41] [operation][42] which returns the [truth value][43] "true" unless both of its arguments are "false". Its semantic entry is standardly given as follows:[\[4\]][44]

![{\displaystyle \models \phi \lor \psi }](https://wikimedia.org/api/rest_v1/media/math/render/svg/33b2676c1da84436b859f1caeabaa68e2adb4e9a)     if     ![{\displaystyle \models \phi }](https://wikimedia.org/api/rest_v1/media/math/render/svg/447cc02ab5989f729f270027aab0a05d83d607e3)     or     ![{\displaystyle \models \psi }](https://wikimedia.org/api/rest_v1/media/math/render/svg/b2b86a21e8642ec92552afe15b50eae670d7cf60)     or     both

This semantics corresponds to the following [truth table][45]:[\[1\]][46]

### Defined by other operators\[[edit][47]\]

In systems where logical disjunction is not a primitive, it may be defined as[\[5\]][48]

![{\displaystyle A\lor B=\neg A\to B}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1b777bd0dde37fdc799eefdd2421a12f3d82f81d).

This can be checked by the following truth table:

### Properties\[[edit][49]\]

The following properties apply to disjunction:

![{\displaystyle (a\lor (b\land c))\equiv ((a\lor b)\land (a\lor c))}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8aea71dcc6856a516d3bd5fdcd487f974f02defe)

![{\displaystyle (a\lor (b\lor c))\equiv ((a\lor b)\lor (a\lor c))}](https://wikimedia.org/api/rest_v1/media/math/render/svg/4d15098bd224d67f82e28e624aea5a7a4fc8a652)

![{\displaystyle (a\lor (b\equiv c))\equiv ((a\lor b)\equiv (a\lor c))}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d60c56c6343ad86758fd3dfd40911051f92516e1)

![{\displaystyle (a\rightarrow b)\rightarrow ((a\lor c)\rightarrow (b\lor c))}](https://wikimedia.org/api/rest_v1/media/math/render/svg/df83c42a54ddf0137427fac540862ab55500cab5)

-   __Truth-preserving__: The interpretation under which all variables are assigned a [truth value][50] of 'true', produces a truth value of 'true' as a result of disjunction.
-   __Falsehood-preserving__: The interpretation under which all variables are assigned a [truth value][51] of 'false', produces a truth value of 'false' as a result of disjunction.

## Applications in computer science\[[edit][52]\]

[![[icon]](https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Wiki_letter_w_cropped.svg/20px-Wiki_letter_w_cropped.svg.png)][53]

This section __needs expansion__. You can help by [adding to it][54]. *(February 2021)*

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Or-gate-en.svg/150px-Or-gate-en.svg.png)][55]

[Operators][56] corresponding to logical disjunction exist in most [programming languages][57].

### Bitwise operation\[[edit][58]\]

Disjunction is often used for [bitwise operations][59]. Examples:

-   0 or 0 = 0
-   0 or 1 = 1
-   1 or 0 = 1
-   1 or 1 = 1
-   1010 or 1100 = 1110

The `or` operator can be used to set bits in a [bit field][60] to 1, by `or`\-ing the field with a constant field with the relevant bits set to 1. For example, `x = x | 0b00000001` will force the final bit to 1, while leaving other bits unchanged.\[*[citation needed][61]*\]

### Logical operation\[[edit][62]\]

Many languages distinguish between bitwise and logical disjunction by providing two distinct operators; in languages following [C][63], bitwise disjunction is performed with the single pipe operator (`|`), and logical disjunction with the double pipe (`||`) operator.

Logical disjunction is usually [short-circuited][64]; that is, if the first (left) operand evaluates to `true`, then the second (right) operand is not evaluated. The logical disjunction operator thus usually constitutes a [sequence point][65].

In a parallel (concurrent) language, it is possible to short-circuit both sides: they are evaluated in parallel, and if one terminates with value true, the other is interrupted. This operator is thus called the __parallel or__.

Although the type of a logical disjunction expression is boolean in most languages (and thus can only have the value `true` or `false`), in some languages (such as [Python][66] and [JavaScript][67]), the logical disjunction operator returns one of its operands: the first operand if it evaluates to a true value, and the second operand otherwise.\[*[citation needed][68]*\]

### Constructive disjunction\[[edit][69]\]

The [Curry–Howard correspondence][70] relates a [constructivist][71] form of disjunction to [tagged union][72] types.\[*[citation needed][73]*\]

## Set theory\[[edit][74]\]

[![[icon]](https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Wiki_letter_w_cropped.svg/20px-Wiki_letter_w_cropped.svg.png)][75]

This section __needs expansion__. You can help by [adding to it][76]. *(February 2021)*

The [membership][77] of an element of a [union set][78] in [set theory][79] is defined in terms of a logical disjunction: ![{\displaystyle x\in A\cup B}](https://wikimedia.org/api/rest_v1/media/math/render/svg/43b649b2f9459be716c3d7d15cfbac8f27ce3cd4) if and only if ![{\displaystyle (x\in A)\vee (x\in B)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/21cc3ce35d17bd1ee49f601253272b13ed49a872). Because of this, logical disjunction satisfies many of the same identities as set-theoretic union, such as [associativity][80], [commutativity][81], [distributivity][82], and [de Morgan's laws][83], identifying [logical conjunction][84] with [set intersection][85], [logical negation][86] with [set complement][87].\[*[citation needed][88]*\]

## Natural language\[[edit][89]\]

The classical denotation for ![\lor ](https://wikimedia.org/api/rest_v1/media/math/render/svg/ab47f6b1f589aedcf14638df1d63049d233d851a) does not precisely match the [denotation][90] of disjunctive statements in [natural languages][91] such as [English][92]. Notably, classical disjunction is inclusive while natural language disjunction is often understood [exclusively][93].[\[1\]][94]

1\. Mary is patriotic or quixotic.

![\rightsquigarrow](https://wikimedia.org/api/rest_v1/media/math/render/svg/eb6b58ec709ca77be3efbffb48d65d90669b81c0) Mary is not both patriotic and quixotic.

This inference has sometimes been understood as an [entailment][95], for instance by [Alfred Tarski][96], who suggested that natural language disjunction is [ambiguous][97] between a classical and a nonclassical interpretation. More recent work in [pragmatics][98] has shown that this inference can be derived as a [conversational implicature][99] on the basis of a [semantic][100] denotation which behaves classically. However, disjunctive constructions including [Hungarian][101] *vagy... vagy* and [French][102] *soit... soit* have been argued to be inherently exclusive, rendering un[grammaticality][103] in contexts where an inclusive reading would otherwise be forced.[\[1\]][104]

Similar deviations from classical logic have been noted in cases such as [free choice disjunction][105] and [simplification of disjunctive antecedents][106], where certain [modal operators][107] trigger a [conjunction][108]\-like interpretation of disjunction. As with exclusivity, these inferences have been analyzed both as implicatures and as entailments arising from a nonclassical interpretation of disjunction.[\[1\]][109]

2\. You can have an apple or a pear.

![\rightsquigarrow](https://wikimedia.org/api/rest_v1/media/math/render/svg/eb6b58ec709ca77be3efbffb48d65d90669b81c0) You can have an apple and you can have a pear (but you can't have both)

In many languages, disjunctive expressions play a role in question formation. For instance, while the following English example can be interpreted as a [polar question][110] asking whether it's true that Mary is either a philosopher or a linguist, it can also be interpreted as an [alternative question][111] asking which of the two professions is hers. The role of disjunction in these cases has be analyzed using nonclassical logics such as [alternative semantics][112] and [inquisitive semantics][113], which have also been adopted to explain the free choice and simplification inferences.[\[1\]][114]

3\. Is Mary a philosopher or a linguist?

In English, as in many other languages, disjunction is expressed by a [coordinating conjunction][115]. Other languages express disjunctive meanings in a variety of ways, though it is unknown whether disjunction itself is a [linguistic universal][116]. In many languages such as [Dyirbal][117] and [Maricopa][118], disjunction is marked using a verb [suffix][119]. For instance, in the Maricopa example below, disjunction is marked by the suffix *šaa*.[\[1\]][120]

4.

v?aawuumšaa

3\-come-PL\-FUT\-INFER

'John or Bill will come.'

## See also\[[edit][121]\]

## Notes\[[edit][122]\]

-   [George Boole][123], closely following analogy with ordinary mathematics, premised, as a necessary condition to the definition of "x + y", that x and y were mutually exclusive. [Jevons][124], and practically all mathematical logicians after him, advocated, on various grounds, the definition of "logical addition" in a form which does not necessitate mutual exclusiveness.

## References\[[edit][125]\]

1.  ^ [Jump up to: *__a__*][126] [*__b__*][127] [*__c__*][128] [*__d__*][129] [*__e__*][130] [*__f__*][131] [*__g__*][132] [*__h__*][133] Aloni, Maria (2016), Zalta, Edward N. (ed.), ["Disjunction"][134], *The Stanford Encyclopedia of Philosophy* (Winter 2016 ed.), Metaphysics Research Lab, Stanford University, retrieved 2020-09-03
2.  __[^][135]__ ["Disjunction | logic"][136]. *Encyclopedia Britannica*. Retrieved 2020-09-03.
3.  __[^][137]__ [Józef Maria Bocheński][138] (1959), *A Précis of Mathematical Logic*, translated by Otto Bird from the French and German editions, Dordrecht, North Holland: D. Reidel, passim.
4.  __[^][139]__ For the sake of generality across classical systems, this entry suppresses the parameters of evaluation. The "[double turnstile][140]" [symbol][141] ![{\displaystyle \models }](https://wikimedia.org/api/rest_v1/media/math/render/svg/89dbad9a523091069a540122aeb15e41d1fe18b8) here is intended to mean "semantically entails".
5.  __[^][142]__ Walicki, Michał (2016). [*Introduction to Mathematical Logic*][143]. WORLD SCIENTIFIC. p. 150. [ISBN][144] [9814343870][145].

## External links\[[edit][146]\]

-   ["Disjunction"][147], *[Encyclopedia of Mathematics][148]*, [EMS Press][149], 2001 \[1994\]
-   Aloni, Maria. ["Disjunction"][150]. In [Zalta, Edward N.][151] (ed.). *[Stanford Encyclopedia of Philosophy][152]*.
-   Eric W. Weisstein. ["Disjunction."][153] From MathWorld—A Wolfram Web Resource

[1]: https://en.wikipedia.org/w/index.php?title=Disjunction&redirect=no "Disjunction"
[2]: https://en.wikipedia.org/wiki/OR_gate "OR gate"
[3]: https://en.wikipedia.org/wiki/Meiosis "Meiosis"
[4]: https://en.wikipedia.org/wiki/Disjunct_distribution "Disjunct distribution"
[5]: https://en.wikipedia.org/wiki/Parallel_addition_(operator) "Parallel addition (operator)"
[6]: https://en.wikipedia.org/wiki/File:Venn0111.svg "Venn diagram of Logical disjunction"
[7]: https://en.wikipedia.org/wiki/Truth_table "Truth table"
[8]: https://en.wikipedia.org/wiki/Logic_gate "Logic gate"
[9]: https://en.wikipedia.org/wiki/File:OR_ANSI.svg
[10]: https://en.wikipedia.org/wiki/Disjunctive_normal_form "Disjunctive normal form"
[11]: https://en.wikipedia.org/wiki/Conjunctive_normal_form "Conjunctive normal form"
[12]: https://en.wikipedia.org/wiki/Zhegalkin_polynomial "Zhegalkin polynomial"
[13]: https://en.wikipedia.org/wiki/Post%27s_lattice "Post's lattice"
[14]: https://en.wikipedia.org/wiki/Template:Infobox_logical_connective "Template:Infobox logical connective"
[15]: https://en.wikipedia.org/wiki/Template_talk:Infobox_logical_connective "Template talk:Infobox logical connective"
[16]: https://en.wikipedia.org/w/index.php?title=Template:Infobox_logical_connective&action=edit
[17]: https://en.wikipedia.org/wiki/File:Venn_0111_1111.svg
[18]: https://en.wikipedia.org/wiki/Logic "Logic"
[19]: https://en.wikipedia.org/wiki/Logical_connective "Logical connective"
[20]: https://en.wikipedia.org/wiki/Classical_logic "Classical logic"
[21]: https://en.wikipedia.org/wiki/Truth_function "Truth function"
[22]: https://en.wikipedia.org/wiki/Semantics_of_logic "Semantics of logic"
[23]: https://en.wikipedia.org/wiki/Exclusive_or "Exclusive or"
[24]: https://en.wikipedia.org/wiki/Proof_theory "Proof theory"
[25]: https://en.wikipedia.org/wiki/Disjunction_introduction "Disjunction introduction"
[26]: https://en.wikipedia.org/wiki/Disjunction_elimination "Disjunction elimination"
[27]: https://en.wikipedia.org/wiki/Aristotle%27s_sea_battle_argument "Aristotle's sea battle argument"
[28]: https://en.wikipedia.org/wiki/Heisenberg "Heisenberg"
[29]: https://en.wikipedia.org/wiki/Uncertainty_principle "Uncertainty principle"
[30]: https://en.wikipedia.org/wiki/Logical_disjunction#cite_note-:1-1
[31]: https://en.wikipedia.org/wiki/Logical_disjunction#cite_note-2
[32]: https://en.wikipedia.org/w/index.php?title=Logical_disjunction&action=edit&section=1 "Edit section: Notation"
[33]: https://en.wikipedia.org/wiki/Logical_disjunction#cite_note-:1-1
[34]: https://en.wikipedia.org/wiki/Electronics "Electronics"
[35]: https://en.wikipedia.org/wiki/Programming_language "Programming language"
[36]: https://en.wikipedia.org/wiki/Jan_%C5%81ukasiewicz "Jan Łukasiewicz"
[37]: https://en.wikipedia.org/wiki/Polish_notation#Polish_notation_for_logic "Polish notation"
[38]: https://en.wikipedia.org/wiki/Logical_disjunction#cite_note-3
[39]: https://en.wikipedia.org/w/index.php?title=Logical_disjunction&action=edit&section=2 "Edit section: Classical disjunction"
[40]: https://en.wikipedia.org/w/index.php?title=Logical_disjunction&action=edit&section=3 "Edit section: Semantics"
[41]: https://en.wikipedia.org/wiki/Truth_function "Truth function"
[42]: https://en.wikipedia.org/wiki/Logical_operation "Logical operation"
[43]: https://en.wikipedia.org/wiki/Truth_value "Truth value"
[44]: https://en.wikipedia.org/wiki/Logical_disjunction#cite_note-4
[45]: https://en.wikipedia.org/wiki/Truth_table "Truth table"
[46]: https://en.wikipedia.org/wiki/Logical_disjunction#cite_note-:1-1
[47]: https://en.wikipedia.org/w/index.php?title=Logical_disjunction&action=edit&section=4 "Edit section: Defined by other operators"
[48]: https://en.wikipedia.org/wiki/Logical_disjunction#cite_note-5
[49]: https://en.wikipedia.org/w/index.php?title=Logical_disjunction&action=edit&section=5 "Edit section: Properties"
[50]: https://en.wikipedia.org/wiki/Truth_value "Truth value"
[51]: https://en.wikipedia.org/wiki/Truth_value "Truth value"
[52]: https://en.wikipedia.org/w/index.php?title=Logical_disjunction&action=edit&section=6 "Edit section: Applications in computer science"
[53]: https://en.wikipedia.org/wiki/File:Wiki_letter_w_cropped.svg
[54]: https://en.wikipedia.org/w/index.php?title=Logical_disjunction&action=edit&section=
[55]: https://en.wikipedia.org/wiki/File:Or-gate-en.svg
[56]: https://en.wikipedia.org/wiki/Operator_(programming) "Operator (programming)"
[57]: https://en.wikipedia.org/wiki/Programming_language "Programming language"
[58]: https://en.wikipedia.org/w/index.php?title=Logical_disjunction&action=edit&section=7 "Edit section: Bitwise operation"
[59]: https://en.wikipedia.org/wiki/Bitwise_operation "Bitwise operation"
[60]: https://en.wikipedia.org/wiki/Bit_field "Bit field"
[61]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[62]: https://en.wikipedia.org/w/index.php?title=Logical_disjunction&action=edit&section=8 "Edit section: Logical operation"
[63]: https://en.wikipedia.org/wiki/C_(programming_language) "C (programming language)"
[64]: https://en.wikipedia.org/wiki/Short-circuit_evaluation "Short-circuit evaluation"
[65]: https://en.wikipedia.org/wiki/Sequence_point "Sequence point"
[66]: https://en.wikipedia.org/wiki/Python_programming_language "Python programming language"
[67]: https://en.wikipedia.org/wiki/JavaScript "JavaScript"
[68]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[69]: https://en.wikipedia.org/w/index.php?title=Logical_disjunction&action=edit&section=9 "Edit section: Constructive disjunction"
[70]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence "Curry–Howard correspondence"
[71]: https://en.wikipedia.org/wiki/Constructivism_(mathematics) "Constructivism (mathematics)"
[72]: https://en.wikipedia.org/wiki/Tagged_union "Tagged union"
[73]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[74]: https://en.wikipedia.org/w/index.php?title=Logical_disjunction&action=edit&section=10 "Edit section: Set theory"
[75]: https://en.wikipedia.org/wiki/File:Wiki_letter_w_cropped.svg
[76]: https://en.wikipedia.org/w/index.php?title=Logical_disjunction&action=edit&section=
[77]: https://en.wikipedia.org/wiki/Element_(mathematics) "Element (mathematics)"
[78]: https://en.wikipedia.org/wiki/Union_(set_theory) "Union (set theory)"
[79]: https://en.wikipedia.org/wiki/Set_theory "Set theory"
[80]: https://en.wikipedia.org/wiki/Associativity "Associativity"
[81]: https://en.wikipedia.org/wiki/Commutativity "Commutativity"
[82]: https://en.wikipedia.org/wiki/Distributivity "Distributivity"
[83]: https://en.wikipedia.org/wiki/De_Morgan%27s_laws "De Morgan's laws"
[84]: https://en.wikipedia.org/wiki/Logical_conjunction "Logical conjunction"
[85]: https://en.wikipedia.org/wiki/Set_intersection "Set intersection"
[86]: https://en.wikipedia.org/wiki/Logical_negation "Logical negation"
[87]: https://en.wikipedia.org/wiki/Set_complement "Set complement"
[88]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[89]: https://en.wikipedia.org/w/index.php?title=Logical_disjunction&action=edit&section=11 "Edit section: Natural language"
[90]: https://en.wikipedia.org/wiki/Denotation "Denotation"
[91]: https://en.wikipedia.org/wiki/Natural_language "Natural language"
[92]: https://en.wikipedia.org/wiki/English_language "English language"
[93]: https://en.wikipedia.org/wiki/Exclusive_or "Exclusive or"
[94]: https://en.wikipedia.org/wiki/Logical_disjunction#cite_note-:1-1
[95]: https://en.wikipedia.org/wiki/Entailment "Entailment"
[96]: https://en.wikipedia.org/wiki/Alfred_Tarski "Alfred Tarski"
[97]: https://en.wikipedia.org/wiki/Lexical_ambiguity "Lexical ambiguity"
[98]: https://en.wikipedia.org/wiki/Pragmatics "Pragmatics"
[99]: https://en.wikipedia.org/wiki/Conversational_implicature "Conversational implicature"
[100]: https://en.wikipedia.org/wiki/Formal_semantics_(natural_language) "Formal semantics (natural language)"
[101]: https://en.wikipedia.org/wiki/Hungarian_language "Hungarian language"
[102]: https://en.wikipedia.org/wiki/French_language "French language"
[103]: https://en.wikipedia.org/wiki/Grammaticality "Grammaticality"
[104]: https://en.wikipedia.org/wiki/Logical_disjunction#cite_note-:1-1
[105]: https://en.wikipedia.org/wiki/Free_choice_inference "Free choice inference"
[106]: https://en.wikipedia.org/wiki/Simplification_of_disjunctive_antecedents "Simplification of disjunctive antecedents"
[107]: https://en.wikipedia.org/wiki/Linguistic_modality "Linguistic modality"
[108]: https://en.wikipedia.org/wiki/Logical_conjunction "Logical conjunction"
[109]: https://en.wikipedia.org/wiki/Logical_disjunction#cite_note-:1-1
[110]: https://en.wikipedia.org/wiki/Polar_question "Polar question"
[111]: https://en.wikipedia.org/wiki/Alternative_question "Alternative question"
[112]: https://en.wikipedia.org/wiki/Alternative_semantics "Alternative semantics"
[113]: https://en.wikipedia.org/wiki/Inquisitive_semantics "Inquisitive semantics"
[114]: https://en.wikipedia.org/wiki/Logical_disjunction#cite_note-:1-1
[115]: https://en.wikipedia.org/wiki/Coordinating_conjunction "Coordinating conjunction"
[116]: https://en.wikipedia.org/wiki/Linguistic_universal "Linguistic universal"
[117]: https://en.wikipedia.org/wiki/Dyirbal_language "Dyirbal language"
[118]: https://en.wikipedia.org/wiki/Maricopa_language "Maricopa language"
[119]: https://en.wikipedia.org/wiki/Suffix "Suffix"
[120]: https://en.wikipedia.org/wiki/Logical_disjunction#cite_note-:1-1
[121]: https://en.wikipedia.org/w/index.php?title=Logical_disjunction&action=edit&section=12 "Edit section: See also"
[122]: https://en.wikipedia.org/w/index.php?title=Logical_disjunction&action=edit&section=13 "Edit section: Notes"
[123]: https://en.wikipedia.org/wiki/George_Boole "George Boole"
[124]: https://en.wikipedia.org/wiki/William_Stanley_Jevons "William Stanley Jevons"
[125]: https://en.wikipedia.org/w/index.php?title=Logical_disjunction&action=edit&section=14 "Edit section: References"
[126]: https://en.wikipedia.org/wiki/Logical_disjunction#cite_ref-:1_1-0
[127]: https://en.wikipedia.org/wiki/Logical_disjunction#cite_ref-:1_1-1
[128]: https://en.wikipedia.org/wiki/Logical_disjunction#cite_ref-:1_1-2
[129]: https://en.wikipedia.org/wiki/Logical_disjunction#cite_ref-:1_1-3
[130]: https://en.wikipedia.org/wiki/Logical_disjunction#cite_ref-:1_1-4
[131]: https://en.wikipedia.org/wiki/Logical_disjunction#cite_ref-:1_1-5
[132]: https://en.wikipedia.org/wiki/Logical_disjunction#cite_ref-:1_1-6
[133]: https://en.wikipedia.org/wiki/Logical_disjunction#cite_ref-:1_1-7
[134]: https://plato.stanford.edu/archives/win2016/entries/disjunction/
[135]: https://en.wikipedia.org/wiki/Logical_disjunction#cite_ref-2 "Jump up"
[136]: https://www.britannica.com/topic/disjunction-logic
[137]: https://en.wikipedia.org/wiki/Logical_disjunction#cite_ref-3 "Jump up"
[138]: https://en.wikipedia.org/wiki/J%C3%B3zef_Maria_Boche%C5%84ski "Józef Maria Bocheński"
[139]: https://en.wikipedia.org/wiki/Logical_disjunction#cite_ref-4 "Jump up"
[140]: https://en.wikipedia.org/wiki/Double_turnstile "Double turnstile"
[141]: https://en.wikipedia.org/wiki/List_of_logic_symbols "List of logic symbols"
[142]: https://en.wikipedia.org/wiki/Logical_disjunction#cite_ref-5 "Jump up"
[143]: https://www.worldscientific.com/doi/abs/10.1142/9783
[144]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[145]: https://en.wikipedia.org/wiki/Special:BookSources/9814343870 "Special:BookSources/9814343870"
[146]: https://en.wikipedia.org/w/index.php?title=Logical_disjunction&action=edit&section=15 "Edit section: External links"
[147]: https://www.encyclopediaofmath.org/index.php?title=Disjunction
[148]: https://en.wikipedia.org/wiki/Encyclopedia_of_Mathematics "Encyclopedia of Mathematics"
[149]: https://en.wikipedia.org/wiki/European_Mathematical_Society "European Mathematical Society"
[150]: https://plato.stanford.edu/entries/disjunction/
[151]: https://en.wikipedia.org/wiki/Edward_N._Zalta "Edward N. Zalta"
[152]: https://en.wikipedia.org/wiki/Stanford_Encyclopedia_of_Philosophy "Stanford Encyclopedia of Philosophy"
[153]: http://mathworld.wolfram.com/Disjunction.html

---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Logical_consequence
page-title:       Logical consequence - Wikipedia
article-title:    Logical consequence - Wikipedia
---
# Logical consequence - Wikipedia

"Therefore" redirects here. For the therefore symbol  ∴, see Therefore sign.
"Therefore" redirects here. For the therefore symbol ∴, see [Therefore sign][1].

"Logical implication" redirects here. For the binary connective, see [Material conditional][2].

__Logical consequence__ (also __entailment__) is a fundamental [concept][3] in [logic][4], which describes the relationship between [statements][5] that hold true when one statement logically *follows from* one or more statements. A [valid][6] logical [argument][7] is one in which the [conclusion][8] is entailed by the [premises][9], because the conclusion is the consequence of the premises. The [philosophical analysis][10] of logical consequence involves the questions: In what sense does a conclusion follow from its premises? and What does it mean for a conclusion to be a consequence of premises?[\[1\]][11] All of [philosophical logic][12] is meant to provide accounts of the nature of logical consequence and the nature of [logical truth][13].[\[2\]][14]

Logical consequence is [necessary][15] and [formal][16], by way of examples that explain with [formal proof][17] and [models of interpretation][18].[\[1\]][19] A sentence is said to be a logical consequence of a set of sentences, for a given [language][20], [if and only if][21], using only logic (i.e., without regard to any *personal* interpretations of the sentences) the sentence must be true if every sentence in the set is true.[\[3\]][22]

Logicians make precise accounts of logical consequence regarding a given [language][23] ![{\mathcal {L}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9027196ecb178d598958555ea01c43157d83597c), either by constructing a [deductive system][24] for ![{\mathcal {L}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9027196ecb178d598958555ea01c43157d83597c) or by formal [intended semantics][25] for language ![{\mathcal {L}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9027196ecb178d598958555ea01c43157d83597c). The Polish logician [Alfred Tarski][26] identified three features of an adequate characterization of entailment: (1) The logical consequence relation relies on the [logical form][27] of the sentences: (2) The relation is [a priori][28], i.e., it can be determined with or without regard to [empirical evidence][29] (sense experience); and (3) The logical consequence relation has a [modal][30] component.[\[3\]][31]

## Formal accounts\[[edit][32]\]

The most widely prevailing view on how best to account for logical consequence is to appeal to formality. This is to say that whether statements follow from one another logically depends on the structure or [logical form][33] of the statements without regard to the contents of that form.

Syntactic accounts of logical consequence rely on [schemes][34] using [inference rules][35]. For instance, we can express the logical form of a valid argument as:

All *X* are *Y*

All *Y* are *Z*

Therefore, all *X* are *Z*.

This argument is formally valid, because every [instance][36] of arguments constructed using this scheme is valid.

This is in contrast to an argument like "Fred is Mike's brother's son. Therefore Fred is Mike's nephew." Since this argument depends on the meanings of the words "brother", "son", and "nephew", the statement "Fred is Mike's nephew" is a so-called [material consequence][37] of "Fred is Mike's brother's son", not a formal consequence. A formal consequence must be true *in all cases*, however this is an incomplete definition of formal consequence, since even the argument "*P* is *Q*'s brother's son, therefore *P* is *Q*'s nephew" is valid in all cases, but is not a *formal* argument.[\[1\]][38]

## A priori property of logical consequence\[[edit][39]\]

If it is known that ![Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/8752c7023b4b3286800fe3238271bbca681219ed) follows logically from ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a), then no information about the possible interpretations of ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a) or ![Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/8752c7023b4b3286800fe3238271bbca681219ed) will affect that knowledge. Our knowledge that ![Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/8752c7023b4b3286800fe3238271bbca681219ed) is a logical consequence of ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a) cannot be influenced by [empirical knowledge][40].[\[1\]][41] Deductively valid arguments can be known to be so without recourse to experience, so they must be knowable a priori.[\[1\]][42] However, formality alone does not guarantee that logical consequence is not influenced by empirical knowledge. So the a priori property of logical consequence is considered to be independent of formality.[\[1\]][43]

## Proofs and models\[[edit][44]\]

The two prevailing techniques for providing accounts of logical consequence involve expressing the concept in terms of *proofs* and via *models*. The study of the syntactic consequence (of a logic) is called (its) [proof theory][45] whereas the study of (its) semantic consequence is called (its) [model theory][46].[\[4\]][47]

### Syntactic consequence\[[edit][48]\]

See also: [∴][49] and [⊢][50]

A formula ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) is a __syntactic consequence__[\[5\]][51][\[6\]][52][\[7\]][53][\[8\]][54] within some [formal system][55] ![{\mathcal {FS}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ab025245b89b5d8e91a0f027632b0c1764ab2a9f) of a set ![\Gamma ](https://wikimedia.org/api/rest_v1/media/math/render/svg/4cfde86a3f7ec967af9955d0988592f0693d2b19) of formulas if there is a [formal proof][56] in ![{\mathcal {FS}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ab025245b89b5d8e91a0f027632b0c1764ab2a9f) of ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) from the set ![\Gamma ](https://wikimedia.org/api/rest_v1/media/math/render/svg/4cfde86a3f7ec967af9955d0988592f0693d2b19).

![\Gamma \vdash _{\mathcal {FS}}A](https://wikimedia.org/api/rest_v1/media/math/render/svg/63b152eb8c8c41670800ead25a9d78cf0c6d4b54)

Syntactic consequence does not depend on any [interpretation][57] of the formal system.[\[9\]][58]

### Semantic consequence\[[edit][59]\]

See also: [⊨][60]

A formula ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) is a __semantic consequence__ within some formal system ![{\mathcal {FS}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ab025245b89b5d8e91a0f027632b0c1764ab2a9f) of a set of statements ![\Gamma ](https://wikimedia.org/api/rest_v1/media/math/render/svg/4cfde86a3f7ec967af9955d0988592f0693d2b19)

![\Gamma \models _{\mathcal {FS}}A,](https://wikimedia.org/api/rest_v1/media/math/render/svg/8aefb2f5f9f219797fa3cf6f425f6aa2fa36edc3)

if and only if there is no model ![{\mathcal {I}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0e9730a0ada0426927ff64141eb9f505eca132d4) in which all members of ![\Gamma ](https://wikimedia.org/api/rest_v1/media/math/render/svg/4cfde86a3f7ec967af9955d0988592f0693d2b19) are true and ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) is false.[\[10\]][61] Or, in other words, the set of the interpretations that make all members of ![\Gamma ](https://wikimedia.org/api/rest_v1/media/math/render/svg/4cfde86a3f7ec967af9955d0988592f0693d2b19) true is a subset of the set of the interpretations that make ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) true.

## Modal accounts\[[edit][62]\]

[Modal][63] accounts of logical consequence are variations on the following basic idea:

![\Gamma ](https://wikimedia.org/api/rest_v1/media/math/render/svg/4cfde86a3f7ec967af9955d0988592f0693d2b19) ![\vdash ](https://wikimedia.org/api/rest_v1/media/math/render/svg/a0c0d30cf8cb7dba179e317fcde9583d842e80f6) ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) is true if and only if it is *necessary* that if all of the elements of ![\Gamma ](https://wikimedia.org/api/rest_v1/media/math/render/svg/4cfde86a3f7ec967af9955d0988592f0693d2b19) are true, then ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) is true.

Alternatively (and, most would say, equivalently):

![\Gamma ](https://wikimedia.org/api/rest_v1/media/math/render/svg/4cfde86a3f7ec967af9955d0988592f0693d2b19) ![\vdash ](https://wikimedia.org/api/rest_v1/media/math/render/svg/a0c0d30cf8cb7dba179e317fcde9583d842e80f6) ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) is true if and only if it is *impossible* for all of the elements of ![\Gamma ](https://wikimedia.org/api/rest_v1/media/math/render/svg/4cfde86a3f7ec967af9955d0988592f0693d2b19) to be true and ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) false.

Such accounts are called "modal" because they appeal to the modal notions of [logical necessity][64] and [logical possibility][65]. 'It is necessary that' is often expressed as a [universal quantifier][66] over [possible worlds][67], so that the accounts above translate as:

![\Gamma ](https://wikimedia.org/api/rest_v1/media/math/render/svg/4cfde86a3f7ec967af9955d0988592f0693d2b19) ![\vdash ](https://wikimedia.org/api/rest_v1/media/math/render/svg/a0c0d30cf8cb7dba179e317fcde9583d842e80f6) ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) is true if and only if there is no possible world at which all of the elements of ![\Gamma ](https://wikimedia.org/api/rest_v1/media/math/render/svg/4cfde86a3f7ec967af9955d0988592f0693d2b19) are true and ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) is false (untrue).

Consider the modal account in terms of the argument given as an example above:

All frogs are green.

Kermit is a frog.

Therefore, Kermit is green.

The conclusion is a logical consequence of the premises because we can't imagine a possible world where (a) all frogs are green; (b) Kermit is a frog; and (c) Kermit is not green.

### Modal-formal accounts\[[edit][68]\]

Modal-formal accounts of logical consequence combine the modal and formal accounts above, yielding variations on the following basic idea:

![\Gamma ](https://wikimedia.org/api/rest_v1/media/math/render/svg/4cfde86a3f7ec967af9955d0988592f0693d2b19) ![\vdash ](https://wikimedia.org/api/rest_v1/media/math/render/svg/a0c0d30cf8cb7dba179e317fcde9583d842e80f6) ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) if and only if it is impossible for an argument with the same logical form as ![\Gamma ](https://wikimedia.org/api/rest_v1/media/math/render/svg/4cfde86a3f7ec967af9955d0988592f0693d2b19)/![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) to have true premises and a false conclusion.

### Warrant-based accounts\[[edit][69]\]

The accounts considered above are all "truth-preservational", in that they all assume that the characteristic feature of a good inference is that it never allows one to move from true premises to an untrue conclusion. As an alternative, some have proposed "[warrant][70]\-preservational" accounts, according to which the characteristic feature of a good inference is that it never allows one to move from justifiably assertible premises to a conclusion that is not justifiably assertible. This is (roughly) the account favored by [intuitionists][71] such as [Michael Dummett][72].

### Non-monotonic logical consequence\[[edit][73]\]

The accounts discussed above all yield [monotonic][74] consequence relations, i.e. ones such that if ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) is a consequence of ![\Gamma ](https://wikimedia.org/api/rest_v1/media/math/render/svg/4cfde86a3f7ec967af9955d0988592f0693d2b19), then ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) is a consequence of any superset of ![\Gamma ](https://wikimedia.org/api/rest_v1/media/math/render/svg/4cfde86a3f7ec967af9955d0988592f0693d2b19). It is also possible to specify non-monotonic consequence relations to capture the idea that, e.g., 'Tweety can fly' is a logical consequence of

{Birds can typically fly, Tweety is a bird}

but not of

{Birds can typically fly, Tweety is a bird, Tweety is a penguin}.

## See also\[[edit][75]\]

## Notes\[[edit][76]\]

1.  ^ [Jump up to: *__a__*][77] [*__b__*][78] [*__c__*][79] [*__d__*][80] [*__e__*][81] [*__f__*][82] Beall, JC and Restall, Greg, *[Logical Consequence][83]* The Stanford Encyclopedia of Philosophy (Fall 2009 Edition), Edward N. Zalta (ed.).
2.  __[^][84]__ [Quine, Willard Van Orman][85], *Philosophy of Logic*.
3.  ^ [Jump up to: *__a__*][86] [*__b__*][87] [McKeon, Matthew][88], *[Logical Consequence][89]* Internet Encyclopedia of Philosophy.
4.  __[^][90]__ Kosta Dosen (1996). ["Logical consequence: a turn in style"][91]. In [Maria Luisa Dalla Chiara][92]; Kees Doets; Daniele Mundici; Johan van Benthem (eds.). *Logic and Scientific Methods: Volume One of the Tenth International Congress of Logic, Methodology and Philosophy of Science, Florence, August 1995*. Springer. p. 292. [ISBN][93] [978-0-7923-4383-7][94].
5.  __[^][95]__ [Dummett, Michael][96] (1993) [*Frege: philosophy of language*][97] Harvard University Press, p.82ff
6.  __[^][98]__ [Lear, Jonathan][99] (1986) [*Aristotle and Logical Theory*][100] Cambridge University Press, 136p.
7.  __[^][101]__ Creath, Richard, and [Friedman, Michael][102] (2007) [*The Cambridge companion to Carnap*][103] Cambridge University Press, 371p.
8.  __[^][104]__ [FOLDOC: "syntactic consequence"][105] [Archived][106] 2013-04-03 at the [Wayback Machine][107]
9.  __[^][108]__ [Hunter, Geoffrey][109], Metalogic: An Introduction to the Metatheory of Standard First-Order Logic, University of California Pres, 1971, p. 75.
10.  __[^][110]__ [Etchemendy, John][111], *Logical consequence*, The Cambridge Dictionary of Philosophy

## Resources\[[edit][112]\]

-   Anderson, A.R.; Belnap, N.D. Jr. (1975), *Entailment*, __1__, Princeton, NJ: Princeton.
-   Augusto, Luis M. (2017), *Logical consequences. Theory and applications: An introduction.* London: College Publications. Series: [Mathematical logic and foundations][113].
-   [Barwise, Jon][114]; [Etchemendy, John][115] (2008), *Language, Proof and Logic*, Stanford: CSLI Publications.
-   Brown, Frank Markham (2003), *Boolean Reasoning: The Logic of Boolean Equations* 1st edition, Kluwer Academic Publishers, Norwell, MA. 2nd edition, Dover Publications, Mineola, NY, 2003.
-   [Davis, Martin, (editor)][116] (1965), [*The Undecidable, Basic Papers on Undecidable Propositions, Unsolvable Problems And Computable Functions*][117], New York: Raven Press, [ISBN][118] [9780486432281][119]CS1 maint: extra text: authors list ([link][120]). Papers include those by [Gödel][121], [Church][122], [Rosser][123], [Kleene][124], and [Post][125].
-   Dummett, Michael (1991), [*The Logical Basis of Metaphysics*][126], Harvard University Press, [ISBN][127] [9780674537866][128].
-   Edgington, Dorothy (2001), *Conditionals*, Blackwell in Lou Goble (ed.), *The Blackwell Guide to Philosophical Logic*.
-   Edgington, Dorothy (2006), ["Indicative Conditionals"][129], *Conditionals*, Metaphysics Research Lab, Stanford University in Edward N. Zalta (ed.), *The Stanford Encyclopedia of Philosophy*.
-   Etchemendy, John (1990), *The Concept of Logical Consequence*, Harvard University Press.
-   Goble, Lou, ed. (2001), *The Blackwell Guide to Philosophical Logic*, BlackwellCS1 maint: extra text: authors list ([link][130]).
-   Hanson, William H (1997), "The concept of logical consequence", *The Philosophical Review*, __106__ (3): 365–409, [doi][131]:[10.2307/2998398][132], [JSTOR][133] [2998398][134] 365–409.
-   [Hendricks, Vincent F.][135] (2005), *Thought 2 Talk: A Crash Course in Reflection and Expression*, New York: Automatic Press / VIP, [ISBN][136] [978-87-991013-7-5][137]
-   Planchette, P. A. (2001), *Logical Consequence* in Goble, Lou, ed., *The Blackwell Guide to Philosophical Logic*. Blackwell.
-   [Quine, W.V.][138] (1982), *Methods of Logic*, Cambridge, MA: Harvard University Press (1st ed. 1950), (2nd ed. 1959), (3rd ed. 1972), (4th edition, 1982).
-   [Shapiro, Stewart][139] (2002), *Necessity, meaning, and rationality: the notion of logical consequence* in D. Jacquette, ed., *A Companion to Philosophical Logic*. Blackwell.
-   [Tarski, Alfred][140] (1936), *On the concept of logical consequence* Reprinted in Tarski, A., 1983. *Logic, Semantics, Metamathematics*, 2nd ed. [Oxford University Press][141]. Originally published in [Polish][142] and [German][143].
-   Ryszard Wójcicki (1988). [*Theory of Logical Calculi: Basic Theory of Consequence Operations*][144]. Springer. [ISBN][145] [978-90-277-2785-5][146].
-   A paper on 'implication' from math.niu.edu, [Implication][147]
-   A definition of 'implicant' [AllWords][148]

## External links\[[edit][149]\]

-   [Beall, Jc][150]; [Restall, Greg][151] (2013-11-19). ["Logical Consequence"][152]. In [Zalta, Edward N.][153] (ed.). *[Stanford Encyclopedia of Philosophy][154]* (Winter 2016 ed.).
-   ["Logical consequence"][155]. *[Internet Encyclopedia of Philosophy][156]*.
-   [Logical consequence][157] at the [Indiana Philosophy Ontology Project][158]
-   [Logical consequence][159] at [PhilPapers][160]
-   ["Implication"][161], *[Encyclopedia of Mathematics][162]*, [EMS Press][163], 2001 \[1994\]

[1]: https://en.wikipedia.org/wiki/Therefore_sign "Therefore sign"
[2]: https://en.wikipedia.org/wiki/Material_conditional "Material conditional"
[3]: https://en.wikipedia.org/wiki/Concept "Concept"
[4]: https://en.wikipedia.org/wiki/Logic "Logic"
[5]: https://en.wikipedia.org/wiki/Statement_(logic) "Statement (logic)"
[6]: https://en.wikipedia.org/wiki/Validity_(logic) "Validity (logic)"
[7]: https://en.wikipedia.org/wiki/Argument "Argument"
[8]: https://en.wikipedia.org/wiki/Consequent "Consequent"
[9]: https://en.wikipedia.org/wiki/Premise "Premise"
[10]: https://en.wikipedia.org/wiki/Philosophical_analysis "Philosophical analysis"
[11]: https://en.wikipedia.org/wiki/Logical_consequence#cite_note-sep-1
[12]: https://en.wikipedia.org/wiki/Philosophical_logic "Philosophical logic"
[13]: https://en.wikipedia.org/wiki/Logical_truth "Logical truth"
[14]: https://en.wikipedia.org/wiki/Logical_consequence#cite_note-2
[15]: https://en.wikipedia.org/wiki/Logical_truth "Logical truth"
[16]: https://en.wikipedia.org/wiki/Formalism_(philosophy_of_mathematics) "Formalism (philosophy of mathematics)"
[17]: https://en.wikipedia.org/wiki/Formal_proof "Formal proof"
[18]: https://en.wikipedia.org/wiki/Interpretation_(logic) "Interpretation (logic)"
[19]: https://en.wikipedia.org/wiki/Logical_consequence#cite_note-sep-1
[20]: https://en.wikipedia.org/wiki/Formal_language "Formal language"
[21]: https://en.wikipedia.org/wiki/If_and_only_if "If and only if"
[22]: https://en.wikipedia.org/wiki/Logical_consequence#cite_note-iep-3
[23]: https://en.wikipedia.org/wiki/Formal_language "Formal language"
[24]: https://en.wikipedia.org/wiki/Deductive_system "Deductive system"
[25]: https://en.wikipedia.org/wiki/Intended_interpretation "Intended interpretation"
[26]: https://en.wikipedia.org/wiki/Alfred_Tarski "Alfred Tarski"
[27]: https://en.wikipedia.org/wiki/Logical_form "Logical form"
[28]: https://en.wikipedia.org/wiki/A_priori_and_a_posteriori "A priori and a posteriori"
[29]: https://en.wikipedia.org/wiki/Empirical_evidence "Empirical evidence"
[30]: https://en.wikipedia.org/wiki/Modal_logic "Modal logic"
[31]: https://en.wikipedia.org/wiki/Logical_consequence#cite_note-iep-3
[32]: https://en.wikipedia.org/w/index.php?title=Logical_consequence&action=edit&section=1 "Edit section: Formal accounts"
[33]: https://en.wikipedia.org/wiki/Logical_form "Logical form"
[34]: https://en.wikipedia.org/wiki/Schema_(logic) "Schema (logic)"
[35]: https://en.wikipedia.org/wiki/Inference_rule "Inference rule"
[36]: https://en.wikipedia.org/wiki/Substitution_(logic) "Substitution (logic)"
[37]: https://en.wikipedia.org/wiki/Material_conditional "Material conditional"
[38]: https://en.wikipedia.org/wiki/Logical_consequence#cite_note-sep-1
[39]: https://en.wikipedia.org/w/index.php?title=Logical_consequence&action=edit&section=2 "Edit section: A priori property of logical consequence"
[40]: https://en.wikipedia.org/wiki/A_priori_and_a_posteriori "A priori and a posteriori"
[41]: https://en.wikipedia.org/wiki/Logical_consequence#cite_note-sep-1
[42]: https://en.wikipedia.org/wiki/Logical_consequence#cite_note-sep-1
[43]: https://en.wikipedia.org/wiki/Logical_consequence#cite_note-sep-1
[44]: https://en.wikipedia.org/w/index.php?title=Logical_consequence&action=edit&section=3 "Edit section: Proofs and models"
[45]: https://en.wikipedia.org/wiki/Proof_theory "Proof theory"
[46]: https://en.wikipedia.org/wiki/Model_theory "Model theory"
[47]: https://en.wikipedia.org/wiki/Logical_consequence#cite_note-ChiaraDoets1996-4
[48]: https://en.wikipedia.org/w/index.php?title=Logical_consequence&action=edit&section=4 "Edit section: Syntactic consequence"
[49]: https://en.wikipedia.org/wiki/Therefore_sign "Therefore sign"
[50]: https://en.wikipedia.org/wiki/Turnstile_(symbol) "Turnstile (symbol)"
[51]: https://en.wikipedia.org/wiki/Logical_consequence#cite_note-5
[52]: https://en.wikipedia.org/wiki/Logical_consequence#cite_note-6
[53]: https://en.wikipedia.org/wiki/Logical_consequence#cite_note-7
[54]: https://en.wikipedia.org/wiki/Logical_consequence#cite_note-8
[55]: https://en.wikipedia.org/wiki/Formal_system "Formal system"
[56]: https://en.wikipedia.org/wiki/Formal_proof "Formal proof"
[57]: https://en.wikipedia.org/wiki/Interpretation_(logic) "Interpretation (logic)"
[58]: https://en.wikipedia.org/wiki/Logical_consequence#cite_note-9
[59]: https://en.wikipedia.org/w/index.php?title=Logical_consequence&action=edit&section=5 "Edit section: Semantic consequence"
[60]: https://en.wikipedia.org/wiki/Double_turnstile "Double turnstile"
[61]: https://en.wikipedia.org/wiki/Logical_consequence#cite_note-10
[62]: https://en.wikipedia.org/w/index.php?title=Logical_consequence&action=edit&section=6 "Edit section: Modal accounts"
[63]: https://en.wikipedia.org/wiki/Modal_logic "Modal logic"
[64]: https://en.wikipedia.org/wiki/Logical_truth "Logical truth"
[65]: https://en.wikipedia.org/wiki/Logical_possibility "Logical possibility"
[66]: https://en.wikipedia.org/wiki/Universal_quantification "Universal quantification"
[67]: https://en.wikipedia.org/wiki/Possible_world "Possible world"
[68]: https://en.wikipedia.org/w/index.php?title=Logical_consequence&action=edit&section=7 "Edit section: Modal-formal accounts"
[69]: https://en.wikipedia.org/w/index.php?title=Logical_consequence&action=edit&section=8 "Edit section: Warrant-based accounts"
[70]: https://en.wikipedia.org/wiki/Theory_of_justification "Theory of justification"
[71]: https://en.wikipedia.org/wiki/Intuitionist "Intuitionist"
[72]: https://en.wikipedia.org/wiki/Michael_Dummett "Michael Dummett"
[73]: https://en.wikipedia.org/w/index.php?title=Logical_consequence&action=edit&section=9 "Edit section: Non-monotonic logical consequence"
[74]: https://en.wikipedia.org/wiki/Monotonicity_of_entailment "Monotonicity of entailment"
[75]: https://en.wikipedia.org/w/index.php?title=Logical_consequence&action=edit&section=10 "Edit section: See also"
[76]: https://en.wikipedia.org/w/index.php?title=Logical_consequence&action=edit&section=11 "Edit section: Notes"
[77]: https://en.wikipedia.org/wiki/Logical_consequence#cite_ref-sep_1-0
[78]: https://en.wikipedia.org/wiki/Logical_consequence#cite_ref-sep_1-1
[79]: https://en.wikipedia.org/wiki/Logical_consequence#cite_ref-sep_1-2
[80]: https://en.wikipedia.org/wiki/Logical_consequence#cite_ref-sep_1-3
[81]: https://en.wikipedia.org/wiki/Logical_consequence#cite_ref-sep_1-4
[82]: https://en.wikipedia.org/wiki/Logical_consequence#cite_ref-sep_1-5
[83]: http://plato.stanford.edu/archives/fall2009/entries/logical-consequence/
[84]: https://en.wikipedia.org/wiki/Logical_consequence#cite_ref-2 "Jump up"
[85]: https://en.wikipedia.org/wiki/Willard_Van_Orman_Quine "Willard Van Orman Quine"
[86]: https://en.wikipedia.org/wiki/Logical_consequence#cite_ref-iep_3-0
[87]: https://en.wikipedia.org/wiki/Logical_consequence#cite_ref-iep_3-1
[88]: https://en.wikipedia.org/wiki/Matthew_W._McKeon "Matthew W. McKeon"
[89]: http://www.iep.utm.edu/logcon/
[90]: https://en.wikipedia.org/wiki/Logical_consequence#cite_ref-ChiaraDoets1996_4-0 "Jump up"
[91]: https://books.google.com/books?id=TCthvF8xLIAC&pg=PA292
[92]: https://en.wikipedia.org/wiki/Maria_Luisa_Dalla_Chiara "Maria Luisa Dalla Chiara"
[93]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[94]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-7923-4383-7 "Special:BookSources/978-0-7923-4383-7"
[95]: https://en.wikipedia.org/wiki/Logical_consequence#cite_ref-5 "Jump up"
[96]: https://en.wikipedia.org/wiki/Michael_Dummett "Michael Dummett"
[97]: https://books.google.com/books?id=EYP7uCZIRQYC&pg=PA82&lpg=PA82&dq=syntactic+consequence&source=bl&ots=Ms58438B6w&sig=FE38FCaZpRpAr18gtG7INX4wieM&hl=en&ei=qOy7SoLlEI7KsQPgnYG7BA&sa=X&oi=book_result&ct=result&resnum=6#v=onepage&q=syntactic%20consequence&f=false
[98]: https://en.wikipedia.org/wiki/Logical_consequence#cite_ref-6 "Jump up"
[99]: https://en.wikipedia.org/wiki/Jonathan_Lear "Jonathan Lear"
[100]: https://books.google.com/books?id=lXI7AAAAIAAJ&pg=PA1&lpg=PA1&dq=syntactic+consequence&source=bl&ots=8IYWyFYTN-&sig=wrOg75cFxQwn1Uq-8LShBNXf9w0&hl=en&ei=I-y7SpHtLZLotgOsnLHcBQ&sa=X&oi=book_result&ct=result&resnum=10#v=onepage&q=syntactic%20consequence&f=false
[101]: https://en.wikipedia.org/wiki/Logical_consequence#cite_ref-7 "Jump up"
[102]: https://en.wikipedia.org/wiki/Michael_Friedman_(philosopher) "Michael Friedman (philosopher)"
[103]: https://books.google.com/books?id=87BcFLgJmxMC&pg=PA189&lpg=PA189&dq=syntactic+consequence&source=bl&ots=Fn2zomcMZP&sig=8hnJWsJFysNhmWLskICo4IQDYAc&hl=en&ei=I-y7SpHtLZLotgOsnLHcBQ&sa=X&oi=book_result&ct=result&resnum=6#v=onepage&q=syntactic%20consequence&f=false
[104]: https://en.wikipedia.org/wiki/Logical_consequence#cite_ref-8 "Jump up"
[105]: http://www.swif.uniba.it/lei/foldop/foldoc.cgi?syntactic+consequence
[106]: https://web.archive.org/web/20130403201417/http://www.swif.uniba.it/lei/foldop/foldoc.cgi?syntactic+consequence
[107]: https://en.wikipedia.org/wiki/Wayback_Machine "Wayback Machine"
[108]: https://en.wikipedia.org/wiki/Logical_consequence#cite_ref-9 "Jump up"
[109]: https://en.wikipedia.org/wiki/Geoffrey_Hunter_(logician) "Geoffrey Hunter (logician)"
[110]: https://en.wikipedia.org/wiki/Logical_consequence#cite_ref-10 "Jump up"
[111]: https://en.wikipedia.org/wiki/John_Etchemendy "John Etchemendy"
[112]: https://en.wikipedia.org/w/index.php?title=Logical_consequence&action=edit&section=12 "Edit section: Resources"
[113]: http://www.collegepublications.co.uk/logic/mlf/?00029
[114]: https://en.wikipedia.org/wiki/Jon_Barwise "Jon Barwise"
[115]: https://en.wikipedia.org/wiki/John_Etchemendy "John Etchemendy"
[116]: https://en.wikipedia.org/wiki/Martin_Davis_(mathematician) "Martin Davis (mathematician)"
[117]: https://books.google.com/books?id=qW8x7sQ4JXgC&q=consequence
[118]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[119]: https://en.wikipedia.org/wiki/Special:BookSources/9780486432281 "Special:BookSources/9780486432281"
[120]: https://en.wikipedia.org/wiki/Category:CS1_maint:_extra_text:_authors_list "Category:CS1 maint: extra text: authors list"
[121]: https://en.wikipedia.org/wiki/G%C3%B6del "Gödel"
[122]: https://en.wikipedia.org/wiki/Alonzo_Church "Alonzo Church"
[123]: https://en.wikipedia.org/wiki/J._Barkley_Rosser "J. Barkley Rosser"
[124]: https://en.wikipedia.org/wiki/Kleene "Kleene"
[125]: https://en.wikipedia.org/wiki/Emil_Leon_Post "Emil Leon Post"
[126]: https://books.google.com/books?id=lvsVFxK3BPcC&q=consequence
[127]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[128]: https://en.wikipedia.org/wiki/Special:BookSources/9780674537866 "Special:BookSources/9780674537866"
[129]: http://plato.stanford.edu/entries/conditionals
[130]: https://en.wikipedia.org/wiki/Category:CS1_maint:_extra_text:_authors_list "Category:CS1 maint: extra text: authors list"
[131]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[132]: https://doi.org/10.2307%2F2998398
[133]: https://en.wikipedia.org/wiki/JSTOR_(identifier) "JSTOR (identifier)"
[134]: https://www.jstor.org/stable/2998398
[135]: https://en.wikipedia.org/wiki/Vincent_F._Hendricks "Vincent F. Hendricks"
[136]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[137]: https://en.wikipedia.org/wiki/Special:BookSources/978-87-991013-7-5 "Special:BookSources/978-87-991013-7-5"
[138]: https://en.wikipedia.org/wiki/W.V._Quine "W.V. Quine"
[139]: https://en.wikipedia.org/wiki/Stewart_Shapiro "Stewart Shapiro"
[140]: https://en.wikipedia.org/wiki/Alfred_Tarski "Alfred Tarski"
[141]: https://en.wikipedia.org/wiki/Oxford_University_Press "Oxford University Press"
[142]: https://en.wikipedia.org/wiki/Polish_language "Polish language"
[143]: https://en.wikipedia.org/wiki/German_language "German language"
[144]: https://archive.org/details/theoryoflogicalc0000wojc
[145]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[146]: https://en.wikipedia.org/wiki/Special:BookSources/978-90-277-2785-5 "Special:BookSources/978-90-277-2785-5"
[147]: http://www.math.niu.edu/~richard/Math101/implies.pdf
[148]: http://www.allwords.com/word-implicant.html
[149]: https://en.wikipedia.org/w/index.php?title=Logical_consequence&action=edit&section=13 "Edit section: External links"
[150]: https://en.wikipedia.org/wiki/Jc_Beall "Jc Beall"
[151]: https://en.wikipedia.org/wiki/Greg_Restall "Greg Restall"
[152]: https://plato.stanford.edu/entries/logical-consequence/
[153]: https://en.wikipedia.org/wiki/Edward_N._Zalta "Edward N. Zalta"
[154]: https://en.wikipedia.org/wiki/Stanford_Encyclopedia_of_Philosophy "Stanford Encyclopedia of Philosophy"
[155]: http://www.iep.utm.edu/logcon/
[156]: https://en.wikipedia.org/wiki/Internet_Encyclopedia_of_Philosophy "Internet Encyclopedia of Philosophy"
[157]: https://www.inphoproject.org/taxonomy/2409
[158]: https://en.wikipedia.org/wiki/Indiana_Philosophy_Ontology_Project "Indiana Philosophy Ontology Project"
[159]: https://philpapers.org/browse/logical-consequence-and-entailment
[160]: https://en.wikipedia.org/wiki/PhilPapers "PhilPapers"
[161]: https://www.encyclopediaofmath.org/index.php?title=Implication
[162]: https://en.wikipedia.org/wiki/Encyclopedia_of_Mathematics "Encyclopedia of Mathematics"
[163]: https://en.wikipedia.org/wiki/European_Mathematical_Society "European Mathematical Society"

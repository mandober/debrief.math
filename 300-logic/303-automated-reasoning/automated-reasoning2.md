# Automated reasoning

https://en.wikipedia.org/wiki/Automated_reasoning


In [computer science][1], in particular in [knowledge representation and reasoning][2] and [metalogic][3], the area of __automated reasoning__ is dedicated to understanding different aspects of [reasoning][4]. The study of automated reasoning helps produce [computer programs][5] that allow computers to reason completely, or nearly completely, automatically. Although automated reasoning is considered a sub-field of [artificial intelligence][6], it also has connections with [theoretical computer science][7] and [philosophy][8].

The most developed subareas of automated reasoning are [automated theorem proving][9] (and the less automated but more pragmatic subfield of [interactive theorem proving][10]) and [automated proof checking][11] (viewed as guaranteed correct reasoning under fixed assumptions).\[*[citation needed][12]*\] Extensive work has also been done in reasoning by [analogy][13] using [induction][14] and [abduction][15].[\[1\]][16]

Other important topics include reasoning under [uncertainty][17] and [non-monotonic][18] reasoning. An important part of the uncertainty field is that of argumentation, where further constraints of minimality and consistency are applied on top of the more standard automated deduction. John Pollock's OSCAR system[\[2\]][19] is an example of an automated argumentation system that is more specific than being just an automated theorem prover.

Tools and techniques of automated reasoning include the classical logics and calculi, [fuzzy logic][20], [Bayesian inference][21], reasoning with [maximal entropy][22] and many less formal *ad hoc* techniques.

## Early years\[[edit][23]\]

The development of [formal logic][24] played a big role in the field of automated reasoning, which itself led to the development of [artificial intelligence][25]. A [formal proof][26] is a proof in which every logical inference has been checked back to the fundamental [axioms][27] of mathematics. All the intermediate logical steps are supplied, without exception. No appeal is made to intuition, even if the translation from intuition to logic is routine. Thus, a formal proof is less intuitive and less susceptible to logical errors.[\[3\]][28]

Some consider the Cornell Summer meeting of 1957, which brought together many logicians and computer scientists, as the origin of automated reasoning, or [automated deduction][29].[\[4\]][30] Others say that it began before that with the 1955 [Logic Theorist][31] program of Newell, Shaw and Simon, or with Martin Davis' 1954 implementation of [Presburger's decision procedure][32] (which proved that the sum of two even numbers is even).[\[5\]][33]

Automated reasoning, although a significant and popular area of research, went through an "[AI winter][34]" in the eighties and early nineties. The field subsequently revived, however. For example, in 2005, [Microsoft][35] started using [verification technology][36] in many of their internal projects and is planning to include a logical specification and checking language in their 2012 version of Visual C.[\[4\]][37]

## Significant contributions\[[edit][38]\]

__[Principia Mathematica][39]__ was a milestone work in [formal logic][40] written by [Alfred North Whitehead][41] and [Bertrand Russell][42]. Principia Mathematica - also meaning [Principles of Mathematics][43] - was written with a purpose to derive all or some of the [mathematical expressions][44], in terms of [symbolic logic][45]. Principia Mathematica was initially published in three volumes in 1910, 1912 and 1913.[\[6\]][46]

__[Logic Theorist][47]__ (LT) was the first ever program developed in 1956 by [Allen Newell][48], [Cliff Shaw][49] and [Herbert A. Simon][50] to "mimic human reasoning" in proving theorems and was demonstrated on fifty-two theorems from chapter two of Principia Mathematica, proving thirty-eight of them.[\[7\]][51] In addition to proving the theorems, the program found a proof for one of the theorems that was more elegant than the one provided by Whitehead and Russell. After an unsuccessful attempt at publishing their results, Newell, Shaw, and Herbert reported in their publication in 1958, *The Next Advance in Operation Research*:

*"There are now in the world machines that think, that learn and that create. Moreover, their ability to do these things is going to increase rapidly until (in a visible future) the range of problems they can handle will be co- extensive with the range to which the human mind has been applied."[\[8\]][52]*

__Examples of Formal Proofs__

Year

Theorem

Proof System

Formalizer

Traditional Proof

1986

[First Incompleteness][53]

[Boyer-Moore][54]

Shankar[\[9\]][55]

[Gödel][56]

1990

[Quadratic Reciprocity][57]

[Boyer-Moore][58]

Russinoff[\[10\]][59]

[Eisenstein][60]

1996

[Fundamental- of Calculus][61]

[HOL Light][62]

Harrison

Henstock

2000

[Fundamental- of Algebra][63]

[Mizar][64]

Milewski

Brynski

2000

[Fundamental- of Algebra][65]

[Coq][66]

Geuvers et al.

Kneser

2004

[Four Color][67]

[Coq][68]

Gonthier

[Robertson][69] et al.

2004

[Prime Number][70]

[Isabelle][71]

Avigad et al.

[Selberg][72]\-[Erdős][73]

2005

[Jordan Curve][74]

[HOL Light][75]

Hales

Thomassen

2005

[Brouwer Fixed Point][76]

[HOL Light][77]

Harrison

Kuhn

2006

[Flyspeck 1][78]

[Isabelle][79]

Bauer- Nipkow

Hales

2007

[Cauchy Residue][80]

[HOL Light][81]

Harrison

Classical

2008

[Prime Number][82]

[HOL Light][83]

Harrison

Analytic proof

2012

[Feit-Thompson][84]

[Coq][85]

Gonthier et al.[\[11\]][86]

Bender, Glauberman and Peterfalvi

2016

[Boolean Pythagorean triples problem][87]

Formalized as [SAT][88]

Heule et al.[\[12\]][89]

None

## Proof systems\[[edit][90]\]

Boyer-Moore Theorem Prover (NQTHM)

The design of [NQTHM][91] was influenced by John McCarthy and Woody Bledsoe. Started in 1971 at Edinburgh, Scotland, this was a fully automatic theorem prover built using Pure [Lisp][92]. The main aspects of NQTHM were:

1.  the use of Lisp as a working logic.
2.  the reliance on a principle of definition for total recursive functions.
3.  the extensive use of rewriting and "symbolic evaluation".
4.  an induction heuristic based the failure of symbolic evaluation.[\[13\]][93]

HOL Light

Written in [OCaml][94], [HOL Light][95] is designed to have a simple and clean logical foundation and an uncluttered implementation. It is essentially another proof assistant for classical higher order logic.[\[14\]][96]

Coq

Developed in France, [Coq][97] is another automated proof assistant, which can automatically extract executable programs from specifications, as either Objective CAML or [Haskell][98] source code. Properties, programs and proofs are formalized in the same language called the Calculus of Inductive Constructions (CIC).[\[15\]][99]

## Applications\[[edit][100]\]

Automated reasoning has been most commonly used to build automated theorem provers. Oftentimes, however, theorem provers require some human guidance to be effective and so more generally qualify as [proof assistants][101]. In some cases such provers have come up with new approaches to proving a theorem. [Logic Theorist][102] is a good example of this. The program came up with a proof for one of the theorems in [Principia Mathematica][103] that was more efficient (requiring fewer steps) than the proof provided by Whitehead and Russell. Automated reasoning programs are being applied to solve a growing number of problems in formal logic, mathematics and computer science, [logic programming][104], software and hardware verification, [circuit design][105], and many others. The [TPTP][106] (Sutcliffe and Suttner 1998) is a library of such problems that is updated on a regular basis. There is also a competition among automated theorem provers held regularly at the [CADE][107] conference (Pelletier, Sutcliffe and Suttner 2002); the problems for the competition are selected from the TPTP library.[\[16\]][108]

## See also\[[edit][109]\]

-   [Automated machine learning][110] (AutoML)
-   [Automated theorem proving][111]
-   [Reasoning system][112]
-   [Semantic reasoner][113]
-   [Program analysis (computer science)][114]
-   [Applications of artificial intelligence][115]
-   [Outline of artificial intelligence][116]
-   [Casuistry][117] • [Case-based reasoning][118]
-   [Abductive reasoning][119]
-   [Inference engine][120]
-   [Commonsense reasoning][121]

### Conferences and workshops\[[edit][122]\]

-   [International Joint Conference on Automated Reasoning][123] (IJCAR)
-   [Conference on Automated Deduction][124] (CADE)
-   [International Conference on Automated Reasoning with Analytic Tableaux and Related Methods][125]

### Journals\[[edit][126]\]

-   *[Journal of Automated Reasoning][127]*

### Communities\[[edit][128]\]

-   [Association for Automated Reasoning][129] (AAR)

## References\[[edit][130]\]

1.  __[^][131]__ Defourneaux, Gilles, and Nicolas Peltier. "[Analogy and abduction in automated deduction][132]." IJCAI (1). 1997.
2.  __[^][133]__ [John L. Pollock][134]
3.  __[^][135]__ C. Hales, Thomas ["Formal Proof"][136], University of Pittsburgh. Retrieved on 2010-10-19
4.  ^ [*__a__*][137] [*__b__*][138] ["Automated Deduction (AD)"][139], *\[The Nature of PRL Project\]*. Retrieved on 2010-10-19
5.  __[^][140]__ Martin Davis (1983). "The Prehistory and Early History of Automated Deduction". In Jörg Siekmann; G. Wrightson (eds.). [*Automation of Reasoning (1) - Classical Papers on Computational Logic 1957-1966*][141]. Heidelberg: Springer. pp. 1-28. [ISBN][142] [978-3-642-81954-4][143]. Here: p.15
6.  __[^][144]__ ["Principia Mathematica"][145], at [Stanford University][146]. Retrieved 2010-10-19
7.  __[^][147]__ ["The Logic Theorist and its Children"][148]. Retrieved 2010-10-18
8.  __[^][149]__ Shankar, Natarajan *[Little Engines of Proof][150]*, Computer Science Laboratory, [SRI International][151]. Retrieved 2010-10-19
9.  __[^][152]__ Shankar, N. (1994), [*Metamathematics, Machines, and Gödel's Proof*][153], Cambridge, UK: Cambridge University Press, [ISBN][154] [9780521585330][155]
10.  __[^][156]__ Russinoff, David M. (1992), "A Mechanical Proof of Quadratic Reciprocity", *J. Autom. Reason.*, __8__ (1): 3-21, [doi][157]:[10.1007/BF00263446][158]
11.  __[^][159]__ Gonthier, G.; et al. (2013), ["A Machine-Checked Proof of the Odd Order Theorem"][160] (PDF), in Blazy, S.; Paulin-Mohring, C.; Pichardie, D. (eds.), *Interactive Theorem Proving*, Lecture Notes in Computer Science, __7998__, pp. 163-179, [doi][161]:[10.1007/978-3-642-39634-2\_14][162], [ISBN][163] [978-3-642-39633-5][164]
12.  __[^][165]__ [Heule, Marijn J. H.][166]; Kullmann, Oliver; Marek, Victor W. (2016). "Solving and Verifying the Boolean Pythagorean Triples Problem via Cube-and-Conquer". *Theory and Applications of Satisfiability Testing - SAT 2016*. Lecture Notes in Computer Science. __9710__. pp. 228-245. [arXiv][167]:[1605.00723][168]. [doi][169]:[10.1007/978-3-319-40970-2\_15][170]. [ISBN][171] [978-3-319-40969-6][172].
13.  __[^][173]__ *[The Boyer- Moore Theorem Prover][174]*. Retrieved on 2010-10-23
14.  __[^][175]__ Harrison, John *[HOL Light: an overview][176]*. Retrieved 2010-10-23
15.  __[^][177]__ *[Introduction to Coq][178]*. Retrieved 2010-10-23
16.  __[^][179]__ *[Automated Reasoning][180]*, [Stanford Encyclopedia][181]. Retrieved 2010-10-10

## External links\[[edit][182]\]

-   [International Workshop on the Implementation of Logics][183]
-   [Workshop Series on Empirically Successful Topics in Automated Reasoning][184]

[1]: https://en.wikipedia.org/wiki/Computer_science "Computer science"
[2]: https://en.wikipedia.org/wiki/Knowledge_representation_and_reasoning "Knowledge representation and reasoning"
[3]: https://en.wikipedia.org/wiki/Metalogic "Metalogic"
[4]: https://en.wikipedia.org/wiki/Reasoning "Reasoning"
[5]: https://en.wikipedia.org/wiki/Computer_programs "Computer programs"
[6]: https://en.wikipedia.org/wiki/Artificial_intelligence "Artificial intelligence"
[7]: https://en.wikipedia.org/wiki/Theoretical_computer_science "Theoretical computer science"
[8]: https://en.wikipedia.org/wiki/Philosophy "Philosophy"
[9]: https://en.wikipedia.org/wiki/Automated_theorem_proving "Automated theorem proving"
[10]: https://en.wikipedia.org/wiki/Interactive_theorem_proving "Interactive theorem proving"
[11]: https://en.wikipedia.org/wiki/Automated_proof_checking "Automated proof checking"
[12]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[13]: https://en.wikipedia.org/wiki/Analogy "Analogy"
[14]: https://en.wikipedia.org/wiki/Inductive_reasoning "Inductive reasoning"
[15]: https://en.wikipedia.org/wiki/Abductive_reasoning "Abductive reasoning"
[16]: https://en.wikipedia.org/wiki/Automated_reasoning#cite_note-1
[17]: https://en.wikipedia.org/wiki/Uncertainty "Uncertainty"
[18]: https://en.wikipedia.org/wiki/Non-monotonic_logic "Non-monotonic logic"
[19]: https://en.wikipedia.org/wiki/Automated_reasoning#cite_note-2
[20]: https://en.wikipedia.org/wiki/Fuzzy_logic "Fuzzy logic"
[21]: https://en.wikipedia.org/wiki/Bayesian_inference "Bayesian inference"
[22]: https://en.wikipedia.org/wiki/Principle_of_maximum_entropy "Principle of maximum entropy"
[23]: https://en.wikipedia.org/w/index.php?title=Automated_reasoning&action=edit&section=1 "Edit section: Early years"
[24]: https://en.wikipedia.org/wiki/Formal_logic "Formal logic"
[25]: https://en.wikipedia.org/wiki/Artificial_intelligence "Artificial intelligence"
[26]: https://en.wikipedia.org/wiki/Formal_proof "Formal proof"
[27]: https://en.wikipedia.org/wiki/Axioms "Axioms"
[28]: https://en.wikipedia.org/wiki/Automated_reasoning#cite_note-3
[29]: https://en.wikipedia.org/wiki/Automated_deduction "Automated deduction"
[30]: https://en.wikipedia.org/wiki/Automated_reasoning#cite_note-cornell-4
[31]: https://en.wikipedia.org/wiki/Logic_Theorist "Logic Theorist"
[32]: https://en.wikipedia.org/wiki/Presburger_arithmetic "Presburger arithmetic"
[33]: https://en.wikipedia.org/wiki/Automated_reasoning#cite_note-5
[34]: https://en.wikipedia.org/wiki/AI_winter "AI winter"
[35]: https://en.wikipedia.org/wiki/Microsoft "Microsoft"
[36]: https://en.wikipedia.org/wiki/Software_verification "Software verification"
[37]: https://en.wikipedia.org/wiki/Automated_reasoning#cite_note-cornell-4
[38]: https://en.wikipedia.org/w/index.php?title=Automated_reasoning&action=edit&section=2 "Edit section: Significant contributions"
[39]: https://en.wikipedia.org/wiki/Principia_Mathematica "Principia Mathematica"
[40]: https://en.wikipedia.org/wiki/Formal_logic "Formal logic"
[41]: https://en.wikipedia.org/wiki/Alfred_North_Whitehead "Alfred North Whitehead"
[42]: https://en.wikipedia.org/wiki/Bertrand_Russell "Bertrand Russell"
[43]: https://en.wikipedia.org/wiki/Principles_of_Mathematics "Principles of Mathematics"
[44]: https://en.wikipedia.org/wiki/Mathematical_expression "Mathematical expression"
[45]: https://en.wikipedia.org/wiki/Symbolic_logic "Symbolic logic"
[46]: https://en.wikipedia.org/wiki/Automated_reasoning#cite_note-6
[47]: https://en.wikipedia.org/wiki/Logic_Theorist "Logic Theorist"
[48]: https://en.wikipedia.org/wiki/Allen_Newell "Allen Newell"
[49]: https://en.wikipedia.org/wiki/Cliff_Shaw "Cliff Shaw"
[50]: https://en.wikipedia.org/wiki/Herbert_A._Simon "Herbert A. Simon"
[51]: https://en.wikipedia.org/wiki/Automated_reasoning#cite_note-7
[52]: https://en.wikipedia.org/wiki/Automated_reasoning#cite_note-8
[53]: https://en.wikipedia.org/wiki/Incompleteness_theorem#First_incompleteness_theorem "Incompleteness theorem"
[54]: https://en.wikipedia.org/wiki/Boyer-Moore_theorem_prover "Boyer-Moore theorem prover"
[55]: https://en.wikipedia.org/wiki/Automated_reasoning#cite_note-Shankar1994-9
[56]: https://en.wikipedia.org/wiki/G%C3%B6del "Gödel"
[57]: https://en.wikipedia.org/wiki/Quadratic_Reciprocity "Quadratic Reciprocity"
[58]: https://en.wikipedia.org/wiki/Boyer-Moore_theorem_prover "Boyer-Moore theorem prover"
[59]: https://en.wikipedia.org/wiki/Automated_reasoning#cite_note-Russinoff1992-10
[60]: https://en.wikipedia.org/wiki/Gotthold_Eisenstein "Gotthold Eisenstein"
[61]: https://en.wikipedia.org/wiki/Fundamental_theorem_of_calculus "Fundamental theorem of calculus"
[62]: https://en.wikipedia.org/wiki/HOL_Light "HOL Light"
[63]: https://en.wikipedia.org/wiki/Fundamental_theorem_of_algebra "Fundamental theorem of algebra"
[64]: https://en.wikipedia.org/wiki/Mizar_system "Mizar system"
[65]: https://en.wikipedia.org/wiki/Fundamental_theorem_of_algebra "Fundamental theorem of algebra"
[66]: https://en.wikipedia.org/wiki/Coq "Coq"
[67]: https://en.wikipedia.org/wiki/Four_color_theorem "Four color theorem"
[68]: https://en.wikipedia.org/wiki/Coq "Coq"
[69]: https://en.wikipedia.org/wiki/Neil_Robertson_(mathematician) "Neil Robertson (mathematician)"
[70]: https://en.wikipedia.org/wiki/Prime_number_theorem "Prime number theorem"
[71]: https://en.wikipedia.org/wiki/Isabelle_(proof_assistant) "Isabelle (proof assistant)"
[72]: https://en.wikipedia.org/wiki/Atle_Selberg "Atle Selberg"
[73]: https://en.wikipedia.org/wiki/Paul_Erd%C5%91s "Paul Erdős"
[74]: https://en.wikipedia.org/wiki/Jordan_curve_theorem "Jordan curve theorem"
[75]: https://en.wikipedia.org/wiki/HOL_Light "HOL Light"
[76]: https://en.wikipedia.org/wiki/Brouwer_fixed-point_theorem "Brouwer fixed-point theorem"
[77]: https://en.wikipedia.org/wiki/HOL_Light "HOL Light"
[78]: https://en.wikipedia.org/wiki/Kepler_conjecture#A_formal_proof "Kepler conjecture"
[79]: https://en.wikipedia.org/wiki/Isabelle_(proof_assistant) "Isabelle (proof assistant)"
[80]: https://en.wikipedia.org/wiki/Cauchy_residue_theorem "Cauchy residue theorem"
[81]: https://en.wikipedia.org/wiki/HOL_Light "HOL Light"
[82]: https://en.wikipedia.org/wiki/Prime_number_theorem "Prime number theorem"
[83]: https://en.wikipedia.org/wiki/HOL_Light "HOL Light"
[84]: https://en.wikipedia.org/wiki/Feit-Thompson_theorem "Feit-Thompson theorem"
[85]: https://en.wikipedia.org/wiki/Coq "Coq"
[86]: https://en.wikipedia.org/wiki/Automated_reasoning#cite_note-Gonthier2013-11
[87]: https://en.wikipedia.org/wiki/Boolean_Pythagorean_triples_problem "Boolean Pythagorean triples problem"
[88]: https://en.wikipedia.org/wiki/Boolean_satisfiability_problem "Boolean satisfiability problem"
[89]: https://en.wikipedia.org/wiki/Automated_reasoning#cite_note-Heule2016-12
[90]: https://en.wikipedia.org/w/index.php?title=Automated_reasoning&action=edit&section=3 "Edit section: Proof systems"
[91]: https://en.wikipedia.org/wiki/Nqthm "Nqthm"
[92]: https://en.wikipedia.org/wiki/Lisp_(programming_language) "Lisp (programming language)"
[93]: https://en.wikipedia.org/wiki/Automated_reasoning#cite_note-13
[94]: https://en.wikipedia.org/wiki/OCaml "OCaml"
[95]: https://en.wikipedia.org/wiki/HOL_Light "HOL Light"
[96]: https://en.wikipedia.org/wiki/Automated_reasoning#cite_note-14
[97]: https://en.wikipedia.org/wiki/Coq "Coq"
[98]: https://en.wikipedia.org/wiki/Haskell_(programming_language) "Haskell (programming language)"
[99]: https://en.wikipedia.org/wiki/Automated_reasoning#cite_note-15
[100]: https://en.wikipedia.org/w/index.php?title=Automated_reasoning&action=edit&section=4 "Edit section: Applications"
[101]: https://en.wikipedia.org/wiki/Proof_assistant "Proof assistant"
[102]: https://en.wikipedia.org/wiki/Logic_Theorist "Logic Theorist"
[103]: https://en.wikipedia.org/wiki/Principia_Mathematica "Principia Mathematica"
[104]: https://en.wikipedia.org/wiki/Logic_programming "Logic programming"
[105]: https://en.wikipedia.org/wiki/Circuit_design "Circuit design"
[106]: https://en.wikipedia.org/wiki/Automated_theorem_proving "Automated theorem proving"
[107]: https://en.wikipedia.org/wiki/Conference_on_Automated_Deduction "Conference on Automated Deduction"
[108]: https://en.wikipedia.org/wiki/Automated_reasoning#cite_note-Stanford_Encyclopedia-16
[109]: https://en.wikipedia.org/w/index.php?title=Automated_reasoning&action=edit&section=5 "Edit section: See also"
[110]: https://en.wikipedia.org/wiki/Automated_machine_learning "Automated machine learning"
[111]: https://en.wikipedia.org/wiki/Automated_theorem_proving "Automated theorem proving"
[112]: https://en.wikipedia.org/wiki/Reasoning_system "Reasoning system"
[113]: https://en.wikipedia.org/wiki/Semantic_reasoner "Semantic reasoner"
[114]: https://en.wikipedia.org/wiki/Program_analysis_(computer_science) "Program analysis (computer science)"
[115]: https://en.wikipedia.org/wiki/Applications_of_artificial_intelligence "Applications of artificial intelligence"
[116]: https://en.wikipedia.org/wiki/Outline_of_artificial_intelligence "Outline of artificial intelligence"
[117]: https://en.wikipedia.org/wiki/Casuistry "Casuistry"
[118]: https://en.wikipedia.org/wiki/Case-based_reasoning "Case-based reasoning"
[119]: https://en.wikipedia.org/wiki/Abductive_reasoning "Abductive reasoning"
[120]: https://en.wikipedia.org/wiki/Inference_engine "Inference engine"
[121]: https://en.wikipedia.org/wiki/Commonsense_reasoning "Commonsense reasoning"
[122]: https://en.wikipedia.org/w/index.php?title=Automated_reasoning&action=edit&section=6 "Edit section: Conferences and workshops"
[123]: https://en.wikipedia.org/wiki/International_Joint_Conference_on_Automated_Reasoning "International Joint Conference on Automated Reasoning"
[124]: https://en.wikipedia.org/wiki/Conference_on_Automated_Deduction "Conference on Automated Deduction"
[125]: https://en.wikipedia.org/wiki/International_Conference_on_Automated_Reasoning_with_Analytic_Tableaux_and_Related_Methods "International Conference on Automated Reasoning with Analytic Tableaux and Related Methods"
[126]: https://en.wikipedia.org/w/index.php?title=Automated_reasoning&action=edit&section=7 "Edit section: Journals"
[127]: https://en.wikipedia.org/wiki/Journal_of_Automated_Reasoning "Journal of Automated Reasoning"
[128]: https://en.wikipedia.org/w/index.php?title=Automated_reasoning&action=edit&section=8 "Edit section: Communities"
[129]: https://en.wikipedia.org/wiki/Association_for_Automated_Reasoning "Association for Automated Reasoning"
[130]: https://en.wikipedia.org/w/index.php?title=Automated_reasoning&action=edit&section=9 "Edit section: References"
[131]: https://en.wikipedia.org/wiki/Automated_reasoning#cite_ref-1
[132]: http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.81.501&rep=rep1&type=pdf
[133]: https://en.wikipedia.org/wiki/Automated_reasoning#cite_ref-2
[134]: https://en.wikipedia.org/wiki/John_L._Pollock "John L. Pollock"
[135]: https://en.wikipedia.org/wiki/Automated_reasoning#cite_ref-3
[136]: https://www.ams.org/notices/200811/tx081101370p.pdf
[137]: https://en.wikipedia.org/wiki/Automated_reasoning#cite_ref-cornell_4-0
[138]: https://en.wikipedia.org/wiki/Automated_reasoning#cite_ref-cornell_4-1
[139]: http://www.cs.cornell.edu/info/projects/nuprl/Intro/AutoDeduction/autoded.html
[140]: https://en.wikipedia.org/wiki/Automated_reasoning#cite_ref-5
[141]: https://www.springer.com/gp/book/9783642819544
[142]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[143]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-642-81954-4 "Special:BookSources/978-3-642-81954-4"
[144]: https://en.wikipedia.org/wiki/Automated_reasoning#cite_ref-6
[145]: http://plato.stanford.edu/entries/principia-mathematica/
[146]: https://en.wikipedia.org/wiki/Stanford_University "Stanford University"
[147]: https://en.wikipedia.org/wiki/Automated_reasoning#cite_ref-7
[148]: http://www.cs.swarthmore.edu/~eroberts/cs91/projects/ethics-of-ai/sec1_2.html
[149]: https://en.wikipedia.org/wiki/Automated_reasoning#cite_ref-8
[150]: http://www.csl.sri.com/~shankar/
[151]: https://en.wikipedia.org/wiki/SRI_International "SRI International"
[152]: https://en.wikipedia.org/wiki/Automated_reasoning#cite_ref-Shankar1994_9-0
[153]: https://books.google.com/books?id=JmEXH9TllNcC
[154]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[155]: https://en.wikipedia.org/wiki/Special:BookSources/9780521585330 "Special:BookSources/9780521585330"
[156]: https://en.wikipedia.org/wiki/Automated_reasoning#cite_ref-Russinoff1992_10-0
[157]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[158]: https://doi.org/10.1007%2FBF00263446
[159]: https://en.wikipedia.org/wiki/Automated_reasoning#cite_ref-Gonthier2013_11-0
[160]: http://www.cs.unibo.it/~asperti/PAPERS/odd_order.pdf
[161]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[162]: https://doi.org/10.1007%2F978-3-642-39634-2_14
[163]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[164]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-642-39633-5 "Special:BookSources/978-3-642-39633-5"
[165]: https://en.wikipedia.org/wiki/Automated_reasoning#cite_ref-Heule2016_12-0
[166]: https://en.wikipedia.org/wiki/Marijn_Heule "Marijn Heule"
[167]: https://en.wikipedia.org/wiki/ArXiv_(identifier) "ArXiv (identifier)"
[168]: https://arxiv.org/abs/1605.00723
[169]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[170]: https://doi.org/10.1007%2F978-3-319-40970-2_15
[171]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[172]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-319-40969-6 "Special:BookSources/978-3-319-40969-6"
[173]: https://en.wikipedia.org/wiki/Automated_reasoning#cite_ref-13
[174]: http://www.cs.utexas.edu/~moore/best-ideas/nqthm/index.html
[175]: https://en.wikipedia.org/wiki/Automated_reasoning#cite_ref-14
[176]: http://www.cl.cam.ac.uk/~jrh13/slides/tphols-18aug09/slides.pdf
[177]: https://en.wikipedia.org/wiki/Automated_reasoning#cite_ref-15
[178]: http://coq.inria.fr/a-short-introduction-to-coq
[179]: https://en.wikipedia.org/wiki/Automated_reasoning#cite_ref-Stanford_Encyclopedia_16-0
[180]: http://plato.stanford.edu/entries/reasoning-automated/
[181]: https://en.wikipedia.org/wiki/Stanford_Encyclopedia "Stanford Encyclopedia"
[182]: https://en.wikipedia.org/w/index.php?title=Automated_reasoning&action=edit&section=10 "Edit section: External links"
[183]: https://web.archive.org/web/20090310081227/http://www.csc.liv.ac.uk/~konev/iwil2008/
[184]: https://web.archive.org/web/20100206221517/http://www.eprover.org/EVENTS/es_series.html

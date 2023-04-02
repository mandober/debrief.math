---
downloaded:       2021-12-18
page-url:         https://en.wikipedia.org/wiki/Automated_theorem_proving
page-title:       Automated theorem proving - Wikipedia
---
# Automated theorem proving - Wikipedia

Automated theorem proving (also known as ATP or automated deduction) is a subfield of automated reasoning and mathematical logic dealing with proving mathematical theorems by computer programs.  Automated reasoning over mathematical proof was a major impetus for the development of computer science.
__Automated theorem proving__ (also known as __ATP__ or __automated deduction__) is a subfield of [automated reasoning][1] and [mathematical logic][2] dealing with proving [mathematical theorems][3] by [computer programs][4]. Automated reasoning over [mathematical proof][5] was a major impetus for the development of [computer science][6].

## Logical foundations\[[edit][7]\]

While the roots of formalised [logic][8] go back to [Aristotle][9], the end of the 19th and early 20th centuries saw the development of modern logic and formalised mathematics. [Frege][10]'s *[Begriffsschrift][11]* (1879) introduced both a complete [propositional calculus][12] and what is essentially modern [predicate logic][13].[\[1\]][14] His *[Foundations of Arithmetic][15]*, published 1884,[\[2\]][16] expressed (parts of) mathematics in formal logic. This approach was continued by [Russell][17] and [Whitehead][18] in their influential *[Principia Mathematica][19]*, first published 1910-1913,[\[3\]][20] and with a revised second edition in 1927.[\[4\]][21] Russell and Whitehead thought they could derive all mathematical truth using axioms and inference rules of formal logic, in principle opening up the process to automatisation. In 1920, [Thoralf Skolem][22] simplified a previous result by [Leopold Löwenheim][23], leading to the [Löwenheim-Skolem theorem][24] and, in 1930, to the notion of a [Herbrand universe][25] and a [Herbrand interpretation][26] that allowed (un)satisfiability of first-order formulas (and hence the [validity][27] of a theorem) to be reduced to (potentially infinitely many) propositional satisfiability problems.[\[5\]][28]

In 1929, [Mojżesz Presburger][29] showed that the theory of [natural numbers][30] with addition and equality (now called [Presburger arithmetic][31] in his honor) is [decidable][32] and gave an algorithm that could determine if a given sentence in the language was true or false.[\[6\]][33][\[7\]][34] However, shortly after this positive result, [Kurt Gödel][35] published *[On Formally Undecidable Propositions of Principia Mathematica and Related Systems][36]* (1931), showing that in any sufficiently strong axiomatic system there are true statements which cannot be proved in the system. This topic was further developed in the 1930s by [Alonzo Church][37] and [Alan Turing][38], who on the one hand gave two independent but equivalent definitions of [computability][39], and on the other gave concrete examples for undecidable questions.

## First implementations\[[edit][40]\]

Shortly after [World War II][41], the first general purpose computers became available. In 1954, [Martin Davis][42] programmed Presburger's algorithm for a [JOHNNIAC][43] vacuum tube computer at the [Institute for Advanced Study][44] in Princeton, New Jersey. According to Davis, "Its great triumph was to prove that the sum of two even numbers is even".[\[7\]][45][\[8\]][46] More ambitious was the [Logic Theory Machine][47] in 1956, a deduction system for the [propositional logic][48] of the *Principia Mathematica*, developed by [Allen Newell][49], [Herbert A. Simon][50] and [J. C. Shaw][51]. Also running on a JOHNNIAC, the Logic Theory Machine constructed proofs from a small set of propositional axioms and three deduction rules: [modus ponens][52], (propositional) variable substitution, and the replacement of formulas by their definition. The system used heuristic guidance, and managed to prove 38 of the first 52 theorems of the *Principia*.[\[7\]][53]

The "heuristic" approach of the Logic Theory Machine tried to emulate human mathematicians, and could not guarantee that a proof could be found for every valid theorem even in principle. In contrast, other, more systematic algorithms achieved, at least theoretically, [completeness][54] for first-order logic. Initial approaches relied on the results of Herbrand and Skolem to convert a first-order formula into successively larger sets of [propositional formulae][55] by instantiating variables with terms from the [Herbrand universe][56]. The propositional formulas could then be checked for unsatisfiability using a number of methods. Gilmore's program used conversion to [disjunctive normal form][57], a form in which the satisfiability of a formula is obvious.[\[7\]][58][\[9\]][59]

## Decidability of the problem\[[edit][60]\]

Depending on the underlying logic, the problem of deciding the validity of a formula varies from trivial to impossible. For the frequent case of [propositional logic][61], the problem is decidable but [co-NP-complete][62], and hence only exponential-time algorithms are believed to exist for general proof tasks. For a [first order predicate calculus][63], [Gödel's completeness theorem][64] states that the theorems (provable statements) are exactly the logically valid [well-formed formulas][65], so identifying valid formulas is [recursively enumerable][66]: given unbounded resources, any valid formula can eventually be proven. However, *invalid* formulas (those that are *not* entailed by a given theory), cannot always be recognized.

The above applies to first order theories, such as [Peano arithmetic][67]. However, for a specific model that may be described by a first order theory, some statements may be true but undecidable in the theory used to describe the model. For example, by [Gödel's incompleteness theorem][68], we know that any theory whose proper axioms are true for the natural numbers cannot prove all first order statements true for the natural numbers, even if the list of proper axioms is allowed to be infinite enumerable. It follows that an automated theorem prover will fail to terminate while searching for a proof precisely when the statement being investigated is undecidable in the theory being used, even if it is true in the model of interest. Despite this theoretical limit, in practice, theorem provers can solve many hard problems, even in models that are not fully described by any first order theory (such as the integers).

## \[[edit][69]\]

A simpler, but related, problem is *[proof verification][70]*, where an existing proof for a theorem is certified valid. For this, it is generally required that each individual proof step can be verified by a [primitive recursive function][71] or program, and hence the problem is always decidable.

Since the proofs generated by automated theorem provers are typically very large, the problem of [proof compression][72] is crucial and various techniques aiming at making the prover's output smaller, and consequently more easily understandable and checkable, have been developed.

[Proof assistants][73] require a human user to give hints to the system. Depending on the degree of automation, the prover can essentially be reduced to a proof checker, with the user providing the proof in a formal way, or significant proof tasks can be performed automatically. Interactive provers are used for a variety of tasks, but even fully automatic systems have proved a number of interesting and hard theorems, including at least one that has eluded human mathematicians for a long time, namely the [Robbins conjecture][74].[\[10\]][75][\[11\]][76] However, these successes are sporadic, and work on hard problems usually requires a proficient user.

Another distinction is sometimes drawn between theorem proving and other techniques, where a process is considered to be theorem proving if it consists of a traditional proof, starting with axioms and producing new inference steps using rules of inference. Other techniques would include [model checking][77], which, in the simplest case, involves brute-force enumeration of many possible states (although the actual implementation of model checkers requires much cleverness, and does not simply reduce to brute force).

There are hybrid theorem proving systems which use model checking as an inference rule. There are also programs which were written to prove a particular theorem, with a (usually informal) proof that if the program finishes with a certain result, then the theorem is true. A good example of this was the machine-aided proof of the [four color theorem][78], which was very controversial as the first claimed mathematical proof which was essentially impossible to verify by humans due to the enormous size of the program's calculation (such proofs are called [non-surveyable proofs][79]). Another example of a program-assisted proof is the one that shows that the game of [Connect Four][80] can always be won by the first player.

## Industrial uses\[[edit][81]\]

Commercial use of automated theorem proving is mostly concentrated in [integrated circuit design][82] and verification. Since the [Pentium FDIV bug][83], the complicated [floating point units][84] of modern microprocessors have been designed with extra scrutiny. [AMD][85], [Intel][86] and others use automated theorem proving to verify that division and other operations are correctly implemented in their processors.

## First-order theorem proving\[[edit][87]\]

In the late 1960s agencies funding research in automated deduction began to emphasize the need for practical applications. One of the first fruitful areas was that of [program verification][88] whereby first-order theorem provers were applied to the problem of verifying the correctness of computer programs in languages such as Pascal, Ada, etc. Notable among early program verification systems was the Stanford Pascal Verifier developed by [David Luckham][89] at [Stanford University][90].[\[12\]][91][\[13\]][92][\[14\]][93] This was based on the Stanford Resolution Prover also developed at Stanford using [John Alan Robinson][94]'s [resolution][95] principle. This was the first automated deduction system to demonstrate an ability to solve mathematical problems that were announced in the Notices of the American Mathematical Society before solutions were formally published.\[*[citation needed][96]*\]

[First-order][97] theorem proving is one of the most mature subfields of automated theorem proving. The logic is expressive enough to allow the specification of arbitrary problems, often in a reasonably natural and intuitive way. On the other hand, it is still semi-decidable, and a number of sound and complete calculi have been developed, enabling *fully* automated systems.[\[15\]][98] More expressive logics, such as [Higher-order logics][99], allow the convenient expression of a wider range of problems than first order logic, but theorem proving for these logics is less well developed.[\[16\]][100][\[17\]][101]

## Benchmarks, competitions, and sources\[[edit][102]\]

The quality of implemented systems has benefited from the existence of a large library of standard benchmark examples - the Thousands of Problems for Theorem Provers (TPTP) Problem Library[\[18\]][103] - as well as from the [CADE ATP System Competition][104] (CASC), a yearly competition of first-order systems for many important classes of first-order problems.

Some important systems (all have won at least one CASC competition division) are listed below.

-   [E][105] is a high-performance prover for full first-order logic, but built on a [purely equational calculus][106], originally developed in the automated reasoning group of [Technical University of Munich][107] under the direction of [Wolfgang Bibel][108], and now at [Baden-Württemberg Cooperative State University][109] in [Stuttgart][110].
-   [Otter][111], developed at the [Argonne National Laboratory][112], is based on [first-order resolution][113] and [paramodulation][114]. Otter has since been replaced by [Prover9][115], which is paired with [Mace4][116].
-   [SETHEO][117] is a high-performance system based on the goal-directed [model elimination][118] calculus, originally developed by a team under direction of [Wolfgang Bibel][119]. E and SETHEO have been combined (with other systems) in the composite theorem prover E-SETHEO.
-   [Vampire][120] was originally developed and implemented at [Manchester University][121] by Andrei Voronkov and Krystof Hoder. It is now developed by a growing international team. It has won the FOF division (among other divisions) at the CADE ATP System Competition regularly since 2001.
-   Waldmeister is a specialized system for unit-equational first-order logic developed by Arnim Buch and Thomas Hillenbrand. It won the CASC UEQ division for fourteen consecutive years (1997-2010).
-   [SPASS][122] is a first order logic theorem prover with equality. This is developed by the research group Automation of Logic, [Max Planck Institute for Computer Science][123].

The [Theorem Prover Museum][124] is an initiative to conserve the sources of theorem prover systems for future analysis, since they are important cultural/scientific artefacts. It has the sources of many of the systems mentioned above.

## Popular techniques\[[edit][125]\]

-   [First-order resolution][126] with [unification][127]
-   [Model elimination][128]
-   [Method of analytic tableaux][129]
-   [Superposition][130] and term [rewriting][131]
-   [Model checking][132]
-   [Mathematical induction][133][\[19\]][134]
-   [Binary decision diagrams][135]
-   [DPLL][136]
-   [Higher-order unification][137]

## Software systems\[[edit][138]\]

Comparison

Name

License type

Web service

Library

Standalone

Last update ([YYYY-mm-dd format][139])

[ACL2][140]

[3-clause BSD][141]

No

No

Yes

May 2019

[Prover9/Otter][142]

Public Domain

Via [System on TPTP][143]

Yes

No

2009

[Jape][144]

[GPLv2][145]

Yes

Yes

No

May 15, 2015

[PVS][146]

[GPLv2][147]

No

Yes

No

January 14, 2013

Leo II

[BSD License][148]

Via [System on TPTP][149]

Yes

Yes

2013

[EQP][150]

?

No

Yes

No

May 2009

SAD

[GPLv3][151]

Yes

Yes

No

August 27, 2008

[PhoX][152]

?

No

Yes

No

September 28, 2017

KeYmaera

GPL

Via [Java Webstart][153]

Yes

Yes

March 11, 2015

Gandalf

?

No

Yes

No

2009

[E][154]

[GPL][155]

Via [System on TPTP][156]

No

Yes

July 4, 2017

[SNARK][157]

[Mozilla Public License 1.1][158]

No

Yes

No

2012

[Vampire][159]

[Vampire License][160]

Via [System on TPTP][161]

Yes

Yes

December 14, 2017

[Theorem Proving System][162] (TPS)

[TPS Distribution Agreement][163]

No

Yes

No

February 4, 2012

[SPASS][164]

[FreeBSD license][165]

Yes

Yes

Yes

November 2005

[IsaPlanner][166]

[GPL][167]

No

Yes

Yes

2007

[KeY][168]

[GPL][169]

Yes

Yes

Yes

October 11, 2017

Princess

[lgpl v2.1][170]

Via [Java Webstart][171] and [System on TPTP][172]

Yes

Yes

January 27, 2018

iProver

[GPL][173]

Via [System on TPTP][174]

No

Yes

2018

Meta Theorem

[Freeware][175]

No

No

Yes

April 2020

[Z3 Theorem Prover][176]

[MIT License][177]

Yes

Yes

Yes

November 19, 2019

### Free software\[[edit][178]\]

-   [Alt-Ergo][179]
-   [Automath][180]
-   [CVC][181]
-   [E][182]
-   [GKC][183]
-   [Gödel machine][184]
-   iProver
-   [IsaPlanner][185]
-   [KED theorem prover][186][\[20\]][187]
-   [leanCoP][188][\[21\]][189]
-   [Leo II][190]
-   [LCF][191]
-   [Logictools][192] online theorem prover
-   [LoTREC][193][\[22\]][194]
-   [MetaPRL][195][\[23\]][196]
-   [Mizar][197]
-   [NuPRL][198]
-   [Paradox][199]
-   [Prover9][200]
-   [Simplify][201]
-   [SPARK (programming language)][202]
-   [Twelf][203]
-   [Z3 Theorem Prover][204]

### Proprietary software\[[edit][205]\]

-   [Acumen RuleManager][206] (commercial product)
-   ALLIGATOR (CC BY-NC-SA 2.0 UK)[\[24\]][207]
-   [CARINE][208]
-   KIV (freely available as a plugin for [Eclipse][209])
-   [Prover Plug-In][210] (commercial proof engine product)
-   [ProverBox][211]
-   [Wolfram Mathematica][212][\[25\]][213]
-   [ResearchCyc][214]
-   [Spear modular arithmetic theorem prover][215]

## See also\[[edit][216]\]

## Notes\[[edit][217]\]

1.  __[^][218]__ Frege, Gottlob (1879). [*Begriffsschrift*][219]. Verlag Louis Neuert.
2.  __[^][220]__ Frege, Gottlob (1884). [*Die Grundlagen der Arithmetik*][221] (PDF). Breslau: Wilhelm Kobner. Archived from [the original][222] (PDF) on 2007-09-26. Retrieved 2012-09-02.
3.  __[^][223]__ Bertrand Russell; Alfred North Whitehead (1910-1913). [*Principia Mathematica*][224] (1st ed.). Cambridge University Press.
4.  __[^][225]__ Bertrand Russell; Alfred North Whitehead (1927). [*Principia Mathematica*][226] (2nd ed.). Cambridge University Press.
5.  __[^][227]__ Herbrand, Jaques (1930). *Recherches sur la théorie de la démonstration*.
6.  __[^][228]__ Presburger, Mojżesz (1929). "Über die Vollständigkeit eines gewissen Systems der Arithmetik ganzer Zahlen, in welchem die Addition als einzige Operation hervortritt". *Comptes Rendus du I Congrès de Mathématiciens des Pays Slaves*. Warszawa: 92-101.
7.  ^ [*__a__*][229] [*__b__*][230] [*__c__*][231] [*__d__*][232] [Davis, Martin][233] (2001), ["The Early History of Automated Deduction"][234], in [Robinson, Alan][235]; [Voronkov, Andrei][236] (eds.), [*Handbook of Automated Reasoning*][237], __1__, [Elsevier][238])
8.  __[^][239]__ Bibel, Wolfgang (2007). ["Early History and Perspectives of Automated Deduction"][240] (PDF). *Ki 2007*. LNAI. Springer (4667): 2-18. Retrieved 2 September 2012.
9.  __[^][241]__ Gilmore, Paul (1960). "A proof procedure for quantification theory: its justification and realisation". *IBM Journal of Research and Development*. __4__: 28-35. [doi][242]:[10.1147/rd.41.0028][243].
10.  __[^][244]__ W.W. McCune (1997). "Solution of the Robbins Problem". *Journal of Automated Reasoning*. __19__ (3): 263-276. [doi][245]:[10.1023/A:1005843212881][246]. [S2CID][247] [30847540][248].
11.  __[^][249]__ Gina Kolata (December 10, 1996). ["Computer Math Proof Shows Reasoning Power"][250]. *The New York Times*. Retrieved 2008-10-11.
12.  __[^][251]__ David C. Luckham and Norihisa Suzuki (Mar 1976). [Automatic Program Verification V: Verification-Oriented Proof Rules for Arrays, Records, and Pointers][252] (Technical Report AD-A027 455). [Defense Technical Information Center][253].
13.  __[^][254]__ David C. Luckham and Norihisa Suzuki (Oct 1979). "Verification of Array, Record, and Pointer Operations in Pascal". *[ACM Transactions on Programming Languages and Systems][255]*. __1__ (2): 226-244. [doi][256]:[10.1145/357073.357078][257].
14.  __[^][258]__ D. Luckham and S. German and F. von Henke and R. Karp and P. Milne and D. Oppen and W. Polak and W. Scherlis (1979). [Stanford Pascal verifier user manual][259] (Technical Report CS-TR-79-731). Stanford University.
15.  __[^][260]__ Loveland, D W (1986). ["Automated theorem proving: mapping logic into AI"][261]. *Proceedings of the ACM SIGART International Symposium on Methodologies for Intelligent Systems*. Knoxville, Tennessee, United States: ACM Press: 224. [doi][262]:[10.1145/12808.12833][263]. [ISBN][264] [978-0-89791-206-8][265]. [S2CID][266] [14361631][267].
16.  __[^][268]__ Kerber, Manfred. "[How to prove higher order theorems in first order logic][269]." (1999).
17.  __[^][270]__ Benzmüller, Christoph, et al. "[LEO-II-a cooperative automatic theorem prover for classical higher-order logic (system description)][271]." International Joint Conference on Automated Reasoning. Springer, Berlin, Heidelberg, 2008.
18.  __[^][272]__ Sutcliffe, Geoff. ["The TPTP Problem Library for Automated Theorem Proving"][273]. Retrieved 15 July 2019.
19.  __[^][274]__ Bundy, Alan. [The automation of proof by mathematical induction][275]. 1999.
20.  __[^][276]__ Artosi, Alberto, Paola Cattabriga, and Guido Governatori. "[Ked: A deontic theorem prover][277]." Eleventh International Conference on Logic Programming (ICLP'94). 1994.
21.  __[^][278]__ Otten, Jens; Bibel, Wolfgang (2003). ["LeanCoP: Lean connection-based theorem proving"][279]. *Journal of Symbolic Computation*. __36__ (1-2): 139-161. [doi][280]:[10.1016/S0747-7171(03)00037-3][281].
22.  __[^][282]__ Del Cerro, Luis Fariñas; Fauthoux, David; Gasquet, Olivier; Herzig, Andreas; Longin, Dominique; Massacci, Fabio (2001). "Lotrec: The Generic Tableau Prover for Modal and Description Logics". [*Automated Reasoning*][283]. Lecture Notes in Computer Science. __2083__. pp. 453-458. [doi][284]:[10.1007/3-540-45744-5\_38][285]. [ISBN][286] [978-3-540-42254-9][287].
23.  __[^][288]__ Hickey, Jason, et al. "[MetaPRL-a modular logical environment][289]." International Conference on Theorem Proving in Higher Order Logics. Springer, Berlin, Heidelberg, 2003.
24.  __[^][290]__ [Alligator homepage][291]
25.  __[^][292]__ [Mathematica documentation][293]

## References\[[edit][294]\]

-   Chin-Liang Chang; Richard Char-Tung Lee (1973). *Symbolic Logic and Mechanical Theorem Proving*. [Academic Press][295].
-   Loveland, Donald W. (1978). *Automated Theorem Proving: A Logical Basis. Fundamental Studies in Computer Science Volume 6*. [North-Holland Publishing][296].
-   Luckham, David (1990). *Programming with Specifications: An Introduction to Anna, A Language for Specifying Ada Programs*. Springer-Verlag Texts and Monographs in Computer Science, 421 pp. [ISBN][297] [978-1461396871][298].

-   [Gallier, Jean H.][299] (1986). [*Logic for Computer Science: Foundations of Automatic Theorem Proving*][300]. [Harper & Row Publishers][301] (Available for free download).
-   Duffy, David A. (1991). *Principles of Automated Theorem Proving*. [John Wiley & Sons][302].
-   Wos, Larry; Overbeek, Ross; Lusk, Ewing; Boyle, Jim (1992). *Automated Reasoning: Introduction and Applications* (2nd ed.). [McGraw-Hill][303].
-   Alan Robinson; Andrei Voronkov, eds. (2001). *Handbook of Automated Reasoning Volume I & II*. [Elsevier][304] and [MIT Press][305].
-   Fitting, Melvin (1996). [*First-Order Logic and Automated Theorem Proving*][306] (2nd ed.). [Springer][307].

## External links\[[edit][308]\]

-   [A list of theorem proving tools][309]

[1]: https://en.wikipedia.org/wiki/Automated_reasoning "Automated reasoning"
[2]: https://en.wikipedia.org/wiki/Mathematical_logic "Mathematical logic"
[3]: https://en.wikipedia.org/wiki/Mathematical_theorem "Mathematical theorem"
[4]: https://en.wikipedia.org/wiki/Computer_program "Computer program"
[5]: https://en.wikipedia.org/wiki/Mathematical_proof "Mathematical proof"
[6]: https://en.wikipedia.org/wiki/Computer_science "Computer science"
[7]: https://en.wikipedia.org/w/index.php?title=Automated_theorem_proving&action=edit&section=1 "Edit section: Logical foundations"
[8]: https://en.wikipedia.org/wiki/Logicism "Logicism"
[9]: https://en.wikipedia.org/wiki/Aristotelian_logic "Aristotelian logic"
[10]: https://en.wikipedia.org/wiki/Gottlob_Frege "Gottlob Frege"
[11]: https://en.wikipedia.org/wiki/Begriffsschrift "Begriffsschrift"
[12]: https://en.wikipedia.org/wiki/Propositional_logic "Propositional logic"
[13]: https://en.wikipedia.org/wiki/Predicate_logic "Predicate logic"
[14]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_note-1
[15]: https://en.wikipedia.org/wiki/The_Foundations_of_Arithmetic "The Foundations of Arithmetic"
[16]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_note-2
[17]: https://en.wikipedia.org/wiki/Bertrand_Russell "Bertrand Russell"
[18]: https://en.wikipedia.org/wiki/Alfred_North_Whitehead "Alfred North Whitehead"
[19]: https://en.wikipedia.org/wiki/Principia_Mathematica "Principia Mathematica"
[20]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_note-3
[21]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_note-4
[22]: https://en.wikipedia.org/wiki/Thoralf_Skolem "Thoralf Skolem"
[23]: https://en.wikipedia.org/wiki/Leopold_L%C3%B6wenheim "Leopold Löwenheim"
[24]: https://en.wikipedia.org/wiki/L%C3%B6wenheim%E2%80%93Skolem_theorem "Löwenheim-Skolem theorem"
[25]: https://en.wikipedia.org/wiki/Herbrand_universe "Herbrand universe"
[26]: https://en.wikipedia.org/wiki/Herbrand_interpretation "Herbrand interpretation"
[27]: https://en.wikipedia.org/wiki/Validity_(logic) "Validity (logic)"
[28]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_note-5
[29]: https://en.wikipedia.org/wiki/Moj%C5%BCesz_Presburger "Mojżesz Presburger"
[30]: https://en.wikipedia.org/wiki/Natural_numbers "Natural numbers"
[31]: https://en.wikipedia.org/wiki/Presburger_arithmetic "Presburger arithmetic"
[32]: https://en.wikipedia.org/wiki/Decidability_(logic) "Decidability (logic)"
[33]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_note-6
[34]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_note-Davis2001-7
[35]: https://en.wikipedia.org/wiki/Kurt_G%C3%B6del "Kurt Gödel"
[36]: https://en.wikipedia.org/wiki/On_Formally_Undecidable_Propositions_of_Principia_Mathematica_and_Related_Systems "On Formally Undecidable Propositions of Principia Mathematica and Related Systems"
[37]: https://en.wikipedia.org/wiki/Alonzo_Church "Alonzo Church"
[38]: https://en.wikipedia.org/wiki/Alan_Turing "Alan Turing"
[39]: https://en.wikipedia.org/wiki/Computability "Computability"
[40]: https://en.wikipedia.org/w/index.php?title=Automated_theorem_proving&action=edit&section=2 "Edit section: First implementations"
[41]: https://en.wikipedia.org/wiki/World_War_II "World War II"
[42]: https://en.wikipedia.org/wiki/Martin_Davis_(mathematician) "Martin Davis (mathematician)"
[43]: https://en.wikipedia.org/wiki/JOHNNIAC "JOHNNIAC"
[44]: https://en.wikipedia.org/wiki/Institute_for_Advanced_Study "Institute for Advanced Study"
[45]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_note-Davis2001-7
[46]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_note-Bibel2007-8
[47]: https://en.wikipedia.org/wiki/Logic_Theory_Machine "Logic Theory Machine"
[48]: https://en.wikipedia.org/wiki/Propositional_logic "Propositional logic"
[49]: https://en.wikipedia.org/wiki/Allen_Newell "Allen Newell"
[50]: https://en.wikipedia.org/wiki/Herbert_A._Simon "Herbert A. Simon"
[51]: https://en.wikipedia.org/wiki/Cliff_Shaw "Cliff Shaw"
[52]: https://en.wikipedia.org/wiki/Modus_ponens "Modus ponens"
[53]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_note-Davis2001-7
[54]: https://en.wikipedia.org/wiki/Completeness_(logic) "Completeness (logic)"
[55]: https://en.wikipedia.org/wiki/Propositional_formula "Propositional formula"
[56]: https://en.wikipedia.org/wiki/Herbrand_universe "Herbrand universe"
[57]: https://en.wikipedia.org/wiki/Disjunctive_normal_form "Disjunctive normal form"
[58]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_note-Davis2001-7
[59]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_note-9
[60]: https://en.wikipedia.org/w/index.php?title=Automated_theorem_proving&action=edit&section=3 "Edit section: Decidability of the problem"
[61]: https://en.wikipedia.org/wiki/Propositional_logic "Propositional logic"
[62]: https://en.wikipedia.org/wiki/Co-NP-complete "Co-NP-complete"
[63]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[64]: https://en.wikipedia.org/wiki/G%C3%B6del%27s_completeness_theorem "Gödel's completeness theorem"
[65]: https://en.wikipedia.org/wiki/Well-formed_formula "Well-formed formula"
[66]: https://en.wikipedia.org/wiki/Recursively_enumerable "Recursively enumerable"
[67]: https://en.wikipedia.org/wiki/Peano_axioms "Peano axioms"
[68]: https://en.wikipedia.org/wiki/G%C3%B6del%27s_incompleteness_theorem "Gödel's incompleteness theorem"
[69]: https://en.wikipedia.org/w/index.php?title=Automated_theorem_proving&action=edit&section=4 "Edit section: Related problems"
[70]: https://en.wikipedia.org/wiki/Proof_verification "Proof verification"
[71]: https://en.wikipedia.org/wiki/Primitive_recursive_function "Primitive recursive function"
[72]: https://en.wikipedia.org/wiki/Proof_compression "Proof compression"
[73]: https://en.wikipedia.org/wiki/Proof_assistant "Proof assistant"
[74]: https://en.wikipedia.org/wiki/Robbins_conjecture "Robbins conjecture"
[75]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_note-10
[76]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_note-11
[77]: https://en.wikipedia.org/wiki/Model_checking "Model checking"
[78]: https://en.wikipedia.org/wiki/Four_color_theorem "Four color theorem"
[79]: https://en.wikipedia.org/wiki/Non-surveyable_proofs "Non-surveyable proofs"
[80]: https://en.wikipedia.org/wiki/Connect_Four "Connect Four"
[81]: https://en.wikipedia.org/w/index.php?title=Automated_theorem_proving&action=edit&section=5 "Edit section: Industrial uses"
[82]: https://en.wikipedia.org/wiki/Integrated_circuit_design "Integrated circuit design"
[83]: https://en.wikipedia.org/wiki/Pentium_FDIV_bug "Pentium FDIV bug"
[84]: https://en.wikipedia.org/wiki/Floating_point_unit "Floating point unit"
[85]: https://en.wikipedia.org/wiki/AMD "AMD"
[86]: https://en.wikipedia.org/wiki/Intel "Intel"
[87]: https://en.wikipedia.org/w/index.php?title=Automated_theorem_proving&action=edit&section=6 "Edit section: First-order theorem proving"
[88]: https://en.wikipedia.org/wiki/Program_verification "Program verification"
[89]: https://en.wikipedia.org/wiki/David_Luckham "David Luckham"
[90]: https://en.wikipedia.org/wiki/Stanford_University "Stanford University"
[91]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_note-12
[92]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_note-13
[93]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_note-14
[94]: https://en.wikipedia.org/wiki/John_Alan_Robinson "John Alan Robinson"
[95]: https://en.wikipedia.org/wiki/Resolution_(logic) "Resolution (logic)"
[96]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[97]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[98]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_note-15
[99]: https://en.wikipedia.org/wiki/Higher-order_logic "Higher-order logic"
[100]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_note-16
[101]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_note-17
[102]: https://en.wikipedia.org/w/index.php?title=Automated_theorem_proving&action=edit&section=7 "Edit section: Benchmarks, competitions, and sources"
[103]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_note-18
[104]: https://en.wikipedia.org/wiki/CADE_ATP_System_Competition "CADE ATP System Competition"
[105]: https://en.wikipedia.org/wiki/E_theorem_prover "E theorem prover"
[106]: https://en.wikipedia.org/wiki/Superposition_calculus "Superposition calculus"
[107]: https://en.wikipedia.org/wiki/Technical_University_of_Munich "Technical University of Munich"
[108]: https://en.wikipedia.org/wiki/Wolfgang_Bibel "Wolfgang Bibel"
[109]: https://en.wikipedia.org/wiki/Baden-W%C3%BCrttemberg_Cooperative_State_University "Baden-Württemberg Cooperative State University"
[110]: https://en.wikipedia.org/wiki/Stuttgart "Stuttgart"
[111]: https://en.wikipedia.org/wiki/Otter_(theorem_prover) "Otter (theorem prover)"
[112]: https://en.wikipedia.org/wiki/Argonne_National_Laboratory "Argonne National Laboratory"
[113]: https://en.wikipedia.org/wiki/First-order_resolution "First-order resolution"
[114]: https://en.wikipedia.org/wiki/Paramodulation "Paramodulation"
[115]: https://en.wikipedia.org/wiki/Prover9 "Prover9"
[116]: https://en.wikipedia.org/wiki/Mace4 "Mace4"
[117]: https://en.wikipedia.org/w/index.php?title=SETHEO&action=edit&redlink=1 "SETHEO (page does not exist)"
[118]: https://en.wikipedia.org/wiki/Model_elimination "Model elimination"
[119]: https://en.wikipedia.org/wiki/Wolfgang_Bibel "Wolfgang Bibel"
[120]: https://en.wikipedia.org/wiki/Vampire_theorem_prover "Vampire theorem prover"
[121]: https://en.wikipedia.org/wiki/University_of_Manchester "University of Manchester"
[122]: https://en.wikipedia.org/wiki/SPASS "SPASS"
[123]: https://en.wikipedia.org/wiki/Max_Planck_Institute_for_Computer_Science "Max Planck Institute for Computer Science"
[124]: https://theoremprover-museum.github.io/
[125]: https://en.wikipedia.org/w/index.php?title=Automated_theorem_proving&action=edit&section=8 "Edit section: Popular techniques"
[126]: https://en.wikipedia.org/wiki/First-order_resolution "First-order resolution"
[127]: https://en.wikipedia.org/wiki/Unification_(computing) "Unification (computing)"
[128]: https://en.wikipedia.org/wiki/Model_elimination "Model elimination"
[129]: https://en.wikipedia.org/wiki/Method_of_analytic_tableaux "Method of analytic tableaux"
[130]: https://en.wikipedia.org/wiki/Superposition_calculus "Superposition calculus"
[131]: https://en.wikipedia.org/wiki/Rewriting "Rewriting"
[132]: https://en.wikipedia.org/wiki/Model_checking "Model checking"
[133]: https://en.wikipedia.org/wiki/Mathematical_induction "Mathematical induction"
[134]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_note-19
[135]: https://en.wikipedia.org/wiki/Binary_decision_diagram "Binary decision diagram"
[136]: https://en.wikipedia.org/wiki/DPLL_algorithm "DPLL algorithm"
[137]: https://en.wikipedia.org/wiki/Unification_(computing)#Higher-order_unification "Unification (computing)"
[138]: https://en.wikipedia.org/w/index.php?title=Automated_theorem_proving&action=edit&section=9 "Edit section: Software systems"
[139]: https://en.wikipedia.org/wiki/Strftime "Strftime"
[140]: https://en.wikipedia.org/wiki/ACL2 "ACL2"
[141]: https://en.wikipedia.org/wiki/BSD_Licenses "BSD Licenses"
[142]: https://en.wikipedia.org/wiki/Prover9 "Prover9"
[143]: https://en.wikipedia.org/wiki/System_on_TPTP "System on TPTP"
[144]: https://en.wikipedia.org/wiki/Jape_(software) "Jape (software)"
[145]: https://en.wikipedia.org/wiki/GPL "GPL"
[146]: https://en.wikipedia.org/wiki/Prototype_Verification_System "Prototype Verification System"
[147]: https://en.wikipedia.org/wiki/GPL "GPL"
[148]: https://en.wikipedia.org/wiki/BSD_License "BSD License"
[149]: https://en.wikipedia.org/wiki/System_on_TPTP "System on TPTP"
[150]: https://en.wikipedia.org/wiki/Equational_prover "Equational prover"
[151]: https://en.wikipedia.org/wiki/GPL "GPL"
[152]: https://en.wikipedia.org/wiki/PhoX "PhoX"
[153]: https://en.wikipedia.org/wiki/Java_Webstart "Java Webstart"
[154]: https://en.wikipedia.org/wiki/E_theorem_prover "E theorem prover"
[155]: https://en.wikipedia.org/wiki/GPL "GPL"
[156]: https://en.wikipedia.org/wiki/System_on_TPTP "System on TPTP"
[157]: https://en.wikipedia.org/wiki/SNARK_theorem_prover "SNARK theorem prover"
[158]: https://en.wikipedia.org/wiki/Mozilla_Public_License "Mozilla Public License"
[159]: https://en.wikipedia.org/wiki/Vampire_theorem_prover "Vampire theorem prover"
[160]: https://vprover.github.io/licence.html
[161]: https://en.wikipedia.org/wiki/System_on_TPTP "System on TPTP"
[162]: https://en.wikipedia.org/wiki/Theorem_Proving_System "Theorem Proving System"
[163]: http://gtps.math.cmu.edu/cgi-bin/tpsdist.pl
[164]: https://en.wikipedia.org/wiki/SPASS "SPASS"
[165]: https://en.wikipedia.org/wiki/FreeBSD_license "FreeBSD license"
[166]: https://en.wikipedia.org/wiki/IsaPlanner "IsaPlanner"
[167]: https://en.wikipedia.org/wiki/GPL "GPL"
[168]: https://en.wikipedia.org/wiki/KeY "KeY"
[169]: https://en.wikipedia.org/wiki/GPL "GPL"
[170]: https://en.wikipedia.org/wiki/LGPL "LGPL"
[171]: https://en.wikipedia.org/wiki/Java_Webstart "Java Webstart"
[172]: https://en.wikipedia.org/wiki/System_on_TPTP "System on TPTP"
[173]: https://en.wikipedia.org/wiki/GPL "GPL"
[174]: https://en.wikipedia.org/wiki/System_on_TPTP "System on TPTP"
[175]: https://en.wikipedia.org/wiki/Freeware "Freeware"
[176]: https://en.wikipedia.org/wiki/Z3_Theorem_Prover "Z3 Theorem Prover"
[177]: https://en.wikipedia.org/wiki/MIT_License "MIT License"
[178]: https://en.wikipedia.org/w/index.php?title=Automated_theorem_proving&action=edit&section=10 "Edit section: Free software"
[179]: https://en.wikipedia.org/wiki/Alt-Ergo "Alt-Ergo"
[180]: https://en.wikipedia.org/wiki/Automath "Automath"
[181]: https://en.wikipedia.org/wiki/CVC_(theorem_prover) "CVC (theorem prover)"
[182]: https://en.wikipedia.org/wiki/E_theorem_prover "E theorem prover"
[183]: https://en.wikipedia.org/w/index.php?title=GKC_Theorem_Prover&action=edit&redlink=1 "GKC Theorem Prover (page does not exist)"
[184]: https://en.wikipedia.org/wiki/G%C3%B6del_machine "Gödel machine"
[185]: https://en.wikipedia.org/wiki/IsaPlanner "IsaPlanner"
[186]: https://en.wikipedia.org/w/index.php?title=KED_theorem_prover&action=edit&redlink=1 "KED theorem prover (page does not exist)"
[187]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_note-20
[188]: https://en.wikipedia.org/w/index.php?title=LeanCoP&action=edit&redlink=1 "LeanCoP (page does not exist)"
[189]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_note-21
[190]: https://en.wikipedia.org/w/index.php?title=Leo_II_(theorem_prover)&action=edit&redlink=1 "Leo II (theorem prover) (page does not exist)"
[191]: https://en.wikipedia.org/wiki/LCF_(theorem_prover) "LCF (theorem prover)"
[192]: https://logictools.org/
[193]: https://en.wikipedia.org/w/index.php?title=LoTREC&action=edit&redlink=1 "LoTREC (page does not exist)"
[194]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_note-22
[195]: https://en.wikipedia.org/w/index.php?title=MetaPRL&action=edit&redlink=1 "MetaPRL (page does not exist)"
[196]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_note-23
[197]: https://en.wikipedia.org/wiki/Mizar_system "Mizar system"
[198]: https://en.wikipedia.org/wiki/NuPRL "NuPRL"
[199]: https://en.wikipedia.org/wiki/Paradox_(theorem_prover) "Paradox (theorem prover)"
[200]: https://en.wikipedia.org/wiki/Prover9 "Prover9"
[201]: https://en.wikipedia.org/w/index.php?title=Simplify_(software)&action=edit&redlink=1 "Simplify (software) (page does not exist)"
[202]: https://en.wikipedia.org/wiki/SPARK_(programming_language) "SPARK (programming language)"
[203]: https://en.wikipedia.org/wiki/Twelf "Twelf"
[204]: https://en.wikipedia.org/wiki/Z3_Theorem_Prover "Z3 Theorem Prover"
[205]: https://en.wikipedia.org/w/index.php?title=Automated_theorem_proving&action=edit&section=11 "Edit section: Proprietary software"
[206]: https://en.wikipedia.org/w/index.php?title=Acumen_RuleManager&action=edit&redlink=1 "Acumen RuleManager (page does not exist)"
[207]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_note-24
[208]: https://en.wikipedia.org/wiki/CARINE "CARINE"
[209]: https://en.wikipedia.org/wiki/Eclipse_(software) "Eclipse (software)"
[210]: https://en.wikipedia.org/w/index.php?title=Prover_Plug-In&action=edit&redlink=1 "Prover Plug-In (page does not exist)"
[211]: https://en.wikipedia.org/w/index.php?title=ProverBox&action=edit&redlink=1 "ProverBox (page does not exist)"
[212]: https://en.wikipedia.org/wiki/Wolfram_Mathematica "Wolfram Mathematica"
[213]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_note-25
[214]: https://en.wikipedia.org/wiki/ResearchCyc "ResearchCyc"
[215]: https://en.wikipedia.org/w/index.php?title=Spear_modular_arithmetic_theorem_prover&action=edit&redlink=1 "Spear modular arithmetic theorem prover (page does not exist)"
[216]: https://en.wikipedia.org/w/index.php?title=Automated_theorem_proving&action=edit&section=12 "Edit section: See also"
[217]: https://en.wikipedia.org/w/index.php?title=Automated_theorem_proving&action=edit&section=13 "Edit section: Notes"
[218]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_ref-1
[219]: http://gallica.bnf.fr/ark:/12148/bpt6k65658c
[220]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_ref-2
[221]: https://web.archive.org/web/20070926172317/http://www.ac-nancy-metz.fr/enseign/philo/textesph/Frege.pdf
[222]: http://www.ac-nancy-metz.fr/enseign/philo/textesph/Frege.pdf
[223]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_ref-3
[224]: https://archive.org/details/cu31924001575244
[225]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_ref-4
[226]: https://archive.org/details/in.ernet.dli.2015.221192
[227]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_ref-5
[228]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_ref-6
[229]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_ref-Davis2001_7-0
[230]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_ref-Davis2001_7-1
[231]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_ref-Davis2001_7-2
[232]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_ref-Davis2001_7-3
[233]: https://en.wikipedia.org/wiki/Martin_Davis_(mathematician) "Martin Davis (mathematician)"
[234]: http://cs.nyu.edu/cs/faculty/davism/early.ps
[235]: https://en.wikipedia.org/wiki/John_Alan_Robinson "John Alan Robinson"
[236]: https://en.wikipedia.org/wiki/Andrei_Voronkov_(scientist) "Andrei Voronkov (scientist)"
[237]: https://en.wikipedia.org/wiki/Handbook_of_Automated_Reasoning "Handbook of Automated Reasoning"
[238]: https://en.wikipedia.org/wiki/Elsevier "Elsevier"
[239]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_ref-Bibel2007_8-0
[240]: http://www.intellektik.de/resources/OsnabrueckBuchfassung.pdf
[241]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_ref-9
[242]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[243]: https://doi.org/10.1147%2Frd.41.0028
[244]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_ref-10
[245]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[246]: https://doi.org/10.1023%2FA%3A1005843212881
[247]: https://en.wikipedia.org/wiki/S2CID_(identifier) "S2CID (identifier)"
[248]: https://api.semanticscholar.org/CorpusID:30847540
[249]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_ref-11
[250]: https://www.nytimes.com/library/cyber/week/1210math.html
[251]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_ref-12
[252]: https://apps.dtic.mil/sti/citations/ADA027455
[253]: https://en.wikipedia.org/wiki/Defense_Technical_Information_Center "Defense Technical Information Center"
[254]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_ref-13
[255]: https://en.wikipedia.org/wiki/ACM_Transactions_on_Programming_Languages_and_Systems "ACM Transactions on Programming Languages and Systems"
[256]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[257]: https://doi.org/10.1145%2F357073.357078
[258]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_ref-14
[259]: https://exhibits.stanford.edu/stanford-pubs/catalog/nh154bt5645
[260]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_ref-15
[261]: http://portal.acm.org/citation.cfm?doid=12808.12833
[262]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[263]: https://doi.org/10.1145%2F12808.12833
[264]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[265]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-89791-206-8 "Special:BookSources/978-0-89791-206-8"
[266]: https://en.wikipedia.org/wiki/S2CID_(identifier) "S2CID (identifier)"
[267]: https://api.semanticscholar.org/CorpusID:14361631
[268]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_ref-16
[269]: https://kluedo.ub.uni-kl.de/files/364/seki_4.pdf
[270]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_ref-17
[271]: https://page.mi.fu-berlin.de/cbenzmueller/papers/C26.pdf
[272]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_ref-18
[273]: http://www.tptp.org/
[274]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_ref-19
[275]: https://www.era.lib.ed.ac.uk/bitstream/handle/1842/3394/0002.pdf?sequence=1
[276]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_ref-20
[277]: http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.19.554&rep=rep1&type=pdf
[278]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_ref-21
[279]: https://doi.org/10.1016%2FS0747-7171%2803%2900037-3
[280]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[281]: https://doi.org/10.1016%2FS0747-7171%2803%2900037-3
[282]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_ref-22
[283]: https://www.researchgate.net/publication/220806348
[284]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[285]: https://doi.org/10.1007%2F3-540-45744-5_38
[286]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[287]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-540-42254-9 "Special:BookSources/978-3-540-42254-9"
[288]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_ref-23
[289]: http://www.cs.cornell.edu/info/people/kreitz/PDF/03tphols-metaprl.pdf
[290]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_ref-24
[291]: http://mcs.open.ac.uk/pp2464/alligator
[292]: https://en.wikipedia.org/wiki/Automated_theorem_proving#cite_ref-25
[293]: https://reference.wolfram.com/language/ref/FindEquationalProof.html
[294]: https://en.wikipedia.org/w/index.php?title=Automated_theorem_proving&action=edit&section=14 "Edit section: References"
[295]: https://en.wikipedia.org/wiki/Academic_Press "Academic Press"
[296]: https://en.wikipedia.org/wiki/North-Holland_Publishing "North-Holland Publishing"
[297]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[298]: https://en.wikipedia.org/wiki/Special:BookSources/978-1461396871 "Special:BookSources/978-1461396871"
[299]: https://en.wikipedia.org/wiki/Jean_Gallier "Jean Gallier"
[300]: http://www.cis.upenn.edu/~jean/gbooks/logic.html
[301]: https://en.wikipedia.org/wiki/Harper_%26_Row_Publishers "Harper & Row Publishers"
[302]: https://en.wikipedia.org/wiki/John_Wiley_%26_Sons "John Wiley & Sons"
[303]: https://en.wikipedia.org/wiki/McGraw%E2%80%93Hill "McGraw-Hill"
[304]: https://en.wikipedia.org/wiki/Elsevier "Elsevier"
[305]: https://en.wikipedia.org/wiki/MIT_Press "MIT Press"
[306]: http://comet.lehman.cuny.edu/fitting/
[307]: https://en.wikipedia.org/wiki/Springer_Science%2BBusiness_Media "Springer Science+Business Media"
[308]: https://en.wikipedia.org/w/index.php?title=Automated_theorem_proving&action=edit&section=15 "Edit section: External links"
[309]: https://github.com/johnyf/tool_lists/blob/master/verification_synthesis.md#theorem-provers

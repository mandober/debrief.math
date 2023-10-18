---
downloaded:       2021-12-18
page-url:         https://en.wikipedia.org/wiki/Model_checking
page-title:       Model checking - Wikipedia
article-title:    Model checking - Wikipedia
---
# Model checking - Wikipedia

This article is about checking of models in computer science. For the checking of models in statistics, see statistical model validation.
This article is about checking of models in computer science. For the checking of models in statistics, see [statistical model validation][1].

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Two_One_G_%28cropped%29.jpg/250px-Two_One_G_%28cropped%29.jpg)][2]

[Elevator][3] control software can be model-checked to verify both safety properties, like *"The cabin never moves with its door open"*,[\[1\]][4] and liveness properties, like *"Whenever the nth floor's* call *button is pressed, the cabin will eventually stop at the nth floor and open the door"*.

In [computer science][5], __model checking__ or __property checking__ is a method for checking whether a [finite-state model][6] of a system meets a given [specification][7] (also known as [correctness][8]). This is typically associated with [hardware][9] or [software systems][10], where the specification contains liveness requirements (such as avoidance of [livelock][11]) as well as safety requirements (such as avoidance of states representing a [system crash][12]).

In order to solve such a problem [algorithmically][13], both the model of the system and its specification are formulated in some precise mathematical language. To this end, the problem is formulated as a task in [logic][14], namely to check whether a [structure][15] satisfies a given logical formula. This general concept applies to many kinds of logic and many kinds of structures. A simple model-checking problem consists of verifying whether a formula in the [propositional logic][16] is satisfied by a given structure.

## Overview\[[edit][17]\]

Property checking is used for [verification][18] when two descriptions are not equivalent. During [refinement][19], the specification is complemented with details that are [unnecessary][20] in the higher-level specification. There is no need to verify the newly introduced properties against the original specification since this is not possible. Therefore, the strict bi-directional equivalence check is relaxed to a one-way property check. The implementation or design is regarded as a model of the system, whereas the specifications are properties that the model must satisfy.[\[2\]][21]

An important class of model-checking methods has been developed for checking models of [hardware][22] and [software][23] designs where the specification is given by a [temporal logic][24] formula. Pioneering work in temporal logic specification was done by [Amir Pnueli][25], who received the 1996 Turing award for "seminal work introducing temporal logic into computing science".[\[3\]][26] Model checking began with the pioneering work of [E. M. Clarke][27], [E. A. Emerson][28],[\[4\]][29][\[5\]][30][\[6\]][31] by J. P. Queille, and [J. Sifakis][32].[\[7\]][33] Clarke, Emerson, and Sifakis shared the 2007 [Turing Award][34] for their seminal work founding and developing the field of model checking.[\[8\]][35][\[9\]][36]

Model checking is most often applied to hardware designs. For software, because of undecidability (see [computability theory][37]) the approach cannot be fully algorithmic, apply to all systems, and always give an answer; in the general case, it may fail to prove or disprove a given property. In [embedded-systems][38] hardware, it is possible to validate a specification delivered, i.e., by means of [UML activity diagrams][39][\[10\]][40] or control interpreted [Petri nets.][41][\[11\]][42]

The structure is usually given as a source code description in an industrial [hardware description language][43] or a special-purpose language. Such a program corresponds to a [finite state machine][44] (FSM), i.e., a [directed graph][45] consisting of nodes (or [vertices][46]) and [edges][47]. A set of atomic propositions is associated with each node, typically stating which memory elements are one. The [nodes][48] represent states of a system, the edges represent possible transitions that may alter the state, while the atomic propositions represent the basic properties that hold at a point of execution.

Formally, the problem can be stated as follows: given a desired property, expressed as a temporal logic formula ![p](https://wikimedia.org/api/rest_v1/media/math/render/svg/81eac1e205430d1f40810df36a0edffdc367af36), and a structure ![M](https://wikimedia.org/api/rest_v1/media/math/render/svg/f82cade9898ced02fdd08712e5f0c0151758a0dd) with initial state ![s](https://wikimedia.org/api/rest_v1/media/math/render/svg/01d131dfd7673938b947072a13a9744fe997e632), decide if ![M,s \models p](https://wikimedia.org/api/rest_v1/media/math/render/svg/2a89df063b4aaa61216a2151b7672e09ee1f5765). If ![M](https://wikimedia.org/api/rest_v1/media/math/render/svg/f82cade9898ced02fdd08712e5f0c0151758a0dd) is finite, as it is in hardware, model checking reduces to a [graph search][49].

## Symbolic model checking\[[edit][50]\]

[![[icon]](https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Wiki_letter_w_cropped.svg/20px-Wiki_letter_w_cropped.svg.png)][51]

This section __needs expansion__. You can help by [adding to it][52]. *(January 2011)*

Instead of enumerating reachable states one at a time, the state space can sometimes be traversed more efficiently by considering large numbers of states at a single step. When such state space traversal is based on representations of a set of states and transition relations as logical formulas, [binary decision diagrams][53] (BDD) or other related data structures, the model-checking method is *symbolic*.

Historically, the first symbolic methods used [BDDs][54]. After the success of [propositional satisfiability][55] in solving the [planning][56] problem in [artificial intelligence][57] (see [satplan][58]) in 1996, the same approach was generalized to model checking for [linear temporal logic][59] (LTL): the planning problem corresponds to model checking for safety properties. This method is known as bounded model checking.[\[12\]][60] The success of [Boolean satisfiability solvers][61] in bounded model checking led to the widespread use of satisfiability solvers in symbolic model checking.[\[13\]][62]

### Example\[[edit][63]\]

One example of such a system requirement: *Between the time an elevator is called at a floor and the time it opens its doors at that floor, the elevator can arrive at that floor at most twice*. The authors of "Patterns in Property Specification for Finite-State Verification" translate this requirement into the following LTL formula:[\[14\]][64]

![{\begin{aligned}\Box ((call\lor \Diamond open)\to &((\lnot atfloor\lor \lnot open)~{\mathcal  {U}}\\&(open\lor ((atfloor\land \lnot open)~{\mathcal  {U}}\\&(open\lor ((\lnot atfloor\land \lnot open)~{\mathcal  {U}}\\&(open\lor ((atfloor\land \lnot open)~{\mathcal  {U}}\\&(open\lor (\lnot atfloor~{\mathcal  {U}}~open)))))))))))\end{aligned}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/f81915defdb1397bb4b1db5eb6e861da477b7d99)

Here, ![\Box ](https://wikimedia.org/api/rest_v1/media/math/render/svg/029b77f09ebeaf7528fc831fe57848be51f2240b) should be read as "always", ![\Diamond ](https://wikimedia.org/api/rest_v1/media/math/render/svg/1e5e6f31a91de53f443e2cd4c7478693a1a6a57b) as "eventually", ![{\mathcal {U}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/4e63ea009de5efbca2fc285b8550daaed577c6b8) as "until" and the other symbols are standard logical symbols, ![\lor ](https://wikimedia.org/api/rest_v1/media/math/render/svg/ab47f6b1f589aedcf14638df1d63049d233d851a) for "or", ![\land ](https://wikimedia.org/api/rest_v1/media/math/render/svg/d6823e5a222eb3ca49672818ac3d13ec607052c4) for "and" and ![\lnot ](https://wikimedia.org/api/rest_v1/media/math/render/svg/099107443792f5fec9bebe39b919a690db7198c1) for "not".

## Techniques\[[edit][65]\]

Model-checking tools face a combinatorial blow up of the state-space, commonly known as the [state explosion problem][66], that must be addressed to solve most real-world problems. There are several approaches to combat this problem.

1.  Symbolic algorithms avoid ever explicitly constructing the graph for the finite state machines (FSM); instead, they represent the graph implicitly using a formula in quantified propositional logic. The use of binary decision diagrams (BDDs) was made popular by the work of Ken McMillan[\[15\]][67] and the development of open-source BDD manipulation libraries such as CUDD[\[16\]][68] and BuDDy.[\[17\]][69]
2.  Bounded model checking algorithms unroll the FSM for a fixed number of steps, ![k](https://wikimedia.org/api/rest_v1/media/math/render/svg/c3c9a2c7b599b37105512c5d570edc034056dd40), and check whether a property violation can occur in ![k](https://wikimedia.org/api/rest_v1/media/math/render/svg/c3c9a2c7b599b37105512c5d570edc034056dd40) or fewer steps. This typically involves encoding the restricted model as an instance of [SAT][70]. The process can be repeated with larger and larger values of ![k](https://wikimedia.org/api/rest_v1/media/math/render/svg/c3c9a2c7b599b37105512c5d570edc034056dd40) until all possible violations have been ruled out (cf. [Iterative deepening depth-first search][71]).
3.  [Abstraction][72] attempts to prove properties of a system by first simplifying it. The simplified system usually does not satisfy exactly the same properties as the original one so that a process of refinement may be necessary. Generally, one requires the abstraction to be *sound* (the properties proved on the abstraction are true of the original system); however, sometimes the abstraction is not *complete* (not all true properties of the original system are true of the abstraction). An example of abstraction is to ignore the values of non-boolean variables and to only consider boolean variables and the control flow of the program; such an abstraction, though it may appear coarse, may, in fact, be sufficient to prove e.g. properties of [mutual exclusion][73].
4.  Counterexample guided abstraction refinement (CEGAR) begins checking with a coarse (i.e. imprecise) abstraction and iteratively refines it. When a violation (i.e. [counterexample][74]) is found, the tool analyzes it for feasibility (i.e., is the violation genuine or the result of an incomplete abstraction?). If the violation is feasible, it is reported to the user. If it is not, the proof of infeasibility is used to refine the abstraction and checking begins again.[\[18\]][75]

Model-checking tools were initially developed to reason about the logical correctness of [discrete state][76] systems, but have since been extended to deal with real-time and limited forms of [hybrid systems][77].

## First-order logic\[[edit][78]\]

Model checking is also studied in the field of [computational complexity theory][79]. Specifically, a [first-order logical][80] formula is fixed without [free variables][81] and the following [decision problem][82] is considered:

*Given a finite [interpretation][83], for instance, one described as a [relational database][84], decide whether the interpretation is a model of the formula.*

This problem is in the [circuit class][85] __[AC0][86]__. It is [tractable][87] when imposing some restrictions on the input structure: for instance, requiring that it has [treewidth][88] bounded by a constant (which more generally implies the tractability of model checking for [monadic second-order logic][89]), bounding the [degree][90] of every domain element, and more general conditions such as [bounded expansion][91], locally bounded expansion, and nowhere-dense structures.[\[19\]][92] These results have been extended to the task of [enumerating][93] all solutions to a first-order formula with free variables.\[*[citation needed][94]*\]

## Tools\[[edit][95]\]

Here is a list of significant model-checking tools:

-   [Alloy][96] (Alloy Analyzer)
-   [BLAST][97] (Berkeley Lazy Abstraction Software Verification Tool)
-   [CADP][98] (Construction and Analysis of Distributed Processes) a toolbox for the design of communication protocols and distributed systems
-   [CPAchecker][99]: an open-source software model checker for C programs, based on the CPA framework
-   [ECLAIR][100]: a platform for the automatic analysis, verification, testing, and transformation of C and C++ programs
-   [FDR2][101]: a model checker for verifying real-time systems modelled and specified as [CSP][102] Processes
-   [ISP][103] code level verifier for [MPI][104] programs
-   [Java Pathfinder][105]: an open-source model checker for Java programs
-   [Libdmc][106]: a framework for distributed model checking
-   [mCRL2][107] Toolset, [Boost Software License][108], Based on [ACP][109]
-   [NuSMV][110]: a new symbolic model checker
-   [PAT][111]: an enhanced simulator, model checker and refinement checker for concurrent and real-time systems
-   [Prism][112]: a probabilistic symbolic model checker
-   [Roméo][113]: an integrated tool environment for modelling, simulation, and verification of real-time systems modelled as parametric, time, and stopwatch Petri nets
-   [SPIN][114]: a general tool for verifying the correctness of distributed software models in a rigorous and mostly automated fashion
-   [TAPAs][115]: a tool for the analysis of process algebra
-   [TAPAAL][116]: an integrated tool environment for modelling, validation, and verification of Timed-Arc [Petri Nets][117]
-   [TLA+][118] model checker by [Leslie Lamport][119]
-   [UPPAAL][120]: an integrated tool environment for modelling, validation, and verification of real-time systems modelled as networks of timed automata
-   Zing[\[20\]][121] – experimental tool from [Microsoft][122] to validate state models of software at various levels: high-level protocol descriptions, work-flow specifications, web services, device drivers, and protocols in the core of the operating system. Zing is currently being used for developing drivers for Windows.

## See also\[[edit][123]\]

## References\[[edit][124]\]

1.  __[^][125]__ For convenience, the example properties are paraphrased in natural language here. Model-checkers require them to be expressed in some formal logic, like [LTL][126].
2.  __[^][127]__ Lam K., William (2005). ["Chapter 1.1: What Is Design Verification?"][128]. *Hardware Design Verification: Simulation and Formal Method-Based Approaches*. Retrieved December 12, 2012.
3.  __[^][129]__ ["Amir Pnueli - A.M. Turing Award Laureate"][130].
4.  __[^][131]__ Allen Emerson, E.; Clarke, Edmund M. (1980), "Characterizing correctness properties of parallel programs using fixpoints", *Automata, Languages and Programming*, Lecture Notes in Computer Science, __85__: 169–181, [doi][132]:[10.1007/3-540-10003-2\_69][133], [ISBN][134] [978-3-540-10003-4][135]
5.  __[^][136]__ Edmund M. Clarke, E. Allen Emerson: ["Design and Synthesis of Synchronization Skeletons Using Branching-Time Temporal Logic"][137]. Logic of Programs 1981: 52-71.
6.  __[^][138]__ Clarke, E. M.; Emerson, E. A.; Sistla, A. P. (1986), "Automatic verification of finite-state concurrent systems using temporal logic specifications", *ACM Transactions on Programming Languages and Systems*, __8__ (2): 244, [doi][139]:[10.1145/5397.5399][140]
7.  __[^][141]__ Queille, J. P.; Sifakis, J. (1982), "Specification and verification of concurrent systems in CESAR", *International Symposium on Programming*, Lecture Notes in Computer Science, __137__: 337–351, [doi][142]:[10.1007/3-540-11494-7\_22][143], [ISBN][144] [978-3-540-11494-9][145]
8.  __[^][146]__ ["Press Release: ACM Turing Award Honors Founders of Automatic Verification Technology"][147]. Archived from [the original][148] on 2008-12-28. Retrieved 2009-01-06.
9.  __[^][149]__ [*USACM*: 2007 Turing Award Winners Announced][150]
10.  __[^][151]__ Grobelna, Iwona; Grobelny, Michał; Adamski, Marian (2014). "Model Checking of UML Activity Diagrams in Logic Controllers Design". *Proceedings of the Ninth International Conference on Dependability and Complex Systems DepCoS-RELCOMEX. June 30 – July 4, 2014, Brunów, Poland*. Advances in Intelligent Systems and Computing. __286__. pp. 233–242. [doi][152]:[10.1007/978-3-319-07013-1\_22][153]. [ISBN][154] [978-3-319-07012-4][155].
11.  __[^][156]__ I. Grobelna, "[Formal verification of embedded logic controller specification with computer deduction in temporal logic][157]", Przeglad Elektrotechniczny, Vol.87, Issue 12a, pp.47–50, 2011
12.  __[^][158]__ Clarke, E.; Biere, A.; Raimi, R.; Zhu, Y. (2001). "Bounded Model Checking Using Satisfiability Solving". *Formal Methods in System Design*. __19__: 7–34. [doi][159]:[10.1023/A:1011276507260][160].
13.  __[^][161]__ Vizel, Y.; Weissenbacher, G.; Malik, S. (2015). "Boolean Satisfiability Solvers and Their Applications in Model Checking". *Proceedings of the IEEE*. __103__ (11): 2021–2035. [doi][162]:[10.1109/JPROC.2015.2455034][163].
14.  __[^][164]__ Dwyer, M.; Avrunin, G.; Corbett, J. (May 1999). [*Patterns in Property Specification for Finite-State Verification*][165]. Proceedings of the 21st international conference on Software engineering. pp. 411–420.
15.  __[^][166]__ \* *Symbolic Model Checking*, Kenneth L. McMillan, Kluwer, [ISBN][167] [0-7923-9380-5][168], [also online][169] [Archived][170] 2007-06-02 at the [Wayback Machine][171].
16.  __[^][172]__ ["CUDD: CU Decision Diagram Package"][173].
17.  __[^][174]__ ["BuDDy – A Binary Decision Diagram Package"][175].
18.  __[^][176]__ Clarke, Edmund; Grumberg, Orna; Jha, Somesh; Lu, Yuan; Veith, Helmut (2000), ["Counterexample-Guided Abstraction Refinement"][177] (PDF), *Computer Aided Verification*, Lecture Notes in Computer Science, __1855__: 154–169, [doi][178]:[10.1007/10722167\_15][179], [ISBN][180] [978-3-540-67770-3][181]
19.  __[^][182]__ Dawar, A; Kreutzer, S (2009). ["Parameterized complexity of first-order logic"][183] (PDF). *ECCC*. [S2CID][184] [5856640][185]. Archived from [the original][186] (PDF) on 2019-03-03.
20.  __[^][187]__ [Zing][188]

## Further reading\[[edit][189]\]

-   [*Model Checking*][190], [Doron A. Peled][191], Patrizio Pelliccione, Paola Spoletini, Wiley Encyclopedia of Computer Science and Engineering, 2009.
-   *Model Checking*, [Edmund M. Clarke][192], [Orna Grumberg][193] and Doron A. Peled, [MIT Press][194], 1999, [ISBN][195] [0-262-03270-8][196].
-   *Systems and Software Verification: Model-Checking Techniques and Tools*, B. Berard, M. Bidoit, A. Finkel, F. Laroussinie, A. Petit, L. Petrucci, P. Schnoebelen, [ISBN][197] [3-540-41523-8][198]
-   *Logic in Computer Science: Modelling and Reasoning About Systems*, Michael Huth and Mark Ryan, [Cambridge University Press][199], 2004. [doi][200]:[10.2277/052154310X][201].
-   [*The Spin Model Checker: Primer and Reference Manual*][202], [Gerard J. Holzmann][203], Addison-Wesley, [ISBN][204] [0-321-22862-6][205].
-   Julian Bradfield and Colin Stirling, Modal logics and mu-calculi, [Inf.ed.ac.uk][206]
-   Specification Patterns [KSU.edu][207]
-   Property Pattern Mappings for RAFMC [Inria.fr][208]
-   Radu Mateescu and [Mihaela Sighireanu][209] [Efficient On-the-Fly Model-Checking for Regular Alternation-Free Mu-Calculus][210], page 6, Science of Computer Programming 46(3):255–281, 2003
-   Müller-Olm, M., Schmidt, D.A. and [Steffen, B.][211] [*Model checking: a tutorial introduction.*][212] Proc. 6th Static Analysis Symposium, G. File and A. Cortesi, eds., Springer LNCS 1694, 1999, pp. 330–354.
-   [Baier, C.][213], [Katoen, J.][214]: Principles of Model Checking. 2008.
-   [E.M. Clarke][215]: "The birth of model checking" [doi][216]:[10.1007/978-3-540-69850-0\_1][217]
-   E. Allen Emerson (2008). "The Beginning of Model Checking: A Personal Perspective". In Orna Grumberg; Helmut Veith (eds.). [*25 Years of Model Checking — History, Achievements, Perspectives*][218]. LNCS. __5000__. Heidelberg: Springer. pp. 27–45. [doi][219]:[10.1007/978-3-540-69850-0\_2][220]. [ISBN][221] [978-3-540-69849-4][222]. (this is also a very good introduction and overview of model checking)

[1]: https://en.wikipedia.org/wiki/Statistical_model_validation "Statistical model validation"
[2]: https://en.wikipedia.org/wiki/File:Two_One_G_(cropped).jpg
[3]: https://en.wikipedia.org/wiki/Elevator "Elevator"
[4]: https://en.wikipedia.org/wiki/Model_checking#cite_note-1
[5]: https://en.wikipedia.org/wiki/Computer_science "Computer science"
[6]: https://en.wikipedia.org/wiki/Finite-state_machine "Finite-state machine"
[7]: https://en.wikipedia.org/wiki/Formal_specification "Formal specification"
[8]: https://en.wikipedia.org/wiki/Correctness_(computer_science) "Correctness (computer science)"
[9]: https://en.wikipedia.org/wiki/Computer_hardware "Computer hardware"
[10]: https://en.wikipedia.org/wiki/Software_system "Software system"
[11]: https://en.wikipedia.org/wiki/Livelock "Livelock"
[12]: https://en.wikipedia.org/wiki/Crash_(computing) "Crash (computing)"
[13]: https://en.wikipedia.org/wiki/Algorithm "Algorithm"
[14]: https://en.wikipedia.org/wiki/Logic "Logic"
[15]: https://en.wikipedia.org/wiki/Structure_(mathematical_logic) "Structure (mathematical logic)"
[16]: https://en.wikipedia.org/wiki/Propositional_calculus "Propositional calculus"
[17]: https://en.wikipedia.org/w/index.php?title=Model_checking&action=edit&section=1 "Edit section: Overview"
[18]: https://en.wikipedia.org/wiki/Software_verification "Software verification"
[19]: https://en.wikipedia.org/wiki/Refinement_(computing) "Refinement (computing)"
[20]: https://en.wikipedia.org/wiki/Don%27t-care_term "Don't-care term"
[21]: https://en.wikipedia.org/wiki/Model_checking#cite_note-2
[22]: https://en.wikipedia.org/wiki/Computer_hardware "Computer hardware"
[23]: https://en.wikipedia.org/wiki/Software "Software"
[24]: https://en.wikipedia.org/wiki/Temporal_logic "Temporal logic"
[25]: https://en.wikipedia.org/wiki/Amir_Pnueli "Amir Pnueli"
[26]: https://en.wikipedia.org/wiki/Model_checking#cite_note-3
[27]: https://en.wikipedia.org/wiki/E._M._Clarke "E. M. Clarke"
[28]: https://en.wikipedia.org/wiki/E._A._Emerson "E. A. Emerson"
[29]: https://en.wikipedia.org/wiki/Model_checking#cite_note-Allen1980-4
[30]: https://en.wikipedia.org/wiki/Model_checking#cite_note-LoP81-5
[31]: https://en.wikipedia.org/wiki/Model_checking#cite_note-Clarke1986-6
[32]: https://en.wikipedia.org/wiki/J._Sifakis "J. Sifakis"
[33]: https://en.wikipedia.org/wiki/Model_checking#cite_note-Queille1982-7
[34]: https://en.wikipedia.org/wiki/Turing_Award "Turing Award"
[35]: https://en.wikipedia.org/wiki/Model_checking#cite_note-8
[36]: https://en.wikipedia.org/wiki/Model_checking#cite_note-9
[37]: https://en.wikipedia.org/wiki/Computability_theory_(computer_science) "Computability theory (computer science)"
[38]: https://en.wikipedia.org/wiki/Embedded_system "Embedded system"
[39]: https://en.wikipedia.org/wiki/UML_activity_diagram "UML activity diagram"
[40]: https://en.wikipedia.org/wiki/Model_checking#cite_note-10
[41]: https://en.wikipedia.org/wiki/Petri_net "Petri net"
[42]: https://en.wikipedia.org/wiki/Model_checking#cite_note-11
[43]: https://en.wikipedia.org/wiki/Hardware_description_language "Hardware description language"
[44]: https://en.wikipedia.org/wiki/Finite_state_machine "Finite state machine"
[45]: https://en.wikipedia.org/wiki/Directed_graph "Directed graph"
[46]: https://en.wikipedia.org/wiki/Vertex_(graph_theory) "Vertex (graph theory)"
[47]: https://en.wikipedia.org/wiki/Edge_(graph_theory) "Edge (graph theory)"
[48]: https://en.wikipedia.org/wiki/Node_(computer_science) "Node (computer science)"
[49]: https://en.wikipedia.org/wiki/Graph_search "Graph search"
[50]: https://en.wikipedia.org/w/index.php?title=Model_checking&action=edit&section=2 "Edit section: Symbolic model checking"
[51]: https://en.wikipedia.org/wiki/File:Wiki_letter_w_cropped.svg
[52]: https://en.wikipedia.org/w/index.php?title=Model_checking&action=edit&section=
[53]: https://en.wikipedia.org/wiki/Binary_decision_diagrams "Binary decision diagrams"
[54]: https://en.wikipedia.org/wiki/Binary_decision_diagram "Binary decision diagram"
[55]: https://en.wikipedia.org/wiki/Propositional_satisfiability "Propositional satisfiability"
[56]: https://en.wikipedia.org/wiki/Automated_planning_and_scheduling "Automated planning and scheduling"
[57]: https://en.wikipedia.org/wiki/Artificial_intelligence "Artificial intelligence"
[58]: https://en.wikipedia.org/wiki/Satplan "Satplan"
[59]: https://en.wikipedia.org/wiki/Linear_temporal_logic "Linear temporal logic"
[60]: https://en.wikipedia.org/wiki/Model_checking#cite_note-12
[61]: https://en.wikipedia.org/wiki/Boolean_satisfiability_problem "Boolean satisfiability problem"
[62]: https://en.wikipedia.org/wiki/Model_checking#cite_note-13
[63]: https://en.wikipedia.org/w/index.php?title=Model_checking&action=edit&section=3 "Edit section: Example"
[64]: https://en.wikipedia.org/wiki/Model_checking#cite_note-Dwyer,_Avrunin,_Corbett-14
[65]: https://en.wikipedia.org/w/index.php?title=Model_checking&action=edit&section=4 "Edit section: Techniques"
[66]: https://en.wikipedia.org/wiki/State_explosion_problem "State explosion problem"
[67]: https://en.wikipedia.org/wiki/Model_checking#cite_note-15
[68]: https://en.wikipedia.org/wiki/Model_checking#cite_note-16
[69]: https://en.wikipedia.org/wiki/Model_checking#cite_note-17
[70]: https://en.wikipedia.org/wiki/Boolean_satisfiability_problem "Boolean satisfiability problem"
[71]: https://en.wikipedia.org/wiki/Iterative_deepening_depth-first_search "Iterative deepening depth-first search"
[72]: https://en.wikipedia.org/wiki/Abstract_interpretation "Abstract interpretation"
[73]: https://en.wikipedia.org/wiki/Mutual_exclusion "Mutual exclusion"
[74]: https://en.wikipedia.org/wiki/Counterexample "Counterexample"
[75]: https://en.wikipedia.org/wiki/Model_checking#cite_note-Clarke2000-18
[76]: https://en.wikipedia.org/wiki/Discrete_system "Discrete system"
[77]: https://en.wikipedia.org/wiki/Hybrid_system "Hybrid system"
[78]: https://en.wikipedia.org/w/index.php?title=Model_checking&action=edit&section=5 "Edit section: First-order logic"
[79]: https://en.wikipedia.org/wiki/Computational_complexity_theory "Computational complexity theory"
[80]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[81]: https://en.wikipedia.org/wiki/Free_variable "Free variable"
[82]: https://en.wikipedia.org/wiki/Decision_problem "Decision problem"
[83]: https://en.wikipedia.org/wiki/Interpretation_(logic) "Interpretation (logic)"
[84]: https://en.wikipedia.org/wiki/Relational_database "Relational database"
[85]: https://en.wikipedia.org/wiki/Circuit_class "Circuit class"
[86]: https://en.wikipedia.org/wiki/AC0_(complexity) "AC0 (complexity)"
[87]: https://en.wikipedia.org/wiki/Computational_complexity_theory#tractable_problem "Computational complexity theory"
[88]: https://en.wikipedia.org/wiki/Treewidth "Treewidth"
[89]: https://en.wikipedia.org/wiki/Monadic_second-order_logic "Monadic second-order logic"
[90]: https://en.wikipedia.org/wiki/Degree_(graph_theory) "Degree (graph theory)"
[91]: https://en.wikipedia.org/wiki/Bounded_expansion "Bounded expansion"
[92]: https://en.wikipedia.org/wiki/Model_checking#cite_note-19
[93]: https://en.wikipedia.org/wiki/Enumeration_algorithm "Enumeration algorithm"
[94]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[95]: https://en.wikipedia.org/w/index.php?title=Model_checking&action=edit&section=6 "Edit section: Tools"
[96]: https://en.wikipedia.org/wiki/Alloy_(specification_language) "Alloy (specification language)"
[97]: https://en.wikipedia.org/wiki/BLAST_model_checker "BLAST model checker"
[98]: https://en.wikipedia.org/wiki/CADP "CADP"
[99]: https://en.wikipedia.org/wiki/CPAchecker "CPAchecker"
[100]: https://en.wikipedia.org/wiki/ECLAIR "ECLAIR"
[101]: https://en.wikipedia.org/wiki/FDR2 "FDR2"
[102]: https://en.wikipedia.org/wiki/Communicating_sequential_processes "Communicating sequential processes"
[103]: https://en.wikipedia.org/wiki/ISP_Formal_Verification_Tool "ISP Formal Verification Tool"
[104]: https://en.wikipedia.org/wiki/Message_Passing_Interface "Message Passing Interface"
[105]: https://en.wikipedia.org/wiki/Java_Pathfinder "Java Pathfinder"
[106]: https://en.wikipedia.org/wiki/Libdmc "Libdmc"
[107]: https://en.wikipedia.org/wiki/MCRL2 "MCRL2"
[108]: https://en.wikipedia.org/wiki/Boost_Software_License "Boost Software License"
[109]: https://en.wikipedia.org/wiki/Algebra_of_Communicating_Processes "Algebra of Communicating Processes"
[110]: https://en.wikipedia.org/wiki/NuSMV "NuSMV"
[111]: https://en.wikipedia.org/wiki/PAT_(model_checker) "PAT (model checker)"
[112]: https://en.wikipedia.org/wiki/PRISM_(model_checker) "PRISM (model checker)"
[113]: https://en.wikipedia.org/wiki/Romeo_Model_Checker "Romeo Model Checker"
[114]: https://en.wikipedia.org/wiki/SPIN_model_checker "SPIN model checker"
[115]: https://en.wikipedia.org/wiki/TAPAs_model_checker "TAPAs model checker"
[116]: https://en.wikipedia.org/wiki/TAPAAL_Model_Checker "TAPAAL Model Checker"
[117]: https://en.wikipedia.org/wiki/Petri_Nets "Petri Nets"
[118]: https://en.wikipedia.org/wiki/TLA%2B "TLA+"
[119]: https://en.wikipedia.org/wiki/Leslie_Lamport "Leslie Lamport"
[120]: https://en.wikipedia.org/wiki/Uppaal_Model_Checker "Uppaal Model Checker"
[121]: https://en.wikipedia.org/wiki/Model_checking#cite_note-20
[122]: https://en.wikipedia.org/wiki/Microsoft "Microsoft"
[123]: https://en.wikipedia.org/w/index.php?title=Model_checking&action=edit&section=7 "Edit section: See also"
[124]: https://en.wikipedia.org/w/index.php?title=Model_checking&action=edit&section=8 "Edit section: References"
[125]: https://en.wikipedia.org/wiki/Model_checking#cite_ref-1
[126]: https://en.wikipedia.org/wiki/Linear_temporal_logic "Linear temporal logic"
[127]: https://en.wikipedia.org/wiki/Model_checking#cite_ref-2
[128]: http://my.safaribooksonline.com/book/electrical-engineering/semiconductor-technology/0131433474/an-invitation-to-design-verification/ch01lev1sec1#X2ludGVybmFsX0h0bWxWaWV3P3htbGlkPTAxMzE0MzM0NzQlMkZjaDAxbGV2MXNlYzEmcXVlcnk9
[129]: https://en.wikipedia.org/wiki/Model_checking#cite_ref-3
[130]: http://amturing.acm.org/award_winners/pnueli_4725172.cfm/
[131]: https://en.wikipedia.org/wiki/Model_checking#cite_ref-Allen1980_4-0
[132]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[133]: https://doi.org/10.1007%2F3-540-10003-2_69
[134]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[135]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-540-10003-4 "Special:BookSources/978-3-540-10003-4"
[136]: https://en.wikipedia.org/wiki/Model_checking#cite_ref-LoP81_5-0
[137]: http://portal.acm.org/citation.cfm?id=747438&dl=
[138]: https://en.wikipedia.org/wiki/Model_checking#cite_ref-Clarke1986_6-0
[139]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[140]: https://doi.org/10.1145%2F5397.5399
[141]: https://en.wikipedia.org/wiki/Model_checking#cite_ref-Queille1982_7-0
[142]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[143]: https://doi.org/10.1007%2F3-540-11494-7_22
[144]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[145]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-540-11494-9 "Special:BookSources/978-3-540-11494-9"
[146]: https://en.wikipedia.org/wiki/Model_checking#cite_ref-8
[147]: https://web.archive.org/web/20081228210748/http://www.acm.org/press-room/news-releases/turing-award-07/
[148]: http://www.acm.org/press-room/news-releases/turing-award-07/
[149]: https://en.wikipedia.org/wiki/Model_checking#cite_ref-9
[150]: http://usacm.acm.org/usacm/weblog/index.php?p=572
[151]: https://en.wikipedia.org/wiki/Model_checking#cite_ref-10
[152]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[153]: https://doi.org/10.1007%2F978-3-319-07013-1_22
[154]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[155]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-319-07012-4 "Special:BookSources/978-3-319-07012-4"
[156]: https://en.wikipedia.org/wiki/Model_checking#cite_ref-11
[157]: https://www.researchgate.net/profile/Jan_Sikora3/publication/267037615_Advanced_Numerical_Modelling/links/5442adc40cf2e6f0c0f9366b/Advanced-Numerical-Modelling.pdf#page=63
[158]: https://en.wikipedia.org/wiki/Model_checking#cite_ref-12
[159]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[160]: https://doi.org/10.1023%2FA%3A1011276507260
[161]: https://en.wikipedia.org/wiki/Model_checking#cite_ref-13
[162]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[163]: https://doi.org/10.1109%2FJPROC.2015.2455034
[164]: https://en.wikipedia.org/wiki/Model_checking#cite_ref-Dwyer,_Avrunin,_Corbett_14-0
[165]: https://dl.acm.org/doi/pdf/10.1145/302405.302672?casa_token=ejEgdXEcp0kAAAAA:K9ZO07uEgenNOV7ak4kDXpJc_NnVMIIEUjr9PVJr5Fe9qkiCR8bbqKXV-o7Utsy8eIqesoWGys0
[166]: https://en.wikipedia.org/wiki/Model_checking#cite_ref-15
[167]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[168]: https://en.wikipedia.org/wiki/Special:BookSources/0-7923-9380-5 "Special:BookSources/0-7923-9380-5"
[169]: http://www.kenmcmil.com/thesis.html
[170]: https://web.archive.org/web/20070602185228/http://www.kenmcmil.com/thesis.html
[171]: https://en.wikipedia.org/wiki/Wayback_Machine "Wayback Machine"
[172]: https://en.wikipedia.org/wiki/Model_checking#cite_ref-16
[173]: https://www.cs.rice.edu/~lm30/RSynth/CUDD/cudd/doc/
[174]: https://en.wikipedia.org/wiki/Model_checking#cite_ref-17
[175]: http://vlsicad.eecs.umich.edu/BK/Slots/cache/www.itu.dk/research/buddy/
[176]: https://en.wikipedia.org/wiki/Model_checking#cite_ref-Clarke2000_18-0
[177]: http://www.aladdin.cs.cmu.edu/papers/pdfs/y2000/counterex.pdf
[178]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[179]: https://doi.org/10.1007%2F10722167_15
[180]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[181]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-540-67770-3 "Special:BookSources/978-3-540-67770-3"
[182]: https://en.wikipedia.org/wiki/Model_checking#cite_ref-19
[183]: https://web.archive.org/web/20190303105602/http://pdfs.semanticscholar.org/ac54/505a6c9b843259727dba98fad1a02af2a567.pdf
[184]: https://en.wikipedia.org/wiki/S2CID_(identifier) "S2CID (identifier)"
[185]: https://api.semanticscholar.org/CorpusID:5856640
[186]: http://pdfs.semanticscholar.org/ac54/505a6c9b843259727dba98fad1a02af2a567.pdf
[187]: https://en.wikipedia.org/wiki/Model_checking#cite_ref-20
[188]: https://www.microsoft.com/en-us/research/project/zing
[189]: https://en.wikipedia.org/w/index.php?title=Model_checking&action=edit&section=9 "Edit section: Further reading"
[190]: http://mrw.interscience.wiley.com/emrw/9780470050118/ecse/article/ecse247/current/abstract
[191]: https://en.wikipedia.org/wiki/Doron_A._Peled "Doron A. Peled"
[192]: https://en.wikipedia.org/wiki/Edmund_M._Clarke "Edmund M. Clarke"
[193]: https://en.wikipedia.org/wiki/Orna_Grumberg "Orna Grumberg"
[194]: https://en.wikipedia.org/wiki/MIT_Press "MIT Press"
[195]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[196]: https://en.wikipedia.org/wiki/Special:BookSources/0-262-03270-8 "Special:BookSources/0-262-03270-8"
[197]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[198]: https://en.wikipedia.org/wiki/Special:BookSources/3-540-41523-8 "Special:BookSources/3-540-41523-8"
[199]: https://en.wikipedia.org/wiki/Cambridge_University_Press "Cambridge University Press"
[200]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[201]: https://doi.org/10.2277%2F052154310X
[202]: http://spinroot.com/spin/Doc/Book_extras/
[203]: https://en.wikipedia.org/wiki/Gerard_J._Holzmann "Gerard J. Holzmann"
[204]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[205]: https://en.wikipedia.org/wiki/Special:BookSources/0-321-22862-6 "Special:BookSources/0-321-22862-6"
[206]: http://homepages.inf.ed.ac.uk/jcb/Research/bradfield-stirling-HPA-mu-intro.ps.gz
[207]: https://web.archive.org/web/20110719222236/http://patterns.projects.cis.ksu.edu/documentation/patterns.shtml
[208]: http://cadp.inria.fr/resources/evaluator/rafmc.html
[209]: https://en.wikipedia.org/wiki/Mihaela_Sighireanu "Mihaela Sighireanu"
[210]: http://vasy.inria.fr/publications/Mateescu-Sighireanu-03.html
[211]: https://en.wikipedia.org/wiki/Bernhard_Steffen_(computer_scientist) "Bernhard Steffen (computer scientist)"
[212]: http://people.cis.ksu.edu/~schmidt/papers/sas99.ps.gz
[213]: https://en.wikipedia.org/wiki/Christel_Baier "Christel Baier"
[214]: https://en.wikipedia.org/wiki/Joost-Pieter_Katoen "Joost-Pieter Katoen"
[215]: https://en.wikipedia.org/wiki/Edmund_M._Clarke "Edmund M. Clarke"
[216]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[217]: https://doi.org/10.1007%2F978-3-540-69850-0_1
[218]: https://link.springer.com/chapter/10.1007/978-3-540-69850-0_2
[219]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[220]: https://doi.org/10.1007%2F978-3-540-69850-0_2
[221]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[222]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-540-69849-4 "Special:BookSources/978-3-540-69849-4"

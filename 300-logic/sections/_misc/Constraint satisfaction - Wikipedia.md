---
downloaded:       2021-12-18
page-url:         https://en.wikipedia.org/wiki/Constraint_satisfaction
page-title:       Constraint satisfaction - Wikipedia
article-title:    Constraint satisfaction - Wikipedia
---
# Constraint satisfaction - Wikipedia

In artificial intelligence and operations research, constraint satisfaction is the process of finding a solution to a set of constraints that impose conditions that the variables must satisfy.[1]  A solution is therefore a set of values for the variables that satisfies all constraints—that is, a point in the feasible region.
In [artificial intelligence][1] and [operations research][2], **constraint satisfaction** is the process of finding a solution to a set of [constraints][3] that impose conditions that the [variables][4] must [satisfy][5].[\[1\]][6] A solution is therefore a set of values for the variables that satisfies all constraints—that is, a point in the [feasible region][7].

The techniques used in constraint satisfaction depend on the kind of constraints being considered. Often used are [constraints on a finite domain][8], to the point that [constraint satisfaction problems][9] are typically identified with problems based on constraints on a finite domain. Such problems are usually solved via [search][10], in particular a form of [backtracking][11] or [local search][12]. [Constraint propagation][13] are other methods used on such problems; most of them are incomplete in general, that is, they may solve the problem or prove it unsatisfiable, but not always. Constraint propagation methods are also used in conjunction with search to make a given problem simpler to solve. Other considered kinds of constraints are on real or rational numbers; solving problems on these constraints is done via [variable elimination][14] or the [simplex algorithm][15].

Constraint satisfaction as a general problem originated in the field of [artificial intelligence][16] in the 1970s (see for example ([Laurière 1978][17])). However, when the constraints are expressed as multivariate linear equations defining (in)equalities, the field goes back to [Joseph Fourier][18] in the 19th century: [George Dantzig][19]'s invention of the [Simplex Algorithm][20] for [Linear Programming][21] (a special case of mathematical optimization) in 1946 has allowed determining feasible solutions to problems containing hundreds of variables.

During the 1980s and 1990s, embedding of constraints into a [programming language][22] were developed. The first languages devised expressly with intrinsic support for [constraint programming][23] was [Prolog][24]. Since then, constraint-programming libraries have become available in other languages, such as [C++][25] or [Java][26] (e.g., Choco for Java[\[2\]][27]).

## Constraint satisfaction problem\[[edit][28]\]

As originally defined in artificial intelligence, constraints enumerate the possible values a set of variables may take in a given world. A [possible world][29] is a total assignment of values to variables representing a way the world (real or imaginary) could be.[\[3\]][30] Informally, a finite domain is a finite set of arbitrary elements. A constraint satisfaction problem on such domain contains a set of variables whose values can only be taken from the domain, and a set of constraints, each constraint specifying the allowed values for a group of variables. A solution to this problem is an evaluation of the variables that satisfies all constraints. In other words, a solution is a way for assigning a value to each variable in such a way that all constraints are satisfied by these values.

In some circumstances, there may exist additional requirements: one may be interested not only in the solution (and in the fastest or most computationally efficient way to reach it) but in how it was reached; e.g. one may want the "simplest" solution ("simplest" in a logical, non computational sense that has to be precisely defined). This is often the case in logic games such as Sudoku.

In practice, constraints are often expressed in compact form, rather than enumerating all the values of the variables that would satisfy the constraint. One of the most used constraints is the (obvious) one establishing that the values of the affected variables must be all different.

Problems that can be expressed as constraint satisfaction problems are the [eight queens puzzle][31], the [Sudoku][32] solving problem and many other logic puzzles, the [Boolean satisfiability problem][33], [scheduling][34] problems, [bounded-error estimation][35] problems and various problems on graphs such as the [graph coloring][36] problem.

While usually not included in the above definition of a constraint satisfaction problem, arithmetic equations and inequalities bound the values of the variables they contain and can therefore be considered a form of constraints. Their domain is the set of numbers (either integer, rational, or real), which is infinite: therefore, the relations of these constraints may be infinite as well; for example,  has an infinite number of pairs of satisfying values. Arithmetic equations and inequalities are often not considered within the definition of a "constraint satisfaction problem", which is limited to finite domains. They are however used often in [constraint programming][37].

It can be shown that the arithmetic inequalities or equations present in some types of finite logic puzzles such as [Futoshiki][38] or [Kakuro][39] (also known as Cross Sums) can be dealt with as non-arithmetic constraints (see *Pattern-Based Constraint Satisfaction and Logic Puzzles*[\[4\]][40]).

### Solving\[[edit][41]\]

Constraint satisfaction problems on finite domains are typically solved using a form of [search][42]. The most used techniques are variants of [backtracking][43], [constraint propagation][44], and [local search][45]. These techniques are used on problems with [nonlinear][46] constraints.

[Variable elimination][47] and the [simplex algorithm][48] are used for solving [linear][49] and [polynomial][50] equations and inequalities, and problems containing variables with infinite domain. These are typically solved as [optimization][51] problems in which the optimized function is the number of violated constraints.

### Complexity\[[edit][52]\]

Solving a constraint satisfaction problem on a finite domain is an [NP complete][53] problem with respect to the domain size. Research has shown a number of [tractable][54] subcases, some limiting the allowed constraint relations, some requiring the scopes of constraints to form a tree, possibly in a reformulated version of the problem. Research has also established relationship of the constraint satisfaction problem with problems in other areas such as [finite model theory][55].

## Constraint programming\[[edit][56]\]

Constraint programming is the use of constraints as a programming language to encode and solve problems. This is often done by embedding constraints into a [programming language][57], which is called the host language. Constraint programming originated from a formalization of equalities of terms in [Prolog II][58], leading to a general framework for embedding constraints into a [logic programming][59] language. The most common host languages are [Prolog][60], [C++][61], and [Java][62], but other languages have been used as well.

### Constraint logic programming\[[edit][63]\]

A constraint logic program is a [logic program][64] that contains constraints in the bodies of clauses. As an example, the clause `A(X):-X>0,B(X)` is a clause containing the constraint `X>0` in the body. Constraints can also be present in the goal. The constraints in the goal and in the clauses used to prove the goal are accumulated into a set called [constraint store][65]. This set contains the constraints the interpreter has assumed satisfiable in order to proceed in the evaluation. As a result, if this set is detected unsatisfiable, the interpreter backtracks. Equations of terms, as used in logic programming, are considered a particular form of constraints which can be simplified using [unification][66]. As a result, the constraint store can be considered an extension of the concept of [substitution][67] that is used in regular logic programming. The most common kinds of constraints used in constraint logic programming are constraints over integers/rational/real numbers and constraints over finite domains.

[Concurrent constraint logic programming][68] languages have also been developed. They significantly differ from non-concurrent constraint logic programming in that they are aimed at programming [concurrent processes][69] that may not terminate. [Constraint handling rules][70] can be seen as a form of concurrent constraint logic programming, but are also sometimes used within a non-concurrent constraint logic programming language. They allow for rewriting constraints or to infer new ones based on the truth of conditions.

### Constraint satisfaction toolkits\[[edit][71]\]

Constraint satisfaction toolkits are [software libraries][72] for [imperative programming languages][73] that are used to encode and solve a constraint satisfaction problem.

-   [Cassowary constraint solver][74], an [open source][75] project for constraint satisfaction (accessible from C, Java, Python and other languages).
-   [Comet][76], a commercial programming language and toolkit
-   [Gecode][77], an open source portable toolkit written in C++ developed as a production-quality and highly efficient implementation of a complete theoretical background.
-   [Gelisp][78], an open source portable wrapper of [Gecode][79] to [Lisp][80].[\[5\]][81] [http://gelisp.sourceforge.net/][82]
-   [IBM][83] [ILOG][84] [CP Optimizer][85]: C++, [Python][86], Java, .NET libraries (proprietary, [free for academic use][87]).[\[6\]][88] Successor of ILOG Solver/Scheduler, which was considered the market leader in commercial constraint programming software as of 2006[\[7\]][89]
-   [JaCoP][90], an open source Java constraint solver.
-   [OptaPlanner][91], another open source Java constraint solver.
-   [Koalog][92], a commercial Java-based constraint solver.
-   [logilab-constraint][93], an open source constraint solver written in pure Python with constraint propagation algorithms.
-   [Minion][94], an open-source constraint solver written in C++, with a small language for the purpose of specifying models/problems.
-   ZDC, an open source program developed in the [Computer-Aided Constraint Satisfaction Project][95] for modelling and solving constraint satisfaction problems.

### Other constraint programming languages\[[edit][96]\]

Constraint toolkits are a way for embedding constraints into an [imperative programming language][97]. However, they are only used as external libraries for encoding and solving problems. An approach in which constraints are integrated into an imperative programming language is taken in the [Kaleidoscope programming language][98].

Constraints have also been embedded into [functional programming languages][99].

## See also\[[edit][100]\]

-   [Constraint satisfaction problem][101]
-   [Constraint (mathematics)][102]
-   [Candidate solution][103]
-   [Boolean satisfiability problem][104]
-   [Decision theory][105]
-   [Satisfiability modulo theories][106]
-   [Knowledge-based configuration][107]

## References\[[edit][108]\]

1.  **[^][109]** Edward Tsang (13 May 2014). [*Foundations of Constraint Satisfaction: The Classic Text*][110]. BoD – Books on Demand. [ISBN][111] [978-3-7357-2366-6][112].
2.  **[^][113]** Choco: An Open-Source java library for constraint programming. [https://choco-solver.org][114] Accessed Dec 12, 2021.
3.  **[^][115]** ["4.1.1 Variables and Worlds‣ 4.1 Possible Worlds, Variables, and Constraints ‣ Chapter 4 Reasoning with Constraints ‣ Artificial Intelligence: Foundations of Computational Agents, 2nd Edition"][116].
4.  **[^][117]** (in English) Berthier, Denis (20 November 2012). ["Pattern-Based Constraint Satisfaction and Logic Puzzles"][118]. *Lulu Publishers*. [ISBN][119] [978-1-291-20339-4][120]. Archived from [the original][121] on 12 January 2013. Retrieved 24 October 2012.
5.  **[^][122]** Mauricio Toro, Carlos Agon, Camilo Rueda, Gerard Assayag. "[GELISP: A FRAMEWORK TO REPRESENT MUSICAL CONSTRAINT SATISFACTION PROBLEMS AND SEARCH STRATEGIES][123]." Journal of Theoretical and Applied Information Technology 86 (2). 2016. 327-331.
6.  **[^][124]** Laborie P, Rogerie J, Shaw P, Vilim P (2018). "IBM ILOG CP optimizer for scheduling". *Constraints*. **23** (2): 210–250. [doi][125]:[10.1007/s10601-018-9281-x][126]. [S2CID][127] [4360357][128].
7.  **[^][129]** [Francesca Rossi][130]; Peter Van Beek; Toby Walsh (2006). [*Handbook of constraint programming*][131]. Elsevier. p. 157. [ISBN][132] [978-0-444-52726-4][133].

-   Apt, Krzysztof (2003). [*Principles of constraint programming*][134]. Cambridge University Press. [ISBN][135] [978-0-521-82583-2][136].
-   Dechter, Rina (2003). [*Constraint processing*][137]. Morgan Kaufmann. [ISBN][138] [978-1-55860-890-0][139].
-   Dincbas, M.; Simonis, H.; Van Hentenryck, P. (1990). ["Solving Large Combinatorial Problems in Logic Programming"][140]. *Journal of Logic Programming*. **8** (1–2): 75–93. [doi][141]:[10.1016/0743-1066(90)90052-7][142].
-   Freuder, Eugene; Mackworth, Alan, eds. (1994). [*Constraint-based reasoning*][143]. MIT Press. [ISBN][144] [978-0-262-56075-7][145].
-   Frühwirth, Thom; Slim Abdennadher (2003). *Essentials of constraint programming*. Springer. [ISBN][146] [978-3-540-67623-2][147].
-   Guesguen, Hans; Hertzberg Joachim (1992). *A Perspective of Constraint Based Reasoning*. Springer. [ISBN][148] [978-3-540-55510-0][149].
-   Jaffar, Joxan; Michael J. Maher (1994). ["Constraint logic programming: a survey"][150]. *Journal of Logic Programming*. 19/20: 503–581. [doi][151]:[10.1016/0743-1066(94)90033-7][152].
-   Laurière, Jean-Louis (1978). "A Language and a Program for Stating and Solving Combinatorial Problems". *[Artificial Intelligence][153]*. **10** (1): 29–127. [doi][154]:[10.1016/0004-3702(78)90029-2][155].
-   Lecoutre, Christophe (2009). [*Constraint Networks: Techniques and Algorithms*][156]. ISTE/Wiley. [ISBN][157] [978-1-84821-106-3][158].
-   Marriott, Kim; Peter J. Stuckey (1998). *Programming with constraints: An introduction*. MIT Press. [ISBN][159] [978-0-262-13341-8][160].
-   Rossi, Francesca; Peter van Beek; Toby Walsh, eds. (2006). [*Handbook of Constraint Programming*][161]. Elsevier. [ISBN][162] [978-0-444-52726-4][163]. Archived from [the original][164] on 2012-10-04. Retrieved 2006-10-13.
-   Tsang, Edward (1993). [*Foundations of Constraint Satisfaction*][165]. Academic Press. [ISBN][166] [978-0-12-701610-8][167].
-   Van Hentenryck, Pascal (1989). [*Constraint Satisfaction in Logic Programming*][168]. MIT Press. [ISBN][169] [978-0-262-08181-8][170].
-   Rashidi, Hassan.; Tsang, Edward. (2012). ["Novel constraints satisfaction models for optimization problems in container terminals"][171]. *Journal of Applied Mathematical Modelling*. **37** (6): 3601–34. [doi][172]:[10.1016/j.apm.2012.07.042][173].

## External links\[[edit][174]\]

-   [CSP Tutorial][175]

### Videos\[[edit][176]\]

-   [Constraint Satisfaction Lecture by Dr Madhu Sharma (3:47)][177]
-   [Introduction of Constraint Satisfaction Problems by Edward Tsang (7:34)][178]
-   [Constraint Satisfaction Problems by Wheeler Ruml (9:18)][179]
-   [Lecture on Constraint Satisfaction Problems by Indian Institute of Technology Madras (51:59)][180]
-   [Lecture on CSPs (1:16:39)][181]
-   [Lecture on Constraint Satisfaction Problems by Berkeley AI (1:17:38)][182]
-   [Graduate Course in AI 5: Constraint Satisfaction by Prof Mausam (1:34:29)][183]

[1]: https://en.wikipedia.org/wiki/Artificial_intelligence "Artificial intelligence"
[2]: https://en.wikipedia.org/wiki/Operations_research "Operations research"
[3]: https://en.wikipedia.org/wiki/Constraint_(mathematics) "Constraint (mathematics)"
[4]: https://en.wikipedia.org/wiki/Variable_(mathematics) "Variable (mathematics)"
[5]: https://en.wikipedia.org/wiki/Satisfiability "Satisfiability"
[6]: https://en.wikipedia.org/wiki/Constraint_satisfaction#cite_note-Tsang2014-1
[7]: https://en.wikipedia.org/wiki/Feasible_region "Feasible region"
[8]: https://en.wikipedia.org/wiki/Finite_domain_constraint "Finite domain constraint"
[9]: https://en.wikipedia.org/wiki/Constraint_satisfaction_problem "Constraint satisfaction problem"
[10]: https://en.wikipedia.org/wiki/Search_algorithm "Search algorithm"
[11]: https://en.wikipedia.org/wiki/Backtracking "Backtracking"
[12]: https://en.wikipedia.org/wiki/Local_search_(constraint_satisfaction) "Local search (constraint satisfaction)"
[13]: https://en.wikipedia.org/wiki/Constraint_propagation "Constraint propagation"
[14]: https://en.wikipedia.org/wiki/Variable_elimination "Variable elimination"
[15]: https://en.wikipedia.org/wiki/Simplex_algorithm "Simplex algorithm"
[16]: https://en.wikipedia.org/wiki/Artificial_intelligence "Artificial intelligence"
[17]: https://en.wikipedia.org/wiki/Constraint_satisfaction#CITEREFLauri%C3%A8re1978
[18]: https://en.wikipedia.org/wiki/Joseph_Fourier "Joseph Fourier"
[19]: https://en.wikipedia.org/wiki/George_Dantzig "George Dantzig"
[20]: https://en.wikipedia.org/wiki/Simplex_Algorithm "Simplex Algorithm"
[21]: https://en.wikipedia.org/wiki/Linear_Programming "Linear Programming"
[22]: https://en.wikipedia.org/wiki/Programming_language "Programming language"
[23]: https://en.wikipedia.org/wiki/Constraint_programming "Constraint programming"
[24]: https://en.wikipedia.org/wiki/Prolog "Prolog"
[25]: https://en.wikipedia.org/wiki/C%2B%2B "C++"
[26]: https://en.wikipedia.org/wiki/Java "Java"
[27]: https://en.wikipedia.org/wiki/Constraint_satisfaction#cite_note-2
[28]: https://en.wikipedia.org/w/index.php?title=Constraint_satisfaction&action=edit&section=1 "Edit section: Constraint satisfaction problem"
[29]: https://en.wikipedia.org/wiki/Possible_world "Possible world"
[30]: https://en.wikipedia.org/wiki/Constraint_satisfaction#cite_note-3
[31]: https://en.wikipedia.org/wiki/Eight_queens_puzzle "Eight queens puzzle"
[32]: https://en.wikipedia.org/wiki/Sudoku "Sudoku"
[33]: https://en.wikipedia.org/wiki/Boolean_satisfiability_problem "Boolean satisfiability problem"
[34]: https://en.wikipedia.org/wiki/Scheduling_(production_processes) "Scheduling (production processes)"
[35]: https://en.wikipedia.org/wiki/Interval_propagation "Interval propagation"
[36]: https://en.wikipedia.org/wiki/Graph_coloring "Graph coloring"
[37]: https://en.wikipedia.org/wiki/Constraint_programming "Constraint programming"
[38]: https://en.wikipedia.org/wiki/Futoshiki "Futoshiki"
[39]: https://en.wikipedia.org/wiki/Kakuro "Kakuro"
[40]: https://en.wikipedia.org/wiki/Constraint_satisfaction#cite_note-Pattern-Based_Constraint_Satisfaction_and_Logic_Puzzles-4
[41]: https://en.wikipedia.org/w/index.php?title=Constraint_satisfaction&action=edit&section=2 "Edit section: Solving"
[42]: https://en.wikipedia.org/wiki/Search_algorithm "Search algorithm"
[43]: https://en.wikipedia.org/wiki/Backtracking "Backtracking"
[44]: https://en.wikipedia.org/wiki/Constraint_propagation "Constraint propagation"
[45]: https://en.wikipedia.org/wiki/Local_search_(optimization) "Local search (optimization)"
[46]: https://en.wikipedia.org/wiki/Nonlinear "Nonlinear"
[47]: https://en.wikipedia.org/wiki/Variable_elimination "Variable elimination"
[48]: https://en.wikipedia.org/wiki/Simplex_algorithm "Simplex algorithm"
[49]: https://en.wikipedia.org/wiki/Linear "Linear"
[50]: https://en.wikipedia.org/wiki/Polynomial "Polynomial"
[51]: https://en.wikipedia.org/wiki/Optimization_(mathematics) "Optimization (mathematics)"
[52]: https://en.wikipedia.org/w/index.php?title=Constraint_satisfaction&action=edit&section=3 "Edit section: Complexity"
[53]: https://en.wikipedia.org/wiki/NP_complete "NP complete"
[54]: https://en.wikipedia.org/wiki/Tractable_problem "Tractable problem"
[55]: https://en.wikipedia.org/wiki/Finite_model_theory "Finite model theory"
[56]: https://en.wikipedia.org/w/index.php?title=Constraint_satisfaction&action=edit&section=4 "Edit section: Constraint programming"
[57]: https://en.wikipedia.org/wiki/Programming_language "Programming language"
[58]: https://en.wikipedia.org/wiki/Prolog_II "Prolog II"
[59]: https://en.wikipedia.org/wiki/Logic_programming "Logic programming"
[60]: https://en.wikipedia.org/wiki/Prolog "Prolog"
[61]: https://en.wikipedia.org/wiki/C%2B%2B "C++"
[62]: https://en.wikipedia.org/wiki/Java_(programming_language) "Java (programming language)"
[63]: https://en.wikipedia.org/w/index.php?title=Constraint_satisfaction&action=edit&section=5 "Edit section: Constraint logic programming"
[64]: https://en.wikipedia.org/wiki/Logic_programming "Logic programming"
[65]: https://en.wikipedia.org/wiki/Constraint_store "Constraint store"
[66]: https://en.wikipedia.org/wiki/Unification_(computing) "Unification (computing)"
[67]: https://en.wikipedia.org/wiki/Substitution_(logic) "Substitution (logic)"
[68]: https://en.wikipedia.org/wiki/Concurrent_constraint_logic_programming "Concurrent constraint logic programming"
[69]: https://en.wikipedia.org/wiki/Concurrent_process "Concurrent process"
[70]: https://en.wikipedia.org/wiki/Constraint_handling_rules "Constraint handling rules"
[71]: https://en.wikipedia.org/w/index.php?title=Constraint_satisfaction&action=edit&section=6 "Edit section: Constraint satisfaction toolkits"
[72]: https://en.wikipedia.org/wiki/Software_library "Software library"
[73]: https://en.wikipedia.org/wiki/Imperative_programming_language "Imperative programming language"
[74]: https://en.wikipedia.org/wiki/Cassowary_constraint_solver "Cassowary constraint solver"
[75]: https://en.wikipedia.org/wiki/Open_source "Open source"
[76]: https://en.wikipedia.org/wiki/Comet_(programming_language) "Comet (programming language)"
[77]: https://en.wikipedia.org/wiki/Gecode "Gecode"
[78]: https://en.wikipedia.org/w/index.php?title=Gelisp&action=edit&redlink=1 "Gelisp (page does not exist)"
[79]: https://en.wikipedia.org/wiki/Gecode "Gecode"
[80]: https://en.wikipedia.org/wiki/Lisp_(programming_language) "Lisp (programming language)"
[81]: https://en.wikipedia.org/wiki/Constraint_satisfaction#cite_note-5
[82]: http://gelisp.sourceforge.net/
[83]: https://en.wikipedia.org/wiki/IBM "IBM"
[84]: https://en.wikipedia.org/wiki/ILOG "ILOG"
[85]: http://www.ibm.com/analytics/cplex-cp-optimizer
[86]: https://pypi.python.org/pypi/docplex
[87]: https://ibm.biz/COS_Faculty
[88]: https://en.wikipedia.org/wiki/Constraint_satisfaction#cite_note-CPOptimizer2018-6
[89]: https://en.wikipedia.org/wiki/Constraint_satisfaction#cite_note-RossiBeek2006-7
[90]: https://en.wikipedia.org/wiki/JaCoP_(solver) "JaCoP (solver)"
[91]: https://en.wikipedia.org/wiki/OptaPlanner "OptaPlanner"
[92]: https://en.wikipedia.org/w/index.php?title=Koalog&action=edit&redlink=1 "Koalog (page does not exist)"
[93]: https://en.wikipedia.org/w/index.php?title=Logilab-constraint&action=edit&redlink=1 "Logilab-constraint (page does not exist)"
[94]: https://en.wikipedia.org/wiki/Minion_(solver) "Minion (solver)"
[95]: https://en.wikipedia.org/w/index.php?title=Computer-Aided_Constraint_Satisfaction_Project&action=edit&redlink=1 "Computer-Aided Constraint Satisfaction Project (page does not exist)"
[96]: https://en.wikipedia.org/w/index.php?title=Constraint_satisfaction&action=edit&section=7 "Edit section: Other constraint programming languages"
[97]: https://en.wikipedia.org/wiki/Imperative_programming_language "Imperative programming language"
[98]: https://en.wikipedia.org/wiki/Kaleidoscope_programming_language "Kaleidoscope programming language"
[99]: https://en.wikipedia.org/wiki/Functional_programming "Functional programming"
[100]: https://en.wikipedia.org/w/index.php?title=Constraint_satisfaction&action=edit&section=8 "Edit section: See also"
[101]: https://en.wikipedia.org/wiki/Constraint_satisfaction_problem "Constraint satisfaction problem"
[102]: https://en.wikipedia.org/wiki/Constraint_(mathematics) "Constraint (mathematics)"
[103]: https://en.wikipedia.org/wiki/Candidate_solution "Candidate solution"
[104]: https://en.wikipedia.org/wiki/Boolean_satisfiability_problem "Boolean satisfiability problem"
[105]: https://en.wikipedia.org/wiki/Decision_theory "Decision theory"
[106]: https://en.wikipedia.org/wiki/Satisfiability_modulo_theories "Satisfiability modulo theories"
[107]: https://en.wikipedia.org/wiki/Knowledge-based_configuration "Knowledge-based configuration"
[108]: https://en.wikipedia.org/w/index.php?title=Constraint_satisfaction&action=edit&section=9 "Edit section: References"
[109]: https://en.wikipedia.org/wiki/Constraint_satisfaction#cite_ref-Tsang2014_1-0 "Jump up"
[110]: https://books.google.com/books?id=UFmRAwAAQBAJ
[111]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[112]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-7357-2366-6 "Special:BookSources/978-3-7357-2366-6"
[113]: https://en.wikipedia.org/wiki/Constraint_satisfaction#cite_ref-2 "Jump up"
[114]: https://choco-solver.org/
[115]: https://en.wikipedia.org/wiki/Constraint_satisfaction#cite_ref-3 "Jump up"
[116]: https://artint.info/2e/html/ArtInt2e.Ch4.S1.SS1.html
[117]: https://en.wikipedia.org/wiki/Constraint_satisfaction#cite_ref-Pattern-Based_Constraint_Satisfaction_and_Logic_Puzzles_4-0 "Jump up"
[118]: https://archive.today/20130112121944/http://www.carva.org/denis.berthier/PBCS
[119]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[120]: https://en.wikipedia.org/wiki/Special:BookSources/978-1-291-20339-4 "Special:BookSources/978-1-291-20339-4"
[121]: http://www.carva.org/denis.berthier/PBCS
[122]: https://en.wikipedia.org/wiki/Constraint_satisfaction#cite_ref-5 "Jump up"
[123]: http://www.jatit.org/volumes/Vol86No2/17Vol86No2.pdf
[124]: https://en.wikipedia.org/wiki/Constraint_satisfaction#cite_ref-CPOptimizer2018_6-0 "Jump up"
[125]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[126]: https://doi.org/10.1007%2Fs10601-018-9281-x
[127]: https://en.wikipedia.org/wiki/S2CID_(identifier) "S2CID (identifier)"
[128]: https://api.semanticscholar.org/CorpusID:4360357
[129]: https://en.wikipedia.org/wiki/Constraint_satisfaction#cite_ref-RossiBeek2006_7-0 "Jump up"
[130]: https://en.wikipedia.org/wiki/Francesca_Rossi "Francesca Rossi"
[131]: https://books.google.com/books?id=Kjap9ZWcKOoC&pg=PA157
[132]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[133]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-444-52726-4 "Special:BookSources/978-0-444-52726-4"
[134]: https://archive.org/details/principlesofcons0000aptk
[135]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[136]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-521-82583-2 "Special:BookSources/978-0-521-82583-2"
[137]: https://archive.org/details/constraintproces00rina
[138]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[139]: https://en.wikipedia.org/wiki/Special:BookSources/978-1-55860-890-0 "Special:BookSources/978-1-55860-890-0"
[140]: https://doi.org/10.1016%2F0743-1066%2890%2990052-7
[141]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[142]: https://doi.org/10.1016%2F0743-1066%2890%2990052-7
[143]: https://books.google.com/books?id=7EVjkM8_A_gC
[144]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[145]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-262-56075-7 "Special:BookSources/978-0-262-56075-7"
[146]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[147]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-540-67623-2 "Special:BookSources/978-3-540-67623-2"
[148]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[149]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-540-55510-0 "Special:BookSources/978-3-540-55510-0"
[150]: https://doi.org/10.1016%2F0743-1066%2894%2990033-7
[151]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[152]: https://doi.org/10.1016%2F0743-1066%2894%2990033-7
[153]: https://en.wikipedia.org/wiki/Artificial_Intelligence_(journal) "Artificial Intelligence (journal)"
[154]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[155]: https://doi.org/10.1016%2F0004-3702%2878%2990029-2
[156]: http://www.iste.co.uk/index.php?f=a&ACTION=View&id=250
[157]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[158]: https://en.wikipedia.org/wiki/Special:BookSources/978-1-84821-106-3 "Special:BookSources/978-1-84821-106-3"
[159]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[160]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-262-13341-8 "Special:BookSources/978-0-262-13341-8"
[161]: https://web.archive.org/web/20121004035038/http://www.elsevier.com/wps/find/bookdescription.cws_home/708863/description#description
[162]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[163]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-444-52726-4 "Special:BookSources/978-0-444-52726-4"
[164]: http://www.elsevier.com/wps/find/bookdescription.cws_home/708863/description#description
[165]: http://www.bracil.net/edward/FCS.html
[166]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[167]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-12-701610-8 "Special:BookSources/978-0-12-701610-8"
[168]: https://archive.org/details/Constraint_00_VanH
[169]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[170]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-262-08181-8 "Special:BookSources/978-0-262-08181-8"
[171]: https://doi.org/10.1016%2Fj.apm.2012.07.042
[172]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[173]: https://doi.org/10.1016%2Fj.apm.2012.07.042
[174]: https://en.wikipedia.org/w/index.php?title=Constraint_satisfaction&action=edit&section=10 "Edit section: External links"
[175]: https://web.archive.org/web/20090211163302/http://4c.ucc.ie/web/outreach/tutorial.html
[176]: https://en.wikipedia.org/w/index.php?title=Constraint_satisfaction&action=edit&section=11 "Edit section: Videos"
[177]: https://www.youtube.com/watch?v=J4xMBJNy41w
[178]: https://www.youtube.com/watch?v=wrs6Lvo5LZM
[179]: https://www.youtube.com/watch?v=UhAmM3z6KS0
[180]: https://www.youtube.com/watch?v=il20Q5tXp-A
[181]: https://www.youtube.com/watch?v=hJ9WOiueJes
[182]: https://www.youtube.com/watch?v=595zA9OXCns
[183]: https://www.youtube.com/watch?v=il20Q5tXp-A

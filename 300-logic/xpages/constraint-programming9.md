---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Constraint_programming
page-title:       Constraint programming - Wikipedia
article-title:    Constraint programming - Wikipedia
---
# Constraint programming - Wikipedia

Constraint programming (CP)[1] is a paradigm for solving combinatorial problems that draws on a wide range of techniques from artificial intelligence, computer science, and operations research. In constraint programming, users declaratively state the constraints on the feasible solutions for a set of decision variables. Constraints differ from the common primitives of imperative programming languages in that they do not specify a step or sequence of steps to execute, but rather the properties of a solution to be found. In addition to constraints, users also need to specify a method to solve these constraints. This typically draws upon standard methods like chronological backtracking and constraint propagation, but may use customized code like a problem specific branching heuristic.
__Constraint programming (CP)__[\[1\]][1] is a paradigm for solving [combinatorial][2] problems that draws on a wide range of techniques from [artificial intelligence][3], [computer science][4], and [operations research][5]. In constraint programming, users declaratively state the [constraints][6] on the feasible solutions for a set of decision variables. Constraints differ from the common [primitives][7] of [imperative programming][8] languages in that they do not specify a step or sequence of steps to execute, but rather the properties of a solution to be found. In addition to constraints, users also need to specify a method to solve these constraints. This typically draws upon standard methods like chronological [backtracking][9] and [constraint propagation][10], but may use customized code like a problem specific branching [heuristic][11].

Constraint programming takes its root from and can be expressed in the form of [constraint logic programming][12], which embeds constraints into a [logic program][13]. This variant of logic programming is due to Jaffar and Lassez,[\[2\]][14] who extended in 1987 a specific class of constraints that were introduced in [Prolog II][15]. The first implementations of constraint logic programming were [Prolog III][16], [CLP(R)][17], and [CHIP][18].

Instead of logic programming, constraints can be mixed with [functional programming][19], [term rewriting][20], and [imperative languages][21]. Programming languages with built-in support for constraints include [Oz][22] (functional programming) and [Kaleidoscope][23] (imperative programming). Mostly, constraints are implemented in imperative languages via *constraint solving toolkits*, which are separate libraries for an existing imperative language.

## Constraint logic programming\[[edit][24]\]

Constraint programming is an embedding of constraints in a host language. The first host languages used were [logic programming][25] languages, so the field was initially called *constraint logic programming*. The two paradigms share many important features, like logical variables and [backtracking][26]. Today most [Prolog][27] implementations include one or more libraries for constraint logic programming.

The difference between the two is largely in their styles and approaches to modeling the world. Some problems are more natural (and thus, simpler) to write as logic programs, while some are more natural to write as constraint programs.

The constraint programming approach is to search for a state of the world in which a large number of constraints are satisfied at the same time. A problem is typically stated as a state of the world containing a number of unknown variables. The constraint program searches for values for all the variables.

Temporal concurrent constraint programming (TCC) and non-deterministic temporal concurrent constraint programming (MJV) are variants of constraint programming that can deal with time.

## Constraint satisfaction problem\[[edit][28]\]

A constraint is a relation between multiple variables which limits the values these variables can take simultaneously.

__Definition__ — A constraint satisfaction problem on finite domains (or CSP) is defined by a triplet ![{\displaystyle ({\mathcal {X}},{\mathcal {D}},{\mathcal {C}})}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3237213200e8e80327a2cb23f816fe23fc2b1758) where:

Three categories of constraints exist:

-   extensional constraints: constraints are defined by enumerating the set of values that would satisfy them;
-   arithmetic constraints: constraints are defined by an arithmetic expression, i.e., using ![{\displaystyle <,>,\leq ,\geq ,=,\neq ,...}](https://wikimedia.org/api/rest_v1/media/math/render/svg/eeaddf2fabe17a627fbecb6b7278cdf2949be72f);
-   logical constraints: constraints are defined with an explicit semantic, i.e., *AllDifferent*, *AtMost*,*...*

Assignment is the association of a variable to a value from its domain. A partial assignment is when a subset of the variables of the problem have been assigned. A total assignment is when all the variables of the problem have been assigned.

__Property__ — Given ![{\displaystyle {\mathcal {A}}=({\mathcal {X_{\mathcal {A}}}},{\mathcal {V_{\mathcal {A}}}})}](https://wikimedia.org/api/rest_v1/media/math/render/svg/34da36fc4fdbf77b012ac37ed7eb0a0a13e02c12) an assignation (partial or total) of a CSP ![{\displaystyle P=({\mathcal {X}},{\mathcal {D}},{\mathcal {C}})}](https://wikimedia.org/api/rest_v1/media/math/render/svg/29b86d87be22c427cd9f926344de63e8086c8ac3), and ![{\displaystyle C_{i}=({\mathcal {X}}_{i},{\mathcal {R}}_{i})}](https://wikimedia.org/api/rest_v1/media/math/render/svg/601ef4a2e073b8538ffe0f023b5e5ddd44583657) a constraint of ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a) such as ![{\displaystyle {\mathcal {X}}_{i}\subset {\mathcal {X_{\mathcal {A}}}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/daec046d65fb77f8bd30232a03ab484bd519463e), the assignation ![{\mathcal {A}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/280ae03440942ab348c2ca9b8db6b56ffa9618f8) satisfies the constraint ![C_{i}](https://wikimedia.org/api/rest_v1/media/math/render/svg/cc49dc02c0ec8c86b67e7d10518ac791eda0bf22) if and only if all the values ![{\displaystyle {\mathcal {V}}_{{\mathcal {A}}_{i}}=\{v_{i}\in {\mathcal {V}}_{\mathcal {A}}{\mbox{ tel que }}x_{i}\in {\mathcal {X}}_{i}\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/f4a22569433beba1e34fc2140dca8379dea58f2f) of the variables of the constraint ![C_{i}](https://wikimedia.org/api/rest_v1/media/math/render/svg/cc49dc02c0ec8c86b67e7d10518ac791eda0bf22) belongs to ![{\displaystyle {\mathcal {R}}_{i}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ea4e99f70ce55a732f202d636b5fdc6a28e13440).

__Definition__ — A solution of a CSP is a total assignation which satisfied all the constraints of the problem.

During the search of the solutions of a CSP, a user can wish for:

-   finding a solution (satisfying all the constraints);
-   finding all the solutions of the problem;
-   proving the unsatisfiability of the problem.

## Constraint optimization problem\[[edit][29]\]

A constraint optimization problem (COP) is a constraint satisfaction problem associated to an objective function.

An *optimal solution* to a minimization (maximization) COP is a solution that minimizes (maximizes) the value of the *objective function*.

During the search of the solutions of a CSP, a user can wish for:

-   finding a solution (satisfying all the constraints);

-   finding the best solution with respect to the objective;
-   proving the optimality of the best found solution;
-   proving the unsatisfiability of the problem.

## Perturbation vs refinement models\[[edit][30]\]

Languages for constraint-based programming follow one of two approaches:[\[3\]][31]

-   Refinement model: variables in the problem are initially unassigned, and each variable is assumed to be able to contain any value included in its range or domain. As computation progresses, values in the domain of a variable are pruned if they are shown to be incompatible with the possible values of other variables, until a single value is found for each variable.
-   Perturbation model: variables in the problem are assigned a single initial value. At different times one or more variables receive perturbations (changes to their old value), and the system propagates the change trying to assign new values to other variables that are consistent with the perturbation.

[Constraint propagation][32] in [constraint satisfaction problems][33] is a typical example of a refinement model, and [spreadsheets][34] are a typical example of a perturbation model.

The refinement model is more general, as it does not restrict variables to have a single value, it can lead to several solutions to the same problem. However, the perturbation model is more intuitive for programmers using mixed imperative constraint object-oriented languages.[\[4\]][35]

## Domains\[[edit][36]\]

The constraints used in constraint programming are typically over some specific domains. Some popular domains for constraint programming are:

-   [boolean][37] domains, where only true/false constraints apply ([SAT problem][38])
-   [integer][39] domains, [rational][40] domains
-   [interval][41] domains, in particular for scheduling problems
-   [linear][42] domains, where only [linear][43] functions are described and analyzed (although approaches to [non-linear][44] problems do exist)
-   [finite][45] domains, where constraints are defined over [finite sets][46]
-   mixed domains, involving two or more of the above

Finite domains is one of the most successful domains of constraint programming. In some areas (like [operations research][47]) constraint programming is often identified with constraint programming over finite domains.

## Constraint propagation\[[edit][48]\]

__Local consistency__ conditions are properties of [constraint satisfaction problems][49] related to the [consistency][50] of subsets of variables or constraints. They can be used to reduce the search space and make the problem easier to solve. Various kinds of local consistency conditions are leveraged, including __node consistency__, __arc consistency__, and __path consistency__.

Every local consistency condition can be enforced by a transformation that changes the problem without changing its solutions. Such a transformation is called __[constraint propagation][51]__.[\[5\]][52] Constraint propagation works by reducing domains of variables, strengthening constraints, or creating new ones. This leads to a reduction of the search space, making the problem easier to solve by some algorithms. Constraint propagation can also be used as an unsatisfiability checker, incomplete in general but complete in some particular cases.

## Constraint solving\[[edit][53]\]

There are three main algorithmic techniques for solving constraint satisfaction problems: backtracking search, local search, and dynamic programming.[\[1\]][54]

### Backtracking search\[[edit][55]\]

__Backtracking search__ is a general [algorithm][56] for finding all (or some) solutions to some [computational problems][57], notably [constraint satisfaction problems][58], that incrementally builds candidates to the solutions, and abandons a candidate ("backtracks") as soon as it determines that the candidate cannot possibly be completed to a valid solution.

### Local Search\[[edit][59]\]

__Local search__ is an incomplete method for finding a solution to a [problem][60]. It is based on iteratively improving an assignment of the variables until all constraints are satisfied. In particular, local search algorithms typically modify the value of a variable in an assignment at each step. The new assignment is close to the previous one in the space of assignment, hence the name *local search*.

### Dynamic programming\[[edit][61]\]

__Dynamic programming__ is both a [mathematical optimization][62] method and a computer programming method. It refers to simplifying a complicated problem by breaking it down into simpler sub-problems in a [recursive][63] manner. While some decision problems cannot be taken apart this way, decisions that span several points in time do often break apart recursively. Likewise, in computer science, if a problem can be solved optimally by breaking it into sub-problems and then recursively finding the optimal solutions to the sub-problems, then it is said to have [optimal substructure][64].

## Example\[[edit][65]\]

The syntax for expressing constraints over finite domains depends on the host language. The following is a [Prolog][66] program that solves the classical [alphametic][67] puzzle [SEND+MORE=MONEY][68] in constraint logic programming:

% This code works in both YAP and SWI-Prolog using the environment-supplied
% CLPFD constraint solver library.  It may require minor modifications to work
% in other Prolog environments or using other constraint solvers.
:- use\_module(library(clpfd)).
sendmore(Digits) :-
   Digits \= \[S,E,N,D,M,O,R,Y\],   % Create variables
   Digits ins 0..9,                % Associate domains to variables
   S #\\= 0,                        % Constraint: S must be different from 0
   M #\\= 0,
   all\_different(Digits),          % all the elements must take different values
                1000\*S + 100\*E + 10\*N + D     % Other constraints
              + 1000\*M + 100\*O + 10\*R + E
   #= 10000\*M + 1000\*O + 100\*N + 10\*E + Y,
   label(Digits).                  % Start the search

The interpreter creates a variable for each letter in the puzzle. The operator `ins` is used to specify the domains of these variables, so that they range over the set of values {0,1,2,3, ..., 9}. The constraints `S#\=0` and `M#\=0` means that these two variables cannot take the value zero. When the interpreter evaluates these constraints, it reduces the domains of these two variables by removing the value 0 from them. Then, the constraint `all_different(Digits)` is considered; it does not reduce any domain, so it is simply stored. The last constraint specifies that the digits assigned to the letters must be such that "SEND+MORE=MONEY" holds when each letter is replaced by its corresponding digit. From this constraint, the solver infers that M=1. All stored constraints involving variable M are awakened: in this case, [constraint propagation][69] on the `all_different` constraint removes value 1 from the domain of all the remaining variables. Constraint propagation may solve the problem by reducing all domains to a single value, it may prove that the problem has no solution by reducing a domain to the empty set, but may also terminate without proving satisfiability or unsatisfiability. The __label__ literals are used to actually perform search for a solution.

## See also\[[edit][70]\]

-   [Combinatorial optimization][71]
-   [Constraint logic programming][72]
-   [Concurrent constraint logic programming][73]
-   [Mathematical optimization][74]
-   [Heuristic algorithms][75]
-   [Nurse scheduling problem][76]
-   [Traveling tournament problem][77]

## References\[[edit][78]\]

1.  ^ [Jump up to: *__a__*][79] [*__b__*][80] Rossi, Francesca; Beek, Peter van; Walsh, Toby (2006-08-18). [*Handbook of Constraint Programming*][81]. Elsevier. [ISBN][82] [9780080463803][83].
2.  __[^][84]__ Jaffar, Joxan, and J-L. Lassez. "[Constraint logic programming][85]." Proceedings of the 14th ACM SIGACT-SIGPLAN symposium on Principles of programming languages. ACM, 1987.
3.  __[^][86]__ Mayoh, Brian; Tyugu, Enn; Penjam, Jaan (1993). [*Constraint Programming*][87]. [Springer Science+Business Media][88]. p. 76. [ISBN][89] [9783642859830][90].
4.  __[^][91]__ Lopez, G., Freeman-Benson, B., & Borning, A. (1994, January). [Kaleidoscope: A constraint imperative programming language.][92] In *Constraint Programming* (pp. 313-329). Springer Berlin Heidelberg.
5.  __[^][93]__ Bessiere, Christian (2006), "Constraint Propagation", *Handbook of Constraint Programming*, Foundations of Artificial Intelligence, __2__, Elsevier, pp. 29–83, [doi][94]:[10.1016/s1574-6526(06)80007-6][95], [ISBN][96] [9780444527264][97]

## External links\[[edit][98]\]

-   [Association for Constraint Programming][99]
-   [CP Conference Series][100]
-   [Guide to Constraint Programming][101]
-   [The Mozart Programming System][102] at [archive.today][103] (archived December 5, 2012), an [Oz][104]\-based free software ([X11][105]\-style)
-   [Cork Constraint Computation Centre][106] at [archive.today][107] (archived January 7, 2013)
-   [Global Constraint Catalog][108]

[1]: https://en.wikipedia.org/wiki/Constraint_programming#cite_note-:0-1
[2]: https://en.wikipedia.org/wiki/Combinatorial "Combinatorial"
[3]: https://en.wikipedia.org/wiki/Artificial_intelligence "Artificial intelligence"
[4]: https://en.wikipedia.org/wiki/Computer_science "Computer science"
[5]: https://en.wikipedia.org/wiki/Operations_research "Operations research"
[6]: https://en.wikipedia.org/wiki/Constraint_(mathematics) "Constraint (mathematics)"
[7]: https://en.wikipedia.org/wiki/Language_primitive "Language primitive"
[8]: https://en.wikipedia.org/wiki/Imperative_programming "Imperative programming"
[9]: https://en.wikipedia.org/wiki/Backtracking "Backtracking"
[10]: https://en.wikipedia.org/wiki/Constraint_propagation "Constraint propagation"
[11]: https://en.wikipedia.org/wiki/Heuristic_(computer_science) "Heuristic (computer science)"
[12]: https://en.wikipedia.org/wiki/Constraint_logic_programming "Constraint logic programming"
[13]: https://en.wikipedia.org/wiki/Logic_program "Logic program"
[14]: https://en.wikipedia.org/wiki/Constraint_programming#cite_note-2
[15]: https://en.wikipedia.org/wiki/Prolog_II "Prolog II"
[16]: https://en.wikipedia.org/w/index.php?title=Prolog_III&action=edit&redlink=1 "Prolog III (page does not exist)"
[17]: https://en.wikipedia.org/wiki/CLP(R) "CLP(R)"
[18]: https://en.wikipedia.org/wiki/CHIP_(programming_language) "CHIP (programming language)"
[19]: https://en.wikipedia.org/wiki/Functional_programming "Functional programming"
[20]: https://en.wikipedia.org/wiki/Term_rewriting "Term rewriting"
[21]: https://en.wikipedia.org/wiki/Imperative_language "Imperative language"
[22]: https://en.wikipedia.org/wiki/Oz_programming_language "Oz programming language"
[23]: https://en.wikipedia.org/wiki/Kaleidoscope_programming_language "Kaleidoscope programming language"
[24]: https://en.wikipedia.org/w/index.php?title=Constraint_programming&action=edit&section=1 "Edit section: Constraint logic programming"
[25]: https://en.wikipedia.org/wiki/Logic_programming "Logic programming"
[26]: https://en.wikipedia.org/wiki/Backtracking "Backtracking"
[27]: https://en.wikipedia.org/wiki/Prolog "Prolog"
[28]: https://en.wikipedia.org/w/index.php?title=Constraint_programming&action=edit&section=2 "Edit section: Constraint satisfaction problem"
[29]: https://en.wikipedia.org/w/index.php?title=Constraint_programming&action=edit&section=3 "Edit section: Constraint optimization problem"
[30]: https://en.wikipedia.org/w/index.php?title=Constraint_programming&action=edit&section=4 "Edit section: Perturbation vs refinement models"
[31]: https://en.wikipedia.org/wiki/Constraint_programming#cite_note-3
[32]: https://en.wikipedia.org/wiki/Constraint_propagation "Constraint propagation"
[33]: https://en.wikipedia.org/wiki/Constraint_Satisfaction_Problems "Constraint Satisfaction Problems"
[34]: https://en.wikipedia.org/wiki/Spreadsheet "Spreadsheet"
[35]: https://en.wikipedia.org/wiki/Constraint_programming#cite_note-4
[36]: https://en.wikipedia.org/w/index.php?title=Constraint_programming&action=edit&section=5 "Edit section: Domains"
[37]: https://en.wikipedia.org/wiki/Boolean_datatype "Boolean datatype"
[38]: https://en.wikipedia.org/wiki/Boolean_satisfiability_problem "Boolean satisfiability problem"
[39]: https://en.wikipedia.org/wiki/Integer "Integer"
[40]: https://en.wikipedia.org/wiki/Rational_numbers "Rational numbers"
[41]: https://en.wikipedia.org/wiki/Interval_(mathematics) "Interval (mathematics)"
[42]: https://en.wikipedia.org/wiki/Linear_algebra "Linear algebra"
[43]: https://en.wikipedia.org/wiki/Linear "Linear"
[44]: https://en.wikipedia.org/wiki/Non-linear "Non-linear"
[45]: https://en.wiktionary.org/wiki/finite "wiktionary:finite"
[46]: https://en.wikipedia.org/wiki/Finite_set "Finite set"
[47]: https://en.wikipedia.org/wiki/Operations_research "Operations research"
[48]: https://en.wikipedia.org/w/index.php?title=Constraint_programming&action=edit&section=6 "Edit section: Constraint propagation"
[49]: https://en.wikipedia.org/wiki/Constraint_satisfaction_problem "Constraint satisfaction problem"
[50]: https://en.wikipedia.org/wiki/Consistency "Consistency"
[51]: https://en.wikipedia.org/wiki/Constraint_propagation "Constraint propagation"
[52]: https://en.wikipedia.org/wiki/Constraint_programming#cite_note-5
[53]: https://en.wikipedia.org/w/index.php?title=Constraint_programming&action=edit&section=7 "Edit section: Constraint solving"
[54]: https://en.wikipedia.org/wiki/Constraint_programming#cite_note-:0-1
[55]: https://en.wikipedia.org/w/index.php?title=Constraint_programming&action=edit&section=8 "Edit section: Backtracking search"
[56]: https://en.wikipedia.org/wiki/Algorithm "Algorithm"
[57]: https://en.wikipedia.org/wiki/Computational_problem "Computational problem"
[58]: https://en.wikipedia.org/wiki/Constraint_satisfaction_problem "Constraint satisfaction problem"
[59]: https://en.wikipedia.org/w/index.php?title=Constraint_programming&action=edit&section=9 "Edit section: Local Search"
[60]: https://en.wikipedia.org/wiki/Constraint_satisfaction_problem "Constraint satisfaction problem"
[61]: https://en.wikipedia.org/w/index.php?title=Constraint_programming&action=edit&section=10 "Edit section: Dynamic programming"
[62]: https://en.wikipedia.org/wiki/Mathematical_optimization "Mathematical optimization"
[63]: https://en.wikipedia.org/wiki/Recursion "Recursion"
[64]: https://en.wikipedia.org/wiki/Optimal_substructure "Optimal substructure"
[65]: https://en.wikipedia.org/w/index.php?title=Constraint_programming&action=edit&section=11 "Edit section: Example"
[66]: https://en.wikipedia.org/wiki/Prolog "Prolog"
[67]: https://en.wikipedia.org/wiki/Alphametic "Alphametic"
[68]: https://en.wikipedia.org/wiki/Verbal_arithmetic "Verbal arithmetic"
[69]: https://en.wikipedia.org/wiki/Constraint_propagation "Constraint propagation"
[70]: https://en.wikipedia.org/w/index.php?title=Constraint_programming&action=edit&section=12 "Edit section: See also"
[71]: https://en.wikipedia.org/wiki/Combinatorial_optimization "Combinatorial optimization"
[72]: https://en.wikipedia.org/wiki/Constraint_logic_programming "Constraint logic programming"
[73]: https://en.wikipedia.org/wiki/Concurrent_constraint_logic_programming "Concurrent constraint logic programming"
[74]: https://en.wikipedia.org/wiki/Mathematical_optimization "Mathematical optimization"
[75]: https://en.wikipedia.org/wiki/Heuristic_(computer_science) "Heuristic (computer science)"
[76]: https://en.wikipedia.org/wiki/Nurse_scheduling_problem "Nurse scheduling problem"
[77]: https://en.wikipedia.org/wiki/Traveling_tournament_problem "Traveling tournament problem"
[78]: https://en.wikipedia.org/w/index.php?title=Constraint_programming&action=edit&section=13 "Edit section: References"
[79]: https://en.wikipedia.org/wiki/Constraint_programming#cite_ref-:0_1-0
[80]: https://en.wikipedia.org/wiki/Constraint_programming#cite_ref-:0_1-1
[81]: https://books.google.com/books?id=Kjap9ZWcKOoC&q=handbook+of+constraint+programming&pg=PP1
[82]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[83]: https://en.wikipedia.org/wiki/Special:BookSources/9780080463803 "Special:BookSources/9780080463803"
[84]: https://en.wikipedia.org/wiki/Constraint_programming#cite_ref-2 "Jump up"
[85]: https://dl.acm.org/citation.cfm?id=41635
[86]: https://en.wikipedia.org/wiki/Constraint_programming#cite_ref-3 "Jump up"
[87]: https://books.google.com/books?id=B0aqCAAAQBAJ
[88]: https://en.wikipedia.org/wiki/Springer_Science%2BBusiness_Media "Springer Science+Business Media"
[89]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[90]: https://en.wikipedia.org/wiki/Special:BookSources/9783642859830 "Special:BookSources/9783642859830"
[91]: https://en.wikipedia.org/wiki/Constraint_programming#cite_ref-4 "Jump up"
[92]: ftp://trout.cs.washington.edu/tr/1993/09/UW-CSE-93-09-04.pdf
[93]: https://en.wikipedia.org/wiki/Constraint_programming#cite_ref-5 "Jump up"
[94]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[95]: https://doi.org/10.1016%2Fs1574-6526%2806%2980007-6
[96]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[97]: https://en.wikipedia.org/wiki/Special:BookSources/9780444527264 "Special:BookSources/9780444527264"
[98]: https://en.wikipedia.org/w/index.php?title=Constraint_programming&action=edit&section=14 "Edit section: External links"
[99]: http://www.a4cp.org/
[100]: http://www.a4cp.org/events/cp-conference-series
[101]: http://kti.ms.mff.cuni.cz/~bartak/constraints/index.html
[102]: https://archive.today/20121205051244/http://www.mozart-oz.org/
[103]: https://en.wikipedia.org/wiki/Archive.today "Archive.today"
[104]: https://en.wikipedia.org/wiki/Oz_programming_language "Oz programming language"
[105]: https://en.wikipedia.org/wiki/X11 "X11"
[106]: https://archive.today/20130107222548/http://4c.ucc.ie/web/index.jsp
[107]: https://en.wikipedia.org/wiki/Archive.today "Archive.today"
[108]: https://sofdem.github.io/gccat/index.html

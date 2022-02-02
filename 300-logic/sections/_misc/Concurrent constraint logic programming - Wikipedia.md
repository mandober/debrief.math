---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Concurrent_constraint_logic_programming
page-title:       Concurrent constraint logic programming - Wikipedia
article-title:    Concurrent constraint logic programming - Wikipedia
---
# Concurrent constraint logic programming - Wikipedia

Concurrent constraint logic programming is a version of constraint logic programming aimed primarily at programming concurrent processes rather than (or in addition to) solving constraint satisfaction problems. Goals in constraint logic programming are evaluated concurrently; a concurrent process is therefore programmed as the evaluation of a goal by the interpreter.
__Concurrent constraint logic programming__ is a version of [constraint logic programming][1] aimed primarily at programming [concurrent processes][2] rather than (or in addition to) solving [constraint satisfaction problems][3]. Goals in constraint logic programming are evaluated concurrently; a concurrent process is therefore programmed as the evaluation of a goal by the [interpreter][4].

Syntactically, concurrent constraints logic programs are similar to non-concurrent programs, the only exception being that clauses include [guards][5], which are constraints that may block the applicability of the clause under some conditions. Semantically, concurrent constraint logic programming differs from its non-concurrent versions because a goal evaluation is intended to realize a concurrent process rather than finding a solution to a problem. Most notably, this difference affects how the interpreter behaves when more than one clause is applicable: non-concurrent constraint logic programming [recursively][6] tries all clauses; concurrent constraint logic programming chooses only one. This is the most evident effect of an intended *directionality* of the interpreter, which never revise a choice it has previously taken. Other effects of this are the semantical possibility of having a goal that cannot be proved while the whole evaluation does not fail, and a particular way for equating a goal and a clause head.

[Constraint handling rules][7] can be seen as a form of concurrent constraint logic programming,[\[1\]][8] but are used for programming a constraint simplifier or solver rather than concurrent processes.

## Description\[[edit][9]\]

In constraint logic programming, the goals in the current goal are evaluated sequentially, usually proceeding in a [LIFO][10] order in which newer goals are evaluated first. The concurrent version of logic programming allows for evaluating goals in [parallel][11]: every goal is evaluated by a process, and processes run concurrently. These processes interact via the constraint store: a process can add a constraint to the constraint store while another one checks whether a constraint is entailed by the store.

Adding a constraint to the store is done like in regular constraint logic programming. Checking [entailment][12] of a constraint is done via [guards][13] to clauses. Guards require a syntactic extension: a clause of concurrent constraint logic programming is written as `H :- G | B` where `G` is a constraint called the guard of the clause. Roughly speaking, a fresh variant of this clause can be used to replace a literal in the goal only if the guard is entailed by the constraint store after the equation of the literal and the clause head is added to it. The precise definition of this rule is more complicated, and is given below.

The main difference between non-concurrent and concurrent constraint logic programming is that the first is aimed at search, while the second is aimed at implementing concurrent processes. This difference affects whether choices can be undone, whether processes are allowed not to terminate, and how goals and clause heads are equated.

The first semantical difference between regular and concurrent constraint logic programming is about the condition when more than one clause can be used for proving a goal. Non-concurrent logic programming tries all possible clauses when rewriting a goal: if the goal cannot be proved while replacing it with the body of a fresh variant of a clause, another clause is proved, if any. This is because the aim is to prove the goal: all possible ways to prove the goal are tried. On the other hand, concurrent constraint logic programming aims at programming parallel processes. In general concurrent programming, if a process makes a choice, this choice cannot be undone. The concurrent version of constraint logic programming implements processes by allowing them to take choices, but committing to them once they have been taken. Technically, if more than one clause can be used to rewrite a literal in the goal, the non-concurrent version tries in turn all clauses, while the concurrent version chooses a single arbitrary clause: contrary to the non-concurrent version, the other clauses will never be tried. These two different ways for handling multiple choices are often called "don't know nondeterminism" and "don't care nondeterminism".

When rewriting a literal in the goal, the only considered clauses are those whose guard is entailed by the union of the constraint store and the equation of the literal with the clause head. The guards provide a way for telling which clauses are not to be considered at all. This is particularly important given the commitment to a single clause of concurrent constraint logic programming: once a clause has been chosen, this choice will be never reconsidered. Without guards, the interpreter could choose a "wrong" clause to rewrite a literal, while other "good" clauses exist. In non-concurrent programming, this is less important, as the interpreter always tries all possibilities. In concurrent programming, the interpreter commits to a single possibility without trying the other ones.

A second effect of the difference between the non-concurrent and the concurrent version is that concurrent constraint logic programming is specifically designed to allow processes to run without terminating. Non-terminating processes are common in general in concurrent processing; the concurrent version of constraint logic programming implements them by not using the condition of failure: if no clause is applicable for rewriting a goal, the process evaluating this goal stops instead of making the whole evaluation fail like in non-concurrent constraint logic programming. As a result, the process evaluating a goal may be stopped because no clause is available to proceed, but at the same time the other processes keep running.

Synchronization among processes that are solving different goals is achieved via the use of guards. If a goal cannot be rewritten because all clauses that could be used have a guard that is not entailed by the constraint store, the process solving this goal is blocked until the other processes add the constraints that are necessary to entail the guard of at least one of the applicable clauses. This synchronization is subject to [deadlocks][14]: if all goals are blocked, no new constraints will be added and therefore no goal will ever be unblocked.

A third effect of the difference between concurrent and non-concurrent logic programming is in the way a goal is equated to the head of a fresh variant of a clause. Operationally, this is done by checking whether the variables in the head can be equated to terms in such a way the head is equal to the goal. This rule differs from the corresponding rule for constraint logic programming in that it only allows adding constraints in the form variable=term, where the variable is one of the head. This limitation can be seen as a form of directionality, in that the goal and the clause head are treated differently.

Precisely, the rule telling whether a fresh variant `H:-G|B` of a clause can be used to rewrite a goal `A` is as follows. First, it is checked whether `A` and `H` have the same predicate. Second, it is checked whether there exists a way for equating ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) with ![H](https://wikimedia.org/api/rest_v1/media/math/render/svg/75a9edddcca2f782014371f75dca39d7e13a9c1b) given the current constraint store; contrary to regular logic programming, this is done under *one-sided unification*, which only allows a variable of the head to be equal to a term. Third, the guard is checked for entailment from the constraint store and the equations generated in the second step; the guard may contain variables that are not mentioned in the clause head: these variables are interpreted existentially. This method for deciding the applicability of a fresh variant of a clause for replacing a goal can be compactly expressed as follows: the current constraint store entails that there exists an evaluation of the variables of the head and the guard such that the head is equal to the goal and the guard is entailed. In practice, [entailment][15] may be checked with an incomplete method.

An extension to the syntax and semantics of concurrent logic programming is the *atomic tell*. When the interpreter uses a clause, its guard is added to the constraint store. However, also added are the constraints of the body. Due to commitment to this clause, the interpreter does not backtrack if the constraints of the body are inconsistent with the store. This condition can be avoided by the use of atomic tell, which is a variant in which the clause contain a sort of "second guard" that is only checked for consistency. Such a clause is written `H :- G:D|B`. This clause is used to rewrite a literal only if `G` is entailed by the constraint store and `D` is consistent with it. In this case, both `G` and `D` are added to the constraint store.

## History\[[edit][16]\]

The study of concurrent constraint logic programming started at the end of the 1980s, when some of the principles of [concurrent logic programming][17] were integrated into constraint logic programming by [Michael J. Maher][18]. The theoretical properties of concurrent constraint logic programming were later studied by various authors.

## See also\[[edit][19]\]

-   [Curry][20], a logic functional programming language, which allows programming concurrent systems [\[1\]][21].
-   [ToonTalk][22]
-   [Janus][23]
-   [Alice][24]

## References\[[edit][25]\]

-   Marriott, Kim; Peter J. Stuckey (1998). *Programming with constraints: An introduction*. MIT Press. [ISBN][26] [0-262-13341-5][27]
-   Frühwirth, Thom; Slim Abdennadher (2003). *Essentials of constraint programming*. Springer. [ISBN][28] [3-540-67623-6][29]
-   Jaffar, Joxan; Michael J. Maher (1994). ["Constraint logic programming: a survey"][30]. *Journal of Logic Programming*. 19/20: 503–581. [doi][31]:[10.1016/0743-1066(94)90033-7][32].

Specific

[1]: https://en.wikipedia.org/wiki/Constraint_logic_programming "Constraint logic programming"
[2]: https://en.wikipedia.org/wiki/Concurrent_process "Concurrent process"
[3]: https://en.wikipedia.org/wiki/Constraint_satisfaction_problem "Constraint satisfaction problem"
[4]: https://en.wikipedia.org/wiki/Interpreter_(computing) "Interpreter (computing)"
[5]: https://en.wikipedia.org/wiki/Guard_(computing) "Guard (computing)"
[6]: https://en.wikipedia.org/wiki/Recursion "Recursion"
[7]: https://en.wikipedia.org/wiki/Constraint_handling_rules "Constraint handling rules"
[8]: https://en.wikipedia.org/wiki/Concurrent_constraint_logic_programming#cite_note-1
[9]: https://en.wikipedia.org/w/index.php?title=Concurrent_constraint_logic_programming&action=edit&section=1 "Edit section: Description"
[10]: https://en.wikipedia.org/wiki/LIFO_(computing) "LIFO (computing)"
[11]: https://en.wikipedia.org/wiki/Parallel_computing "Parallel computing"
[12]: https://en.wikipedia.org/wiki/Entailment "Entailment"
[13]: https://en.wikipedia.org/wiki/Guard_(computing) "Guard (computing)"
[14]: https://en.wikipedia.org/wiki/Deadlock "Deadlock"
[15]: https://en.wikipedia.org/wiki/Entailment "Entailment"
[16]: https://en.wikipedia.org/w/index.php?title=Concurrent_constraint_logic_programming&action=edit&section=2 "Edit section: History"
[17]: https://en.wikipedia.org/wiki/Concurrent_logic_programming "Concurrent logic programming"
[18]: https://en.wikipedia.org/w/index.php?title=Michael_J._Maher&action=edit&redlink=1 "Michael J. Maher (page does not exist)"
[19]: https://en.wikipedia.org/w/index.php?title=Concurrent_constraint_logic_programming&action=edit&section=3 "Edit section: See also"
[20]: https://en.wikipedia.org/wiki/Curry_(programming_language) "Curry (programming language)"
[21]: http://www.informatik.uni-kiel.de/~curry/examples/#residuation
[22]: https://en.wikipedia.org/wiki/ToonTalk "ToonTalk"
[23]: https://en.wikipedia.org/wiki/Janus_(concurrent_constraint_programming_language) "Janus (concurrent constraint programming language)"
[24]: https://en.wikipedia.org/wiki/Alice_(programming_language) "Alice (programming language)"
[25]: https://en.wikipedia.org/w/index.php?title=Concurrent_constraint_logic_programming&action=edit&section=4 "Edit section: References"
[26]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[27]: https://en.wikipedia.org/wiki/Special:BookSources/0-262-13341-5 "Special:BookSources/0-262-13341-5"
[28]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[29]: https://en.wikipedia.org/wiki/Special:BookSources/3-540-67623-6 "Special:BookSources/3-540-67623-6"
[30]: https://doi.org/10.1016%2F0743-1066%2894%2990033-7
[31]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[32]: https://doi.org/10.1016%2F0743-1066%2894%2990033-7

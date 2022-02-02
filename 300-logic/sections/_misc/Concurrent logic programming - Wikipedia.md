---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Concurrent_logic_programming
page-title:       Concurrent logic programming - Wikipedia
article-title:    Concurrent logic programming - Wikipedia
---
# Concurrent logic programming - Wikipedia

Concurrent logic programming is a variant of logic programming in which programs are sets of guarded Horn clauses of the form:
__Concurrent logic programming__ is a variant of [logic programming][1] in which programs are sets of guarded [Horn clauses][2] of the form:

B1, …, Bn.

The conjunction G1, … , Gn is called the [guard][3] of the clause, and ǀ is the commitment operator.

Declaratively, guarded Horn clauses are read as ordinary logical implications:

H if G1 and … and Gn or B1 and … and Bn.

However, procedurally, when there are several clauses whose heads H match a given goal, then all of the clauses are executed in parallel, checking whether their guards G1, … , Gn hold. If the guards of more than one clause hold, then a [committed choice][4] is made to one of the clauses, and execution proceeds with the subgoals B1, …, Bn of the chosen clause. These subgoals can also be executed in parallel. Thus concurrent logic programming implements a form of "don't care nondeterminism", rather than "don't know nondeterminism".

## History\[[edit][5]\]

The first concurrent logic programming language was the Relational Language of Clark and Gregory, which was an offshoot of IC-Prolog. Later versions of concurrent logic programming include Shapiro's [Concurrent Prolog][6] and Ueda's Guarded Horn Clause language.

The development of concurrent logic programming was given an impetus when GHC was used to implement [KL1][7], the systems programming language of the [Japanese Fifth Generation Project (FGCS)][8]. The FGCS Project was a $400M initiative by Japan's [Ministry of International Trade and Industry][9], begun in 1982, to use massively parallel computing/processing for artificial intelligence applications. The choice of concurrent logic programming as the “missing link” between the hardware and the applications was influenced by a visit to the FGCS Project in 1982 by [Ehud Shapiro][10], who invented Concurrent Prolog.

## See also\[[edit][11]\]

-   [Concurrent constraint logic programming][12]
-   [Logic Programming][13]
-   [Nondeterministic programming][14]

## References\[[edit][15]\]

-   Clark, K. L. and Gregory, S. (1981). [A relational language for parallel programming][16]. In Proceedings of the 1981 conference on Functional programming languages and computer architecture (pp. 171-178). ACM.

[1]: https://en.wikipedia.org/wiki/Logic_programming "Logic programming"
[2]: https://en.wikipedia.org/wiki/Horn_clauses "Horn clauses"
[3]: https://en.wikipedia.org/wiki/Guard_(computing) "Guard (computing)"
[4]: https://en.wikipedia.org/w/index.php?title=Committed_choice&action=edit&redlink=1 "Committed choice (page does not exist)"
[5]: https://en.wikipedia.org/w/index.php?title=Concurrent_logic_programming&action=edit&section=1 "Edit section: History"
[6]: https://en.wikipedia.org/w/index.php?title=Concurrent_Prolog&action=edit&redlink=1 "Concurrent Prolog (page does not exist)"
[7]: https://en.wikipedia.org/wiki/KL1 "KL1"
[8]: https://en.wikipedia.org/wiki/Fifth_generation_computer "Fifth generation computer"
[9]: https://en.wikipedia.org/wiki/Ministry_of_International_Trade_and_Industry "Ministry of International Trade and Industry"
[10]: https://en.wikipedia.org/wiki/Ehud_Shapiro "Ehud Shapiro"
[11]: https://en.wikipedia.org/w/index.php?title=Concurrent_logic_programming&action=edit&section=2 "Edit section: See also"
[12]: https://en.wikipedia.org/wiki/Concurrent_constraint_logic_programming "Concurrent constraint logic programming"
[13]: https://en.wikipedia.org/wiki/Logic_Programming "Logic Programming"
[14]: https://en.wikipedia.org/wiki/Nondeterministic_programming "Nondeterministic programming"
[15]: https://en.wikipedia.org/w/index.php?title=Concurrent_logic_programming&action=edit&section=3 "Edit section: References"
[16]: https://dl.acm.org/citation.cfm?id=806776

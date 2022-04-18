---
downloaded:       2021-09-22
author:           
page-url:         https://en.wikipedia.org/wiki/Backtracking
page-title:       Backtracking - Wikipedia
article-title:    Backtracking - Wikipedia
article-length:   11161
article-created:  {Date-Creation-yyyymmdd}
article-modified: {Date-Revision-yyyymmdd}
desc:             {description}
---
# Backtracking - Wikipedia

Backtracking is a general algorithm for finding solutions to some computational problems, notably constraint satisfaction problems, that incrementally builds candidates to the solutions, and abandons a candidate ("backtracks") as soon as it determines that the candidate cannot possibly be completed to a valid solution.[1]
__Backtracking__ is a general [algorithm][1] for finding solutions to some [computational problems][2], notably [constraint satisfaction problems][3], that incrementally builds candidates to the solutions, and abandons a candidate ("backtracks") as soon as it determines that the candidate cannot possibly be completed to a valid solution.[\[1\]][4]

The classic textbook example of the use of backtracking is the [eight queens puzzle][5], that asks for all arrangements of eight [chess][6] [queens][7] on a standard [chessboard][8] so that no queen attacks any other. In the common backtracking approach, the partial candidates are arrangements of *k* queens in the first *k* rows of the board, all in different rows and columns. Any partial solution that contains two mutually attacking queens can be abandoned.

Backtracking can be applied only for problems which admit the concept of a "partial candidate solution" and a relatively quick test of whether it can possibly be completed to a valid solution. It is useless, for example, for locating a given value in an unordered table. When it is applicable, however, backtracking is often much faster than [brute-force enumeration][9] of all complete candidates, since it can eliminate many candidates with a single test.

Backtracking is an important tool for solving [constraint satisfaction problems][10],[\[2\]][11] such as [crosswords][12], [verbal arithmetic][13], [Sudoku][14], and many other puzzles. It is often the most convenient technique for [parsing][15],[\[3\]][16] for the [knapsack problem][17] and other [combinatorial optimization][18] problems. It is also the basis of the so-called [logic programming][19] languages such as [Icon][20], [Planner][21] and [Prolog][22].

Backtracking depends on user-given "[black box procedures][23]" that define the problem to be solved, the nature of the partial candidates, and how they are extended into complete candidates. It is therefore a [metaheuristic][24] rather than a specific algorithm – although, unlike many other meta-heuristics, it is guaranteed to find all solutions to a finite problem in a bounded amount of time.

The term "backtrack" was coined by American mathematician [D. H. Lehmer][25] in the 1950s.[\[4\]][26] The pioneer string-processing language [SNOBOL][27] (1962) may have been the first to provide a built-in general backtracking facility.

## Description of the method\[[edit][28]\]

The backtracking algorithm enumerates a set of *partial candidates* that, in principle, could be *completed* in various ways to give all the possible solutions to the given problem. The completion is done incrementally, by a sequence of *candidate extension steps.*

Conceptually, the partial candidates are represented as the nodes of a [tree structure][29], the *potential search tree.* Each partial candidate is the parent of the candidates that differ from it by a single extension step; the leaves of the tree are the partial candidates that cannot be extended any further.

The backtracking algorithm traverses this search tree [recursively][30], from the root down, in [depth-first order][31]. At each node *c*, the algorithm checks whether *c* can be completed to a valid solution. If it cannot, the whole sub-tree rooted at *c* is skipped (*pruned*). Otherwise, the algorithm (1) checks whether *c* itself is a valid solution, and if so reports it to the user; and (2) recursively enumerates all sub-trees of *c*. The two tests and the children of each node are defined by user-given procedures.

Therefore, the *actual search tree* that is traversed by the algorithm is only a part of the potential tree. The total cost of the algorithm is the number of nodes of the actual tree times the cost of obtaining and processing each node. This fact should be considered when choosing the potential search tree and implementing the pruning test.

### Pseudocode\[[edit][32]\]

In order to apply backtracking to a specific class of problems, one must provide the data *P* for the particular instance of the problem that is to be solved, and six [procedural parameters][33], *root*, *reject*, *accept*, *first*, *next*, and *output*. These procedures should take the instance data *P* as a parameter and should do the following:

1.  *root*(*P*): return the partial candidate at the root of the search tree.
2.  *reject*(*P*,*c*): return *true* only if the partial candidate *c* is not worth completing.
3.  *accept*(*P*,*c*): return *true* if *c* is a solution of *P*, and *false* otherwise.
4.  *first*(*P*,*c*): generate the first extension of candidate *c*.
5.  *next*(*P*,*s*): generate the next alternative extension of a candidate, after the extension *s*.
6.  *output*(*P*,*c*): use the solution *c* of *P*, as appropriate to the application.

The backtracking algorithm reduces the problem to the call *backtrack*(*root*(*P*)), where *backtrack* is the following recursive procedure:

__procedure__ backtrack(c) __is__
    __if__ reject(P, c) __then__ return
    __if__ accept(P, c) __then__ output(P, c)
    s ← first(P, c)
    __while__ s ≠ NULL __do__
        backtrack(s)
        s ← next(P, s)

### Usage considerations\[[edit][34]\]

The *reject* procedure should be a [boolean-valued function][35] that returns *true* only if it is certain that no possible extension of *c* is a valid solution for *P*. If the procedure cannot reach a definite conclusion, it should return *false*. An incorrect *true* result may cause the *bt* procedure to miss some valid solutions. The procedure may assume that *reject*(*P*,*t*) returned *false* for every ancestor *t* of *c* in the search tree.

On the other hand, the efficiency of the backtracking algorithm depends on *reject* returning *true* for candidates that are as close to the root as possible. If *reject* always returns *false*, the algorithm will still find all solutions, but it will be equivalent to a brute-force search.

The *accept* procedure should return *true* if *c* is a complete and valid solution for the problem instance *P*, and *false* otherwise. It may assume that the partial candidate *c* and all its ancestors in the tree have passed the *reject* test.

The general pseudo-code above does not assume that the valid solutions are always leaves of the potential search tree. In other words, it admits the possibility that a valid solution for *P* can be further extended to yield other valid solutions.

The *first* and *next* procedures are used by the backtracking algorithm to enumerate the children of a node *c* of the tree, that is, the candidates that differ from *c* by a single extension step. The call *first*(*P*,*c*) should yield the first child of *c*, in some order; and the call *next*(*P*,*s*) should return the next sibling of node *s*, in that order. Both functions should return a distinctive "NULL" candidate, if the requested child does not exist.

Together, the *root*, *first*, and *next* functions define the set of partial candidates and the potential search tree. They should be chosen so that every solution of *P* occurs somewhere in the tree, and no partial candidate occurs more than once. Moreover, they should admit an efficient and effective *reject* predicate.

### Early stopping variants\[[edit][36]\]

The pseudo-code above will call *output* for all candidates that are a solution to the given instance *P*. The algorithm can be modified to stop after finding the first solution, or a specified number of solutions; or after testing a specified number of partial candidates, or after spending a given amount of [CPU][37] time.

## Examples\[[edit][38]\]

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Sudoku_solved_by_bactracking.gif/250px-Sudoku_solved_by_bactracking.gif)][39]

A [Sudoku][40] solved by backtracking.

Examples where backtracking can be used to solve puzzles or problems include:

-   [Puzzles][41] such as [eight queens puzzle][42], [crosswords][43], [verbal arithmetic][44], [Sudoku][45][\[nb 1\]][46], and [Peg Solitaire][47].
-   [Combinatorial optimization][48] problems such as [parsing][49] and the [knapsack problem][50].
-   [Logic programming][51] languages such as [Icon][52], [Planner][53] and [Prolog][54], which use backtracking internally to generate answers.

The following is an example where backtracking is used for the [constraint satisfaction problem][55]:

### Constraint satisfaction\[[edit][56]\]

The general [constraint satisfaction problem][57] consists in finding a list of integers *x* = (*x*\[1\], *x*\[2\], …, *x*\[*n*\]), each in some range {1, 2, …, *m*}, that satisfies some arbitrary constraint (boolean function) *F*.

For this class of problems, the instance data *P* would be the integers *m* and *n*, and the predicate *F*. In a typical backtracking solution to this problem, one could define a partial candidate as a list of integers *c* = (*c*\[1\], *c*\[2\], …, *c*\[k\]), for any *k* between 0 and *n*, that are to be assigned to the first *k* variables *x*\[1\], *x*\[2\], …, *x*\[*k*\]. The root candidate would then be the empty list (). The *first* and *next* procedures would then be

__function__ first(P, c) __is__
    k ← length(c)
    __if__ k = n __then__
        __return__ NULL
    __else__
        __return__ (c\[1\], c\[2\], …, c\[k\], 1)

__function__ next(P, s) __is__
    k ← length(s)
    __if__ s\[k\] = m __then__
        __return__ NULL
    __else__
        __return__ (s\[1\], s\[2\], …, s\[k − 1\], 1 + s\[k\])

Here *length*(*c*) is the number of elements in the list *c*.

The call *reject*(*P*, *c*) should return *true* if the constraint *F* cannot be satisfied by any list of *n* integers that begins with the *k* elements of *c*. For backtracking to be effective, there must be a way to detect this situation, at least for some candidates *c*, without enumerating all those *m**n* − *k* *n*\-tuples.

For example, if *F* is the [conjunction][58] of several boolean predicates, *F* = *F*\[1\] ∧ *F*\[2\] ∧ … ∧ *F*\[*p*\], and each *F*\[*i*\] depends only on a small subset of the variables *x*\[1\], …, *x*\[*n*\], then the *reject* procedure could simply check the terms *F*\[*i*\] that depend only on variables *x*\[1\], …, *x*\[*k*\], and return *true* if any of those terms returns *false*. In fact, *reject* needs only check those terms that do depend on *x*\[*k*\], since the terms that depend only on *x*\[1\], …, *x*\[*k* − 1\] will have been tested further up in the search tree.

Assuming that *reject* is implemented as above, then *accept*(*P*, *c*) needs only check whether *c* is complete, that is, whether it has *n* elements.

It is generally better to order the list of variables so that it begins with the most critical ones (i.e. the ones with fewest value options, or which have a greater impact on subsequent choices).

One could also allow the *next* function to choose which variable should be assigned when extending a partial candidate, based on the values of the variables already assigned by it. Further improvements can be obtained by the technique of [constraint propagation][59].

In addition to retaining minimal recovery values used in backing up, backtracking implementations commonly keep a variable trail, to record value change history. An efficient implementation will avoid creating a variable trail entry between two successive changes when there is no choice point, as the backtracking will erase all of the changes as a single operation.

An alternative to the variable trail is to keep a [timestamp][60] of when the last change was made to the variable. The timestamp is compared to the timestamp of a choice point. If the choice point has an associated time later than that of the variable, it is unnecessary to revert the variable when the choice point is backtracked, as it was changed before the choice point occurred.

## See also\[[edit][61]\]

-   [Ariadne's thread (logic)][62]
-   [Backjumping][63]
-   [Backward chaining][64]
-   [Enumeration algorithm][65]
-   [Sudoku solving algorithms][66]

## Notes\[[edit][67]\]

## References\[[edit][68]\]

## Further reading\[[edit][69]\]

## External links\[[edit][70]\]

-   [HBmeyer.de][71], Interactive animation of a backtracking algorithm
-   [Solving Combinatorial Problems with STL and Backtracking][72], Article and C++ source code for a generic implementation of backtracking

[1]: https://en.wikipedia.org/wiki/Algorithm "Algorithm"
[2]: https://en.wikipedia.org/wiki/Computational_problem "Computational problem"
[3]: https://en.wikipedia.org/wiki/Constraint_satisfaction_problem "Constraint satisfaction problem"
[4]: https://en.wikipedia.org/wiki/Backtracking#cite_note-1
[5]: https://en.wikipedia.org/wiki/Eight_queens_puzzle "Eight queens puzzle"
[6]: https://en.wikipedia.org/wiki/Chess "Chess"
[7]: https://en.wikipedia.org/wiki/Queen_(chess) "Queen (chess)"
[8]: https://en.wikipedia.org/wiki/Chessboard "Chessboard"
[9]: https://en.wikipedia.org/wiki/Brute-force_search "Brute-force search"
[10]: https://en.wikipedia.org/wiki/Constraint_satisfaction_problem "Constraint satisfaction problem"
[11]: https://en.wikipedia.org/wiki/Backtracking#cite_note-BiereHeule2009-2
[12]: https://en.wikipedia.org/wiki/Crosswords "Crosswords"
[13]: https://en.wikipedia.org/wiki/Verbal_arithmetic "Verbal arithmetic"
[14]: https://en.wikipedia.org/wiki/Algorithmics_of_sudoku "Algorithmics of sudoku"
[15]: https://en.wikipedia.org/wiki/Parsing "Parsing"
[16]: https://en.wikipedia.org/wiki/Backtracking#cite_note-Watson2017-3
[17]: https://en.wikipedia.org/wiki/Knapsack_problem "Knapsack problem"
[18]: https://en.wikipedia.org/wiki/Combinatorial_optimization "Combinatorial optimization"
[19]: https://en.wikipedia.org/wiki/Logic_programming "Logic programming"
[20]: https://en.wikipedia.org/wiki/Icon_programming_language "Icon programming language"
[21]: https://en.wikipedia.org/wiki/Planner_programming_language "Planner programming language"
[22]: https://en.wikipedia.org/wiki/Prolog "Prolog"
[23]: https://en.wikipedia.org/wiki/Procedural_parameter "Procedural parameter"
[24]: https://en.wikipedia.org/wiki/Metaheuristic "Metaheuristic"
[25]: https://en.wikipedia.org/wiki/Derrick_Henry_Lehmer "Derrick Henry Lehmer"
[26]: https://en.wikipedia.org/wiki/Backtracking#cite_note-4
[27]: https://en.wikipedia.org/wiki/SNOBOL "SNOBOL"
[28]: https://en.wikipedia.org/w/index.php?title=Backtracking&action=edit&section=1 "Edit section: Description of the method"
[29]: https://en.wikipedia.org/wiki/Tree_structure "Tree structure"
[30]: https://en.wikipedia.org/wiki/Recursion_(computer_science) "Recursion (computer science)"
[31]: https://en.wikipedia.org/wiki/Depth-first_search "Depth-first search"
[32]: https://en.wikipedia.org/w/index.php?title=Backtracking&action=edit&section=2 "Edit section: Pseudocode"
[33]: https://en.wikipedia.org/wiki/Procedural_parameter "Procedural parameter"
[34]: https://en.wikipedia.org/w/index.php?title=Backtracking&action=edit&section=3 "Edit section: Usage considerations"
[35]: https://en.wikipedia.org/wiki/Boolean-valued_function "Boolean-valued function"
[36]: https://en.wikipedia.org/w/index.php?title=Backtracking&action=edit&section=4 "Edit section: Early stopping variants"
[37]: https://en.wikipedia.org/wiki/Central_processing_unit "Central processing unit"
[38]: https://en.wikipedia.org/w/index.php?title=Backtracking&action=edit&section=5 "Edit section: Examples"
[39]: https://en.wikipedia.org/wiki/File:Sudoku_solved_by_bactracking.gif
[40]: https://en.wikipedia.org/wiki/Sudoku "Sudoku"
[41]: https://en.wikipedia.org/wiki/Puzzle "Puzzle"
[42]: https://en.wikipedia.org/wiki/Eight_queens_puzzle "Eight queens puzzle"
[43]: https://en.wikipedia.org/wiki/Crosswords "Crosswords"
[44]: https://en.wikipedia.org/wiki/Verbal_arithmetic "Verbal arithmetic"
[45]: https://en.wikipedia.org/wiki/Algorithmics_of_sudoku "Algorithmics of sudoku"
[46]: https://en.wikipedia.org/wiki/Backtracking#cite_note-5
[47]: https://en.wikipedia.org/wiki/Peg_solitaire "Peg solitaire"
[48]: https://en.wikipedia.org/wiki/Combinatorial_optimization "Combinatorial optimization"
[49]: https://en.wikipedia.org/wiki/Parsing "Parsing"
[50]: https://en.wikipedia.org/wiki/Knapsack_problem "Knapsack problem"
[51]: https://en.wikipedia.org/wiki/Logic_programming "Logic programming"
[52]: https://en.wikipedia.org/wiki/Icon_programming_language "Icon programming language"
[53]: https://en.wikipedia.org/wiki/Planner_programming_language "Planner programming language"
[54]: https://en.wikipedia.org/wiki/Prolog "Prolog"
[55]: https://en.wikipedia.org/wiki/Constraint_satisfaction_problem "Constraint satisfaction problem"
[56]: https://en.wikipedia.org/w/index.php?title=Backtracking&action=edit&section=6 "Edit section: Constraint satisfaction"
[57]: https://en.wikipedia.org/wiki/Constraint_satisfaction_problem "Constraint satisfaction problem"
[58]: https://en.wikipedia.org/wiki/Logical_conjunction "Logical conjunction"
[59]: https://en.wikipedia.org/wiki/Constraint_propagation "Constraint propagation"
[60]: https://en.wikipedia.org/wiki/Timestamp "Timestamp"
[61]: https://en.wikipedia.org/w/index.php?title=Backtracking&action=edit&section=7 "Edit section: See also"
[62]: https://en.wikipedia.org/wiki/Ariadne%27s_thread_(logic) "Ariadne's thread (logic)"
[63]: https://en.wikipedia.org/wiki/Backjumping "Backjumping"
[64]: https://en.wikipedia.org/wiki/Backward_chaining "Backward chaining"
[65]: https://en.wikipedia.org/wiki/Enumeration_algorithm "Enumeration algorithm"
[66]: https://en.wikipedia.org/wiki/Sudoku_solving_algorithms "Sudoku solving algorithms"
[67]: https://en.wikipedia.org/w/index.php?title=Backtracking&action=edit&section=8 "Edit section: Notes"
[68]: https://en.wikipedia.org/w/index.php?title=Backtracking&action=edit&section=9 "Edit section: References"
[69]: https://en.wikipedia.org/w/index.php?title=Backtracking&action=edit&section=10 "Edit section: Further reading"
[70]: https://en.wikipedia.org/w/index.php?title=Backtracking&action=edit&section=11 "Edit section: External links"
[71]: http://www.hbmeyer.de/backtrack/backtren.htm
[72]: http://www.drdobbs.com/cpp/solving-combinatorial-problems-with-stl/184401194

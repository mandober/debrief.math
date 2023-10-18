---
downloaded:       2021-12-18
page-url:         https://en.wikipedia.org/wiki/SLD_resolution
page-title:       SLD resolution - Wikipedia
article-title:    SLD resolution - Wikipedia
---
# SLD resolution - Wikipedia

SLD resolution (Selective Linear Definite clause resolution) is the basic inference rule used in logic programming. It is a refinement of resolution, which is both sound and refutation complete for Horn clauses.
__SLD resolution__ (*Selective Linear Definite* clause resolution) is the basic [inference rule][1] used in [logic programming][2]. It is a refinement of [resolution][3], which is both [sound][4] and refutation [complete][5] for [Horn clauses][6].

## The SLD inference rule\[[edit][7]\]

Given a goal clause, represented as the negation of a problem to be solved :

![{\displaystyle \neg L_{1}\lor \cdots \lor \neg L_{i}\lor \cdots \lor \neg L_{n}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5f44ac5d0a865f6d3babee1a9e58aaf6f4ae96ef)

with selected literal ![ \neg L_i ](https://wikimedia.org/api/rest_v1/media/math/render/svg/61a67c32bb6bec92ee922be34766544f463d2f34), and an input [definite clause][8]:

![{\displaystyle L\lor \neg K_{1}\lor \cdots \lor \neg K_{m}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/a401502e3fc1d43f306e3cb0e16e77cc8d0488b5)

whose positive literal (atom) ![ L\, ](https://wikimedia.org/api/rest_v1/media/math/render/svg/d330bc0cd693cc87e3943137dc591038a89f77e2) [unifies][9] with the atom ![ L_i \, ](https://wikimedia.org/api/rest_v1/media/math/render/svg/0d382c1455269cfb6ee37f3265954c3326b3f60b) of the selected literal ![\neg L_i \, ](https://wikimedia.org/api/rest_v1/media/math/render/svg/5d35648d963d480903984324a775557095e6ccbd), SLD resolution derives another goal clause, in which the selected literal is replaced by the negative literals of the input clause and the unifying substitution ![ \theta \, ](https://wikimedia.org/api/rest_v1/media/math/render/svg/228647b7d4a18b6c8c0c390b439a61da8fafec76) is applied:

![{\displaystyle (\neg L_{1}\lor \cdots \lor \neg K_{1}\lor \cdots \lor \neg K_{m}\ \lor \cdots \lor \neg L_{n})\theta }](https://wikimedia.org/api/rest_v1/media/math/render/svg/749fd8d759f1503ab19f75966b405ce2576e02d8)

In the simplest case, in propositional logic, the atoms ![ L_i \, ](https://wikimedia.org/api/rest_v1/media/math/render/svg/0d382c1455269cfb6ee37f3265954c3326b3f60b) and ![ L \, ](https://wikimedia.org/api/rest_v1/media/math/render/svg/d330bc0cd693cc87e3943137dc591038a89f77e2) are identical, and the unifying substitution ![ \theta \, ](https://wikimedia.org/api/rest_v1/media/math/render/svg/228647b7d4a18b6c8c0c390b439a61da8fafec76) is vacuous. However, in the more general case, the unifying substitution is necessary to make the two literals identical.

## The origin of the name "SLD"\[[edit][10]\]

The name "SLD resolution" was given by Maarten van Emden for the unnamed inference rule introduced by [Robert Kowalski][11].[\[1\]][12] Its name is derived from SL resolution,[\[2\]][13] which is both sound and refutation complete for the unrestricted clausal form of logic. "SLD" stands for "SL resolution with Definite clauses".

In both, SL and SLD, "L" stands for the fact that a resolution proof can be restricted to a linear sequence of clauses:

![ C_1, C_2, \cdots, C_l ](https://wikimedia.org/api/rest_v1/media/math/render/svg/830200696cff3d794e85fcbd03cf1b25ecfe9f09)

where the "top clause" ![ C_1 \, ](https://wikimedia.org/api/rest_v1/media/math/render/svg/d3d4f3c02d474547c70098d2529c8636829776a3) is an input clause, and every other clause ![ C_{i+1} \, ](https://wikimedia.org/api/rest_v1/media/math/render/svg/741a11990e8b167d6821f56baaf34e09eba10ac5) is a resolvent one of whose parents is the previous clause ![ C_i \, ](https://wikimedia.org/api/rest_v1/media/math/render/svg/f72b1de783f93ff6f0d055e04a91519368ab9310). The proof is a refutation if the last clause ![ C_l \, ](https://wikimedia.org/api/rest_v1/media/math/render/svg/f2156736f1ad69c9b903212ace4fbcd08bde87c7) is the empty clause.

In SLD, all of the clauses in the sequence are goal clauses, and the other parent is an input clause. In SL resolution, the other parent is either an input clause or an ancestor clause earlier in the sequence.

In both SL and SLD, "S" stands for the fact that the only literal resolved upon in any clause ![ C_i \, ](https://wikimedia.org/api/rest_v1/media/math/render/svg/f72b1de783f93ff6f0d055e04a91519368ab9310) is one that is uniquely selected by a selection rule or selection function. In SL resolution, the selected literal is restricted to one which has been most recently introduced into the clause. In the simplest case, such a [last-in-first-out][14] selection function can be specified by the order in which literals are written, as in [Prolog][15]. However, the selection function in SLD resolution is more general than in SL resolution and in Prolog. There is no restriction on the literal that can be selected.

## The computational interpretation of SLD resolution\[[edit][16]\]

In clausal logic, an SLD refutation demonstrates that the input set of clauses is unsatisfiable. In logic programming, however, an SLD refutation also has a computational interpretation. The top clause ![{\displaystyle \neg L_{1}\lor \cdots \lor \neg L_{i}\lor \cdots \lor \neg L_{n}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5f44ac5d0a865f6d3babee1a9e58aaf6f4ae96ef) can be interpreted as the denial of a conjunction of subgoals ![{\displaystyle L_{1}\land \cdots \land L_{i}\land \cdots \land L_{n}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e518a1160ad51d9b232ed8de9190b18a93858e7b). The derivation of clause ![ C_{i+1} \, ](https://wikimedia.org/api/rest_v1/media/math/render/svg/741a11990e8b167d6821f56baaf34e09eba10ac5) from ![ C_i \, ](https://wikimedia.org/api/rest_v1/media/math/render/svg/f72b1de783f93ff6f0d055e04a91519368ab9310) is the derivation, by means of [backward reasoning][17], of a new set of sub-goals using an input clause as a goal-reduction procedure. The unifying substitution ![ \theta \, ](https://wikimedia.org/api/rest_v1/media/math/render/svg/228647b7d4a18b6c8c0c390b439a61da8fafec76) both passes input from the selected subgoal to the body of the procedure and simultaneously passes output from the head of the procedure to the remaining unselected subgoals. The empty clause is simply an empty set of subgoals, which signals that the initial conjunction of subgoals in the top clause has been solved.

## SLD resolution strategies\[[edit][18]\]

SLD resolution implicitly defines a [search tree][19] of alternative computations, in which the initial goal clause is associated with the root of the tree. For every node in the tree and for every definite clause in the program whose positive literal unifies with the selected literal in the goal clause associated with the node, there is a child node associated with the goal clause obtained by SLD resolution.

A leaf node, which has no children, is a success node if its associated goal clause is the empty clause. It is a failure node if its associated goal clause is non-empty but its selected literal unifies with no positive literal of definite clauses in the program.

SLD resolution is non-deterministic in the sense that it does not determine the search strategy for exploring the search tree. Prolog searches the tree depth-first, one branch at a time, using backtracking when it encounters a failure node. [Depth-first search][20] is very efficient in its use of computing resources, but is incomplete if the search space contains infinite branches and the search strategy searches these in preference to finite branches: the computation does not terminate. Other search strategies, including [breadth-first][21], [best-first][22], and [branch-and-bound][23] search are also possible. Moreover, the search can be carried out sequentially, one node at a time, or in parallel, many nodes simultaneously.

SLD resolution is also non-deterministic in the sense, mentioned earlier, that the selection rule is not determined by the inference rule, but is determined by a separate decision procedure, which can be sensitive to the dynamics of the program execution process.

The SLD resolution search space is an or-tree, in which different branches represent alternative computations. In the case of propositional logic programs, SLD can be generalised so that the search space is an [and-or tree][24], whose nodes are labelled by single literals, representing subgoals, and nodes are joined either by conjunction or by disjunction. In the general case, where conjoint subgoals share variables, the and-or tree representation is more complicated.

## Example\[[edit][25]\]

Given the logic program:

and the top-level goal:

the search space consists of a single branch, in which `q` is reduced to `p` which is reduced to the empty set of subgoals, signalling a successful computation. In this case, the program is so simple that there is no role for the selection function and no need for any search.

In clausal logic, the program is represented by the set of clauses:

![{\displaystyle q\lor \neg p}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8b13f9a16b51b04631ecc0f6ec54823b5ca25922)

![ p \, ](https://wikimedia.org/api/rest_v1/media/math/render/svg/e4fa5f88a712eb9b03398066a0577fdcf33e02c6)

and top-level goal is represented by the goal clause with a single negative literal:

![ \neg q  ](https://wikimedia.org/api/rest_v1/media/math/render/svg/9ab9e26db63fa52698ddf6ef2b7dc355a954a48e)

The search space consists of the single refutation:

![ \neg q, \neg p, \mathit{false} ](https://wikimedia.org/api/rest_v1/media/math/render/svg/2ceb2f109167959978233b911c3d8828d3c0e63a)

where ![ \mathit{false} \, ](https://wikimedia.org/api/rest_v1/media/math/render/svg/8a28ce6d2b3d13504e9b9ba05a60e1b1df1f1d84) represents the empty clause.

If the following clause were added to the program:

then there would be an additional branch in the search space, whose leaf node `r` is a failure node. In Prolog, if this clause were added to the front of the original program, then Prolog would use the order in which the clauses are written to determine the order in which the branches of the search space are investigated. Prolog would try this new branch first, fail, and then backtrack to investigate the single branch of the original program and succeed.

If the clause

were now added to the program, then the search tree would contain an infinite branch. If this clause were tried first, then Prolog would go into an infinite loop and not find the successful branch.

## SLDNF\[[edit][26]\]

SLDNF[\[3\]][27] is an extension of SLD resolution to deal with [negation as failure][28]. In SLDNF, goal clauses can contain negation as failure literals, say of the form ![ not(p) \, ](https://wikimedia.org/api/rest_v1/media/math/render/svg/a495dbd34112493ba36e58b4f8357d49ed0515e6), which can be selected only if they contain no variables. When such a variable-free literal is selected, a subproof (or subcomputation) is attempted to determine whether there is an SLDNF refutation starting from the corresponding unnegated literal ![ p \, ](https://wikimedia.org/api/rest_v1/media/math/render/svg/e4fa5f88a712eb9b03398066a0577fdcf33e02c6) as top clause. The selected subgoal ![ not(p) \, ](https://wikimedia.org/api/rest_v1/media/math/render/svg/a495dbd34112493ba36e58b4f8357d49ed0515e6) succeeds if the subproof fails, and it fails if the subproof succeeds.

## See also\[[edit][29]\]

-   [John Alan Robinson][30]

## References\[[edit][31]\]

1.  __[^][32]__ Robert Kowalski [Predicate Logic as a Programming Language][33] Memo 70, Department of Artificial Intelligence, University of Edinburgh. 1973. Also in Proceedings IFIP Congress, Stockholm, North Holland Publishing Co., 1974, pp. 569-574.
2.  __[^][34]__ Robert Kowalski and Donald Kuehner, [Linear Resolution with Selection Function][35] Artificial Intelligence, Vol. 2, 1971, pp. 227-60.
3.  __[^][36]__ Krzysztof Apt and Maarten van Emden, [Contributions to the Theory of Logic Programming][37], Journal of the Association for Computing Machinery. Vol, 1982 - portal.acm.org

-   [Jean Gallier][38], *[SLD-Resolution and Logic Programming][39]* chapter 9 of *[Logic for Computer Science: Foundations of Automatic Theorem Proving][40]*, 2003 online revision (free to download), originally published by Wiley, 1986
-   John C. Shepherdson, *SLDNF-Resolution with Equality*, Journal of Automated Reasoning 8: 297-306, 1992; defines semantics with respect to which SLDNF-resolution with equality is sound and complete

## External links\[[edit][41]\]

-   [\[1\]][42] Definition from the Free On-Line Dictionary of Computing

[1]: https://en.wikipedia.org/wiki/Rule_of_inference "Rule of inference"
[2]: https://en.wikipedia.org/wiki/Logic_programming "Logic programming"
[3]: https://en.wikipedia.org/wiki/Resolution_(logic) "Resolution (logic)"
[4]: https://en.wikipedia.org/wiki/Soundness "Soundness"
[5]: https://en.wikipedia.org/wiki/Completeness_(logic) "Completeness (logic)"
[6]: https://en.wikipedia.org/wiki/Horn_clause "Horn clause"
[7]: https://en.wikipedia.org/w/index.php?title=SLD_resolution&action=edit&section=1 "Edit section: The SLD inference rule"
[8]: https://en.wikipedia.org/wiki/Definite_clause
[9]: https://en.wikipedia.org/wiki/Unification_(computing) "Unification (computing)"
[10]: https://en.wikipedia.org/w/index.php?title=SLD_resolution&action=edit&section=2 "Edit section: The origin of the name "SLD""
[11]: https://en.wikipedia.org/wiki/Robert_Kowalski "Robert Kowalski"
[12]: https://en.wikipedia.org/wiki/SLD_resolution#cite_note-1
[13]: https://en.wikipedia.org/wiki/SLD_resolution#cite_note-2
[14]: https://en.wikipedia.org/wiki/Stack_(abstract_data_type) "Stack (abstract data type)"
[15]: https://en.wikipedia.org/wiki/Prolog "Prolog"
[16]: https://en.wikipedia.org/w/index.php?title=SLD_resolution&action=edit&section=3 "Edit section: The computational interpretation of SLD resolution"
[17]: https://en.wikipedia.org/wiki/Backward_reasoning "Backward reasoning"
[18]: https://en.wikipedia.org/w/index.php?title=SLD_resolution&action=edit&section=4 "Edit section: SLD resolution strategies"
[19]: https://en.wikipedia.org/wiki/Search_tree "Search tree"
[20]: https://en.wikipedia.org/wiki/Depth-first_search "Depth-first search"
[21]: https://en.wikipedia.org/wiki/Breadth-first_search "Breadth-first search"
[22]: https://en.wikipedia.org/wiki/Best-first_search "Best-first search"
[23]: https://en.wikipedia.org/wiki/Branch-and-bound "Branch-and-bound"
[24]: https://en.wikipedia.org/wiki/And-or_tree "And-or tree"
[25]: https://en.wikipedia.org/w/index.php?title=SLD_resolution&action=edit&section=5 "Edit section: Example"
[26]: https://en.wikipedia.org/w/index.php?title=SLD_resolution&action=edit&section=6 "Edit section: SLDNF"
[27]: https://en.wikipedia.org/wiki/SLD_resolution#cite_note-3
[28]: https://en.wikipedia.org/wiki/Negation_as_failure "Negation as failure"
[29]: https://en.wikipedia.org/w/index.php?title=SLD_resolution&action=edit&section=7 "Edit section: See also"
[30]: https://en.wikipedia.org/wiki/John_Alan_Robinson "John Alan Robinson"
[31]: https://en.wikipedia.org/w/index.php?title=SLD_resolution&action=edit&section=8 "Edit section: References"
[32]: https://en.wikipedia.org/wiki/SLD_resolution#cite_ref-1 "Jump up"
[33]: http://www.doc.ic.ac.uk/~rak/papers/IFIP%2074.pdf
[34]: https://en.wikipedia.org/wiki/SLD_resolution#cite_ref-2 "Jump up"
[35]: http://www.doc.ic.ac.uk/~rak/papers/sl.pdf
[36]: https://en.wikipedia.org/wiki/SLD_resolution#cite_ref-3 "Jump up"
[37]: http://dl.acm.org/citation.cfm?doid=322326.322339
[38]: https://en.wikipedia.org/wiki/Jean_Gallier "Jean Gallier"
[39]: https://cs.uwaterloo.ca/~david/cl/sld-gallier.pdf
[40]: http://www.cis.upenn.edu/~jean/gbooks/logic.html
[41]: https://en.wikipedia.org/w/index.php?title=SLD_resolution&action=edit&section=9 "Edit section: External links"
[42]: http://foldoc.org/?SLD+resolution

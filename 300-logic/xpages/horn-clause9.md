---
downloaded:       2021-12-18
page-url:         https://en.wikipedia.org/wiki/Horn_clause
page-title:       Horn clause - Wikipedia
article-title:    Horn clause - Wikipedia
---
# Horn clause - Wikipedia

In mathematical logic and logic programming, a Horn clause is a logical formula of a particular rule-like form which gives it useful properties for use in logic programming, formal specification, and model theory. Horn clauses are named for the logician Alfred Horn, who first pointed out their significance in 1951.[1]
In [mathematical logic][1] and [logic programming][2], a __Horn clause__ is a logical formula of a particular rule-like form which gives it useful properties for use in logic programming, [formal specification][3], and [model theory][4]. Horn clauses are named for the logician [Alfred Horn][5], who first pointed out their significance in 1951.[\[1\]][6]

## Definition\[[edit][7]\]

A Horn clause is a [clause][8] (a [disjunction][9] of [literals][10]) with at most one positive, i.e. [unnegated][11], literal.

Conversely, a disjunction of literals with at most one negated literal is called a __dual-Horn clause__.

A Horn clause with exactly one positive literal is a __definite clause__ or a __strict Horn clause__;[\[2\]][12] a definite clause with no negative literals is a __unit clause__,[\[3\]][13] and a unit clause without variables is a __fact__;[\[4\]][14]. A Horn clause without a positive literal is a __goal clause__. Note that the empty clause, consisting of no literals (which is equivalent to *false*) is a goal clause. These three kinds of Horn clauses are illustrated in the following [propositional][15] example:

All variables in a clause are implicitly [universally quantified][16] with the scope being the entire clause. Thus, for example:

¬ *human*(*X*) ∨ *mortal*(*X*)

stands for:

∀X( ¬ *human*(*X*) ∨ *mortal*(*X*) )

which is logically equivalent to:

∀X ( *human*(*X*) → *mortal*(*X*) )

### Significance\[[edit][17]\]

Horn clauses play a basic role in [constructive logic][18] and [computational logic][19]. They are important in [automated theorem proving][20] by [first-order resolution][21], because the [resolvent][22] of two Horn clauses is itself a Horn clause, and the resolvent of a goal clause and a definite clause is a goal clause. These properties of Horn clauses can lead to greater efficiency of proving a theorem: the goal clause is the negation of this theorem; see *Goal clause* in the above table. Intuitively, if we wish to prove φ, we assume ¬φ (the goal) and check if such assumption leads to a contradiction. If so, then φ must hold. This way, a mechanical proving tool needs to maintain only one set of formulas (assumptions), rather than two sets (assumptions and (sub)goals).

Propositional Horn clauses are also of interest in [computational complexity][23]. The problem of finding truth-value assignments to make a conjunction of propositional Horn clauses true is known as [HORNSAT][24]. This problem is [P-complete][25] and solvable in [linear time][26].[\[5\]][27] Note that the unrestricted [Boolean satisfiability problem][28] is an [NP-complete][29] problem.

## Logic programming\[[edit][30]\]

Horn clauses are also the basis of [logic programming][31], where it is common to write definite clauses in the form of an [implication][32]:

(*p* ∧ *q* ∧ ... ∧ *t*) → *u*

In fact, the resolution of a goal clause with a definite clause to produce a new goal clause is the basis of the [SLD resolution][33] inference rule, used in implementation of the logic programming language [Prolog][34].

In logic programming, a definite clause behaves as a goal-reduction procedure. For example, the Horn clause written above behaves as the procedure:

to show *u*, show *p* and show *q* and ... and show *t*.

To emphasize this reverse use of the clause, it is often written in the reverse form:

*u* ← (*p* ∧ *q* ∧ ... ∧ *t*)

In [Prolog][35] this is written as:

In logic programming, computation and query evaluation are performed by representing the negation of a problem to be solved as a goal clause. For example, the problem of solving the existentially quantified conjunction of positive literals:

∃*X* (*p* ∧ *q* ∧ ... ∧ *t*)

is represented by negating the problem (denying that it has a solution), and representing it in the logically equivalent form of a goal clause:

∀*X* (*false* ← *p* ∧ *q* ∧ ... ∧ *t*)

In [Prolog][36] this is written as:

Solving the problem amounts to deriving a contradiction, which is represented by the empty clause (or "false"). The solution of the problem is a substitution of terms for the variables in the goal clause, which can be extracted from the proof of contradiction. Used in this way, goal clauses are similar to [conjunctive queries][37] in relational databases, and Horn clause logic is equivalent in computational power to a [universal Turing machine][38].

The Prolog notation is actually ambiguous, and the term “goal clause” is sometimes also used ambiguously. The variables in a goal clause can be read as universally or existentially quantified, and deriving “false” can be interpreted either as deriving a contradiction or as deriving a successful solution of the problem to be solved.\[*[further explanation needed][39]*\]

Van Emden and Kowalski (1976) investigated the model-theoretic properties of Horn clauses in the context of logic programming, showing that every set of definite clauses __D__ has a unique minimal model __M__. An atomic formula __A__ is logically implied by __D__ if and only if __A__ is true in __M__. It follows that a problem __P__ represented by an existentially quantified conjunction of positive literals is logically implied by __D__ if and only if __P__ is true in __M__. The minimal model semantics of Horn clauses is the basis for the [stable model semantics][40] of logic programs.[\[6\]][41]

## Notes\[[edit][42]\]

## References\[[edit][43]\]

[1]: https://en.wikipedia.org/wiki/Mathematical_logic "Mathematical logic"
[2]: https://en.wikipedia.org/wiki/Logic_programming "Logic programming"
[3]: https://en.wikipedia.org/wiki/Formal_specification "Formal specification"
[4]: https://en.wikipedia.org/wiki/Model_theory "Model theory"
[5]: https://en.wikipedia.org/wiki/Alfred_Horn "Alfred Horn"
[6]: https://en.wikipedia.org/wiki/Horn_clause#cite_note-onsentences-1
[7]: https://en.wikipedia.org/w/index.php?title=Horn_clause&action=edit&section=1 "Edit section: Definition"
[8]: https://en.wikipedia.org/wiki/Clause_(logic) "Clause (logic)"
[9]: https://en.wikipedia.org/wiki/Disjunction "Disjunction"
[10]: https://en.wikipedia.org/wiki/Literal_(mathematical_logic) "Literal (mathematical logic)"
[11]: https://en.wikipedia.org/wiki/Negation "Negation"
[12]: https://en.wikipedia.org/wiki/Horn_clause#cite_note-makowsky-2
[13]: https://en.wikipedia.org/wiki/Horn_clause#cite_note-3
[14]: https://en.wikipedia.org/wiki/Horn_clause#cite_note-4
[15]: https://en.wikipedia.org/wiki/Propositional_formula "Propositional formula"
[16]: https://en.wikipedia.org/wiki/Universal_quantification "Universal quantification"
[17]: https://en.wikipedia.org/w/index.php?title=Horn_clause&action=edit&section=2 "Edit section: Significance"
[18]: https://en.wikipedia.org/wiki/Constructive_logic "Constructive logic"
[19]: https://en.wikipedia.org/wiki/Computational_logic "Computational logic"
[20]: https://en.wikipedia.org/wiki/Automated_theorem_proving "Automated theorem proving"
[21]: https://en.wikipedia.org/wiki/First-order_resolution "First-order resolution"
[22]: https://en.wikipedia.org/wiki/Resolution_(logic) "Resolution (logic)"
[23]: https://en.wikipedia.org/wiki/Computational_complexity_theory "Computational complexity theory"
[24]: https://en.wikipedia.org/wiki/Horn-satisfiability "Horn-satisfiability"
[25]: https://en.wikipedia.org/wiki/P-complete "P-complete"
[26]: https://en.wikipedia.org/wiki/Linear_time "Linear time"
[27]: https://en.wikipedia.org/wiki/Horn_clause#cite_note-dowling-6
[28]: https://en.wikipedia.org/wiki/Boolean_satisfiability_problem "Boolean satisfiability problem"
[29]: https://en.wikipedia.org/wiki/NP-complete "NP-complete"
[30]: https://en.wikipedia.org/w/index.php?title=Horn_clause&action=edit&section=3 "Edit section: Logic programming"
[31]: https://en.wikipedia.org/wiki/Logic_programming "Logic programming"
[32]: https://en.wikipedia.org/wiki/Material_conditional "Material conditional"
[33]: https://en.wikipedia.org/wiki/SLD_resolution "SLD resolution"
[34]: https://en.wikipedia.org/wiki/Prolog "Prolog"
[35]: https://en.wikipedia.org/wiki/Prolog "Prolog"
[36]: https://en.wikipedia.org/wiki/Prolog "Prolog"
[37]: https://en.wikipedia.org/wiki/Conjunctive_query "Conjunctive query"
[38]: https://en.wikipedia.org/wiki/Universal_Turing_machine "Universal Turing machine"
[39]: https://en.wikipedia.org/wiki/Wikipedia:Please_clarify "Wikipedia:Please clarify"
[40]: https://en.wikipedia.org/wiki/Stable_model_semantics "Stable model semantics"
[41]: https://en.wikipedia.org/wiki/Horn_clause#cite_note-emdenkowalski-7
[42]: https://en.wikipedia.org/w/index.php?title=Horn_clause&action=edit&section=4 "Edit section: Notes"
[43]: https://en.wikipedia.org/w/index.php?title=Horn_clause&action=edit&section=5 "Edit section: References"

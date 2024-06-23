---
downloaded:       2022-06-20
page-url:         https://web.archive.org/web/19990506175554/http://www.earlham.edu/~peters/courses/log/treeprop.htm
article-title:    Peter Suber, "Truth Trees for Propositional Logic"
---
# Peter Suber, "Truth Trees for Propositional Logic"
The Wayback Machine - https://web.archive.org/web/19990506175554/http://www.earlham.edu:80/%7Epeters/courses/log/treeprop.htm

**Truth Trees for Propositional Logic**

[Peter Suber][1], [Philosophy Department][2], [Earlham College][3]

**Advantages**

Truth trees have all the virtues, and none of the vices, of all the known methods of testing validity.

They have the virtues that truth tables possess over derivations in that they are effective (dumb, mechanical, infallible); they test both validity and invalidity; they produce counterexamples in case of invalidity; and they may test validity directly on the argument or by testing its corresponding conditional for tautology.

Trees are superior to truth tables, and have the virtues of derivations, by remaining economical even with a very large number of variables, and by applying to both propositional and predicate logic.

In predicate logic they remain useful but lose their effectiveness in the technical sense because some of them do not terminate in a finite number of steps. But in this domain no method is effective in the technical sense.

Trees are like the truth table short-cut method by using an apagogical or indirect method (they prove validity by finding a contradiction in the assumption of invalidity), and by organizing the search for counterexamples (invalidating truth table rows); but they are superior to the short-cut method not only by applying to predicate logic but also by using branching or forking to advantage.

Like Venn (or Euler) diagrams in the Aristotelian syllogistic, they make validity apparent to the eye as well as the mind; in this they are an aid to intuition.

**To test arguments**

1.  List the premises and the *negation* of the conclusion in a vertical column.
    -   This is to assume invalidity.
    -   This column forms the "trunk" of the tree.
2.  Take any compound statement in the trunk, check it off, and draw its truth-conditions at the bottom of the trunk, following the decomposition rules from the chart below.
    -   If compound statements remain on any branch, check them off and break them down, listing their truth conditions (by the branching rules) at the bottom of *every* open branch below them.
    -   Repeat until each compound statement in each branch has been checked off and broken down (decomposed).
    -   Tip: To save labor and paper, check off and break down all non-branching compounds before any branching compounds.
3.  If a branch contains contradictory information anywhere along it, including the trunk, then *close* that branch with an X at its bottom.
4.  When these steps are complete, then either:
    1.  All branches are closed.
        -   This means that the initial assumption of invalidity leads to contradiction; hence the assumption is false. *The argument is valid*.
    2.  At least one branch is open.
        -   This means that the assumption of invalidity is not contradictory; there is at least one assignment of truth values which makes all the premises true and the conclusion false. *The argument is invalid*.
        -   Each open branch is a counterexample --a vertical, or jagged, representation of an invalidating row of a truth table.

**To test statements**

1.  Negate the statement to be tested.
2.  Apply the truth tree decomposition rules to the statement, checking off and breaking down each compound in the tree until none remains (again, listing the truth conditions at the bottom of each open branch below them).
3.  Close branches containing contradictions.
4.  If all branches close, the original statement (not negated) is a tautology; if none closes, it is a contradiction; if some are closed and some open, it is a contingency.

**General rules**

1.  To list a statement (in trunk or branch) is to assign it the truth-value T.
2.  Decomposition rules apply only to whole statments, not to compounds that are components of larger compounds.
3.  In deciding which decomposition rule to apply to a statement, look only at the statement's main connective.
4.  A compound will branch if and only if it has more than one T in its truth table column.
5.  Branching represents inclusive disjunction: the statement is true under one or the other or both of the conditions that branch below it. Non-branching represents conjunction: the statement is true only under both the conditions listed below it.
6.  The decomposed components of a compound must be listed at the bottom of *every* open branch below the compound.

**Truth Tree Decomposition Rules**

**Branching Rules**

<table><tbody><tr><td colspan="2">A <img src="https://web.archive.org/web/19990506175554im_/http://www.earlham.edu/~peters/writing/matimp.gif"> B</td><td colspan="2">A <img src="https://web.archive.org/web/19990506175554im_/http://www.earlham.edu/~peters/writing/disjunct.gif"> B</td><td colspan="2">~(A · B)</td><td colspan="2">A <img src="https://web.archive.org/web/19990506175554im_/http://www.earlham.edu/~peters/writing/matequiv.gif"> B</td><td colspan="2">~(A <img src="https://web.archive.org/web/19990506175554im_/http://www.earlham.edu/~peters/writing/matequiv.gif"> B)</td></tr><tr><td>~A</td><td>B</td><td>A</td><td>B</td><td>~A</td><td>~B</td><td>A<br>B</td><td>~A<br>~B</td><td>A<br>~B</td><td>~A<br>B</td></tr></tbody></table>

> In constructing your tree on paper, it helps to draw the branching graphically, for example converting this

<table><tbody><tr><td colspan="2">A <img src="https://web.archive.org/web/19990506175554im_/http://www.earlham.edu/~peters/writing/matimp.gif"> B</td></tr><tr><td>~A</td><td>B</td></tr></tbody></table>

> into this

```

A  B
        /\        
      /  \      
~A     B 


```

**Non-Branching Rules**

Decomposition rules for quantifiers, and the method for applying truth tree analysis to predicate logic, are contained in another hand-out.

**Avoiding the decomposition rules**

If you don't see the logic of the decomposition rules, you must memorize them. But there is a way to avoid them altogether.

Using such rules as material implication, material equivalence, and DeMorgan's theorems, transform a compound proposition until it is an unnegated conjunction or an unnegated disjunction. If it is a conjunction, then check it off and list its two conjuncts in the same line. If it is a disjunction, then check it off and branch, listing one disjunct on each branch.

---

This file is an electronic hand-out for the course, [Symbolic Logic][4].

[1]: https://web.archive.org/web/19990506175554/http://www.earlham.edu/~peters/hometoc.htm
[2]: https://web.archive.org/web/19990506175554/http://www.earlham.edu/~phil/index.htm
[3]: https://web.archive.org/web/19990506175554/http://www.earlham.edu/
[4]: https://web.archive.org/web/19990506175554/http://www.earlham.edu/~peters/courses/log/loghome.htm

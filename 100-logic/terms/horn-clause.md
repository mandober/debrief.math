---
Horn clause
horn-clause.md
https://en.wikipedia.org/wiki/Horn_clause
https://en.wikipedia.org/wiki/Horn-satisfiability
---
# Horn clause

- A *clause* is a disjunction of literals.
- *Horn clause* is a clause having at most 1 positive (non-negated) literal.
- *Dual-Horn clause* is a clause having at most 1 negated literal.
- *Strict (definite) Horn clause* has exactly 1 positive literal.
- *Unit clause* is a definite clause without negative literals.
- A *fact* is a unit clause without variables.
- A *goal* is a Horn clause without a positive literal (goal clause is the empty clause without literals).

clause  | Disjunction form       | Implication form        | Read as
--------|------------------------|-------------------------|--------
Definite| ¬p ∨ ¬q ∨ ... ∨ ¬t ∨ u | u ← p ∧ q ∧ ... ∧ t     | (1)
Fact    | u                      | u                       | (2)
Goal    | ¬p ∨ ¬q ∨ ... ∨ ¬t     | false ← p ∧ q ∧ ... ∧ t | (3)


(1) assume that, if p and q and ... and t all hold, then u also holds
(2) assume that u holds
(3) show that p and q and ... and t all hold

Horn clause logic is equivalent in computational power to a universal Turing machine.

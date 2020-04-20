# Logic

Math › Logic

stratification
ramification
constructive logic
computational logic
automated theorem proving
first-order resolution
resolution theorem proving
resolvent
logic programming
SLD resolution
Resolution
Horn clause
satisfiability
Intuitionistic logic
constructive logic
Computational logic



## Horn clause
https://en.wikipedia.org/wiki/Horn_clause

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




---

https://en.wikipedia.org/wiki/Horn_clause
https://en.wikipedia.org/wiki/Horn-satisfiability
https://en.wikipedia.org/wiki/Boolean_satisfiability_problem
https://en.wikipedia.org/wiki/Intuitionistic_logic
https://en.wikipedia.org/wiki/Computational_logic
https://en.wikipedia.org/wiki/Logic_programming
https://en.wikipedia.org/wiki/Prolog
https://en.wikipedia.org/wiki/SLD_resolution
https://en.wikipedia.org/wiki/Universal_Turing_machine
https://en.wikipedia.org/wiki/Resolution_(logic)

https://en.wikipedia.org/wiki/Type_theory
https://plato.stanford.edu/entries/type-theory/
https://en.wikipedia.org/wiki/History_of_type_theory
https://www.rep.routledge.com/articles/thematic/theory-of-types/v-1
https://en.wikipedia.org/wiki/New_Foundations
https://en.wikipedia.org/wiki/Stratification_(mathematics)
https://www.britannica.com/topic/ramified-theory-of-types
https://planetmath.org/RussellsTheoryOfTypes
https://www.britannica.com/topic/history-of-logic/Logic-since-1900#ref535766

# Horn clause

https://en.wikipedia.org/wiki/Horn_clause

A Horn clause is a logical formula of a particular rule-like form, which gives it useful properties for use in logic programming, formal specification, and model theory. Horn clauses are named for the logician Alfred Horn, who first pointed out their significance in 1951.

Horn clauses
- Horn clause: disjunction of at most one positive (non-negated) literal
- Dual-Horn clause: at most one negated literal
- Strict Horn (definite) clause: exactly one positive literal
  - Unit clause: a Definite clause with no negative literals
    - Fact: a Unit clause without variables
- Goal clause: a Horn clause without positive literals
  - Empty clause: a Goal clause without literals



* **Horn clause** is a clause, i.e. a disjunction of literals, with at most one positive (non-negated) literal.

* **Dual-Horn clause** is a disjunction of literals with at most one negated literal.

* **Definite clause** or **Strict Horn clause** is a A Horn clause with exactly one positive literal.
* *Unit clause* is a definite clause with no negative literals.
* *Fact* is a unit clause without variables.

* **Goal clause** is a Horn clause without a positive literal.
* *The empty clause* is a goal clause without literals (false :- ...)


Propositional examples of the 3 kinds of Horn clauses
* Disjunctive form
  - Definite: `(¬p₁ ∨ ¬p₂ ∨ … ∨ ¬pₙ) ∨ u`   or  `u ∨ (⋁ ¬pᵢ)`
  - Fact:                             `u`   or  `u`
  - Goal:     `(¬p₁ ∨ ¬p₂ ∨ … ∨ ¬pₙ)`        or      `⋁ ¬pᵢ`
* Implication form:
  - Definite: `u <- (p₁ ∧ p₂ ∧ … ∧ pₙ)`     or `u <- ⋀ pᵢ`
  - Fact:     `u`                          or  `u`
  - Goal: `false <- (p₁ ∧ p₂ ∧ … ∧ pₙ)`    or  `⊥ <- ⋀ pᵢ`

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

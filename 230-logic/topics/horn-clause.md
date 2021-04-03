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

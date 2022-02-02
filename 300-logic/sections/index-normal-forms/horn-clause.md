# Horn clause

https://en.wikipedia.org/wiki/Horn_clause

A Horn clause is a logical formula of a particular rule-like form, which gives it useful properties for use in logic programming, formal specification, and model theory. Horn clauses are named for the logician Alfred Horn, who first pointed out their significance in 1951.

* **Literal** is an atomic formula or its negation
* **Clause** is a disjunction of literals
* **Horn clause**:      max 1 positive literal
* **Dual-Horn clause**: max 1 negative literal
* **Definite clause** (strict Horn clause): exactly 1 positive literal
* **Unit** clause:  a definite clause without negative literals
* **Fact** clause:  a unit     clause without variables
* **Goal** clause:  a Horn     clause without positive literals
* **Empty clause**: a goal     clause without literals


clause    | pos | neg | notes             | examples
----------|-----|-----|-------------------|----------------------------
Dual-Horn | ∞   | 0-1 | clause            |        [¬p ⋁]  q ⋁  r ⋁  s ⋁   …
Horn      | 0-1 | ∞   | clause            | p; ¬q; [ p ⋁] ¬q ⋁ ¬r ⋁ ¬s ⋁ ¬ …
Definite  | 1   | ∞   | Horn clause       | p;       p ⋁  ¬q ⋁ ¬r ⋁ ¬s ⋁ ¬ …
Unit      | 1   | 0   | defn w/o neg.lit. | p
Fact      | 1   | 0   | unit w/o vars     | a
Goal      | 0   | ∞   | Horn w/o pos.lit. |¬q;         ¬q ⋁ ¬r ⋁ ¬s
Empty     | 0   | ∞   | goal w/o literals | 



## Propositional examples of the Horn clauses

Disjunctive form
- Definite: `(¬p₁ ∨ ¬p₂ ∨ … ∨ ¬pₙ) ∨ u`   or  `u ∨ (⋁ ¬pᵢ)`
- Fact:                            `u`   or  `u`
- Goal:     `(¬p₁ ∨ ¬p₂ ∨ … ∨ ¬pₙ)`      or        `⋁ ¬pᵢ`


Implication form:
- Definite: `u <- (p₁ ∧ p₂ ∧ … ∧ pₙ)`     or `u <- ⋀ pᵢ`
- Fact:     `u`                          or  `u`
- Goal: `false <- (p₁ ∧ p₂ ∧ … ∧ pₙ)`    or  `⊥ <- ⋀ pᵢ`


clause  | Disjunction form       | Implication form        | Read as
--------|------------------------|-------------------------|--------
Definite| ¬p ∨ ¬q ∨ ... ∨ ¬t ∨ u | u ← p ∧ q ∧ ... ∧ t     | (1)
Fact    | u                      | u                       | (2)
Goal    | ¬p ∨ ¬q ∨ ... ∨ ¬t     | false ← p ∧ q ∧ ... ∧ t | (3)

(1) assume that, if p and q and ... and t all hold, then u also holds
(2) assume that u holds
(3) show that p and q and ... and t all hold

> Horn clause logic is equivalent in computational power to a universal Turing machine.

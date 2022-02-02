# Literal

https://en.wikipedia.org/wiki/Literal_(mathematical_logic)

* Literals
  - by polarity
    - positive
    - negative
  - complementary
  - pure



A **literal** is an atomic formula or its negation.

Literals can be divided into two types by thier *polarity*:
* **Positive literals** are atoms, e.g. `φ`.
* **Negative literal** are negated atoms, e.g. `¬φ`.

A **complementary literal** is the negation of a literal `φ`, denited `φ'`. So, if `φ ≡ x` then `φ'` is `¬x`, and if `φ ≡ ¬x` then `φ'` is `x`.

In the context of a formula in the conjunctive normal form (CNF), 
a **pure literal** is a literal whose complement doesn't appear in that formula.

* In Boolean functions, each separate occurrence of a variable, either in inverse or uncomplemented form, is a literal. For example, if `A`, `B`, `C` are variables then the expression `A'BC` contains 3 literals; `A'C + B'C'` has 4; but `A'C + B'C` also has 4 literals despite the fact that `C` appears twice.

* In propositional calculus a literal is simply a propositional variable or its negation.

* In predicate calculus a literal is an atomic formula or its negation, where an atomic formula is a predicate symbol applied to some terms, `P(t₁, …, tₙ)`, with the terms recursively defined starting from constant symbols, variable symbols, and function symbols. For example, `¬Q(f(g(x), y, 2), x)` is a negative literal with the constant symbol `2`, the variable symbols `x` and `y`, the function symbols `f` and `g`, and the predicate symbol `Q`.

## Substitution

https://en.wikipedia.org/wiki/Substitution_(logic)

> **Substitution**, a fundamental concept in logic, is a syntactic transformation applied to a formal expression by consistently replacing the variables therein with other expressions, thus producing a *substitution instance* of the original expression.

Basically, substitution is the instantiation of a variable with a (more) concrete value, similar to instantiating a type param with a concrete type in PLs.

There are many ways to instantiate a formula like P ∧ Q:
- (R -> S) ∧ (T -> S) is a substitution instance, with P := R->S, Q := T->S
- P ∧ P ∧ Q ∧ Q
  - where   `P := P ∧ P ∧ Q` and `Q := Q`
  - or even `P := P ∧ P` and `Q := Q ∧ Q`
  - because of assoc of ∧, it's not easy to tell
    (it can be explicitly stated by using parenthesis)


> Substitutions map variables to the corresponding terms. Substitutions must be applied simultaneously (in a single pass), replacing every occurrence of a varible by its associated term.

Usually, when substitutions are applied, higher-order placeholders are substituted by the more concrete terms of the lower level, in some sense. The meta-variables or variable schema is replaced with the terms of the lower level (kinds by types, higher types by lower types, types by values, and similar), meaning that, even if the "higher-variable" and "term-variable" have the same name, they represent (range over) different things.


## Propositional logic

Let ψ and φ be formulas. 
ψ is a substitution instance of φ 
iff ψ may be obtained from φ 
by substituting formulas for symbols in φ, 
replacing each occurrence of the same symbol 
by an occurrence of the same formula.

Examples
- `(R → S) ∧ (T → S)` is a substitution instance of `P ∧ Q`
- `(A ↔ A) ↔ (A ↔ A)` is a substitution instance of: `(A ↔ A)`


## Tautologies

A propositional formula is a tautology if it is true under every valuation (or interpretation) of its predicate symbols. If Φ is a tautology, and Θ is a substitution instance of Φ, then Θ is again a tautology. This fact implies the soundness of the deduction rule.

## First-order logic

- in FOL, a substitution is a total mapping `σ: V → T` from variables to terms
- some authors additionally require that `σ(x) = x` for all variables `x`
- the notation { x₁ ↦ t₁, ..., xk ↦ tk }


refers to a substitution mapping each variable xi to the corresponding term ti, for i=1,...,k, and every other variable to itself

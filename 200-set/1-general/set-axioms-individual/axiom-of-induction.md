# Axiom of induction

Suppose we have a property `P` on natural numbers and we wish to check that it holds for every number. From the way the numbers are generated, this will follow if the property holds for 0 and if it propagates through the successor operation, since every number is obtained from 0 by a finite number of iterations of `S`. This is expressed by the Axiom of Induction.

## Axiom of Induction

**Axiom of Induction** (Dedekind, 1888): 
If `P` is a unary predicate (formula with one free variable) then
`(P(0) ⋀ ∀x[P(x) ⇒ P(S(x))]) ⇒ ∀y.P(y)`
aka
`(P 0 ⋀ ∀x(P x ⇒ P (S x))) ⇒ ∀y.P y`

In terms of sets, this means that any set containing `0` and closed under the successor contains `w`; or, that the numerals `Sⁿ 0` exhaust the naturals.

## Complete induction

**Complete induction** refers to the natural ordering of the naturals, which can be introduced as e.g.
- `x ≤ y ⇔ ∃z(x + z = y)`
- `x < y ⇔ x ≤ y ⋀ x ≠ y`

We then get the following equivalent form of the induction axiom formula:
`∀z[(∀x < z)Px ⇒ Pz] ⇒ ∀y.P y`
aka
`∀z (∀x ((x < z ⇒ Px) ⇒ Pz)) ⇒ ∀y.P y`

## Least Number Principle

By writing `Q` in place of `¬P` and taking the contrapositive, complete induction is equivalent to the **Least Number Principle**:
`∃y.Qy ⇒ ∃z(Qz ⋀ ∀x(x < z ⇒ ¬Qx))`

```hs
-- starting with the formula for Complete Induction:
∀z(∀x(x < z ⇒ Px) ⇒ Pz) ⇒ ∀y.Py
-- we take its contraposition, P → Q ≡ ¬Q → ¬P
¬(∀y. Py) ⇒ ¬(∀z  (∀x(x < z ⇒ Px) ⇒ Pz))
∃y. ¬Py   ⇒   ∃z ¬(∀x(x < z ⇒ Px) ⇒ Pz)     -- pull in negation
∃y. ¬Py   ⇒   ∃z ¬(¬(∀x(x < z ⇒ Px)) ∨ Pz)  --  P → Q ≡ ¬P ∨ Q
∃y. ¬Py   ⇒   ∃z ¬(Pz ∨ ¬(∀x(x < z ⇒ Px)))  -- ¬P ∨ Q ≡ Q ∧ ¬P
∃y. ¬Py   ⇒   ∃z  (¬Pz ⋀ ∀x(x < z ⇒ Px))    -- deMorgan
-- finally, we now rewrite ¬P with Q
∃y.Qy ⇒ ∃z(Qz ⋀ ∀x(x < z ⇒ ¬Qx))
```

The meaning of the *Least Number Principle* is that if we know that a number with a certain property exists, then we also know that there is a *least number* satisfying that property.

## μ-recursion

A general formulation of the Least Number Principle, 
with params, in terms of functions is:

(Definition by Kleene, 1936)

A function `f` is defined from a relation `R` by *μ-recursion* if
1. `R` is a regular predicate, i.e. `∀x̅ ∃y R(x̅,y)`
2. `f(x̅) = μ y R(x̅,y)` 
    where `μ y R(x̅,y)` is the least number `y` 
    such that `R(x̅,y)` holds

Similarly, `f` is defined from `g` by *μ-recursion* if
1. `∀x̅ ∃y      (g(x̅,y) = 0)`
2. `f(x̅) = μ y (g(x̅,y) = 0)`


Note that the Least Number Principle can be simply written in μ-notation as

`∃yQy ⇒ ∃z(z = μ y Qy)`

The name "recursion" for both the processes above (*primitive recursion* and *μ-recursion*) is justified by the fact that they are both defined by recurrence on the natural numbers.

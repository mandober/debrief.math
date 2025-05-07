# Boolean algebra

* Boolean algebras are models of the equational theory of two values.

* Examples of Boolean algebras: `The algebra of binary digits` under the logical operations (disjunction, conjunction, negation). Applications: propositional calculus, theory of digital circuits. `The algebra of sets` under the set operations (union, intersection, complement).

* All finite Boolean algebras share the same theorems and have a decidable first-order theory.

* Boolean algebra treats the equational theory of the maximal two-element finitary algebra, called the Boolean prototype, and the models of that theory, called Boolean algebras.

* An algebra (or algebraic structure) is a mathematical structure consisting of 3 components: an underlying (or carrier) set, a family of operations on the set, and a set of axioms they together satisfy.

## Related

https://en.wikipedia.org/wiki/Boolean_algebra
https://en.wikipedia.org/wiki/Boolean_algebra_(structure)
https://en.wikipedia.org/wiki/Two-element_Boolean_algebra

## Boolean algebra as a tuple

Boolean algebra is a 6-tuple (𝔹, ¬, ∨, ¬, ⊥, ⊤)

- the carrier set $$\mathbb{B}$$, equipped with operations:
- join        (and)   binary operator    , ¬
- meet        (or)    binary operator    , ∨
- complement  (not)   unary operator     , ¬
- bottom      (least)    element         , ⊥
- top         (greatest) element         , ⊤

such that ∀abc ∈ 𝔹 these axioms hold:
- associativity : a ∨ (b ∨ c) = (a ∨ b) ∨ c, a ∧ (b ∧ c) = (a ∧ b) ∧ c
- commutativity : a ∨ b = b ∨ a, a ∧ b = b ∧ a
- distributivity: a ∨ (b ∧ c) = (a ∨ b) ∧ (a ∨ c), a ∧ (b∨c) = (a∧b) ∨ (a∧c)
- identity :      a ∨ 0 = a,  a ∧ 1 = a
- absorption:     a ∨ (a ∧ b) = a, a ∧ (a ∨ b) = a
- complement:     a ∨ ¬a = 1, a ∧ ¬a = 0

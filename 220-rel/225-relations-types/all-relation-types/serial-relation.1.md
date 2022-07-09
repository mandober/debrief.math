# Serial relation

https://en.wikipedia.org/wiki/Serial_relation

A **serial relation** or **left-total relation** is a binary relation `R ⊆ A⨯B` for which every element of the domain has a corresponding element in the codomain, `∀a ∃b. a R b`.

- `R ⊆ A⨯B` is a serial or left-total relation if `∀a ∃b. a R b`

∀a(a ∈ A -> ∃b(b ∈ B ⋀ a R b))
∀a(a ∈ A -> ∃b(b ∈ B) -> a R b))


that is, every domain element is associated with a codomain element. This is not enough to define functions because it doesn't mention the essential property of functions, i.e. that each domain element can only be associated with exactly one codomain element.


Examples:
- a function `f : A -> B` is serial (left-total) on its domain `A`
- LE (<=) relation on ℕ is serial


* a reflexive relation is a serial relation but the converse is not true
* a serial + symmetric and transitive is reflexive (equivalence relation)
* if a strict order is serial, then it has no maximal element.

* In Euclidean and affine geometry, the serial property of the relation of parallel lines, `m ∥ n`, is expressed by *Playfair's axiom*.

* In Principia Mathematica, Bertrand Russell and A. N. Whitehead refer to "relations which generate a series" as serial relations; their notion differs from the usual in that a relation may have a finite range.

* For a relation `R = {y: xRy }` denote the "successor neighborhood" of `x`. A serial relation can be equivalently characterized as every element having a non-empty successor neighborhood. Similarly an *inverse serial relation* is a relation in which every element has non-empty "predecessor neighborhood". More commonly, an inverse serial relation is called a surjective relation, and is specified by a serial converse relation.

* In normal modal logic, the extension of fundamental *axiom set K* by the *serial property* results in *axiom set D*.

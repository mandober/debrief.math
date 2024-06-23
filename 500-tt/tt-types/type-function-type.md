# Function type

Given types `A` and `B`, we can construct the type `A → B` of functions with domain `A` and codomain `B`.

Given a function `f : A → B` and an element of the domain `a : A`, we can *apply* the function to obtain an element of the codomain `B`, denoted `f a`, and called the *value* of `f` at `a`.

Unlike in set theory, functions are not defined as *functional relations*; rather, they are a *primitive concept* in type theory.

We explain the function type by prescribing
- what we can do with functions (elim rules)
- how to construct them (intro rules)
- what equalities they induce (computation rules)

Rules
- 1 intro rules:
  - named definitions
  - λ abstraction
- 1 elim rule (β)
- 1 computation rules (η)

*Introduction rule*: we construct the elements of `A → B` either by direct definition or using lambda abstraction.

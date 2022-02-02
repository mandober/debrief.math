# Predicate calculus

https://en.wikipedia.org/wiki/Predicate_calculus

In first-order predicate calculus, a statement is a wff, which is interpreted as making a statement about some domain of discourse.

The syntax of wffs consists of
- logical operators: ∧, ∨, ¬, →, ⟺
- quantifiers: ∀ (@), ∃ (!)
- punctuation marks: `, . : () {}`
- terms:
  - variable: x, y, z
  - constant: a, b, c
  - function
- predicates
- literals


A **logical constant** is a specific individual (element) from the domain of discourse (`a`,`b`,`Joe`, etc.).

A **logical variable** range over the entire DOD, although some may be restricted. The symbols representing variables are distinguishable from the symbols representing constants because variables are always quantified, whereas constants are not.

A **function** is a functional relation that maps elements in the DOD to other elements in the DOD, e.g. `min(x,y,z)`, `abs(x)`. A function has one or more arguments, which are terms.

A **predicate** is a relation on the DOD that evaluates to a Boolean value, i.e. it is a relation that is either true or false within the DOD. A predicate has zero or more arguments (terms). Unary predicates are called properties; binary predicates are binary relations.

Examples of predicates:
- `above(a,b)`               "a is above b"
- `animal(child_of((Jerry))` "the child of Jerry is an animal"
- `larger_than(square(x),x)` "the square of x is larger than x"
- `hot`                      "it is hot" (nullary predicate)

A **literal** is a predicate or negation of a predicate.

A **WFF** is defined recursively
- a literal is a wff
- if `φ` is a wff, then so is `¬φ`
- if `φ` and `ψ` are wffs, then so are: `φ ⋀ ψ`, `φ ⋁ ψ`, `φ -> ψ`, `φ <=> ψ`
- if `φ` is a wff, then, for any var `x`, so are `∀x.φ` and `∃x.φ`

The quantifiers `∀x` and `∃x` are said to scope over `φ`, and `x` is a quantified variable.

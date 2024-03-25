# Existential quantification

## ID card

- name: quantifier
- type: binder (variable binder)
- field: mathematical logic
  - subfields: predicate logic, first-order logic, higher-order logic
- symbolic notation
  - `∃x(P(x))`  strict
  - `∃xP(x)`    conventional
  - `∃xPx`      loose
- use
  - example: `∃xP(x)` (paradigmatic symbolic statement)
  - interpretation: logical proposition (statement) `∃xP(x)` is true when `P(x)` is true for at least one value of `x` (where `x` ranges over all objects in the specific domain of discourse)
  - desc: binds and quantifies a new variable existentially, `∃x`, such that the whole statement `∃xP(x)` is true, if there is at least one value that `x` can take that makes the statement true.
  - use requirements:
    - known (specificed) domain of discourse (DOD), `𝔻`.
    - nonempty domain: since variables range over (all the individuals that make up the domain) the domain must not be empty.
- assertions and guarantees
  - using ∃ asserts that at least one individual (object) exists (in the DOD), unlike the use of ∀ which makes no such assertion.
- extras
  - ∃ can be defined in terms of ∀: `∃xP(x) ≝ ∀x(¬P(x))`

## Intro

- quantifier
- quantification
- binder
- quantifiers are logical constants
- logical constants are logical symbols that always have the same interpretation
- logical symbols vs non-logical symbols
- a binder binds a fresh variable
- existential quantifier ∃
- is a type of quantifier along with ∀
- "performs" existential quantification
- existentially quantified variable
- interpretation "threre exists", "there is at least one" (object in the DOD)

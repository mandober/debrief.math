# Set Theory :: ZFC Axioms :: Axiom Schema of Specification

## Axiom card

- name: Axiom Schema of Specification
- synonyms:
  - Axiom Schema of Specification
  - Axiom Schema of Separation
  - Subset Axiom Scheme
  - Axiom Schema of Restricted Comprehension
  - Axiom Schema of Comprehension
- in theories: ZFC
- schema: yes
  - poly: formula, `φ`
  - display: `φ(x)`
  - arity:
    - simple case: one free variable `x`
    - general case: any number of free variables incl. `x`, `w₁, …,wₙ`, `z`
    - free vars in φ:
      - `x`, elements of `z`
      - `w₁, …,wₙ`, any number of free vars, if needed
      - `z`, original set
    - non-free vars in φ:
      - `y` ⊆ z, is not free in `φ`, i.e. it is not in `φ` at all
- FOL statement:
  - simple:  `∀z          ∃y ∀x(x ∈ y ⇔ [x ∈ z ⋀ φ(x)])`
  - general: `∀z ∀(w₁ … wₙ) ∃y ∀x(x ∈ y ⇔ [x ∈ z ⋀ φ(x, w₁, …,wₙ, z)])`
  - where
    - `z` represents the original set
    - `y` represents the new set we are defining, and `y ⊆ z`
- set-builder notation:
  - simple:  `y = { x | x ∈ z ⋀ φ(x) }`
  - general: `y = { x | x ∈ z ⋀ φ(x, w₁, …,wₙ, z) }`



## Statement

**Axiom Schema of Specification** states that any definable subset of a set is a set. It says that given any set, we can create a new set - its subset - by including only those elements that satisfy some formula.

In its simplest form, the axiom can be expressed:

`∀z ∃y ∀x(x ∈ y ⇔ (x ∈ z ⋀ φ(x)))`

where `z` is the given (original) set, and `y`, a subset of `z`, is the new set we are defining: it consists off all elements `x` of `z` that satisfy the formula `φ(x)`.

The formula `φ(x)` above has a single, free variable, `x`, but it may also include the other free variable `z` (`z` is the original set), as well as any number of additional free variables `w₁, …,wₙ`. So, in its most general form, the axiom schema of specification can be expressed as:

`∀z ∀(w₁ … wₙ) ∃y ∀x(x ∈ y ⇔ (x ∈ z ⋀ φ(x, w₁, …,wₙ, z)))`



Subsets are commonly constructed using set builder notation. For example, the even integers can be constructed as the subset of the integers satisfying the congruence modulo predicate: `φ(x)` := `x ≡ 0 (mod 2)`, i.e.

`{ x | x ∈ ℤ ⋀ x ≡ 0 (mod 2) }` or `{ x ∈ ℤ | x ≡ 0 (mod 2) }`


In general, the subset of a set `z` obeying a formula `φ(x)` with one free variable `x` may be written as:

`{ x | x ∈ z ⋀ φ(x) }` or `{ x ∈ z | φ(x) }`

The axiom schema of specification states that this subset always exists. 

It is an axiom schema because there is one axiom for each `φ`.

Formally, let `φ` be any formula in the language of ZFC with free variables among `x`, `z`, `w₁,…,wₙ` (but `y` is not free in `φ`). Then:

`∀z ∀(w₁ … wₙ) ∃y ∀x(x ∈ y ⇔ (x ∈ z ⋀ φ(x, w₁, …,wₙ, z)))`


Note that the axiom schema of specification can only construct subsets and does not allow the construction of sets of the more general form, `{ x | φ(x) }`.

`{ x | φ(x) }` vs `{ x | x ∈ z ⋀ φ(x) }`

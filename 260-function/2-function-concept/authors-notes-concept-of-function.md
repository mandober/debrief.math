# Author's notes: The concept of function

TOC
- relations
  - left-unique relations
  - right-total relations
  - functional relations
    - right-unique relations
    - left-total relations
  - inverse relation, transposition
  - relation composition
  - injective
  - surjective
  - reflexive
  - symetric
  - anyisymetric
  - asymetric
  - transitive
  - relation sorts:
    - elements to elements
    - elements to sets
    - sets to elements
    - sets to sets
- functions
  - partial function
  - total function
  - injection
  - surjection
  - bijection
  - multi-valued function
  - inverse function
    - bijection  ✔ inverse is a function
    - injection  ✔ inverse is a function only on a subset
    - surjection ✔ inverse is a function by AC
  - function composition
  - field of function
  - domain
    - preimage
  - codomain
    - range
    - image
    - fiber
  - function sorts:
    - elements to elements,  x  ⟼  y    normal functions
    - elements to sets,      x  ⟼ {y}   multi-valued functions
    - sets to elements,     {x} ⟻  y    fibers
    - sets to sets,         {x} ⟼ {y}



- All functions are relations (but not vice versa). 
Functions are functional relations, i.e. relations with 2 special properties:
1. The essential property of functions (strong function property)
2. Weak function property

Relations that have these two properties are *total functions*. 
Relations that have only the first property are *partial functions*. 
Relations without the first property are just relations. 
Relations without the second property are partial functions. 
Relations without both properties (it is enough they do not have the first one) are just relations. 

>total functions ⊆ partial functions ⊆ relations


## Essential property of function

The essential property that a relation must have to be a function (either total or partial):

```
A         f         B
   ┌──────────────→ b₀
a ─┤
   └──────────────→ b₁
```

i.e. a relation `f ⊆ A⨯B` is a function `f: A → B` if and only if `b₀ = b₁`, where `f(a) = b₀` and `f(a) = b₁`.

>An element of the domain cannot be associated with two distinct elements of the codomain, or such relation is not a function.

Relation R ⊆ A⨯B
- *Right-unique*, (a, b₀) ∈ R ∧ (a, b₁) ∈ R ⇒ b₀ = b₁
- Left-unique,    (a₀, b) ∈ R ∧ (a₁, b) ∈ R ⇒ a₀ = a₁
- Right-total,  R = { (a,b) | a ∈ A, b ∈ B}
- *Left-total*, R = { (a,b) | ∀a ∈ A, b ∈ B}

R ⊆ A⨯B
R ∈ 𝒫(A⨯B)
R = { (a,b) | a ∈ A, b ∈ B }
∃A ∃B (∃R (∃a ∃b (a ∈ A ∧ b ∈ B)))
∀A ∀B(∃R (∀a ∀b(a ∈ A ∧ b ∈ B) ⇒ aRb ∨ a¬Rb ))
∀A ∀B(∃R (∀a ∀b(a ∈ A ∧ b ∈ B) ⇒ (a, b) ∈ R ⋁ (a, b) ∉ R ))

**Relation**:
For all sets `A` and `B`
there exists a set `R` (relation) 
of ordered pairs of elements `(a,b)` 
such that
for all `a ∈ A` and for all `b ∈ B`, 
`a` may be R-related to `b`, or
`a` may be not be R-related to `b`.


(a₀, b) ∈ R ∧ (a₁, b) ∈ R ⇒ a₀ = a₁
(a, b₀) ∈ R ∧ (a, b₁) ∈ R ⇒ b₀ = b₁

R = { (a,b) | ∀a ∈ A, b ∈ B}
R = { (a,b) | a ∈ A, ∀b ∈ B}






Relations that are *right-unique* and *left-total* are *functional relations* and these qualify as functions.

Relations that are only *right-unique*, without also being *left-total*, qualify as partial functions.


## 





════════════════════

a ------------> b₀
  ------------> b₁
──────────────────
╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴
╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶

╌ ┄ ┈
╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌
┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄
┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈


└ ┴ ┘ ┌ ┬ ┐ ├ ┼ ┤ ─ │ ╌ ┄ ┈ ╎ ┆ ┊ ╴ ╵ ╶  ╷ ⟍ ⟋

┗ ┻ ┛ ┏ ┳ ┓ ┣ ╋ ┫ ━ ┃ ╍ ┅ ┉ ╏ ┇ ┋ ╸ ╹ ╺ ╻

╚ ╩ ╝ ╔ ╦ ╗ ╠ ╬ ╣ ═ ║
╒ ╤ ╕ ╘ ╧ ╛ ╞ ╪ ╡
╓ ╥ ╖ ╙ ╨ ╜ ╟ ╫ ╢

┎ ┰ ┒ ┖ ┸ ┚ ┠ ╂ ┨
┍ ┯ ┑ ┕ ┷ ┙ ┝ ┿ ┥
┞ ┟ ┡ ┢ ┦ ┧ ┩ ┪ ┽ ┾ ╀ ╁ ╃ ╄ ╅ ╆ ╇ ╈ ╉ ╊
 ┭ ┮ ┱ ┲ ┵ ┶ ┹ ┺ ╼ ╽ ╾ ╿
╭ ╮ ╰ ╯ ╱ ╲ ╳
▀ ▁ ▂ ▃ ▄ ▅ ▆ ▇ █ ▉ ▊ ▋ ▌ ▍ ▎ ▏ ▐
░ ▒ ▓ ▔ ▕ ▖ ▗ ▘ ▙ ▚ ▛ ▜ ▝ ▞ ▟

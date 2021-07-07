# Primer: Set Theory

https://en.wikipedia.org/wiki/Implementation_of_mathematics_in_set_theory

- [primitive] A set is a collection of objects
- set builder notation: { ∀x | Φ(x) }

- the empty set,      `∅ ≝ { ∀x | x ≠ x }`
- singleton set,    `{x} ≝ { ∀y | y = x }`
- unordered pair, `{x,y} ≝ { ∀z | z = x ⋁ z = y }`
- union,          `x ∪ y ≝ { ∀z | z ∈ x ⋁ z ∈ y}`

- ordered pair
  - K.Kuratowski: `(x,y) ≝ { {x}, {x,y} }`
  - N.Wiener:     `(x,y) ≝ { {{x},∅}, {{y}} }`



- recursive definition of unordered `n`-tuples for any concrete `n` 
  (finite sets given as lists of their elements):
  `{x₁, …, xₙ, xₙ﹢₁} ≝ {x₁, …, xₙ} ∪ {xₙ﹢₁}`


- ∀x. Ψ(x) → Φ(x)   where, e.g., Ψ(x) ~ x ∈ ℕ and Φ(x) ~ x >= 0
- ∃x. Ψ(x) ∧ Φ(x)

- Russell's paradox: { x | x ∉ x }

- the empty set
  - {} or ∅
  - ∅ ≝ { ∀x | x ≠ x }
  - E = { ∀x | x ∉ E } = { ¬∃x.x ∈ E }

- singleton set
  - For each object x, there is a set {x} with x as its only element
  - {x} ≝ { ∀y | y = x }

- unordered pair
  - For all objects x and y, there is a set {x,y}
  - {x,y} ≝ { ∀z | z = x ⋁ z = y }



- powerset:
  - 𝓟(A) = { ∀S | S ⊆ A }



- union:        A ∪ B = { ∀x | x ∈ A ∨ x ∈ B }
- intersection: A ∩ B = { ∀x | x ∈ A ∧ x ∈ B }
- difference:   A \ B = { ∀x | x ∈ A → x ∉ B }
- difference:   B \ A = { ∀x | x ∈ B → x ∉ A }
- symmetrical difference:
  - all items in A or B that are not in their intersection
  - A △ B = (A ∪ B) \ (A ∩ B)
  - A △ B = (A \ B) ∪ (B \ A)
  - A △ B = { ∀x∀y | (x ∈ A → x ∉ B) ∨ (y ∈ B → y ∉ A) }

𝓤 = {a,b,c,d,e}
S = {a,b,c}, T = {b,c,d}
- {a,b,c} ∪ {b,c,d} = {a,b,c,d}
- {a,b,c} ∩ {b,c,d} = {b,c}
- {a,b,c} \ {b,c,d} = {a}
- {b,c,d} \ {a,b,c} = {d}
- {a,b,c} △ {b,c,d} = {a,d}
- {a,b,c}' = {d,e}
- {b,c,d}' = {a,e}

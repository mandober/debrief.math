# Set theory ∷ Formulae

https://en.wikipedia.org/wiki/List_of_set_identities_and_relations

## ZF axioms

```js
1. Axiom Of Extensionality
∀A ∀B [∀x (x ∈ A ⟺ x ∈ B) ⟺ A = B]

2. Axiom Of Pairing
∀A ∀B ∃P(A ∈ P ⋀ B ∈ P)

3. Axiom Of Regularity
∀A (A ≠ ∅ ⟶ ∃B (B ∈ A ⋀ B ⋂ A = ∅))

4. Axiom Of Powerset
∀A ∀B (A ⊆ B -> ∀x (x ∈ A -> x ∈ B))

5. Axiom Of Union
∀𝓕 ∃a ∀y ∀x (x ∈ y ⋀ y ∈ 𝓕 -> x ∈ a)

6. Axiom Of Infinity
∃x ∃e (∀z (z ∉ e) ⋀ (e ∈ x) ⋀ ∀y (y ∈ x -> (Sy ∈ x)))

7. Well-Ordering Theorem
∀x ∃R (R 𝙬𝙚𝙡𝙡-𝙤𝙧𝙙𝙚𝙧𝙨 x)

8. Axiom Schema Of Specification
∀(w₁ … wₙ) ∀A ∃B (∀x (x ∈ B -> (x ∈ A ⋀ φ(x, w₁, …, wₙ, A))))

9. Axiom Schema Of Replacement
∀a ∀(w₁ … wₙ) ∀x ((x ∈ a -> !∃y.ϕ) -> ∃b ∀x (x ∈ a -> ∃y (y ∈ b ⋀ ϕ)))
```






## Other


Assuming
- a set `X` such that `x,x₁,x₂ ∈ X` and `n = |X|`
- a set `Y` such that `y,y₁,y₂ ∈ Y` and `m = |Y|`
- a function `f : X -> Y` so `dom f = X` and `cod f = Y` and `ran f ⊆ cod f`
- range is a set defined as `ran f = { y | ∃y(y ∈ Y ⋀ ∀x(x ∈ X -> f x = y)) }`


`∀a∀b(∀x(x ∈ a ⟺ x ∈ b) ⟺ a = b`


```js
Let A, B, C, X, Y be sets.
Let n = |A|, m = |B|
Let 𝓤 be the class of all sets.

// set comprehension
{ x | ∀x.Px }



// Φ Ψ Γ Δ Λ Π Ξ Σ Θ Ω
// φ ψ γ δ λ π ξ σ θ ω

{ x | ∀x(Φ → Ψ) }
{ x | ∃x(Φ ⋀ Ψ) }

{ x | ∀x((Px ⋀ Tx) -> Qx) }
{ x | ∀x((Px ⋀ Tx) -> Qx) }
{ x | ∀x(Px        -> (Qx ⋁ Rx)) }
{ x | ∀x(Px        -> (Qx ⋀ Rx)) }
{ x | ∀x(Px        -> (Qx -> Rx)) }

{ x | ∃x(Px ⋀ Qx) }

{ x | ∀x(Px -> (Qx ⋀ Tx)) }

// the axiom of the empty set
∃x ∀y ¬(y ∈ x)

```

Types of sets
- the empty set, ∅
- "small" sets
- "large" sets
- everything is a large set, 𝓦
- universal set, 𝓤
- class
- collection of all sets is a class


* Russell's paradox

Let `R = { x | x ∉ x }`, then `R ∈ R ⟺ R ∉ R`

According to the unrestricted comprehension principle, for any sufficiently well-defined property, there is the set of all objects (and only the objects) that have that property.

Let `R` be the set of all sets that are not members of themselves.

R = { x | ∀x(x ∉ x) }

If `R` is not a member of itself,  
then its definition entails that 
`R` is a member of itself, 
`R ∉ R -> R ∈ R`.   
If `R` is a member of itself, `R ∈ R`, 
then `R` is not a member of itself, 
`R ∈ R -> R ∉ R`, 
because 
by definition `R` is the set of all sets 
that are not members of themselves.   
The resulting contradiction is called the Russell's paradox.

* The Axiom of Extensionality: 
`∀x∀y(∀z(z ∈ x ⟺ x ∈ y) -> x = y)`

* The Axiom Schema of Unrestricted Comprehension:
  `∃y∀x(x ∈ y ⟺ φ(x))`   
  for any predicate `φ` with the variable `x` as a free variable in `φ`

Substitute `φ(x)` with `x ∉ x`. Then by existential instantiation (reusing the symbol `y`) and universal instantiation we have `y ∈ y ⟺ y ∉ y`, a contradiction.

```
  ∃y ∀x (x ∈ y ⟺ φ(x) )         subst φ(x) with x ∉ x
= ∃y ∀x (x ∈ y ⟺ x ∉ x)         EI, ∃y ~> a
=    ∀x (x ∈ a ⟺ x ∉ x)         UI, ∀x ~> a
=       (a ∈ a ⟺ a ∉ a)         contradiction!
```



* Relative difference, `A ⧵ B = { x | x ∈ A ⋀ x ∉ B }`
  - elements of A minus elements of B
  - elements of A except those elements that are also in B
  - elements of A `⋀` not elements of B
  - elements in A, but not if also in B
  - elements in A *but* not those in B
  - elements in A *unless* also in B

* Relative difference, `B ⧵ A = { x | x ∉ A ⋀ x ∈ B }`

* Symmetric difference `A ⊖ B = A Δ B = { x | x ∈ A ⋁ x ∈ B }`
  - elements belong to exactly one of the two sets
  - elements in exactly one of the two sets
  - elements that are either in A or in B
  - elements in A ⊕ elements in B
  - `A Δ B` = `{ x | x ∈ A ⋁ x ∈ B }`
  - `A ⊖ B` = `{ x | x ∈ A ⋁ x ∈ B }`
  - `A ⊖ B` = `A ⧵ B` ⋃ `B ⧵ A`

* Intersection         `A ⋂ B`  = `{ x | x ∈ A ⋀ x ∈ B }`
* Relative difference, `A ⧵ B`   = `{ x | x ∈ A ⋀ x ∉ B }`
* Relative difference, `B ⧵ A`   = `{ x | x ∉ A ⋀ x ∈ B }`
* Union                `A ⋃ B`  = `{ x | x ∈ A ⋁ x ∈ B }`
* Symmetric difference `A ⊖ B` = `{ x | (x ∈ A ⋀ x ∉ B) ⋁ (x ∈ B ⋀ x ∉ A) }`



---

* Let A and B be sets: {A : Set}, {B : Set}
* Let 𝓟 be a set such that `𝓟(x)` means the powerset of x

- Let Q be a predicate such that `P(x)` means `∅ ⊆ x` (i.e. S(∅,x))

- Let M be a relation such that `M(x,y)` means `x ∈ y`
- Let S be a relation such that `S(x,y)` means `x ⊆ y`
- Let P be a relation such that `P(x,y)` means `x ⊂ y`



A ⋃ B  = { x | x ∈ A ⋁ x ∈ B }


A = { x | ∀x(x ∈ A) }
A = { x | ∀x(R(x,A) }


{ x | ∀x(x ∈ A ⟺ x ∈ B) } ⟺ A = B
{ x | ∀x(x ∈ A -> x ∈ B) } ⟺ A ⊆ B


A = B iff { x | ∀x(x ∈ B ⟺ x ∈ A) }
A = B ⟺  { x | ∀x(x ∈ B ⟺ x ∈ A) }
(A ⊆ B) ⋀ (B ⊆ A) ⟺ A = B
A = B ⟺ ((A ⊆ B) ⋀ (B ⊆ A))




A ⊆ B  = { x | ∀x(x ∈ A -> x ∈ B) }
A ⊂ B  = { x | ∀x(x ∈ B -> x ∈ A) ⋀ A ≠ B }

A ⊇ B  = { x | ∀x(x ∈ B -> x ∈ A) }
A ⊃ B  = { x | ∀x(x ∈ B -> x ∈ A) ⋀ A ≠ B }

A ? B  = { x | ∃x(x ∈ A ⋀ x ∈ B) }



A ⋂ B  = { x | x ∈ A ⋀ x ∈ B }
A ⧵ B   = { x | x ∈ A ⋀ x ∉ B }
B ⧵ A   = { x | x ∉ A ⋀ x ∈ B }
A ⋃ B  = { x | x ∈ A ⋁ x ∈ B }
A ⊖ B = { x | (x ∈ A ⋀ x ∉ B) ⋁ (x ∈ B ⋀ x ∉ A) }


A ⧵ B = { x | x ∈ A ⋀ x ∉ B }
B ⧵ A = { x | x ∉ A ⋀ x ∈ B }
------------------------------ ⋃
A ⊖ B = (A ⧵ B) ⋃ (B ⧵ A)

A ⧵ (B ⋃ B) ⧵ A =
A ⧵ B ⧵ A =
(A ⧵ B) ⧵ A = 
= ∅

A ⧵ A = ∅
A ⊖ A = ∅         A ⊖ A = (A ⧵ A) ⋃ (A ⧵ A) = ∅ ⋃ ∅ = ∅

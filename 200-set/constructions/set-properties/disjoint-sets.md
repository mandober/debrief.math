# Disjoint sets

https://en.wikipedia.org/wiki/Disjoint_union

A disjoint union (or discriminated union) of a family, `Aᵢ : i ∈ I`, of sets is a set `A`, often denoted by `⨆ (i ∈ I) Aᵢ`, with an injective function of each `Aᵢ` into `A`, such that the images of these injections form a partition of `A` (that is, each element of `A` belongs to exactly one of these images).

The disjoint union of a family of *pairwise disjoint sets* is their union.

In terms of category theory, the disjoint union is the coproduct of the category of sets. The disjoint union is thus defined up to a bijection.

A standard way for building the disjoint union is to define `A` as the set of ordered pairs `A = { (x,i) | x ∈ Aᵢ }` and the injective functions `Aᵢ → A` by `x ⟼ (x,i)`.


# Example

```
A = { 1, 2, 3 }
B = { 1, 2 }
-----------
Aᵢ = { (x,i) | i ∈ 𝔹, i = 0 }
Bᵢ = { (x,i) | i ∈ 𝔹, i = 1 }
-----------
A₀ = { (1,0), (2,0), (3,0) }
B₁ = { (1,1), (2,1) }
-----------
A ⨆ B = { (1,0), (2,0), (3,0), (1,1), (2,1) }
A ⋃ B = { 1, 2, 3 }
```

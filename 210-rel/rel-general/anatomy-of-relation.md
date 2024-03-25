# Anatomy of relation

└ ┴ ┘ ┌ ┬ ┐ ├ ┼ ┤ ─ │ ╌ ┄ ┈ ╎ ┆ ┊ ╴ ╵ ╶  ╷ ⟍ ⟋


```
A                        ƒ                        B
┌dom─────────────────┐       ┌cod─────────────────┐
│        a₀ ◯        │       │       □ b₀         │
│  ┌────────────┐    │       │  ┌─────────ran┐    │
│  │     a₁ ◯───┼────│───────│──┼───→□ b₁    │    │
│  │     a₂ ◯───┼────│───────│──┼───→□ b₂    │    │
│  │     a₃ ◯───┼────│───────│──┼───→□ b₃    │    │
│  │     a₄ ◯───┼────│───────│──┼───→□ b₄    │    │
│  └pre─────────┘    │       │  └─────────img┘    │
│        a₅ ◯        │       │       □ b₅         │
└src─────────────────┘       └tgt─────────────────┘


ƒ : A → B
ƒ(a₁) = b₁
ƒ(a₂) = b₂
ƒ(a₃) = b₃
ƒ(a₄) = b₄
grf(ƒ) = { (a₁, b₁), (a₂, b₂), (a₃, b₃), (a₄, b₄) }
(A, ƒ, B) = ⟨ dom(ƒ), grf(ƒ), cod(ƒ) ⟩

dom(ƒ) = src(ƒ) = A
pre(ƒ) ⊆ dom(ƒ)

cod(ƒ) = tgt(ƒ) = B
ran(ƒ) ⊆ cod(ƒ)
img(ƒ) ⊆ cod(ƒ)
img(ƒ) ⊆ ran(ƒ)

image: some Aʹ ⊆ A, ƒ(Aʹ) ⊆ B = { b | ƒ a = b }

preimage: some Bʹ ⊆ B, ƒ⁻¹(Bʹ) ⊆ A = { a | ƒ a = b }

preimage: Bʹ ⊆ B, preimage of Bʹ under ƒ = { a | ƒ a = b ∧ b ∈ Bʹ }
```


A *fiber* is a set (a subset of `A`), e.g. `{a₀, a₃, a₄}` of elements in `A` that are all mapped to the same element `b ∈ B` (e.g. to `b₂`).

If
  ƒ(a₀) = b₂
  ƒ(a₃) = b₂
  ƒ(a₄) = b₂
then the fiber of b₂ is the set {a₀, a₃, a₄}

{ a | ∀b ∈ B. ∃a ∈ A. ƒ a = b }


Relation is a generalization of function in that all functions are relations (but not vice versa). A binary relation is the most common type of relation that associates elements between two sets. More precisely, because relations have *directionality*, a binary relation associates elements from one set (called the source set) to elements of another set (called the target set), the state of affairs encoded using ordered pairs. A relation is then a set of ordered pairs such that all first pair components come from the source set and all the second components come from the target set.

Terminology regarding functions and relations should match but it often doesn't, the most prominent example of which is the difference between the names the two sets are called. The names used for them above - source and target - are the terms without much semantic baggage for the two sets that clearly denote the role of each set. In function theory, the same sets usually have the name domain (for source set) and codomain (for target set), but these terms are too inflated and not consistently defined by different authors. The main problem why they cannot be used in relation theory is that a relation has another pair of sets called domain and codomain. The set called the *domain of a relation* is a subset of the source set consisting only of those elements of the source set that actually participate in a relation. Similarly, the set called the *codomain of a relation* is a subset of the target set consisting only of those elements of the target set that are actually associated by some element in the source set (i.e. that participate in a relation).

A relation `R`, from set `A` to set `B`, is defined as any any set of ordered pairs, that is, as any subset of the Cartesian product A×B, i.e. `R ⊆ A×B`. 
- the set `A` is the **source set** (of the relation `R`)
- the set `B` is the **target set** (of the relation `R`)
- the set `R ⊆ A×B` of ordered pairs is called the **graph of relation `R`**
- the set `Aʹ ⊆ A` of elements that actually participate in the relation `R` is called the **domain of the relation**
- the set `Bʹ ⊆ B` of elements that actually participate in the relation `R` is called the **codomain of the relation**
- the union `Aʹ ∪ Bʹ` is called the **field of the relation**
-     A×B = { (a,b) | ∀a ∈ A, ∀b ∈ B }
- R ⊆ A×B = { (a,b) |  a ∈ A,  b ∈ B }

This difference between the set `A` that acts as a general (ballpark) *source* of elements, and the set `Aʹ`, that is a subset of A, called *domain* of the relation, and which contains only those elements of A that are seriously committing to a relation is reflected also with functions but only with regards to the "right" (target) set. Namely, with functions, on the "left" side, all the elements of the source set must be engaged, so there was no need to come up with more than one name for the source set. At least not with total functions that is. Curiously, although partial functions have the notion of source vs domain set, like relations do, there was never a standard name just for the subset of "active" elements of the domain. The situation on the "right" side is different - there we have the term *codomain* (of the function) for the ballpark target set, while its subset that only contains those codomain elements that are actually mapped to by some elements in domain, is called the *range*. But even this terminology is inconsistent as some authors use the term 'range' where others mean 'codomain', and still others mix it more up using the term 'image', either when 'codomain' or 'range' is actually meant.

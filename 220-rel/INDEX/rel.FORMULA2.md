# Relation Formulas

Let `𝓡` and `𝓢` be relations on a set `X`
- `x𝓡y` means `(x,y) ∈ 𝓡`
- Carthesian product on X is `X² = { (a,b) | ∀a∀b ∈ X }`
- any relation is a subset of the Carthesian product on X, `𝓡 ⊆ X²`
- Universal relation is equal to the Carthesian product on X, `𝓡 = X²`
- Null (empty) relation is the empty set, `𝓡 = ∅ = { (a,b) | ∀a∀b ∉ X }`

Operations
* Operations on sets
  - union, (⋃)
  - intersection, (⋂)
  - difference, (∖)
  - complement, (')
* Operations on relations
  - composition
    - `𝓡⨾𝓢` = { (x,y) | (x,y ∈ 𝓡⨾𝓢) <=> ∃z((x,z) ∈ 𝓡 ⋀ (z,y) ∈ 𝓢) }
  - opposite =?= transposition
* Closures
  - reflexive closure
  - symmetric closure
  - transitive closure `𝓡ᐩ`
  - reflexive and transitive closure `𝓡*`



Relation name          | Formula
-----------------------|------------------------------------------------------
universal              |  ∀x∀y ∈ X. xRy  ≡  𝓡 = X²
null                   |  ∀x∀y ∈ X.¬xRy
identity               |    ∀x ∈ X. xRx
reflexive              |     x ∈ X. xRx
irreflexive            |     x ∈ X.¬xRx
left quasireflexive    |   x,y ∈ X. xRy -> xRx
right quasireflexive   |   x,y ∈ X. xRy -> yRy
quasireflexive         |   x,y ∈ X. xRy -> xRx ⋀ yRy
coreflexive            |   x,y ∈ X. xRy -> x = y
symetric:              |   x,y ∈ X. xRy <->  yRx
antisymetric:          |   x,y ∈ X. xRy  -> ¬yRx
asymetric:             |   x,y ∈ X. xRy ⋀ yRx -> x = y
transitive             | x,y,z ∈ X. xRy ⋀ yRz ->  xRz
anti-transitive        | x,y,z ∈ X. xRy ⋀ yRz -> ¬xRz
right Euclidean        | x,y,z ∈ X. xRy ⋀ xRz ->  yRz
left  Euclidean        | x,y,z ∈ X. yRx ⋀ zRx ->  yRz
Euclidean              | x,y,z ∈ X. (yRx ⋀ zRx -> yRz) ⋀ (xRy ⋀ xRz -> yRz)
dichotomous            |   x,y ∈ X. xRy ⊕ yRx
trichotomous           | x,y,z ∈ X. xRy ⊕ yRx ⊕ y = z
dense                  |  ∀x∀z ∈ X(xRz -> ∃y ∈ X. xRy ⋀ yRz)


Relations
- A relation `𝓡` on a set `X` is a subset of `X ⨯ X`, i.e. `𝓡 ⊆ X ⨯ X`.
- If `𝓡` is a relation, then we write `x𝓡y` to mean `(x,y) ∈ 𝓡`.

Composition of Relations
- Let `𝓡` and `𝓢` be relations on a set `X`
- then the relational composition is denoted `𝓡⨾𝓢`, or `𝓡∘𝓢`, or just `𝓡𝓢`
- `𝓡⨾𝓢` means `(x,y) ∈ 𝓡⨾𝓢` iff there exists `z` such that `x𝓡z` ⋀ `z𝓢y`.
- 𝓡⨾𝓢 [ x𝓡𝓢y <=> ∃z(x𝓡z ⋀ z𝓢y) ]
- 𝓡⨾𝓢 = { (x,y) | (x,y ∈ 𝓡⨾𝓢) <=> ∃z((x,z) ∈ 𝓡 ⋀ (z,y) ∈ 𝓢) }

Relation opposite
- If `𝓡` is a relation then `𝓡ᴼᴾ` is its opposite
- i.e. it is a relation such that `(x,y) ∈ 𝓡ᴼᴾ` iff `(y,x) ∈ 𝓡`
- `𝓡ᴼᴾ = { (x,y) | (x,y) ∈ 𝓡ᴼᴾ <=> (y,x) ∈ 𝓡 }`
- The `transpose` op takes a relation and produces its opposite, `𝓡ᵀ = 𝓡ᴼᴾ`

Closures
- If `𝓡` is a relation, we donete by
- `𝓡ᐩ` its transitive closure
- `𝓡*` its reflexive and transitive closure

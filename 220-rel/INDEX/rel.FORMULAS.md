# Relations: Formulas

Homogeneous n-ary relations
- A homogeneous n-ary relation on a set `A` is denoted by `R ⊆ Aⁿ`
  where `Aⁿ = A ⨯ A ⨯ … ⨯ A` is n-fold Cartesian product of `A` with itself.
- A heterogeneous n-ary relation between sets `Aᵢ` is `R ⊆ Aⁿᵢ`
  where `Aⁿ = A₀ ⨯ A₁ ⨯ … ⨯ Aₙ`

Homogeneous binary relations
- A homogeneous binary relation *on a set* A, `R ⊆ A²` 
  consists of a set of ordered pairs, `{ (a,a) | a ∈ A }`
- A heterogeneous binary relation *between sets* A and B, `R ⊆ A⨯B`
  consists of a set of ordered pairs, `{ (x,y) | x ∈ X, y ∈ Y }`


A binary relation `R` between sets `X` and `Y` is `R ⊆ X⨯Y`
- the relation is a set of ordered pairs, 
  `R = { (x,y) | for some x ∈ X and some y ∈ Y }`
  `R = { (x,y) | x ∈ X, y ∈ Y }`
- notions of domain, codomain, range, image, preimage may be ambiguous
- *domain* of relation is ambiguous:
  - some authors define domain as `X` set
  - others as a subset of X: `dom(R) = { x | (x,y) ∈ R for some y ∈ Y}`
- codomain is similarly ambiguous, however the notion of range saves it
  - *codomain* of relation `R` is set `Y`
  - *range* is the subset of `Y`: `cod(R) = { y | (x,y) ∈ R for some x ∈ X}`

Arity of relations
- no nullary relations
- unary relation (property); it is nothing but a subset of some set
- binary relations are predicates
- k-ary relations for some fixed integer `k` are a set of k-tuples
- in general, n-ary relations are sets of n-tuples

Union of relations
- If 𝓡 and 𝓢 are binary relations over sets X and Y then 
- `𝓡 ⋃ 𝓢` is the union relation of 𝓡 and 𝓢 over X and Y:
- `𝓡 ⋃ 𝓢 = { (x,y) | x𝓡y ⋁ x𝓢y }`
- `𝓡 ⋃ 𝓢 = { (x,y) | (x,y) ∈ 𝓡 ⋁ (x,y) ∈ 𝓢 }`
- the identity element is the empty relation
- examples of union of relations
  - `(<) ⋃ (=) = (<=)`, i.e. LT ⋃ EQ = LE
  - `(>) ⋃ (=) = (>=)`, i.e. GT ⋃ EQ = GE
  - `(⊂) ⋃ (=) = (⊆)`
  - `(⊃) ⋃ (=) = (⊇)`

R |> S  R <| S
R ⩥ S   R ⩤ S

Restriction of relations
- if R is a binary homogeneous relation over a set X, `R ⊆ X²` 
  and S is a subset of X, `S ⊆ X`, then 
  `R╷ₛ = { (x,y) | x𝓡y ⋀ x ∈ 𝓢 ⋀ y ∈ 𝓢 }` 
  is the *restriction relation* of R to S over X
- if R is a binary relation over sets X 
  and Y and if S is a subset of X then 
  `R╷ₛ = { (x,y) | x𝓡y ⋀ x ∈ 𝓢 }` 
  is the *left-restriction relation* of R to S over X and Y
- if R is a binary relation over sets X 
  and Y and if S is a subset of X then 
  `R╵ˢ = { (x,y) | x𝓡y ⋀ y ∈ 𝓢 }`
  is the *right-restriction relation* of R to S over X and Y

Types of relations
- serial `∀x∃y.xRy`
- functional `∀x₁,x₂ ∈ fst R. ∃y ∈ snd R. x₁Ry ⋀ x₂Ry -> x₁ = x₂`
- left Euclidean: xRy ⋀ xRz -> yRz



https://staff.washington.edu/jon/z/glossary.html

https://www.idris-lang.org/docs/idris2/current/base_docs/docs/Control.Relation.html

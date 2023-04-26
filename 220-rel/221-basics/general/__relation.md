# Relation theory :: Definitions :: Relation

A binary relation `R` between two sets `A` and `B` is a subset of their Cartesian product, `R ⊆ A⨯B`.

Equivalently, a relation between sets `A` and `B` is an element in the powerset of their Cartesian product, `R ∈ 𝒫(A⨯B)`.

In a stricter sense, a relation is a triple `ℛ = (A, R, B)`. That is, a relation between sets `A` and `B` is a tuple of domain `A` set, the set of ordered pairs that make up the relation `R` itself, and codomain, `B`. Given the relation alone (as a set of ordered pairs), neither domain nor codomain can be inferred.

Any which way, relations on `A` and `B` span from *the empty relation*, `R = ∅` (strictly, `ℛ = (A, ∅, B)`), all the way to the *total relation*, `R = A⨯B` (strictly, `ℛ = (A, A⨯B, B)`), with all the other types of relations in between.

* A relation `R` on a set `A` is a subset of the Cartesian product, `R ⊆ A⨯A`, or, equivalently, it is an element in the powerset of A, `R ∈ 𝒫(A²)`.
- `R ⊆ A⨯B` ≡ `R ∈ 𝒫(A⨯B)`

* A relation is a set of ordered pairs. An element of a relation (set) is an ordered pair `(a,b)`, where the first component (`a`) always comes from the domain `A`, and the second (`b`) from the codomain `B`
- `R = { (a,b) ∈ R | a ∈ A, b ∈ B }`

* An assertion that a pair belongs to the relation `R` may be specified as
- `(a,b) ∈ R` ≡ `aRb`

* An assertion that a pair doesn't belong to the relation `R` may specified as
- `(a,b) ∉ R` ≡ `¬(aRb)` ≡ `a(¬R)b` ≡ `a¬Rb` ≡ `¬((a,b) ∈ R)`


## Identities

Reverse relation (transposition) of relation `R ⊆ A⨯B` is `Rᵀ ⊆ B⨯A`
- `R  ⊆ A⨯B = { (a,b) ∈ R  | a ∈ A, b ∈ B }`
- `Rᵀ ⊆ B⨯A = { (b,a) ∈ Rᵀ | a ∈ A, b ∈ B }`

Composition of relations, `R ⨾ S`

X ⊆ A⨯B
Y ⊆ A⨯B



## Example

```
A = {1,2}, B = {a,b}
n = |A| = 2, m = |B| = 2

|A⨯B| = 2 ⨯ 2 = 4

|𝒫(A⨯B)| = 2⁴ = 16

A⨯B = { (1,a), (1,b), (2,a), (2,b)}

𝒫(A⨯B) =
{ ∅
, {(1,a), (1,b), (2,a), (2,b)}

, { (1,a),(1,b)},{(1,a),(2,a)}, {(1,a),(2,b)},{(1,b),(2,a)},{(1,b),(2,b)},{(2,a),(2,b)}

, {(1,a),(1,b),(2,a)}, {(1,a),(1,b),(2,b)}, {(1,a),(2,a),(2,b)}, {(1,b),(2,a),(2,b)}

, {(1,a)}, {(1,b)}, {(2,a)}, {(2,b)}
}
```

- the distro of subsets of 4-elem set is given by the 4th row of Pascals Δ
- hence, there are 2⁴ = 16 elems, as given by the distro map (1,4,6,4,1), i.e.
  1 ⨯ 0-set   ∅
  4 ⨯ 1-set   each elem of original set, A⨯B, ∀m ⟼ {m}
  6 ⨯ 2-set
  4 ⨯ 3-set
  1 ⨯ 4-set   entire original set, A⨯B
  = --------
  16 subsets

- every element (i.e. ord pair) occurs 8 times in the powerset
- every relation between A and B is a subset of their product, R ⊆ (A⨯B)
- every relation between A and B is an elem in the powerset, R ∈ 𝒫(A⨯B)    
  from the empty relation (R = ∅) to the total relation (R = A⨯B)

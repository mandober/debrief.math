# Relation theory :: Definitions :: Relation


A relation `R ⊆ A⨯B`:
- right-unique: `∀a ∈ A. ∀b,b′ ∈ B. aRb ⋀ aRb′ ⟹ b=b′`




A relation `R` on two sets `A` and `B` is a subset of their Cartesian product, `R ⊆ A⨯B`.

In a stricter sense, a relation is a triple `(A, R, B)`, i.e. a tuple of the domain `A`, the set of ordered pairs that make up the relation `R`, and the codomain, `B`. Neither domain nor codomain can be recovered given the set of ordered pairs alone, that's why under the strict definition a relation is a triple.

ℛ = { (a,b) ∈ R | a ∈ A, b ∈ B }

A relation `R` on two sets `A` and `B` is a subset of their Cartesian product, `R ⊆ A⨯B`, therefore a relation is a set of ordered pairs with the first component of a pair coming from domain A, and second from codomain B. Equivalently, a relation is an element in the powerset of A⨯B, `R ∈ 𝒫(A⨯B)`.

A relation `R` on a set `A` is a subset of the Cartesian product, `R ⊆ A⨯A`, or, equivalently, it is an element in the powerset of A, `R ∈ 𝒫(A²)`.

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

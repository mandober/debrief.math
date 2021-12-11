# Logic formulas concerning relations

A relation is a set of ordered pairs.

Let R be a relation, let X and Y be sets,   
then a relation R between sets X and Y is a set R of ordered pairs   
R = { (x,y) | x ∈ X ∧ y ∈ Y }   

`(x,y) ∈ R` or `xRy` or `R(x,y)` or `Rxy`

A relation 𝓡 on a set ℕ:   
ℕ² = ℕ ⨯ ℕ = { (n,m) | ∀n,m ∈ ℕ }

𝓡<= = { (n,m) ∈ ℕ² | n <= m }

When considering relations and functions, we have to acknowledge two sets: 
a domain, a set A, and a codomain, a set B, possibly the same set, A = B.

The total relation (the only one) is a type of relation between sets that is equal to their dot product, A ⨯ B. The empty relation (the only one) between sets A and B is equal to the empty set, ∅. All other relations are somewhere in between these two extremes.

> A relation R is a subset of the dot product between sets A and B, `R ⊆ A ⨯ B`

The total relation is a subset i.e. equal to their dot product, `Rᵗ = A ⨯ B`. 
All other relations are proper subsets of their dot product, `R ⊂ A ⨯ B`.

R  ⊆ A ⨯ B  any rel is a subset of the dot product
Rᵗ = A ⨯ B  total rel is the dot product
Rᵉ = ∅      empty rel is the empty set
Rᵢ ⊂ A ⨯ B  any other rel is a proper subset of the dot product

If `A` is a set, then `⊆` is a relation on `𝓟(A)`

The notions of domain and codomain are ambiguous. Ther should be a domian set A and a codomain set B. A rel R between them might only touch a subset of elements in each, but then a relation R is a triple of domain, codomain and the ordered pairs that make up the relation, 𝓡 = (A, B, R).

Some authors have a different take, defining a domain of a rel as the set made out of all the first components of the ordered pairs that constitute a relation. However, they don't have a name for the original "source" set; similarly for the codomain.
- pre(𝓡) = { x | ∃y.xRy }
- img(𝓡) = { y | ∃x.xRy }

# Tarski's fixed-point theorem

Tarski's fixed point theorem states that every order preserving function on a complete lattice has a greatest and least fixpoint, and therefore in particular, every such function has at least one fixpoint.

**Tarski's fixed-point theorem**: if `f` is a monotone function on a non-empty complete lattice, the set of fixed points of `f` forms a non-empty complete lattice.

A set `X` endowed with a partial order `⩽` is denoted `(X, ⩽)` (a partial order is a relation on a set that is reflexive, transitive and antisymmetric).

A partial order is 
a *complete lattice* if, 
for all nonempty subsets B of X, 
the GLB (`⋁ₓ B`) and 
the LUB (`⋀ₓ B`) 
are in `X`.

A partial order `(X, ⩽)` is a complete lattice if   
`∀B((B ⊆ X ⋀ B ≠ ∅) -> (⋁ₓ B ∈ X ∧ ⋀ₓ B ∈ X))`


If `A ⊆ X`, we say that `A` is a *subcomplete sublattice* of `(X, ⩽)` if, for all nonempty `B ⊆ A`, glb and lub are in `A`, i.e. `⋁ₓ B ∈ A` and `⋀ₓ B ∈ A`.


```js
X = {0,1,2}
L = (X, ⩽) is complete lattice

𝓟(X) =
  { ∅           (empty)
  , {0}         B₀
  , {1}         B₁
  , {2}         B₂
  , {0,1}       B₃
  , {0,2}       B₄
  , {1,2}       B₅
  , {0,1,2}     B₆
  }
```

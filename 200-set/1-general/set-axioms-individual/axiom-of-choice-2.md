# Axiom of Choice

>∀X [∅ ∉ X ⇒ ∃f: X → ⋃X. ∀A ∈ X (f(A) ∈ A)]

One formulation of the Axiom of Choice is:

(AC₁) For any set `A` there is a function `f` such that for any nonempty subset `B` of `A`, `f(B) ∈ B`.

The function `f` is often called a *choice or selection function* for the given set `A`. It includes in its domain every nonempty subset of `A` and it selects exactly one element from each such subset.

  This should mean that the domain of `f` is the powerset of `A` minus the empty set, `𝒫(A) ∖ ∅`, right? Let's label this family of sets as `F`, thus: 
  `F = 𝒫(A) ∖ ∅`.    
  So `F` contains all nonempty subsets of `A`, and we call `B` any such arbitrary subset, i.e. any element of `F`. 



To acquire some feeling for the choice function, we consider a simple finite example, for which the axiom is not needed.

```hs
A        = { 1, 2 }
𝒫(A)     = { ∅, {1}, {2}, {1,2} }
𝒫(A) ∖ ∅ = { {1}, {2}, {1,2} } -- all nonempty subsets of A, i.e. family F
```

Then there are two distinct choice functions, `f₁` and `f₂`, whose domains are the nonempty subsets of `A`:

  Hmm, is `𝒫(A) ∖ ∅` the one and only domain of both and all such selection functions, or does each selection function has an arbitrary element in this set of subsets of A as its domain?!

```hs
f₁(A)  = 1
f₁(B₁) = 1
f₁(B₂) = 2

f₂(A)  = 2
f₂(B₁) = 1
f₂(B₂) = 2
```

**DEFINITION of Choice Function**: `f` is a choice function for set `A` iff `f` is a function whose domain is the family of nonempty subsets of `A`, and for every such nonempty subset `B` (i.e. `B ⊆ A` and `B ≠ ∅`), we have `f(B) ∈ B`.

  Another thing to notice is that `f` acts on a whole set, as in `f(B)`, not on its elements, in a "one at the time" fashion as normal. `f` takes a whole set and spits back one (and only one) of its members.   

  Does `f` take the family of sets, `F`, or does it instead take each member of this family? The example shows that a single selection function returns multiple elements...

```hs
A        = { 1, 2 }
𝒫(A)     = { ∅, {1}, {2}, {1,2} }
F = 𝒫(A) ∖ ∅ = { {1}, {2}, {1,2} } -- all nonempty subsets of A

-- F is a family of subsets of A
F = {{1}, {2}, {1,2}}

-- What is the domain of a selection function? F?
-- the codomain is an element of A, thus the set A.
f : F → A
f : {{1}, {2}, {1,2}} → {1,2}
f 1 = 

```


>∀X [∅ ∉ X ⇒ ∃f: X → ⋃X. ∀A ∈ X (f(A) ∈ A)]

>∀A [∅ ∉ A ⇒ ∃f: A → ⋃A. ∀B ∈ A (f(B) ∈ B)]
>∀A [∅ ∉ A ⇒ ∃f: A → ⋃A. ∀B ⊆ A (f(B) ∈ B)] *

- The dom of `f` is set `A`
- The cod of `f` is a family of subsets of `A` (without the ∅), `⋃{A}`. Hmm, isn't this `𝒫(A) ∖ ∅` then?




## Refs

- `Axiomatic set theory`, Patrick Suppes, 1972

# Family of sets

There are several views about what exactly constituates a family of sets, here presented in the order from looser to stricter:

* Any collection of sets, what-so-ever, constitutes a family of sets.

* A collection `F` of subsets of a set `S` is a **family of sets** over `S`.

* A collection `F` of subsets of a set `S` is a **(proper) family of sets** if all sets in `F` are pairwise disjoint and taking the union of them all gives back the set `S`.

* Like the previous definition, but in some contexts it is also required that a family of sets forms a proper class.

## Commentary

There is even a looser notion of a family, under which any collection of sets, what-so-ever, is considered a family of sets (probably because it's enough that they are sets to assume a shared bloodline). Usually, however, a collection of subsets is called a family in the first sense, i.e. because its elements are subsets of the same set.

Under a looser definition, any collection `F` of subsets of a set `S` is considered a family of sets. Basically, elements (sets) of `F` are called a family as long as they share the same origin.


There is a stricter definition of a family of sets that places an additional constraint on the subsets: they all must be pair-wise disjoint and their union must give the original set `S` back. Under this view then, these subsets are partitions of `S`, such that each element of `S` is in exactly one partition, while the intersection of any two partitions is empty (i.e. all subsets/partitions of `S` are pair-wise disjoint). Moreover, some contexts require that a family of sets forms a proper class.

Importantly, a family of sets is closely related but not the same as an indexed family (of sets). First, an indexed family is a collection, not necessarily a set, whose members are indexed by the elements of an indexing set `I`. So each member of an indexed family can be identified by its index. Considering an indexed family of sets, `F`, then, implies that `F` contains as elements sets, each with a distinct index pulled from the indexing set `I`. These element-sets are usually somehow related, e.g. they may be subsets of some other set `S`, but they need notbe - an indexed family of sets may be just a convenient way to enumerate sets in a collection, set which may be otherwise unrelated, thus generating a way to quicky refer to any set in the collection by the index.

## Examples


```js
S = {a,b,c,d,e}
I = {1,2,3}
---------------
f : I -> A
Fᵃ = {A₁,A₂,A₃}
A₁ = {a,b}
A₂ = {b,c,d}
A₃ = {a,d,e}

⋃ (i ∈ I) Aᵢ = A₁ ∪ A₂ ∪ A₃ = {a,b} ∪ {b,c,d} ∪ {a,d,e} = S
but
⋂ (i ∈ I) Aᵢ ≠ ∅
---------------
Fᵇ = {B₁,B₂,B₃}
B₁ = {a}
B₂ = {b,c}
B₃ = {d,e}

⋃ (i ∈ I) Bᵢ = B₁ ∪ B₂ ∪ B₃ = {a} ∪ {b,c} ∪ {d,e} = S
and
⋂ (i ∈ I) Bᵢ = ∅
```

```hs
S = {…}
I = {1,2,3}
f : I -> X
F = {A₁, A₂, A₃}
∀A(A ∈ F -> ⋃ (i ∈ I) A = S)
```


For example, `{F₁, F₂, F₃}`, taken as another family, have elements of `S` that reoccur. Considered individually as a family of subsets of `S`:
- `F₁` is not a family of subsets of `S` at all
- `F₂` is a family of subsets of S, but not pairwise disjoint
- `F₁` and `F₃` are each proper family of subsets of `S`

…because a new set that is a union of their elements is the original set `S`:
- `F₁ = { {1}, {2}, {3} }` --> {1} ⋃ {2} ⋃ {3} = {1,2,3} = S
- `F₃ = { {1,2,3} }`       --> {1,2,3} = S

…it's the same with `F₂`, but `F₂` is not a pairwise disjoint family:
- `F₂ = { {1,2}, {2,3}, {1,3} }` --> {1,2} ⋃ {2,3} ⋃ {1,3} = {1,2,3} = S


Any family `F` of subsets of `S` is itself a subset of the powerset `𝓟(S)` (sometimes, there is a requirement that it has no repeated members, i.e. that it is pairwise disjoint).

```js
S = {1,2,3}

𝓟(S) =
  { ∅                     // 1 ⨯ 0-element subset, 0-subset
  , {1}, {2}, {3}         // 3 ⨯ 1-element subset, 1-subset
  , {1,2}, {2,3}, {1,3}   // 3 ⨯ 2-element subset, 2-subset
  , {1,2,3}               // 1 ⨯ 3-element subset, 3-subset
  }

F₀ = { ∅ }                   // S ≠ ∅ and F₀ is not a family of subsets over S
F₁ = { {1}, {2}, {3} }          S = {1} ⋃ {2} ⋃ {3}
F₂ = { {1,2}, {2,3}, {1,3} }    S = {1,2} ⋃ {2,3} ⋃ {1,3}
F₃ = { {1,2,3} }                S = {1,2,3}

Fᵢ ⊆ 𝓟(S)

∀Fᵢ ∀x (x ∈ F₁ -> ⋃{x} = S)    // for all sets Fᵢ except F₀
```

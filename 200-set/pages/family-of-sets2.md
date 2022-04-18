# Family of sets

https://en.wikipedia.org/wiki/Family_of_sets

In a broad sense, any collection of sets is called a family of sets.

In a narrow sense, a collection `F` of subsets of a set `S` is called a *family of sets* over `S`, or a *family of subsets* of `S`.

More strictly, a collection `F`, of subsets of a set `S`, is called a family of subsets (of S), if taking a union of all elements in `F` produces the original set S, `∀x(x ∈ F -> ⋃ {x} = S)`.

```js
S = {1,2,3,4}
Fˢ = { {1}, {3}, {2,4} }
Fˢ = { {A}, {B}, {C} }
---------------
{A} = {{1}}
{B} = {{3}}
{C} = {{2,4}}
---------------
A = {1}
B = {3}
C = {2,4}
---------------
A ⋃ B ⋃ C
= {1} ⋃ {3} ⋃ {2,4}
= {1,2,3,4}
= S
```

The term "collection" is used here because some contexts allow a family of sets to contain repeated copies of members, while other contexts insist that a family of sets is *pairwise disjoint*. Also, some contexts require that a family of sets forms a *proper class*.

Given a set `S`, its powerset, `𝓟(S)`, is a family of subsets over `S`. However, many elements of `S` reappear across the members of `𝓟(S)`. For example, `{F₁, F₂, F₃}`, taken as another family, have elements of S that reappear. Considered individually as a family of subsets of `S`:
- `F₀` is not a family of subsets of `S` at all
- `F₂` is a family of subsets of S, but has some repeated members of `S`.
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





## Examples

1. The power set `𝓟(S)` is a family of sets over a set `S`.

```
S = {1,2}
𝓟(S) = { ∅, {1}, {2}, {1,2} }
```

2. The k-subsets, `S⁽ᵏ⁾`, of a set `S` form a family of sets.

A k-subset, `S⁽ᵏ⁾`, is a set of subsets `𝓟(S)` with `k` number of elements.

`k` ranges from 0 to `|S|`.

```js
S = {1,2,3}

n = |S| = 3

|𝓟(S)| = 2ⁿ = 2³ = 8

k = [0 .. 3]

𝓟(S) =
  { ∅                     // 1 ⨯ 0-element subset, 0-subset
  , {1}, {2}, {3}         // 3 ⨯ 1-element subset, 1-subset
  , {1,2}, {2,3}, {1,3}   // 3 ⨯ 2-element subset, 2-subset
  , {1,2,3}               // 1 ⨯ 3-element subset, 3-subset
  }
```

The 8 elemets in 𝓟(S) can be grouped by the number of elements in a subset:
- 1 ⨯ S⁽⁰⁾ = ∅
- 3 ⨯ S⁽¹⁾ = { {1}, {2}, {3} }
- 3 ⨯ S⁽²⁾ = { {1,2}, {2,3}, {1,3} }
- 1 ⨯ S⁽³⁾ = { {1,2,3} }

For example, there are 3 ⨯ 2-subsets that make the `S⁽³⁾` family of subsets:   
`{ {1,2}, {2,3}, {1,3} }`


3. An example of a family of sets over `S` (in a multiset sense) is given by:

```js
S = { a, b, c, 1, 2 }
F = {A, B, C, D} where:
A = {a,b,c}
B = {1,2}
C = {1,2}
D = {a,b,1}
```


4. The class 𝙾𝚛𝚍 of all ordinal numbers is a large family of sets (that is, it is not itself a set but a proper class).


## Properties

* Any family of subsets of `S` is itself a subset of the powerset `𝓟(S)` if it has no repeated members.

* Any family of sets without repetitions is a subclass of the proper class `V` of all sets (the universe).

* *Hall's marriage theorem*, due to Philip Hall, gives necessary and sufficient conditions for a finite family of non-empty sets (repetitions allowed) to have a system of distinct representatives.

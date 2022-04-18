# Maximal and minimal elements

https://en.wikipedia.org/wiki/Maximal_and_minimal_elements

In order theory, **a maximal element** of a subset `S` of some preordered set is an element of `S` that is not smaller than any other element in `S`. Dually, **a minimal element** of a subset `S` of some preordered set is an element of `S` that is not greater than any other element in `S`.

The notions of maximal and minimal elements are weaker than those of *greatest element (maximum)* and *least element (minimum)*.

The maximum of a subset S of a preordered set is an element of S which is greater than or equal to any other element of S, and the minimum of S is again defined dually.

In the particular case of a partially ordered set, while there can be at most one maximum and at most one minimum there may be multiple maximal or minimal elements.

Specializing further to totally ordered sets, the notions of maximal element and maximum coincide, and the notions of minimal element and minimum coincide.


## Definition

Let
- `(P, ⩽)` be a preordered set
- `S` be a subset of `P`, `S ⊆ P`

### Main definition

* A **maximal element** of `S` with respect to `⩽` is an element `m ∈ S` such that if `s ∈ S` satisfies `m ⩽ s` then necessarily `s ⩽ m`.

* A **minimal element** of `S` with respect to `⩽` is an element `m ∈ S` such that if `s ∈ S` satisfies `s ⩽ m` then necessarily `m ⩽ s`.


### Equivalent definition

* `m ∈ S` is a maximal element of `S` with respect to `⩽` iff `m` is a minimal element of `S` with respect to `⩾`.

* `m ∈ S` is a minimal element of `S` with respect to `⩾` iff `m` is a maximal element of `S` with respect to `⩽`.   
  where by definition, `⩾` := `∀p,q ∈ P. (q ⩾ p ⇔ p ⩽ q)`


### Definition addemndum I

If `S` is unspecified, then it should be assumed that `S := P`. Explicitly,
- maximal elem of `(P, ⩽)` is a maximal elem of `S := P` with respect to `⩽`
- minimal elem of `(P, ⩽)` is a minimal elem of `S := P` with respect to `⩽`


### Definition addemndum II

If the preordered set `(P, ⩽)` also happens to be a poset (or more generally, if the restriction `(S, ⩽)` is a poset), then

- `m ∈ S` is a maximal element of `S` iff `S` contains no element strictly greater than `m`, meaning there's no elem `s ∈ S` s.t. `m ⩽ s` and `m ≠ s`.

- `m ∈ S` is a minimal element of `S` iff `S` contains no element strictly lesser than `m`, meaning there's no elem `s ∈ S` s.t. `m ⩾ s` and `m ≠ s`.

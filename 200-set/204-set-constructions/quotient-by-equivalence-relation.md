# Quotient by an equivalence relation

https://en.wikipedia.org/wiki/Quotient_by_an_equivalence_relation

In mathematics, given a category `C`, a quotient of an object `X` by an equivalence relation `f : R → X × X` is a coequalizer for the pair of projection maps `pr₁` and `pr₂`:

`f : R → X×X` and `prᵢ : X×X → X` 

where `i={1,2}`, `R` is an object in `C`, and `f` being an equivalence relation means that, for any object `T ∈ C`, the image (which is a set) of

`f : [ R(T) = Mor(T,R) ] → X(T) × X(T)`

is an equivalence relation; that is, a reflexive, symmetric and transitive relation.

The basic case in practice is when `C` is the category of all schemes over some scheme `S`. But the notion is flexible and one can also take `C` to be the category of sheaves.

## Examples

* Let `X` be a set and consider some equivalence relation on it. Let `Q` be the set of all equivalence classes in `X`. Then the map `q : X → Q`, that sends an element `x` to the equivalence class to which `x` belongs, is a *quotient*.

* In the above example, `Q` is a subset of the power set `H` of `X`. In algebraic geometry, one might replace H by a Hilbert scheme or disjoint union of Hilbert schemes. In fact, Grothendieck constructed a relative Picard scheme of a flat projective scheme `X[1]` as a quotient `Q` (of the scheme `Z` parametrizing relative effective divisors on `X`) that is a closed scheme of a Hilbert scheme H. The quotient map `q : Z → Q` can then be thought of as a relative version of the Abel map.

# Asymmetric relation

https://en.wikipedia.org/wiki/Asymmetric_relation

An **asymmetric relation** is a binary relation `R` on a set `X` where for all `a,b ∈ X`, if `a` is related to `b`, then `b` is not related to `a`.

Written in the notation of first-order logic (1) as
- `∀a∀b ∈ X(a𝓡b -> ¬(b𝓡a))`
- `∀a∀b ∈ X((a,b) ∈ 𝓡 -> (b,a) ∉ 𝓡))`

A logically equivalent definition (2) is:   
forall `a,b ∈ X` at least one of `a𝓡b` or `b𝓡a` is false.

Written in the notation of first-order logic as
- `∀a∀b ∈ X.(¬(a𝓡b ⋀ b𝓡a))`
- `∀a∀b ∈ X.(¬((a,b) ∈ 𝓡 ⋀ (b,a) ∈ 𝓡))`

```
∀a∀b ∈ X. a𝓡b → ¬b𝓡a =      (1)
         ¬a𝓡b ⋁ ¬b𝓡a =
        ¬(a𝓡b ⋀  b𝓡a)       (2)
```


## Examples

* LT relation, `<`, on ℝ is asymmetric: if `x < y` then `¬(y < x)`.

* LE relation, `<=`, is not asymmetric since `x <= x` and `x <= x` are both true. Asymmetry is not the same thing as not-symmetric: LE relation is an example of a relation that is *neither symmetric nor asymmetric*.

* The empty (null) relation is the only relation that is (vacuously) both *symmetric and asymmetric*.

## Properties

* A relation is asymmetric iff it is both antisymmetric and irreflexive.
  *asymmetric <=> antisymmetric ⋀ irreflexive*

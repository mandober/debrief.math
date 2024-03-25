# Saturated set

https://en.wikipedia.org/wiki/Saturated_set

In set theory and topology, a set `C` is said to be *saturated with respect to a function* `f: X → Y` if `C` is a subset of `f`'s domain `X`, `C ⊆ X`, and if whenever `f` sends two points `c ∈ C` and `x ∈ X` to the same value, then `x` is in `C`; that is, if `f(x) = f(c)` then `x ∈ C`.

`f: X → Y`, `C ⊆ X`, `f(x) = f(c) ⇒ x ∈ C`

>More succinctly, the set `C` is called saturated if `C = f⁻¹(f(C))`.

For `f⁻¹ ∘ f` to result in the original set `C`, i.e. `∀c(c ∈ C → f⁻¹(f(c)) = c)`, the function `f : X → Y` where `C ⊆ X`, needs to be bijective or injective, at least on set `C`. So is that what saturated actually means: a set `C ⊆ X` is saturated if the fucntion `f : X → Y` is injective at least on `C`?


In topology, a subset of a topological space (X,τ) is saturated if it is equal to an intersection of open subsets of X. In a `T₁` space every set is saturated.

## Definition

- Let `f : X → Y` be a map.
- Given any subset `S ⊆ X`
- Define the *image* under `f` to be the set `f(S) := { f(s) | s ∈ S }`, 
  i.e. `f(S) ⊆ Y` be set `Z = f(S)`. The function f than associates each `s ∈ S` to a `z ∈ Z`, as if `f: S → Z`, so `f(s) = z`, but really `f: S → f(S)`.
- Define its preimage (i.e. inverse image) under `f` to be the set: 
  `f⁻¹(S) := { x ∈ X | f(x) ∈ S }`
- Note that `f(S) ⊆ Y` is in codomain, 
    while `f⁻¹(S) ⊆ X` is in domain
- Given `y ∈ Y`, the *fiber* of `f` over `y` 
  is defined to be the preimage:
  `f⁻¹(y) := f⁻¹({y}) = { x ∈ X | f(x) = y }`
- Any preimage of a single point (in `f`'s codomain `Y`) 
  is referred to as *a fiber of `f`*.


(the definition of a saturated set now follows)

A set `C` is called *f-saturated* 
and is said to be saturated with respect to `f`, 
if `C` is a subset of `f`'s domain `X`, 
and if *any* of the following 5 equivalent conditions is satisfied:

* `C = f⁻¹(f(C))`

  C = (f⁻¹ ∘ f)(C)

* There exists a set `S` such that `C = f⁻¹(S)`.
  Any such set `S` necessarily contains `f(C)` as a subset and moreover, it will also necessarily satisfy the equality `f(C) = S ⋂ Im(fˣ)`, 
  where `Im(fˣ) := f(X)` denotes the image of `f`.

* If `c ∈ C` and `x ∈ X` satisfy `f(x) = f(c)`, then `x ∈ C`.

* If y ∈ Y is such that the fiber f⁻¹(y) intersects C, 
that is, if (f⁻¹(y) ⋂ C) ≠ ∅, 
then this entire fiber is necessarily a subset of C, 
that is, f⁻¹(y) ⊆ C.

* For every `y ∈ Y`, the intersection `C ⋂ f⁻¹(y)` 
   is either empty or equal to `f⁻¹(y)`.
   So, either
     ∀y(y ∈ Y) : C ⋂ f⁻¹(y) = ∅
   or
     ∀y(y ∈ Y) : C ⋂ f⁻¹(y) = f⁻¹(y)


ASIDE: When is `A ⋂ B = B`? when `A = ∅`, i.e. `∅ ⋂ B = B`

## Examples

Let `f : X → Y` be any function. 
If `S` is a (any) set, 
then its preimage `C := f⁻¹(S)` under `f` 
is necessarily an *f-saturated set*. 
>In particular, every fiber of a map `f` is an *f-saturated set*.

The empty set ∅ = f−1(∅) and the domain X=f−1(Y) are always saturated.

Arbitrary unions of saturated sets are saturated, as are arbitrary intersections of saturated sets.

## Properties

Let `S` and `T` be any sets and let `f : X → Y` be any function.

- If `S` or `T` is *f-saturated* then `f(S ∩ T) = f(S) ∩ f(T)`

- If `T` is f-saturated then `f(S ∖ T) = f(S) ∖ f(T)`

Note that no requirements are placed on set `S`.

### In topology

If `τ` is a *topology* on `X` and `f : X → Y` is any map, 
then set `τ𝟋` of all `U ∈ τ` that are saturated subsets of `X` 
forms a topology on `X`.

If `Y` is also a topological space then `f : (X, τ) → Y` is continuous (respectively, a *quotient map*) iff the same is true of `f : (X, τf) → Y`.

# Fiber

- Let `f : X → Y` be a function,

- Given any subset `S ⊆ X`,

- define the *image* under `f` to be the set 
  `f(S) := { f(s) | s ∈ S }`

- define its *preimage* (i.e. inverse image) under `f` to be the set
  `f⁻¹(S) := { x ∈ X | f(x) ∈ S }`

- Note that `f(S) ⊆ Y` is in codomain, while `f⁻¹(S) ⊆ X` is in domain.

- Given `y ∈ Y`, 
  the *fiber of `f` over `y`* 
  is defined to be the *preimage*:
  `f⁻¹(y) := f⁻¹({y}) = { x ∈ X | f(x) = y }`


>Any preimage of a single point (in `f`'s codomain `Y`) is referred to as *a fiber of `f`*.


The concept of a fiber takes perspective from the codomain elements of some function `f : X → Y`. It focuses on an element `y ∈ Y`, as a sole element of an image under `f`, and seeks to find all domain elements, i.e. the preimage (which is a subset of the domain `X`) of the single-element image `{y}` under `f`.

In case `f` is a *bijection*, there will be a single element in the preimage, `{x}`, i.e. some element `x ∈ X` s.t. `f(x) = y`. That is, `f({x}) = {y}`.

In case `f` is an *injection*, there will be a single element in the preimage, `{x}`, i.e. some element `x ∈ X` s.t. `f(x) = y`. That is, `f({x}) = {y}`. However, it may also happen that the preimage is the empty set, i.e. that `y` is not associated to any element in `X`. This case may be prevented by specifying a subset of the codomain in which all elements are actually associated; or by focusing on a subset of a domain that results in the image in which all elements are associated - so considering either as a fiber results in a non-empty preimage set.

In case `f` is an *surjection*, there may be more than one element in the preimage, `{x₀, x₁, …}`, i.e. all elements `x ∈ X` for which `f(x) = y`. That is, `f({x₀, x₁, …}) = {y}`. In this case, it cannot happend that the preimage is empty.

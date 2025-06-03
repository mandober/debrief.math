# Inverse function

Not all functions have an inverse. That is, the inverse of a function may not be a function (but a relation).

*Bijective functions* always have an inverse. A bijectin f : A → B defined as f(x) = y with x ∈ A and y ∈ B has an inverse that is always a function `f⁻¹ : B → A` such that `f⁻¹(y) = x` if `f(x) = y`.
- f⁻¹ ∘ f = A → A, it is the indetity function on A, `1ᴀ : A → A`
- (f⁻¹ ∘ f)(x) = f⁻¹(f(x)) = f⁻¹(y) = x
- f ∘ f⁻¹ = B → B, it is the indetity function on B, `1ʙ : B → B`
- (f ∘ f⁻¹)(x) = f(f⁻¹(x)) = f(x) = y

*Injective functions* have an inverse that is function but only if we restrict the domain of the inverse function `f⁻¹` to be the same set as the range of `f`.
- an injection `f : A → B` where `C = ran(f) ⊆ B`
- inverse function `f⁻¹ : C → A`
Because an injection `f : A → B` (that is non-bijection) does not cover the entire codomain `B` (if it did it would be a bijection), then its inverse cannot be a function as it would be undefined for unmapped elements of the codomain (it could be a partial function, though). But if we restrict the domain of `f⁻¹` to be a subset of set `B` equal to the range of `f`, and call this subset `C ⊆ B` so `C = ran(f)`, s.t. `C = { ∀c ∈ B. ∀x ∈ A. f(x) = c }`.



Let `f` be a one-to-one function with domain `A` and range `B`. Then its inverse function, denoted by `f⁻¹` has domain `B` and range `A`. It is defined by `∀y ∈ B. f⁻¹(y) = x ⇒ f(x) = y` (whenever `f(x) = y`).

We have to be careful not to confuse `f⁻¹(x)` with `1/f(x)`. The `⁻¹` does not signify an exponent, i.e. f's reciprocal `1/f(x)`. This is especially important to keep in mind with trig functions where `arcsin(x) = sin⁻¹(x)` but `csc(x) = 1/sin(x)`.

# Category

A category consists of objects and arrows that go between them.

**Arrows** or **morphisms** are a generalization of functions.

ℎ ∘ (𝑔 ∘ 𝑓 ) = (ℎ ∘ 𝑔) ∘ 𝑓 = ℎ ∘ 𝑔 ∘ 𝑓

Axioms of Category:
- binary operation is composition
- Identity: each object must have the identity arrow
- composition is associative: h . g . f = (h . g) . f = h . (g . f)
- composition is transitive: (h . g) ∧ (g . f) -> h . f

a . ---- f ----> . b      f :: a -> b
  1a             1b

1a . f = f . 1b

These 2 functions are **isomorphic** (shape-preserving).

Surjective (onto) functions are **epimorphisms** i.e. **epic**.

Injective (1-to-1) functions are **monomorphisms** i.e. **monic**.


## Surjective functions

Surjective (onto) functions are **epimorphisms** i.e. **epic**.

A surjective function does not have any surplus elements left in the codomain, therefore `Image = Codomain`. However, there may be more then one element in the domain associated with the same codomain element. For example, the square function, f(x=x^2), associates both `0` and `1` elements of domain with the element `1` in the codomain.

That is to say, a surjective function is not one-on-one but **many-on-one** and **Image = Codomain**.

A surjective function from A to B will send each element in A to B, but the "image" will be fuzzy because not each domain element ends up mapped to an unique point in codomain. A surjective function may map a cat to a blob that barely resambles a cat.

### Definition: Epimorphism

Given, 
any object `∀c` in the category, 
and a function `f::a -> b`, 
and any pair of functions `∀g1,∀g2` where `g:: b -> c` 
if (g1 . f = g2 . f) then g1 = g2
then `f` is an **epimorphism**.

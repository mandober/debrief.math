# Faithful functor

https://en.wikipedia.org/wiki/Full_and_faithful_functors

A **full functor** is a functor that is *surjective* when restricted to each set of morphisms that have a given source and target.

A **faithful functor** is a functor that is *injective* when restricted to each set of morphisms that have a given source and target.

A **fuly faithful functor** is a functor that is *bijective* when restricted to each set of morphisms that have a given source and target.


## Formal definitions

Explicitly, if `C` and `D` are (locally small) categories, 
and `F : C → D` is a functor from `C` to `D`. Then, 
for every pair of objects `X` and `Y` in `C`, 
the functor `F` induces a function

Fx,ʏ : HOMᴄ (X,Y) -> HOMᴅ (F(X), F(Y))

$$
  F_{X,Y} 
  \colon 
  \mathrm{Hom}_ {\mathcal C}(X,Y) 
  \rightarrow
  \mathrm{Hom}_ {\mathcal D}(F(X),F(Y))
$$

`∀XY ∈ C`, the functor `F` is
* *faithful*       if `Fx,ʏ` is injective
* *full*           if `Fx,ʏ` is surjective
* *fully faithful* if `Fx,ʏ` is bijective

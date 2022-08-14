# Adjoint functor

https://en.wikipedia.org/wiki/Adjoint_functors

**Adjunction** is a relationship that two functors may have. Two functors that stand in adjunction are known as **adjoint functors**, one being the *left adjoint* and the other the *right adjoint*.

Pairs of adjoint functors are ubiquitous in mathematics and often arise from constructions of "optimal solutions" to certain problems (i.e. constructions of objects having a certain universal property).


By definition, an *adjunction* between categories `C` and `D` is a pair of functors (assumed to be covariant)

`F : C → D` and `G : D → C`

and, for all objects `X` in `C` and `Y` in `D`, a bijection between the respective morphism sets

`Homᴄ(FY, X) ≅ Homᴅ(Y, GX)`

such that this family of bijections is *natural* in `X` and `Y`.

Categorical Programming With Inductive And Coinductive Types

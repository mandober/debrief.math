# Adjunctions

An adjunction (also called an adjoint pair) is a pair of functors `F : C → D`, `G : D → C` such that there is a "natural" bijection

`homᵈ(F X,Y) ⋍ homᶜ(X,G Y)`

`F` is said to be left adjoint to `G` and `G` to right adjoint to `F`. Here, "natural" means there is a natural isomorphism

`homᵈ(F -, -) ⋍ homᶜ(-, G -)`

of bifunctors.

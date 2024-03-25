# Adjunctions

An adjunction (also called an adjoint pair) is a pair of functors `F : C → D`, `G : D → C` such that there is a "natural" bijection

`homᵈ(F X,Y) ⋍ homᶜ(X,G Y)`

`F` is said to be left adjoint to `G` and `G` to right adjoint to `F`. Here, "natural" means there is a natural isomorphism

`homᵈ(F -, -) ⋍ homᶜ(-, G -)`

of bifunctors.

# adjunctions

Adjunction is a relationship that two functors may have, intuitively corresponding to a weak form of equivalence between two related categories. Two functors that stand in adjunction are known as adjoint functors, one being the left adjoint to the second, and the other the right adjoint to the first.

By definition, an *adjunction* between categories `C` and `D` is a pair of functors:   
`F : C → D` and `G : D → C`   
such that   
for all objects `X` in `C` and `Y` in `D`,    
a bijection between the respective sets of morphisms:   
`homᴄ(FY, X) ≅ homᴅ(Y, GX)`   
such that this family of bijections is *natural* in `X` and `Y`.

*Naturality* here means that there are *natural isomorphisms* 
between the pair of functors   
`C(F-, X) : D -> Set` and   
`D(-, GX) : D -> Set`    
for a fixed X in C, 
and also the pair of functors 
`C(FY, -) : C -> Set` and   
`D(Y, G-) : C -> Set`    
for a fixed Y in D.

The functor `F` is called a **left adjoint functor** to `G`, 
while `G` is called a **right adjoint functor** to `F`.

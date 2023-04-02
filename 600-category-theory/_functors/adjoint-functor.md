# Adjoint functor

https://en.wikipedia.org/wiki/Adjoint_functors

**Adjunction** is a relationship that two functors may have, intuitively corresponding to a weak form of equivalence between two related categories. Two functors that stand in adjunction are known as **adjoint functors**, one being the *left adjoint* to the second, and the other the *right adjoint* to the first.

Pairs of adjoint functors are ubiquitous in mathematics and often arise from constructions of "optimal solutions" to certain problems (i.e. constructions of objects having a certain universal property), such as the construction of a free group on a set in algebra, or the construction of the Stone-Čech compactification of a topological space in topology.

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

An adjunction between categories `C` and `D` is somewhat akin to a "weak form" of an equivalence between them, and indeed every equivalence is an adjunction.

In many situations, an adjunction can be "upgraded" to an equivalence, by a suitable natural modification of the involved categories and functors.

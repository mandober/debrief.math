# Adjunctions

https://www.math3ma.com/blog/what-is-an-adjunction-part-1
https://www.math3ma.com/blog/what-is-an-adjunction-part-2
https://www.math3ma.com/blog/what-is-an-adjunction-part-3

An adjunction consists of a pair of opposing functors F and G together with natural transformations `id → G ∘ F` and `F ∘ G → id`.

Two stricter scenarios:
- where the composite functors equal the identities
- where they are naturally isomorphic to the identities

The first scenario defines an isomorphism of categories. The second defines an equivalence of categories. An adjunction is third on the list.

- `F ∘ G = Iᴅ` and `G ∘ F = Iᴄ` isomorphism (equalities)
- `F ∘ G ≅ Iᴅ` and `G ∘ F ≅ Iᴄ` equivalence (natural isomorphisms)
- `F ∘ G → Iᴅ` and `G ∘ F ← Iᴄ` adjunctions (natural transformations)

`F ∘ G => Iᴅ` and `Iᴄ => G ∘ F`

In the case of an adjunction, we also ask that the natural transformations - called the *unit* and *counit* - somewhat behave as inverses of each other.

This explains why the arrows point in opposite directions (it also explains the "co"). Except, they cannot literally be inverses since they are not composable: one involves morphisms in C and the other involves morphisms in D. That is, their (co)domains do not match. But we can fix this by applying F and G so that (a modified version of) the unit and counit can indeed be composed. This motivates the formal definition of an adjunction.

(Definition): An adjunction between categories `C` and `D` is a pair of functors `F : C → D` and `G : D → C` together with two natural transformations `η : Iᴄ → GF`, called the *unit*, and `ϵ : FG → Iᴅ`, called the *counit*, so that for all objects `X` in C and `Y` in D the two triangles below commute.

When F and G are part of an adjunction, we'll write `F ⊣ G` and say that F and G are adjoint functors, with F being the left adjoint of G, and G being the right adjoint of F.

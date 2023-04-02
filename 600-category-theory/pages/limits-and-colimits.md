# Limits and colimits

https://bartoszmilewski.com/2015/04/15/limits-and-colimits/

Before, we have constructed the product by "selecting" two objects, but the process of selection was imprecise - with functors and natural transformations introduced, we should now express this process in categorical terms.

Previously, we have constructed a product by selecting objects, `a` and `b`, which were forming a particular pattern. We can abstract this pattern into a category that contains exactly two objects - called `𝟚`. We'll name its two objects `1` and `2`. It has no arrows except the identities.

We can now rephrase the selection of objects in `𝒞` by defining a functor, 
`D : 𝟚 -> 𝒞`. It maps objects in `𝟚` to objects in `𝒞` - its image consists of two objects, `1 ⟼ a` and `2 ⟼ b`. `D` also maps morphisms, which, in this case is trivial because there are only id arrows in 𝟚, so, identities in 𝟚 are mapped to identities in 𝒞.

The next step in the definition of a product is the selection of the product candidate object `c`. We could rephrase this also in terms of a functor from a singleton category, and indeed, if we were using Kan extensions, that would be the right thing to do. But since we are not ready for Kan extensions yet, we'll use a constant functor `Δᶜ : 𝟚 -> 𝒞`, which maps all objects in 𝟚 to the object `c` in 𝒞, and all id arrows in 𝟚 to the id arrow of `c`, i.e. `1ᶜ`.

```hs
1,2 ∈ Ob(𝟚)
a,b,c ∈ Ob(𝒞)

functor_D :: 𝟚 -> 𝒞
-- objects
functor_D 1 = a
functor_D 2 = b
-- identities
functor_D I₁ = IDa
functor_D I₂ = IDb

functor_Δ :: 𝟚 -> 𝒞
-- objects
functor_Δ 1 = c
functor_Δ 2 = c
-- identities
functor_Δ I₁ = IDc
functor_Δ I₂ = IDc
```

Now that we have two functors, `Δ` and `D` between 𝟚 and 𝒞, we can consider a natural transformation between them. Since there are only two objects in 𝟚, a natural transformation will have two components. Object `1` in 𝟚 is mapped to `c` by `Δ` and to `a` by `D`. So the component of a natural transformation between `Δ` and `D` at `1` is a morphism `p : c -> a`. Similarly, the second component is a morphism `q : c -> b` which is the image of the object `2` in 𝟚 under `D`. [Sure, we need those moprhisms in that direction, i.e. `c` to `a` and not `a` to `c`. The components of a NT should go in line with the existing arrows in the category; if there are no arrows corresponding to the arrows that we need, then there's no NT between these functors].

These are exactly like the two projections we used in the original definition of the product. So instead of talking about selecting objects and projections, we can talk about functors and natural transformations.

It so happens that in this simple case the *naturality condition* for the NT is trivially satisfied, because there are no morphisms (apart from ids) in 𝟚.

## Cones

A generalization of this construction to categories other than 𝟚 - ones that, e.g. contain non-trivial morphisms - will impose naturality conditions on the NT between the two functors. We call such a NT a **cone** because the image of the constant functor, `Δ`, is the apex of the cone whose sides are the components of the NT. The image of the other functor, `D`, forms the base of the cone.

In general, *to construct a cone*, we start with a category `I` that identifies the pattern (like the category `𝟚` previously). `I` is often a small and finite category. We pick a functor `D : I → 𝒞` and call its image a *diagram*. We then pick some object `c ∈ 𝒞` as the apex of the cone, and we use `c` to define the constant functor `Δc : I → 𝒞`. A NT from `Δc` to `D` is then the cone. For a finite `I`, it is just a bunch of morphisms connecting `c` to the diagram - the image of `I` under `D`.

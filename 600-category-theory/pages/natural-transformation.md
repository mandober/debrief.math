# Natural transformations

Just like a functor is a 1-morphism between categories, a NT is a 2-morphism between functors. (0-morphism is an object in a category).

A natural transformation (NT) is a mapping between functors.

A NT `α` maps functors (which map cats) by mapping:
- objects (in cat ℂ) to arrows (in cat 𝔻)
- arrows (in cat ℂ) to commuting diagrams (in cat 𝔻)

Natural transformations are denoed by greek letters, so a NT `α` may map a functor `F` to a functor `G`, i.e. `α : F -> G`. If these two functors map a category ℂ to category 𝔻, i.e. `F, G : ℂ -> 𝔻`, and we can see what exactly happens by picking some objects `a,b,c ∈ ℂ`. So, the functor `F` will map an object `a` in ℂ to `F a` in 𝔻, `a ⟼ F a` and similary for other objects in ℂ. The functor `F` will also map a arrow `f : a -> b` in ℂ to an arrow `F f` in 𝔻, i.e. the arrow `f` will be lifted by the functor `F`. Also, `f ⟼ G f`. All thisis precluded on an important condition - called the naturality condition - that `G f ∘ αᵃ = αᵇ ∘ F f`.



A NT `α` that maps a functor `F` to a functor `G`, where
- `F: ℂ -> 𝔻` maps `a ⟼ F a`, `b ⟼ F b`, `f ⟼ F f` where `f: a -> b`
- `G: ℂ -> 𝔻` maps `a ⟼ G a`, `b ⟼ G b`, `f ⟼ G f` where `f: a -> b`
consists of component arrows:
- αᵃ : F a -> G a (`αᵃ` is a component of a NT `α` at object `a`)
- αᵇ : F b -> G b (`αᵇ` is a component of a NT `α` at object `b`)
A NT `α` must obey the *naturality condition*:
- `G f ∘ αᵃ = αᵇ ∘ F f`
A naturality condition also allows us to compare these functors.

*Component arrows* are arrows in category 𝔻. However, we don't invent new arrows in 𝔻 to satisfy a NT, but a NT must pick already existing arrows in 𝔻 as its component arrows - if there are none, then such a NT doesn't exist.

In case all the component arrows are invertable, i.e. if they are isomorphisms, then we have a natural transformation that is actually a *natural isomorphism*.

The **identity natural transformation** on a functor `F : C → D` is the natural transformation `Iꜰ : F → F` that maps each object `x` of C to the identity morphism `1ꜰₓ` in D.

The identity natural transformations are themselves the *identity morphisms of vertical composition of NTs* in a functor category `Dᶜ`, also denoted `[C, D]`, and in the 2-category `Cat`.

When we say that a NT, `αₐ : F a → G a`, is the identity, it doesn't mean only that `F a = G a` for every object `a`, but also that `F f = G f` for every morphism `f`, i.e. that the *two functors `F` and `G` are equal*.

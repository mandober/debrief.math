# CT :: Fundamentals

The essence of CT is composition.

The 3 fundamental elements of CT are arrows, functors and NTs.

*Arrows* map objects to objects in one category.

*Functors* map categories to categories by mapping:
- objects to objects
- arrows to arrows (incl. identity arrows)

*Natural transformations* map functors to functors by mapping:
- objects (in one cat) to arrows (in another cat)
- arrows (in one cat) to commuting diagrams (in another cat)

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

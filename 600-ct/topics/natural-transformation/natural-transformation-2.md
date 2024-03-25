# Natural transformations

Just as a functor is a morphism between categories, a natural transformation is a 2-morphism between two functors.

Natural transformations are the 2-morphisms in the 2-category `Cat`.


Natural transformations are denoed by greek letters, so a NT `α` may map a functor `F` to a functor `G`, i.e. `α : F => G`.

Given two parallel functors, `F,G : C -> D`, we can see what exactly happens by picking some objects `a,b,c ∈ C`.

Functor `F` maps an object `a` in C to `F a` in D, `a ⟼ F a`, 
and similary for other objects in C. Functor `F` also maps an arrow `f : a -> b` in C to an arrow `F f` in D (it lifts the arrow `f`), `f ⟼ F f`.

Functor `G` maps an object `a` in C to `G a` in D, `a ⟼ G a`, 
and similary for other objects in C. Functor `G` also maps an arrow `f : a -> b` in C to an arrow `G f` in D (it lifts the arrow `f`), `f ⟼ G f`.

All this is precluded by the condition, called the naturality condition, whichstates that `G f ∘ αᵃ = αᵇ ∘ F f` must hold.


A NT `α` that maps a functor `F` to a functor `G`, where
- `F: C -> D` maps `a ⟼ F a`, `b ⟼ F b`, `f ⟼ F f` where `f: a -> b`
- `G: C -> D` maps `a ⟼ G a`, `b ⟼ G b`, `f ⟼ G f` where `f: a -> b`
consists of component arrows:
- αᵃ : F a -> G a (`αᵃ` is a component of a NT `α` at object `a`)
- αᵇ : F b -> G b (`αᵇ` is a component of a NT `α` at object `b`)
A NT `α` must obey the *naturality condition*:
- `G f ∘ αᵃ = αᵇ ∘ F f`

A naturality condition also allows us to compare these functors.

**Component arrows** are arrows in category D. However, we cannot invent new arrows in D just to satisfy the appetites of a NT, but a NT must pick the already existing arrows in D as its component arrows. If there are no arrows, or if there are no appropriate arrows, then such a NT does not exists.

In case all the component arrows are also isomorphisms, then the NT is called a **natural isomorphism**.

The *identity natural transformation* on a functor `F : C → D` is the natural transformation `Iꜰ : F → F` that maps each object `x` in C to the identity morphism `1ꜰₓ` in D.

>Identity natural transformations are themselves the *identity morphisms of vertical composition of NTs* in a functor category `[C, D]`, and in the 2-category `Cat`.

When we say that a NT, `αₐ : F a → G a`, is the identity, it doesn't mean only that `F a = G a` for every object `a`, but also that `F f = G f` for every morphism `f`, i.e. that the two functors `F` and `G` are *equal*.

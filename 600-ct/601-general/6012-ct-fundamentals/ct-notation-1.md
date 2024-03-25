# CT :: Fundamentals :: Notation

## Category

An arbitrary category is denoted by an uppercase letter, starting from `C`, then `D`, `E`, etc., sometimes in fancy script, `𝓒`.

The names of concrete, established categories use PascalCase and shortening, e.g. `Set`, `FinSet`, `Grp`, `Cat`.

## Objects

The collection of all objects in a category `C` is denoted `Ob(C)`. This collection can also be expressed formulaically as ∀x(x ∈ Ob(C)).

An arbitrary object is variously denoted by `a`, `b`, `x`. To relay that it belongs to a category `C`, `a ∈ Ob(C)`.

Very few objects are (and can be) individually identified: the empty set (in e.g. Set) is one such object; it is denoted by `𝟘` when in the role of the *initial object*.

On the other hand, all singleton sets, being isomorphic to each other and thus practically indistinguishable one from another, are identified as a single *terminal object*, denoted by `𝟙`. 


## Morphisms

The collection of all arrows in a category `C` is denoted `Ar(C)`.

The collection of all arrows between two arbitrary objects `a` and `b` in a category `C`, such that `a` is the source object and `b` a taget object, is called a hom-set and denoted by `C(a, b)` or `Hom(a, b)`, possibly with the category name subscribed in case of ambiguity, `Homᶜ(a, b)`.

The name for an arbitrary arrow between two arbitrary objects `a` and `b`, in a category `C`, can be denoted by `f : a -> b` or `f ∈ Homᶜ(a,b)`, the latter more clearly showing that any arrow between two objects is an element of the hom-set between those objects.


We can also write `f ∈ Ar(C)` to say that `f` is an arrow in `C`, 




The collection of all identity arrows in a category is rarely mentioned, but it could probably be denoted by `1` or `id`, since the *identity arrow* of an arbitrary object `a` is denoted `1ᵃ` or `idₐ`.

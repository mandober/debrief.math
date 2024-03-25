# Category theory :: Definitions :: Morphisms

A category is a collection of objects and arrows between them.

The collection of arrows of a category `ℂ` is denoted by `Ar(ℂ)`, that is, all arrows in `ℂ` may be denoted by `∀a,b ∈ Ob(ℂ), f:a→b ∈ Ar(ℂ)`.

However, since an arrow always connects two objects, we may express an arrow `f` from an arbitrary object `a` to an arbitrary object `b`, where both objects are in category ℂ, as `Ar(a,b)` or `ℂ(a,b)`, or we may first specify its signature, `f : a -> b`, and then say that `f ∈ Ar(ℂ)`.

Arrows are more often identified by hom-sets, `homᶜ(a,b)`.

Furthermore, for every pair of objects in ℂ, there is a set of morphisms denoted by `hom(a,b)` or, more explicitly as `homᶜ(a,b)`. There may be any number of arrows originating from an arbitrary object `a` and ending in an arbitrary object `b`.



If we fix an arbitrary object `a` in cat ℂ as the source of arrows, then by varying the target object we get a collection of all arrows `ℂ(a, -)` eminating from `a`.

If we fix an arbitrary object `b` in cat ℂ as the target of arrows, then by varying the source object we get a collection of all arrows `ℂ(-, b)` ending at `b`.

If we let both the source and target objects vary, we get a collection of all morphisms in cat ℂ, denoted by `ℂ(-, =)`.


## Category theory :: Definitions :: Epimorphism

```hs
                            g₁
           f         -------------->
a ● --------------> ● b             ● c
                     -------------->
                            g₂


f is an epimorphism iff
  ∀ f g ∈ hom(b,x).
    ∃ e ∈ hom(a,b).
      (f ∘ e = g ∘ e) -> f = g
```

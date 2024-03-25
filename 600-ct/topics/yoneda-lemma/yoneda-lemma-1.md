# Yoneda lemma

__Yoneda lemma__: for any functor `F : ℂ -> Set` and an object `a ∈ ℂ`, it holds that `Hom(a, F) ≅ F a`.

__Yoneda perspective__: Mathematical objects are completely determined by their relations to other mathematical objects.

This informs the viewpoint that the 
>properties of a mathematical object are more important than its definition.
An object's properties - the defining characteristics of that object - materialize once we widen our view and examine the object from all the possible perspectives, i.e. by probing it with all the possible arrows into that object (confined to the category in which the object lives). To really understand an object, we should view it from all possible vantage points. In category theory: more vantage points give more information. And the Yoneda lemma states that all vantage points give all information.

>The *Yoneda lemma* states that an object is fully determined by the collection of arrows into it.

The collection of arrows into an object completely determines that object.
So... `Hom(-, a) ≅ a`, no?

Yoneda Lemma - Thomas Rud, Jean-Clause Ton


Corollaries of the Yoneda lemma state
- `Hom(Hᵃ, Hᵇ)`  ≅  `Hom(b, a)`   *(covariant) functor*
- `Hom(Hₐ, Hᵦ)`  ≅  `Hom(a, b)`   *contravariant functor*

The meaning of "Hom" on the left and right is different because we are looking at morphisms between different kinds of objects. On the right, we have *sets of morphisms* in a category `C`. On the left, it takes more to explan it...


>What kind of things are `Hᵃ` and `Hᵇ`? 
>>They are *(covariant) functors* from `C` to `Set`.

Functors (i.e. covariant functors)
- Hᵃ : C -> Set,      Hᵃ = Hom(a, -),     Hom(a, -) : C -> Set
- Hᵇ : C -> Set,      Hᵇ = Hom(b, -),     Hom(b, -) : C -> Set

The collection (set or class?) of functors between two categories forms a category itself, a category of functors:
- objects: functors
- arrows: natural transformations

Thus, in this context, *`Hom` is the set of natural transformations* between two functors.

```hs
-- [1] Hom(a, -) Contravariant functor, from "a", a -> (-)

╭────────── ʰ ⁼ ᵍ ⋅ ᶠ ────────────╮
│                                ↓    Hᵃ = Hom(a, -)
a ───── ᶠ ────→ b =======ᵍ======> c

f : a -> b      ∈ Hom(a, -)
         ↓ᵍ
h : a -> c      ∈ Hom(a, -),   h = g ∘ f
-- thus
g : b -> c      ∈ Hom(b, -)


-- [2] Hom(-, a) Covariant functor, into "a", (-) -> a

╭────────── ʰ ⁼ ᶠ ⋅ ᵍ ────────────╮
│                                ↓    Hₐ = Hom(-, a)
c =====ᵍ======> b ───── ᶠ ─────→  a

f : b -> a     ∈ Hom(-, a)                reversed compared to f in [1]
    ↑ᵍ
h : c -> a     ∈ Hom(-, a),   h = f ∘ g
-- thus
g : c -> b     ∈ Hom(-, b)



-- alternative diagram

╭────────── ʰ ⁼ ᶠ ⋅ ᵍ ────────────╮
↓                                 │    Hₐ = Hom(-, a)
a ←──── ᶠ ─────  b <======ᵍ====== c

f : b -> a   ∈ Hom(-, a)
    ↑
h : c -> a   ∈ Hom(-, a),   h = f ∘ g
-- thus
g : c -> b   ∈ Hom(-, b)
```


>What kind of things are `Hₐ` and `Hᵦ`?
>>They are *contravariant functors* from `C` to `Set`.

The contravariant functors also form a category.

However, contemporary category theory doesn't like to speak of contravariant functors, preferring to only work with covariant functors, and leaving the term "covariant" implicit (explicitly, functor is a covariant functor).

So rather than saying `Hₐ` and `Hᵦ` are contravariant functors on category `C`, most contemporary writers would say they are (covariant) functors on the category opposite to C, denoted `Cᴼᴾ`.

That is, `Cᴼᴾ` is a category with all the same objects as `C`, but with all the arrows turned flipped. Every morphism from A to B in C corresponds to a morphism from B to A in `Cᴼᴾ`, and the composition `g ∘ f` is therefore also flipped.


## Ref

* Hom-functors
https://www.johndcook.com/blog/2018/08/06/hom-functors/

* The Yoneda Perspective, 2017
https://www.math3ma.com/blog/the-yoneda-perspective

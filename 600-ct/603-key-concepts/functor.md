# Functor

- A functor models one category inside another category.
- Unlike discrete categories, that model sets perfectly since they have no arrows other then id arrows, non-discrete categories do have structure; to preserve it, a functor must map objects as well as arrows.
- A functor is a mapping between categories.
- A functor is maps objects of the source category to objects of the target category, and arrows of the source category to arrows of the target category.
- Each object of the source category has an image under F in the target cat.
- Each arrow of the source category has an image under F in the target cat.

- Functors preserve structure of (source) category. Functors never break connections: what is connected in source cat will be connected in target cat.
- If there is an arrow `f: a -> b` in source category C there will be an arrow from `F f : F a -> F b` in target category D, such that the source object of `f` in C, i.e. object `a`, has its image in D, i.e. object `F a`, so that `F a` is the source of the arrow `F f`; and the same for the target object: the image of `f`'s target object is the target object of the lifted arrow `f`.

>The image of `f`'s source object is the source object of the lifted arrow `f`.
>The image of `f`'s target object is the target object of the lifted arrow `f`.

- Functors may drop information, but never destroy connections: a functor may collapse multiple objects into a single image object, or map multiple arrows in a homset into a single arrow of the image homset. This is similar to topology where it is forbidded to break stuff; we can squeeze, skew and deform manifolds as much as we want, but no breaking or glueing is allowed. *Continuous transformations* embed this requirement. It is how a tea cup and donut are isomorphic.


- Even if the functor is constant and maps both `a` and `b` to the same image in D: `a ⟼ F a`, `b ⟼ F b`, and `F a = F b = d`: then the arrow `f : a -> b` in C is mapped to the arrow `1ᵈ : d -> d` in D, and this arrow is also the image of the identity arrows `1ᵃ` and `1ᵇ` (1ᵃ ⟼ 1ᵈ, 1ᵇ ⟼ 1ᵈ, f ⟼ 1ᵈ).
- If `h = g ∘ f` (f:a→b, g:b→c in C), then its image under F is the composition of the images of `f` and `g`, `F h = F g ∘ F f = F (g ∘ f)`.
- And all id morphisms in C are mapped to id morphisms in D: `F 1ᵃ = 1ꜰₐ`

- hom-set `C(a, b)` may contain any number of morphisms
- hom-set `C(a, a)` may contain any number of endomorphisms
- one of those endomorphism is the identity morphisms `1ᵃ` ∈ C(a, a)
- an arrow `f : a -> b` is an element of the hom-set `C(a, b)`
- hom-set `C(a, b)` is mapped by F into a hom-set `D(F a, F b)`
- F may map multiple arrows in hom-set `C(a,b)` into one arrow in `D(F a,F b)`




- A functor is a structure-preserving mapping between categories.
- A functor F maps a category C into category D, _F : C -> D_
  - it maps each obj in the src cat to an obj in the tgt cat
    ∀x ∈ Ob(C). F maps _x ⟼ F x_, where x ∈ Ob(C), F x ∈ Ob(D)
  - it maps each arr in the src cat to an arr in the tgt cat. 
    Given an arrow f : a -> b ∈ Ar(C), F maps `f ⟼ F f` ∈ Ar(D) s.t.
    _F f : F a -> F b_
    - src of `f` in C is `a` and the image of `a` in D is the src of `F f`
    - tgt of `f` in C is `b` and the image of `b` in D is the tgt of `F f`
    - preserves composition: _F (g ∘ f) = F g ∘ F f_
    - preserves identity arrows: ∀x ∈ Ob(C). F maps _1ˣ ⟼ 1ꜰₓ = F 1ˣ_
- A contravariant functor behaves similarly to covariant functor 
  - regarding objects _x ⟼ F x_, but it reverses the dir of arrows:
  - it maps arrow `f : a -> b` ∈ Ar(C) to an arrow `F f : F b -> F a` ∈ Ar(D), 
    _F : C -> Dᴼᴾ_
  - or, equivalently, it maps arrow `f : b -> a` ∈ Ar(Cᴼᴾ) to an arrow 
    `F f : F a -> F b` ∈ Ar(D), _F : Cᴼᴾ -> D_


## Functors, again

An arrow `f : a -> b` in Ar(C), maps an object `a` to object `b`, but `f` is just one arrow in a set of arrows from `a` to `b`. These arrows form a set,called a *hom-set* and denoted `C(a, b)`. f ∈ Ar(C), but also `f ∈ Hom(a, b)`. Also, arrows mapping `F a` to `F b` in category D form a set, a hom-set `D(F a, F b)`, and `F f ∈ Hom(F a, F b)`. Both arrows, `f` and `F f` induce a set - a set of arrows, and a functor is a mapping between them; and a map between sets is a *function*.

For every hom-set, we have to define a function on the source hom-set into the corresponding target hom-set.

>Thus, a functor is potentially a huge number of individual functions.
A functor is one big function that maps objects and then there is one function for every hom-set. That's a lot of functions, and we haven't even started to talk about the preservation of structure.

## Faithful and full functors

If the *mapping of homsets is surjective*, then we call such functors full. A **full**  functor is surjective on all homsets.

If the *mapping of homsets is injective*, then we call such functors faithful. A **faithful**  functor is injective on all homsets.

If the *mapping of homsets is bijective*, then we call such functors fully faithful. A **fully faithful** functor is bijective on all homsets. It establishes an isomorphism between the source homset and the image homset.

Note, however, that these properties are only related to homsets (i.e. mapping of arrows), not to objects - it can collapse objects and still be injective on morphisms; or it can map the whole category into its subset and still be surjective on morphisms. But a functor maps both, objects and arrows, that's why the function-related terms (sur/in/bijectivity) are not reused.

## `Cat` category

- Identity functor maps a cat back to itself, `I : C -> C`
- Like arrows, functor may be composed. `G ∘ F`.
- Thus, we have a category! 🎉
- `Cat` is small category with cats as objects and functors as arrows.
- In Haskell, we can compose e.g. List and Maybe functors: `a` ⟼ `List a` ⟼ `Maybe (List a)`, thus `Maybe ∘ List = Maybe List` is also a functor. Or, `List ∘ Maybe = List Maybe`, which is another functor. These two composite functors are different:
  - `a` ⟼ `List a` ⟼ `Maybe (List a)`
  - List : Hask -> Hask
  - Maybe List : Hask -> Hask
  + `a` ⟼ `Maybe a` ⟼ `List (Maybe a)`
  + Maybe : Hask -> Hask
  + List Maybe : Hask -> Hask
- Composition of functors is also different from a NT, which is a mapping between functors. That is, a NT transforms one functor into another. For example:
  - `α : Maybe => List`
  - Maybe : Hask -> Hask
  - List : Hask -> Hask
  - αᵃ : `a` ⟼ `Maybe a` ⟼ `List a`
  - αᵇ : `b` ⟼ `Maybe b` ⟼ `List b`
  - αᶠ : `(a -> b)` ⟼ `Maybe (a -> b)` ⟼ `List (a -> b)`
- To map a composite functor, we'd fmap a function twice, `fmap ∘ fmap`.

## Product of categories and Bifunctors

- *Bifunctor* is a functor in two arguments
- In Haskell, it'd be a class `Bifunctor f` where has kind `f :: * -> * -> *`, but in CT, we can define a bifunctor in terms of the product of categories.
- If we can define a product of two categories, then a functor from a product of two categories would be a functor equivalent to a bifunctor. It's similar to a binary function taking its args as a pair (i.e. as the Cartesian product).
- In `Cat` (which is a small category), objects, i.e. categories are sets, so we can form Cartesian product easily.
- A product category `C×D` has pairs of objects as objects. The category `C×D` contains the Cartesian product of objects of C and D, `C×D`. Arrows in `C×D` category are pairs of morphisms, `(f, g)`, f:a->b ∈ Ar(C), g:x->y ∈ Ar(D), corresponding to an arrow `(f, g)` in `C×D` that is a pair of morphisms. Cartesian product of two homsets is a homset of pairs.
- We also have composition: `(f, g) ∘ (j, k) = (j ∘ f, k ∘ g)`
  - f : a -> b ∈ Ar(C)
  - j : b -> c ∈ Ar(C)
  + j ∘ f : a -> c ∈ Ar(C)
  - g : x -> y ∈ Ar(D)
  - k : y -> z ∈ Ar(D)
  + k ∘ g : a -> c ∈ Ar(D)
- Identity arrows `(id, id)` or `(1ₐ, 1ₓ)` also exists; `id₍ₐ,ₓ₎ = (idₐ,idₓ)`.
- So… we have a category! 🎉
- Then, we can define functors like `C × D -> E`, which maps an object in `C×D` (i.e. a pair of objects) to an object in `E`. And it maps arrows in `C×D` (i.e. a pair of arrows) to an arrow in `E`. This is what is called a **bifunctor** in category theory; it is just a functor for a product category.
- In Haskell, a bifunctor would have a signature `Hask² -> Hask`, going beyond the category of Haskell types and functions. However, bifunctor is defined in Haskell as a type class in terms of binary type ctors; we are lifting two functions at the same time - so, instead of `fmap`, we define `bimap` (and we use currying instead of a pair of functions).
- Something that is a bifunctor is automatically a functor in the first argument and a functor in the second argument.

## Sum of categories

If we have a product of categories, is there a sum of two categories? Sure, in Haskell, the canonical sum type is `Either` and it is a bifunctor. Like the `Pair` bifunctor, `Either` bifunctor also takes two types `a` and `b` - or a pair of types `(a, b)` from a product category - and produces a new type, `Either a b`.

A category in which a product is defined for every pair of objects is called **Cartesian category**. It can be shown that in any category with products defined, the product is then a (endo) bifunctor, `C×C -> C`. The same is true for coproduct.

Both *categorical product* - not just a pair, but a categorical product that lives in a *Cartesian category* - and a *categorical coproduct* - that lives in the *co-Cartesian category* - are bifunctors.

We can have a category that is more general than just product or coproduct (maybe there are other bifunctors that we don't know about). These categories that have a bifunctor like this are called **monoidal categories**; in fact, to be monoidal categories they also need to have a unit (more on that later).

## Monoidal Categories

* monoidal category
https://ncatlab.org/nlab/show/monoidal+category

* Category Theory 7.2: Monoidal Categories, Functoriality of ADTs, Profunctors
https://www.youtube.com/watch?v=wtIKd8AhJOc

* Functoriality
https://bartoszmilewski.com/2015/02/03/functoriality/

A monoid is `(C, ∙, ϵ)` - a carrier set `C` with an assoc binary operation `•` closed over the set, and the identity element, `ε`, such that `ϵ • a = a = a • ϵ`. The binary operation takes two elements (or a pair of elements), so its signature is `C × C -> C`, or `C -> C -> C` in its curryied form.

A *monoidal category* is based on a Monoid. A monoidal category defines a *binary operator* that acts on objects, together with a *unit object*.

A requirement for a category to be monoidal is that the binary operator is a *bifunctor*. This is a very important requirement because we want **monoidal product** to be compatible with the structure of the category, and the structure of a monoidal category is defined by morphisms.

- `Set` is a monoidal category with respect to *Cartesian product*, with the *singleton set* (terminal object in Set) as unit.
- `Set` is a monoidal category with respect to *disjoint union*, with the *empty set* (initial object in Set) as unit.

A monoid has a binary operation, called multiplication, and the identity. If we have a *categorical product* for every pair of objects, then it can act as the binary operation. If the category also has a *terminal object*, `1`, it can act as the unit object, such that "multiplying" any object `a` with `1` gives back `a`, that is, `(a, 1) ≅ a`. If a category `C` has these two requirements then we have a new structure - *monoidal structure on objects*.

- `binop : C × C -> C` or `binop : C -> C -> C`
- `unit : 1 -> C`


In Haskell, Monoid is defined as a type class that targets unary type ctors:

```hs
class Monoid a where
  mempty  :: a
  mappend :: a -> a -> a
```

`mappend` is the binop, `mempty` is the unit. Note that in Haskell, unit is just `a`, while in CT it is `() -> a`, but `() -> a ≅ a` anyway.




## Hom-Functor

Bifunctors and profunctors are the reflection of a more general statement that the mapping that takes a pair of objects `a` and `b` and assigns to it the set of morphisms between them, the hom-set `C(a, b)`, is a functor. It is a functor from the product category `Cᴼᴾ×C` to the category of sets, `Cᴼᴾ×C -> Set`.

Let's define its action on morphisms. A morphism in `Cᴼᴾ×C` is a pair of morphisms from C: `f : a'→ a` and `g : b → b'`.

The lifting of this pair must be a morphism (a function) from the set `C(a, b)` to the set `C(a', b')`. Just pick any `h ∈ C(a, b)` (it's a morphism from `a` to `b`) and assign to it `g ∘ h ∘ f`, which is an element of `C(a', b')`.

The hom-functor is a special case of a profunctor.

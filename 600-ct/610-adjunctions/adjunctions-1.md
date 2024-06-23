# Adjunctions

## Adjunction class in Haskell

```hs
class (Functor f, Functor g) => Adjunction f g where
  leftAdjunct  :: (f a -> b) -> (a -> g b)
  rightAdjunct :: (a -> g b) -> (f a -> b)

instance Adjunction (, s) (s ->) where
  leftAdjunct = curry
  rightAdjunct = uncurry

-- (a , b)    → c ≡ a → (b →  c)
--    ↑↑↑                ↑↑↑
--     f  a   → c ≡ a →   g  c


-- ----------------------------------------------------------------------------
class (Functor f, Representable u) => Adjunction f u | f -> u, u -> f where
  unit         :: a -> u (f a)
  counit       :: f (u a) -> a
  leftAdjunct  :: (f a -> b) -> (a -> u b)
  rightAdjunct :: (a -> u b) -> (f a -> b)
```

The laws of adjunctions:
- leftAdjunct . rightAdjunct = id
- rightAdjunct . leftAdjunct = id



## It is all about morphisms

https://bartoszmilewski.com/2015/11/17/its-all-about-morphisms/

Adjunctions are defined in terms of isomorphisms of hom-sets. Adjunctions provide a more general language to describe a lot of categorical constructions.

### Functors

Functors are really mappings of morphisms - this view is also emphasized in the Haskell's definition of the `Functor` class which revolves around `fmap`.

Functors also map objects - the endpoints of morphisms - otherwise we wouldn't be able to talk about composition, as objects tell us which morphisms are composable.

A composition of morphisms in one category must be mapped to the composition of lifted morphisms in another category - thus the mapping of their endpoints is determined (by the mapping of arrows and preservation of composition). Namely, each endpoint object in source category must be mapped to an object in target category such that the lifted arrows do compose properly and in a way that mimics (preserves) the composition of arrows as it is in source category.

### Commuting Diagrams

>Properties of morphisms are primarily expressed in terms of commuting diagrams.
If a (composite) morphism can be described as a composition of morphisms in at least two ways, then we have a commuting diagram.

Commuting diagrams are the basis of almost all *universal constructions* (with the notable exceptions of the initial and terminal objects).

Product is an example of universal construction: we pick two objects `a` and `b` and check if there is an object c together with a pair of morphisms `p` and `q` that has the universal property and honor of being their product. And object `c` is indeed their one true product if there is a unique arrow from any other product candidate to `c`.

Product is a special case of a limit. A *limit* is defined in terms of *cones*. A *general cone* is built from commuting diagrams.

Commutativity of diagrams may be replaced with a suitable *naturality condition* (which is stated in terms of commuting diagrams, wtf?) for the mapping of functors. In this manner, commutativity has the role of an assembly language for the higher-level language of *natural transformations*.

### Natural Transformations

NTs are convenient whenever we need a mapping from morphisms to commuting squares. Two opposing sides of a *naturality square* are the mappings of some morphism `f` under two functors `F` and `G`. The other sides are the components of the NT (also morphisms).

**Naturality** means that when we move to the "neighboring" component (meaning component connected by a morphism), we are not going against the "grain" of the structure of either the category or the functors.

It doesn't matter whether we first use a component of a NT to bridge the gap between objects, followed by jumping to the other category via the functor; or if we first travel the inter-category space via the functor and then move between (the images of) objects. These two directions are orthogonal.

A NT lets us move in the left-right direction, and functors lets us move in the up-down direction (or back-and-forth), so to speak. We can visualize the image of a functor as a sheet in the target category. A NT maps one such sheet corresponding to `F`, to another, corresponding to `G`.

In Haskell, this orthogonality is expressed by the fact that the action of a functor modifies the content of a container without changing its shape, while a NT converts between different containers without touching the contents. The order of these operations doesn't matter.

We've seen the cones in the definition of a *limit* replaced by NTs. Naturality ensures that the sides of every cone commute. Still, a limit is defined in terms of mappings between cones. These mappings must also satisfy commutativity conditions (e.g. triangles in the definition of product must commute).

These conditions may also be replaced by naturality. You may recall that the *universal cone*, or the *limit*, is defined as a NT between a contravariant hom-functor and a contravariant functor that maps objects in C to cones,

    F : c -> C(c, Lim D)

which themselves are NTs

    G : c -> Nat(Δc, D)

Here, Δc is the constant functor, and D is the functor that defines the diagram in C. Both functors F and G have well-defined actions on morphisms in C. It so happens that this particular NT between F and G is an isomorphism.

### Natural Isomorphisms

>A **natural isomorphism** is a NT whose every component is reversible.

In CT, a natural isomorphism is a way of saying that two things are the same (equivalent). Components of natural isomorphisms are isomorphisms between objects, i.e. invertable morphism.

Visualizing functor images as sheets, a natural isomorphism (NI) is a one-to-one invertible mapping (so a *bijection*) between the sheets.

### Hom-sets

Morphisms have more structure than objects: unlike objects, morphisms have two ends. Collection of arrows between two objects `a` and `b` (in a locally small category C) is a homset `C(a, b)`.

We give elements of hom names like `f` or `g`, to distinguish between them, but 
>what actually makes morphisms distinct?

The essential differences between morphisms in a hom-set are reflected in the way they compose with other morphisms (from adjacent hom-sets).

If there is a morphism `h` whose composition (either pre- or post-) with `f` is different than that with `g`, for instance:

    h ∘ f ≠ h ∘ g

then we can directly observe the difference between `f` and `g`. But even if the difference is not directly observable, we might use functors to zoom in on the hom-set. A functor `F` may map the two morphisms to distinct morphisms:

    F f ≠ F g

in a richer category, where the adjacent hom-sets provide more resolution, e.g.

    h' ∘ F f ≠ h' ∘ F g

where `h'` is not in the image of `F`.

### Hom-Set Isomorphisms

A lot of categorical constructions rely on isomorphisms between hom-sets. But since hom-sets are just sets, a plain isomorphism between them doesn't tell you much. For finite sets, an isomorphism just says that they have the same number of elements. If the sets are infinite, their cardinality must be the same. But any meaningful isomorphism of hom-sets must take into account composition. And composition involves more than one hom-set. We need to define isomorphisms that span the whole collections of hom-sets, and we need to impose compatibility conditions that interoperate with composition. A *natural isomorphism* fits the bill perfectly.

>What is a natural isomorphism of hom-sets?

Naturality is a property of mappings between functors, not sets. We are really talking about a *natural isomorphism between hom-set-valued functors*. These functors are more than just set-valued functors. Their action on morphisms is induced by the appropriate hom-functors. Morphisms are canonically mapped by hom-functors using either pre- or post-composition (depending on the covariance of the functor).

The *Yoneda embedding* is one example of such an isomorphism. It maps hom-sets in C to hom-sets in the functor category; and it's natural. One functor in the Yoneda embedding is the hom-functor in C and the other maps objects to sets of NTs between hom-sets.

The definition of a limit is also a natural isomorphism between hom-sets (the second one, again, in the functor category)

    C(c, Lim D) ≃ Nat(Δc, D)

It turns out that our construction of an exponential object, or that of a free monoid, can also be rewritten as a natural isomorphism between hom-sets.

This is no coincidence - we'll see next that these are just different examples of adjunctions, which are defined as natural isomorphisms of hom-sets.

### Asymmetry of Hom-Sets

There is one more observation that will help us understand adjunctions - in general, hom-sets are not symmetric. A hom-set `C(a, b)` is often very different from the hom-set `C(b, a)`.

The ultimate demonstration of this asymmetry is a *partial order* viewed as a category. In a partial order, a morphism from `a` to `b` exists iff `a ≤ b`. If `a` and `b` are different, then there can be no morphism going the other way, from `b` to `a`. So if the hom-set `C(a, b)` is non-empty, which in this case means it is a singleton set, then `C(b, a)` must be empty, unless `a = b`. The arrows in this category have a definite flow in one direction.

A *preorder*, based on a relation that is not necessarily antisymmetric, is also "mostly" directional, except for occasional cycles. It is convenient to think of any arbitrary category as a generalization of a preoder. A preorder is a *thin category* - all hom-sets are either singletons or empty. We can visualize a general category as a "thick" preorder.

## Adjunctions

https://bartoszmilewski.com/2016/04/18/adjunctions/

### Equality and isomorphism

In mathematics we have various ways of saying that one thing is like another. The strictest is *equality*. Two things are equal if there is no way to distinguish one from another. One can be substituted for the other in every imaginable context.

We have used *equality of morphisms* every time we talked about commuting diagrams because morphisms form a set (hom-set) and set elements can be compared for equality.

But equality is often too strong. There are many examples of things being the same for all intents and purposes, without actually being equal. For instance, the pair type `(Bool, Char)` is not strictly equal to `(Char, Bool)`, but we understand that they contain the same information.

This concept is best captured by an *isomorphism between types* - an invertible morphism. Since it is a morphism, it preserves the structure; and being "iso" means that it is a part of the round trip that lands you in the same spot, no matter which side you start on.

In the case of pairs, this isomorphism is called `swap`, and `swap` happens to be its own inverse.

```hs
swap :: (a,b) -> (b,a)
swap (a,b) = (b,a)
```

### Adjunction and unit/counit pair

When we talk about categories being isomorphic, we express this in terms of mappings between categories - functors.

We'd like to be able to say that C and D *categories are isomorphic* if there exists an *invertible functor* `R : C -> D`; or, in other words, if there also exists a functor `L : D -> C`, which, composed with R, equals the identity functor `I`.

```
        L
 <--------------
C               D
 -------------->
        R
```

The two (endo)functors
- L : D -> C
- R : C -> D

and their two compositions
- R ∘ L   endofunctor on D
- L ∘ R   endofunctor on C

and the two identity functors
- Iᵈ : D -> D
- Iᶜ : C -> C

such that
- R ∘ L = Iᵈ
- L ∘ R = Iᶜ

This is similar to an isomorphism between arrows f anf g where we need to establish that arrow g is an inverse of f and that their compositions equal the identity arrows, i.e. f ∘ g = 1ᵇ and g ∘ f = 1ᵃ.

So we are trying to express the equality of categories through the isomorphism of functors. But the tricky part is:
>What does it mean for two functors to be equal?
What do we mean by the equality `R ∘ L = Iᵈ` or `L ∘ R = Iᶜ`?

It would be reasonable to define *functor equality* in terms of equality of objects. Two functors, when acting on equal objects, should produce equal objects.

However, in general, objects do not admit equality. It just isn't a part of their definition. (Going deeper into this rabbit hole of "what equality really is", we'd end up in Homotopy Type Theory).

When functors are morphisms in the category of categories, they are comparable for equality, at least in a "small" category (where objects form a set). We can use the equality of set elements to compare objects (functors) for equality.

But Cat is really a 2-category. Hom-sets in a 2-category have additional structure - there are 2-morphisms acting between 1-morphisms. In Cat, 1-morphisms are functors, and 2-morphisms are natural transformations. So it is more natural to consider *natural isomorphisms* as weaker substitutes for equality regarding functors.

Instead of considering *isomorphism of categories*, we consider a more general notion of *equivalence of categories*.

>*Two categories are equivalent* if we can find two functors between them whose composition (either way) is naturally isomorphic to the identity functor.

In other words, if there is a two-way NT between the composition R ∘ L and the identity functor Iᵈ, and another between L ∘ R and the identity functor Iᶜ.

*Adjunction* is even weaker than equivalence, because it doesn't require that the composition of these two functors is isomorphic to the identity functor. Instead, it stipulates the existence of a one-way NT from Iᵈ to R ∘ L, and another from L ∘ R to Iᶜ

    η : Iᵈ -> R ∘ L
    ε : L ∘ R -> Iᶜ

`η` is called the *unit* (aka `return`), and `ε` is the *counit* (aka `extract`) of the adjunction.

These two definitions are asymmetrical because, in general, the two remaining mappings are not necessary:

    R ∘ L -> Iᵈ       (not necessary)
    Iᶜ -> L ∘ R       (not necessary)

Due to this asymmetry, the functor `L` is called the **left adjoint** to the functor `R`, while the functor `R` is the **right adjoint** to `L`, which may be compactly denoted by

    L ⊣ R

To better understand adjunctions, we need to analyze the unit and counit in more detail.


Let's start with the unit, `η`.

It is a NT, so it is a family of morphisms. Given an object d in D, the component of η is a morphism between I d, which is equal to d, and (R ∘ L) d, which is `R (L d)`.

    ηᵈ :: d -> (R ∘ L) d

Notice that the composition R ∘ L is an endofunctor in D.

This equation tells us that we can pick any object d in D as our starting point, and use the round trip functor R ∘ L to pick our target object `R (L d)`. Then we shoot an arrow - the morphism `ηᵈ` - to our target.


By the same token, the component of of the counit `ε` can be described as:

    εᶜ :: (L ∘ R) c -> c

It tells us that we can pick any object c in C as our target, and use the round trip functor L ∘ R to pick the source (L ∘ R) c = L (R c). Then we shoot the arrow - the morphism `εᶜ` - from the source to the target.


Another way of looking at *unit* and *counit* is that unit lets us introduce the composition R ∘ L anywhere we could insert an identity functor on D; and counit lets us eliminate the composition L ∘ R, replacing it with the identity on C.

That leads to some "obvious" consistency conditions, which make sure that introduction followed by elimination doesn't change anything:

    L  =  L ∘ Iᵈ  ->  L ∘ R ∘ L  ->  Iᶜ ∘ L  =  L
    R  =  Iᵈ ∘ R  ->  R ∘ L ∘ R  ->  R ∘ Iᶜ  =  R

These are called **triangular identities** because they make the following diagrams commute:

```
     L ∘ η                 ε ∘ L
L ──────────→ L ∘ R ∘ L ──────────→ L
│                                   │
╰───────────────────────────────────╯


     η ∘ R                 R ∘ ε
R ──────────→ R ∘ L ∘ R ──────────→ R
│                                   │
╰───────────────────────────────────╯
```

These are diagrams in the functor category: the arrows are NTs, and their composition is the horizontal composition of NTs.

In components, these identities become:

    εᴸᵈ ∘ L ηᵈ = idᴸᵈ
    R εᶜ ∘ ηᴿᶜ = idᴿᶜ



We often see unit and counit in Haskell under different names. Unit is known as `return` (or `pure`, in the definition of `Applicative`), and counint as `extract`.

```hs
return  :: d -> m d
extract :: w c -> c
```

Here, `m` is the (endo)functor corresponding to R ∘ L, and `w` is the (endo)functor corresponding to L ∘ R (unit and counit are part of the definition of Monad and Comonad).

If you think of an endofunctor as a container, the unit (or `return`) is a polymorphic function that creates a default box around a value of arbitrary type. The counit (or `extract`) does the reverse: it retrieves a single value from the container.

We'll see later that 
>every pair of adjoint functors defines a monad and a comonad. 
Conversely, 
>every monad or comonad may be factorized into a pair of adjoint functors, but this factorization is not unique.

In Haskell, we use monads a lot, but only rarely factorize them into pairs of adjoint functors, primarily because those functors would normally take us out of Hask.

However, we can define *adjunctions of endofunctors* in Haskell. 

Here's part of the definition taken from `Data.Functor.Adjunction`:

```hs
class (Functor f, Representable u) => Adjunction f u | f -> u, u -> f where
  unit   :: a -> u (f a)
  counit :: f (u a) -> a
```

Additional conditions, after the vertical bar, specify functional dependencies. For instance, `f -> u` means that `u` is determined by `f` (the relation between `f` and `u` is a function, here on type ctors). Conversely, `u -> f` means that, if we know `u`, then `f` is uniquely determined.

We'll see soon why, in Haskell, we can impose the condition that the right adjoint `u` be a representable functor.

### Adjunctions and Hom-Sets

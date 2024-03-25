# Adjunction

https://www.youtube.com/watch?v=TnV9SQGPcLY&list=PLMTONe7-tohmE02KadSPXvgpu26sn5j_n&index=30

There are various degrees of equality between two mathematical objects. Equivalence, isomorphisms, down to bare similarity, are ways of weakening the equality between objects, with adjunctions being another one.

## Isomorphisms and equality of categories

Since the notion of equality between two categories is meaningless when directly considered, we better approach it in terms of objects, arrows or functors and see where that gets us. After all, we have the notion of equality of objects and arrows even, in the form of isomorphisms.

An isomorphism is a relation between two arrows that in turn relate two objects, and it implies that these two arrows and the two objects appear identical from the point of view of other observers in the category. These other observes are also arrows in that category that go from other objects to the two isomorphic objects. They probe the two objects, but due to the isomorphism the two objects appear as one, they cannot distinguish between them. The two arrows that carry the isomorphism are also called isomorphic - they are isomorphic to each other - they are each other's inverse.

Two arrows, `f : a -> b` and `g : b -> a` are isomorphic if 
`f ∘ g = 1ᵇ` and `g ∘ f = 1ᵃ`. 
They are each other's inverses, `g = f⁻¹` and `f = g⁻¹`.

```
a <------------ b
│       g       │
│1ₐ             │ 1ᵇ
│       f       │
a ------------> b
```


## Isomorphic functors

To investigate equality of categories we should try and model it after the isomorphism of arrows, but replacing arrows with functors; and then see what can the two functors that relate two categories tell us about their equality.

When we talk about categories being isomorphic, we express this in terms of mappings between categories, aka functors. We'd like to be able to say that two categories C and D are isomorphic if there exists a functor `R : C -> D`, which is invertible, i.e. there exists another functor `L : D -> C`, which, when composed with `R`, is equal to the identity functor `I`. There are two possible compositions, `R ∘ L` and `L ∘ R`, and thus two possible identity functors, `Iᴄ` and `Iᴅ`.

Given two categories `C` and `D`, we can identify two functors between them
- `L : D -> C`
- `R : C -> D`

```
C <------------ D
│       L       │
│Iᴄ             │ Iᴅ
│       R       │
C ------------> D
```

This moves the investigation of the equality of categories to the investigation of equality of functors, however, the problem is that we don't know what it means for two functors to be inverses of each other; well, it means the same thing as the isomorphism of arrows - we have decided that two arrows are isomorphic if certain conditions hold, so we impose those same conditions on functors:
- `L ∘ R = Iᴄ`
- `R ∘ L = Iᴅ`

  Bartosz says that this is "good enough", that now we indeed have an isomorphism between categories, but that now we have replaced the problem of equality of categories with the problem of equality of functors.

  (A.N.) I don't see how this is different from the equality of arrows and the definition of isomorphism, where we have not considered anything beyond the two conditions: two arrows, `f : a -> b` and `g : b -> a`, are isomorphic if `f ∘ g = 1ᵇ` and `g ∘ f = 1ᵃ`. Bam! But Bartosz is now concerned with the equality of functors… I guess that has to do with how the other observers in the category view such isomorhic functors. He continues, that we still need to deal with the notion of equality between two functors.

But here's the tricky part - what does it mean for two functors to be equal? What do we mean by the equality `R ∘ L = Iᴅ`, or this one `L ∘ R = Iᴄ`?


The [blah blah] part:
  It would be reasonable to define functor equality in terms of equality of objects. Two functors, when acting on equal objects, should produce equal objects. But we don't, in general, have the notion of object equality in an arbitrary category. It's just not part of the definition. (Going deeper into this rabbit hole of "what equality really is" we'd end up in Homotopy Type Theory).

  You might argue that functors are indeed morphisms in the category of categories, so they should be equality-comparable. Yes, as long as we are talking about small categories, where objects form a set, we can indeed use the equality of elements of a set to equality-compare objects.

  But, remember, `Cat` is really a 2-category. Hom-sets in a 2-category have additional structure - there are 2-morphisms acting between 1-morphisms. In `Cat`, 1-morphisms are functors, and 2-morphisms are NTs. So it's more natural to consider *natural isomorphisms as substitutes for equality when talking about functors*.

  So, instead of isomorphism of categories, it makes sense to consider a more general notion of equivalence. Two categories `C` and `D` are equivalent if we can find two functors going back and forth between them, whose composition (either way) is *naturally isomorphic to the identity functor*.

  In other words, there is a two-way NT between the composition `R ∘ L` and the identity functor `Iᴅ`, and another between `L ∘ R` and identity functor `Iᴄ`.



[blah blah] and so in our case it would be better to replace the two equalities, `L ∘ R = Iᴄ` and `R ∘ L = Iᴅ`, with *natural isomorphisms*:
- `L ∘ R ≃ Iᴄ`          (L ∘ R is naturally isomorphic to Iᴄ)
- `R ∘ L ≃ Iᴅ`          (R ∘ L is naturally isomorphic to Iᴅ)

This is called **the equalence of categories**. Two categories are equivalent if this holds: `L ∘ R ≃ Iᴄ` and `R ∘ L ≃ Iᴅ`. And the two functors are inverses of each other up to a natural isomorphism.


## Adjunctions

Adjunction is even weaker than equivalence because it doesn't require that the composition of two functors be isomorphic to the identity functor. Instead, it stipulates the existence of a one way NT from `Iᴅ` to `R ∘ L`, and another from `L ∘ R` to `Iᴄ`.

Adjunctions arise by weakening the natural isomorphism by splitting it into its two constituent halves.

To summarize what we had so far: 
we first translated the notion of isomorphism of arrows to isomorphism of functors:
- `L ∘ R = Iᴄ`
- `R ∘ L = Iᴅ`

Then we weakened it to get to the equalence of categories related by the two functors that are each other's inverses *up to a natural isomorphism*:
- `R ∘ L ≃ Iᴅ`
- `L ∘ R ≃ Iᴄ`

And now we are splitting the natural isomorphism into its two constituent halves:

```hs
-- the first half:
      R ∘ L ≃ Iᴅ
Iᴅ -> R ∘ L

-- the second half
L ∘ R ≃ Iᴄ
L ∘ R -> Iᴄ
```

By splitting the natural isomorphism into its two constituent halves we have obtained the two natural transformations:
- `η : Iᴅ -> R ∘ L`
- `ϵ : L ∘ R -> Iᴄ`

>`η` is called the unit, and `ε` the counit of the adjunction.

Notice the asymmetry between these two definitions. 
In general, we don't have the two remaining mappings
- `R ∘ L -> Iᴅ` is not necessarily
- `Iᴄ -> L ∘ R` is not necessarily

Because of this asymmetry, 
The functor `L` is the *left adjoint* to the functor `R`, while 
the functor `R` is the *right adjoint* to `L` 
(which only makes sense only if you draw the diagram a particular way)

>The compact notation for the adjunction is `L ⊣ R`.


```
        L
C <------------ D
│               │
│Iᴄ             │ Iᴅ
│               │
C ------------> D
        R

L : D -> C       Iᴄ : C -> C       L ∘ R : C -> C
R : C -> D       Iᴅ : D -> D       R ∘ L : D -> D
```

The two NTs are

- `η : Iᴅ -> R ∘ L`
  `η` or *unit* (viz. monad), aka `return` in Haskell

- `ϵ : L ∘ R -> Iᴄ`
  `ϵ` or *counit* (viz. comonad), aka `extract` in Haskell


"A monad is a monoid in the category of endofunctors", and `R ∘ L` is an endofunctor on category `C`, as is the identity functor `Iᴄ`.

### Unit

The unit is a natural transformation, and thus a family of morphisms. Given an object `d ∈ 𝔻`, the component of `η`  is a morphism between `I d`, which is equal to `d`, and `(R ∘ L) d` or `R (L d)`.

```hs
ηᵈ :: d -> (R ∘ L) d
```

Notice that the composition `R ∘ L` is an endofunctor in `D`. This equation tells us that we can pick any object `d` in `D` as our starting point, and use the round trip functor `R ∘ L` to pick our target object `D (L d)`. Then we shoot an arrow - the morphism `ηᵈ` - to our target.

```
ℂ                 𝔻

            ● d
          ⟋ │
     L  ⟋   │
      ⟋     │
    ⟋       │
  ↙         │
● L d       │ η : Iᴅ -> R ∘ L
  ⟍         │
    ⟍       │
      ⟍     │
     R  ⟍   │
          ↘ ↓
            ● R (L d) = (R ∘ L) d


    L : D -> C
    R : C -> D
R ∘ L : D -> D
   Iᴅ : D -> D
    η : Iᴅ -> R ∘ L
```

`d` is just an arbitrary object in category `D`, so for every object `d ∈ D`, there will be an arrow going into `R (L d)` - a component of NT `η`.

This equation tells us that we can pick any object `d` in `D` as our starting point and use the round trip functor `R ∘ L` to pick target object `D (L d)`. Then we shoot an arrow - the morphism `ηᵈ` - to our target.




https://bartoszmilewski.com/2016/04/18/adjunctions/



## Adjunctions in Haskell

https://hackage.haskell.org/package/adjunctions-4.4.2/docs/Data-Functor-Adjunction.html

```hs
-- | f is a free functor (L) on cat C, u is an underlying functor (R) on cat D
class (Functor f, Representable u) => Adjunction f u | f -> u, u -> f where
  -- η :: Iᴅ -> R ∘ L
  unit :: c -> u (f c)
  -- ϵ :: L ∘ R -> Iᴄ
  counit :: f (u d) -> d


-- i.e.
class (Functor f, Representable u) => Adjunction f u | f -> u, u -> f where
  unit :: a -> u (f a)
  unit = leftAdjunct id

  counit :: f (u a) -> a
  counit = rightAdjunct id

  leftAdjunct :: (f a -> b) -> a -> u b
  leftAdjunct f  = fmap f . unit

  rightAdjunct :: (a -> u b) -> f a -> b
  rightAdjunct f = counit . fmap f

  {-# MINIMAL (unit, counit) | (leftAdjunct, rightAdjunct) #-}
```

An adjunction between Hask and Hask.

Minimal definition: both `unit` and `counit`, or both `leftAdjunct` and `rightAdjunct`, subject to the constraints imposed by the default definitions that the following laws should hold:
- unit = leftAdjunct id
- counit = rightAdjunct id
- leftAdjunct f = fmap f . unit
- rightAdjunct f = counit . fmap f

Any implementation is required to ensure that `leftAdjunct` and `rightAdjunct` witness an isomorphism from `Nat (f a, b)` to `Nat (a, g b)`
- rightAdjunct unit = id
- leftAdjunct counit = id

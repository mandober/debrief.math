# Monad

https://bartoszmilewski.com/2016/12/27/monads-categorically/

Monad is an endofunctor equipped with two natural transformations.

The endofunctor is typically labelled with `T` (type ctor) and the two natural transformations are labelled with `η` (return) and `μ` (join).

Both `join` and `return` are polymorphic functions, so we can guess that they correspond to natural transformations.

> A monad is an endofunctor `T` equipped with two natural transformations `η` and `μ`.


`T` is an endofunctor, `T : 𝒞 -> 𝒞`. In Haskell, `T` is a type ctor, `T a`, that has a type variable `a` because it takes a type `a` to produce a `T a`. A value of type `T a` can be considered as a value in a context (e.g. `Maybe a`).

```hs
-- in general
data T a = ...

-- concrete example with T = Maybe
data Maybe a = Nothing | Just a

-- concrete example with T = List
data List a = Nil | Cons a (List a)
```

eta, `η : a -> T a`, corresponds to Haskell's `return :: a -> t a` function that takes some value of type `a` and places in it a context `t`, producing a value `t a`.

```hs
-- in general
return :: a -> T a

-- concrete example with T = Maybe
return :: a -> Maybe a
return x = Just x

-- concrete example with T = List = []
return :: a -> List a
return x = Cons x Nil -- [x]
```

mu, `μ : T (T a)` corresponds to Haskell's `join :: t (t a) -> t a` function that can flatten (literalize) a nested structure/context of `T`'s (e.g. list of lists, stream of streams, set of sets, etc.).

```hs
-- in general
join :: T (T a) -> T a

-- concrete example with T = Maybe
join :: Maybe (Maybe a) -> Maybe a
join Nothing = Nothing
join (Just m) = m

-- concrete example with T = List = []
-- join flattens a list of lists
join :: [[a]] -> [a]
join [] = []
join (xs:xss) = xs <> join xss
```


```
            η
t a <-------------- a
  |                 |
  |                 |
η |                 | η
  |                 |
  ↓                 ↓
t (t a) -----------> t a
            μ
```


μ is a natural transformation from the square of the functor `T²` back to `T`. The square is simply the functor composed with itself, `T ∘ T` (we can only do this kind of squaring for endofunctors).

`μ :: T² -> T`

The component of the natural transformation `μ`, at an object `a`, is the morphism (which, in 𝗛𝗮𝘀𝗸, translates directly to the definition of `join`):

`μₐ :: T (T a) -> T a`

η is a natural transformation between the identity functor `I` and `T`:

`η :: I -> T`

Considering that the action of `I` on an object `a` is just `a`, the component of the natural transformation `η`, at an object `a`, is the morphism (which, in 𝗛𝗮𝘀𝗸, translates directly to the definition of `return`):

`ηₐ :: a -> T a`

---

These natural transformations must satisfy some additional laws. One way of looking at it is that these laws let us define a *Kleisli category* for the endofunctor `T`.

A *Kleisli arrow* between `a` and `b` is defined as the morphism `a -> T b`. The composition of two such arrows (denoted with `∘ͭ` or `∘ₜ`, or `∘ᵗ`) can be implemented using `μ`:

```hs
g ∘ͭ f = μᶜ   ∘ (T g)       ∘ f       -- in CT
g . f = join . (return g) . f       -- in Haskell

-- where
f :: a -> T b
g :: b -> T c

(>=>) :: (a -> m b) -> (b -> m c) -> (a -> m c)
f >=> g = join . fmap g . f
-- i.e.
(f >=> g) a = join (fmap g (f a))
```

Here `T`, being a functor, can be applied to the morphism `g`. It might be easier to recognize this formula in Haskell notation:

```hs
(f >=> g) a = join (fmap g (f a))
```

In terms of the algebraic interpretation, we are just composing two successive substitutions.


For Kleisli arrows to form a category we want their composition to be associative, and `ηₐ` to be the identity Kleisli arrow at `a`.

This requirement can be translated to monadic laws for μ and η. But there is another way of deriving these laws that makes them look more like monoid laws. In fact, *μ is often called multiplication and η unit*.

Roughly speaking, the associativity law states that the two ways of reducing the cube `T³` down to `T` must give the same result.


Two (left and right) unit laws state that when `η` is applied to `T` and then reduced by `μ`, we get back `T`:

`μ (η T) = T`

```hs
join (return (T a)) = T a

join . return T = T
```

This is the *composition of natural transformations and functors*, the so-called **horizontal composition**.

For instance, `T³` can be seen as a composition, `T³ = T ∘ T²`. We can apply to it the horizontal composition of two natural transformations    
`Iᴛ ∘ μ`    
and get `T ∘ T`, which can be further reduced to `T` by applying `μ`.

`Iᴛ : T -> T` is the identity natural transformation from `T` to `T`.

You will often see the notation for this type of horizontal composition    
`Iᴛ ∘ μ`     shortened to     `T ∘ μ`   
The shortened is unambiguous because it makes no sense to compose a functor with a natural transformation, therefore `T` must mean `Iᴛ` in this context.

* We can also draw the diagram in the (endo-) functor category [C, C]:

```
T³
|
| T ∘ μ
|
↓       μ
T² ----------> T
```

* Alternatively, we can treat `T³` as the composition of `T² ∘ T` and apply 
`μ ∘ T` to it. The result is also `T ∘ T` which, again, can be reduced to `T` using `μ`. We require that the two paths produce the same result.


```
        μ ∘ T
T³ ---------------> T²
  |                 |
  |                 |
  |T ∘ μ            | μ
  |                 |
  ↓                 ↓
T² ----------------> T
          μ
```

* Similarly, we can apply the horizontal composition `η ∘ T` to the composition of the identity functor `I` after `T` to obtain `I ∘ T = T²`, which can then be reduced using `μ`. The result should be the same as if we applied the identity natural transformation directly to `T`. And, by analogy, the same should be true for `T ∘ η`. The laws guarantee that the composition of Kleisli arrows indeed satisfies the laws of a category.

```
          μ ∘ T              T ∘ μ
I ∘ T --------------> T² <-------------- T ∘ I
      .               |              .
          .           | μ        .
               .      |      .
                   ↘  ↓  ↙
                      T
```

The similarities between a *monad* and a *monoid* are striking: we have multiplication `μ`, unit `η`, associativity, and unit laws.

However, this definition of a monoid is too narrow to describe a monad as a monoid - for that we must generalize the notion of a monoid.


---

(cntd. in *Monoidal Categories*)

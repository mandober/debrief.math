# Representable functors

(cont. from hom-functors)

We've seen that, for every choice of an object `a` in C, we get a functor from C to Set. This kind of structure-preserving mapping to Set is often called a **representation**. We are representing objects and morphisms of C as sets and functions in Set.

The functor `C(a, -)` itself is sometimes called representable. More generally, any functor that is *naturally isomorphic* to the *hom-functor*, for some choice of `a`, is called **representable**. Such functor must necessarily be `Set`-valued (its codomain is `Set`), since `C(a, -)` is.

We often think of isomorphic sets as being identical. More generally, we think of *isomorphic objects* in a category as being identical. That's because objects have no structure other than their relation to other objects (and themselves) through morphisms. For instance, we've previously talked about the category of monoids, `Mon`, that was initially modeled with sets. But we were careful to pick as morphisms only those functions that preserved the monoidal structure of those sets. If two objects in `Mon` are isomorphic, meaning there is an invertible morphism between them, they have exactly the same structure. If we peek at the sets and functions that they were based upon, we'd see that the unit element of one monoid was mapped to the unit element of another, and that a product of two elements was mapped to the product of their mappings. The same reasoning can be applied to functors.

>Functors between two categories form a category in which morphisms are natural transformations. Two functors are isomorphic, and thus can be thought of as identical, if there is an *invertible natural transformation* between them.


Let's analyze the definition of the **representable functor** from this perspective. For `F` to be a representable functor we suppose the existence of
- an object `a` in `C`
- a natural transformation `α : C(a, -) -> F`
- a natural transformation `β : F -> C(a, -)` in opposite direction, `β = α⁻¹`
- the *identity natural transformation*, `ι`, as their composition, 
  `α ∘ β = ιᴺᵀ = β ∘ a`

Identity natural transformation, `ι : F => F`, for any functor F.

## alpha

* Natural transformation `α`

    α : C(a, -) -> F

* A component of a NT `α` at some object `x` is a function in Set:

    αˣ : C(a, x) -> F x

* The *naturality condition* for this transformation tells us that, for any morphism `f : x -> y`, the following diagram commutes, i.e.

    F f ∘ αˣ = αʸ ∘ C(a, f)


```
      C(a, x)           C(a, y)
x        o ──────────────→ o
│        │      C(a,f)     │
│        │        ║        │
│f       │        ║        │
│        │αx      ║α       │αʸ
│        │        ↓        │
↓        ↓       F f       ↓
y        o ──────────────→ o
         F x             F y
```



In Haskell, we can replace natural transformations with polymorphic functions explicitly denoting them with the optional 'forall' quantifier:

```hs
-- α : C(a, -) -> F
alpha :: forall x. Functor f => (a -> x) -> f x
```

The *naturality condition* is automatically satisfied due to parametricity (it is one of the "theorems for free").

    fmap f . alpha = alpha . fmap f

The left fmap is defined by the functor `F`, and the right fmap by the Reader functor.

Since fmap for the Reader is just a function (pre)composition, we can be more explicit: acting on `h`, an element of `C(a, x)`, the naturality condition is:

    fmap f (alpha h) = alpha (f . h)

```hs
     fmap f . alpha = alpha . fmap f
(fmap f . alpha)(h) = (alpha . fmap f)(h)
   fmap f (alpha h) = alpha (fmap f h)
   fmap f (alpha h) = alpha (f . h)
(fmap f . alpha)(h) = (alpha . (f .))(h)
     fmap f . alpha = alpha . (f .)
```

## beta

The other NT, `β`, goes the opposite way:

    β : F -> C(a, -)


```hs
beta :: forall x. Functor f => f x -> (a -> x)
```

`β` must respect naturality conditions, and it must be the inverse of `α`:

    α ∘ β = idᴺᵀ = β ∘ α


```
      C(a, x)           C(a, y)
x        o ──────────────→ o
│        ↑      C(a,f)     ↑
│        │        ↑        │
│f       │        ║        │
│        │βx      ║β       │βʸ
│        │        ║        │
↓        │       F f       │
y        o ──────────────→ o
         F x             F y
```

A component of `β` at some object `x` is a function in Set:

    βˣ : F x -> C(a, x)

The *naturality condition* for this transformation tells us that, for any morphism `f : x -> y`, the following holds:

    βʸ ∘ F f = C(a, f) ∘ βˣ


Yoneda's lemma states that a natural transformation from `C(a, -)` to any `Set`-valued functor always exists, as long as `F a` is non-empty, but not necessarily invertible.


```
      C(a, x)           C(a, y)
x        o ──────────────→ o
│        ↑      C(a,f)     ↑
│        │βx     ║ ↑β      │βʸ
│f       │       ║ ║       │
│        │       ║ ║       │
│        │αx    α↓ ║       │αʸ
↓        ↓       F f       ↓
y        o ──────────────→ o
         F x             F y
```


## Representable functors in Haskell

An example in Haskell with the list functor and `Int` as `a`.

Here's a natural transformation that does the job:

```hs
alpha :: forall x. (Int -> x) -> [x]
alpha h = map h [12]
```

We pick an arbitrary number and create a singleton list with it. We can then fmap the function `h` over this list and get a list of the type returned by `h`. (there are as many such transformations as there are list of integers).

The naturality condition is equivalent to the composability of map

```hs
map f (map h [12]) = map (f . h) [12]
```

But if we tried to find the inverse transformation, we would have to go from a list of arbitrary type `x` to a function returning `x`:

```hs
beta :: forall x. [x] -> (Int -> x)
```

You might think of retrieving an `x` from the list, e.g., using `head`, but that won't work for the empty list.

There is no choice for the type `a` (in place of Int) that would work here.
>This means the list functor is not representable.

## Representable class in Haskell

Haskell endo-functors are a little like containers, and in the same vein we can think of representable functors as containers for storing memoized results of function calls (members of hom-sets in Haskell are just functions).

The representing object, type `a` in `C(a, -)`, is thought of as a *key type*, which we use to access the tabulated values of a function. The transformation we called α is called `tabulate`, and its inverse, β, is called `index`.

Data.Functor.Representable
https://hackage.haskell.org/package/representable-functors-3.2.0.2/docs/src/Data-Functor-Representable.html

Representable endofunctors over the category Hask are isomorphic to the Reader monad and thus inherit a very large number of properties for free.

A Functor `f` is Representable if `tabulate` and `index` witness an isomorphism to `(->) x`. Laws:

    tabulate . index    = id
    index . tabulate    = id
    tabulate . return f = return f


The `Representable` class

```hs
class Representable f where
  type Key f :: Type
  tabulate :: (Key f -> x) -> f x
  index :: f x -> Key f -> x
```

Infinite lists, or streams, which cannot be empty, are representable.

Streams can used to memoize values of a function taking an Integer as an argument. To tabulate such a function, we create an infinite stream of values. We can access the memoized values using indexing.

```hs
-- | Streams (since they cannot be empty) are representable
data Stream a = Cons a (Stream a) deriving Functor

instance Representable Stream where
  -- | Integer is a suitable key type to index a stream
  type Key Stream = Integer

  -- | The key type is Integer which means the function is memoized with integers as input, that is, with all the integers, starting from 0.
  -- In fact, this should be Naturals, not Integers.
  tabulate :: (Integer -> x) -> Stream x
  tabulate f = Cons (f 0) (tabulate (f . succ))

  -- | Having a stream of memoized results is easy to index given an int.
  index :: Stream x -> Integer -> x
  index (Cons x xs) 0 = x
  index xs n = index xs (n - 1)
```

It is interesting that we can implement a single memoization scheme to cover a whole family of functions with arbitrary return types.


**Representability for contravariant functors** is similarly defined, except that we keep the second argument of `C(-, a)` fixed. Or, equivalently, we may consider functors from `Cᵒᵖ` to `Set`, because `Cᵒᵖ(a, -)` is equivalent to the `C(-, a)`.

## Logarithms

There is an interesting twist to representability. Since hom-sets can internally be treated as exponential objects, in cartesian closed categories, the hom-set `C(a, x)` is equivalent to the exponential object `xᵃ`, and for a representable functor `F` we can write `(-)ᵃ = F`. If we take a logarithm of both sides we get `a = log F`.

It turns out that
>functors based on product types are representable with sum types.

>However, sum-type functors are not in general representable
(e.g. list functor which has the empty list as a part of the sum type).


Finally, notice that a representable functor gives us two different implementations of the same thing: a function and a data structure. They have exactly the same content - the same values are retrieved using the same keys. That's the sense of "sameness" in CT. Two *naturally isomorphic functors* are identical as far as their contents are involved.

On the other hand, the two *representations* are often implemented differently and may have different performance characteristics. Memoization is used as a performance enhancement and may lead to substantially reduced run times. Being able to generate different representations of the same underlying computation is very valuable in practice. So, surprisingly, even though it's not concerned with performance at all, category theory provides ample opportunities to explore alternative implementations that have practical value.


## Refs

Bartosz video
https://www.youtube.com/watch?v=KaBz45nZEZw

Bartosz post
https://bartoszmilewski.com/2015/07/29/representable-functors/

The Catsters video about representable functors
https://www.youtube.com/watch?v=4QgjKUzyrhM

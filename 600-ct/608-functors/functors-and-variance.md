# Functors and varience

## Varience

Variance comes in several modes
- covarience
- contravarience
- invariance
- nonvariance

Varience is a relation between the type params of one type ctor and another type ctor. Covariant types "go with the flow", contravariant types "go against the flow". In CT variance is mostly related to functors, which may be covariant and contravariant. In Haskell, apart from Functors, variance is related to type ctors which come in covariant, contravariant, but also in invariant forms.

## Covariant and contravariant functors

Variance of functors has to do with the relation of unlifted and lifted. Namely, when they both go in the same direction, then the functor is covariant and we use `fmap` to lift the function into structure. When they go in oppositre direction, the functor is contravariant and we use `contramap` to lift the function into structure.

Covariant functors extends to bifunctors which have two fields that can be mapped covariantly. We use the `bimap` method to map both. These are the types like pair, Either.

Profunctors also have two fields that can be mapoped but one is mapped contravariantly and the other covariantly. Fucntion type is the only type that is a profunctor, becase the only possible contravariant position is with a function's input type. A function's return type is in covariant position. So to map both we use the Profunctor's `dimap` method.

These functors are covered by the classes `Functor`, `Contravariant`, `Bifunctor`, `Profunctor`, but what about Applicatives and Monads - are they also affected by varience? In fact, they are.

The `Applicative` class classifies covariant applicative functors, and offers the `<*>` method to map such types. The `Alternative` class also classifies covariant applicative functors.

The contravariant applicative functors are classified by the `Divisible` class, which has the method `divide` to map them.

```hs
class Contravariant f => Divisible f where
  -- | If one can handle split `a` into `(b, c)`, as well as handle `b`s and `c`s, then one can handle `a`s
  divide  :: (a -> (b, c)) -> f b -> f c -> f a

  -- | Conquer acts as an identity for combining Divisible functors.
  conquer :: f a
```


## Covariant functors

A covariant functor lifts an arrow `a -> b` into an arrow `f a -> f b`, i.e. the direction of the unlifted arrow `a -> b` is the same as the direction of the lifted arrow, `f a -> f b`.

```
a        Fᵃ        F a
● ┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄→ ●
│                    │
│f                   │ Fᶠ
↓                    ↓
● ┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄→ ●
b        Fᵇ        F b
```

## Contravariant functors

A contravariant functor lifts an arrow `a -> b` into an arrow `f b -> f a`, i.e. the direction of the lifted arrow `f b -> f a` is reversed compared to the unlifted arrow `a -> b`. Equivalently, we may say that a contravariant functor lifts an arrow `b -> a` into an arrow `f a -> f b`. This two ways of describing a contravariant functor match the two ways we may denote them: either we explicitly designate a functor as being contravariant and denote it F : C -> D, or we leaThe Functor typeclass provides one basic way to lift, but lifting doesn't stop there; several other typeclasses provide lifting operations. Applicative, Monad, and Bifunctor can be viewed as fmap with a little something extra.

The Functor typeclass provides one basic way to lift, but lifting doesn't stop there; several other typeclasses provide lifting operations. Applicative, Monad, and Bifunctor can be viewed as fmap with a little something extra. These functors all have lawful implementations of fmap, but not all functors have lawful implementations of the lifting operations from these other classes. There are more functors than there are applicatives; more applicatives than there are monads.

## Refs

https://www.euclideanspace.com/maths/discrete/category/higher/yoneda/index.htm

https://hackage.haskell.org/package/contravariant-1.5.5/docs/Data-Functor-Contravariant-Divisible.html

https://blog.ploeh.dk/2021/09/02/contravariant-functors/

https://stackoverflow.com/questions/38034077/what-is-a-contravariant-functor

https://www.schoolofhaskell.com/user/liyang/profunctors

https://blog.ocharles.org.uk/blog/guest-posts/2013-12-21-24-days-of-hackage-contravariant.html

https://stackoverflow.com/questions/30641500/are-there-contravariant-monads

https://stackoverflow.com/questions/7220436/good-examples-of-not-a-functor-functor-applicative-monad

https://stackoverflow.com/questions/32687682/typeclass-for-what-seems-to-be-a-contravariant-functor-implementing-function-i

https://stackoverflow.com/questions/27771474/what-is-exactly-an-indexed-functor-in-haskell-and-what-are-its-usages

https://typeclasses.com/contravariance
https://typeclasses.com/profunctors

# Identity functor

An **identity functor** is an *endofunctor*, mapping a category back to itself.

Each category has its own identity functor (?).

Identity functor is denoted by `I`, possibly subscribed with the name of the category, `Iᶜ`, i.e. `Iᶜ : C -> C`.

Identity functor maps each object `x` back to the same object `x`, and each arrow `f` back to the same arrow `f`. It maps identity arrows to the same identity arrows. It maps composition of arrows back to that same composition of arrows. In fewer words: identity fucntor doesn't do shit.

Identity functor maps an object `x` to `I x`, which is just `x`:

    I(x) = I x = x

Identity functor maps an arrow `f : x -> y` to `I f`, which is just `f`:

    I(f) = I f = f

>This means that the *identity functor* behaves exactly the same as the *identity morphisms*.

For all objects `x` in a category `C`, **identity morphism** `1` maps an object `x` back to itself, `1 : x -> x`. The identity arrow of the object `a` is denotyed by `1ᵃ`. Interpreted as an action, identity arrow takes an object `x` and returns that same object `x`, `1(x) = x`. Identities morphisms map object to themselves.

**Identity functor** on a category `C` is denoted by `Iᶜ : C -> C`.

Identity functor is a specific endofunctor on `C`. 

The identity functor `Iᶜ` *maps objects* back top the same objects: for all objects `x` in `C`, `Iᶜ` maps `x` to an object `I x`, which is just `x`, i.e. as an action: `Iᶜ(x) = I x = x`.
>As an object mapper, it behaves the same as the identity morphism: it takes an object and maps it back to the same object.

The identity functor also *maps arrows*: for all arrows `f` in `C`, `Iᶜ` maps `f` to an arrow `I f`, which is just `f`, i.e. it maps each arrow in `C` back to itself. As an action: `Iᶜ(f) = I f = f`, where `f : x -> y` is an arrow in `C`.



## In Haskell

https://hackage.haskell.org/package/base-4.19.0.0/docs/Data-Functor-Identity.html


```hs
newtype Identity a = Identity { runIdentity :: a }

instance Functor Identity where
  fmap :: (a -> b) -> Identity a -> Identity b
  fmap f (Identity a) = Identity (f a)
```

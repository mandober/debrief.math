---
created: 2021-08-28T11:24:23 (UTC +02:00)
tags: []
source: https://programmable.computer/posts/church_encoding.html
author: 
---

# Scrap Your Constructors: Church Encoding Algebraic Types - Programmable Computer

> ## Excerpt
> Travis Whitaker - November  7, 2016

---
Travis Whitaker - November 7, 2016

Algebraic data types are one of Haskell’s best known and most useful features. ADTs serve as a powerful data modeling tool, and along with pattern matching and totality checking, they enable concise, readable, and checkable code. However, there’s another way to represent data in Haskell (or indeed anything else that looks a bit like the lambda calculus) that is equally powerful and in some cases preferable to ADTs.

## Church Encoded Booleans in the Lambda Calculus

Church encoding uses functions (and only functions) to represent data. Since functions are all we’ll need to represent data, we’ll use the untyped lambda calculus for our first example. Before we jump in, a brief note on notation. Informally, imagine writing Haskell with nothing but lambdas… Now you’re writing in the lambda calculus, although we’ll use the conventional mathematical notation in our examples. The lambda calculus syntax for what one would write as `\f x y -> f y x` in Haskell is . Those dots are merely delimiters, not function composition. We’ll allow top-level assignment for convenience, `flip = \f x y -> f y x` is morally equivalent to . Most presentations of the lambda calculus only allow for functions of a single argument. Just think of this as making currying explicit.

Informally, Church encoding works by representing a value with a function that can handle any possible case that could occur for a value of that type. In the simple untyped lambda calculus, it doesn’t make much any sense to speak of a value’s “type,” but the informal metaphor is useful. These functions work a bit like a weird `case` expression; a value is just a function that takes as arguments the right-hand-sides of the patterns in the case, and the function simply “chooses” a pattern by reducing to one of its arguments.

There are two choices for Boolean values, so our Church encoded Booleans will be functions of two arguments. Let’s (arbitrarily, but conventionally) use the first argument to represent the true case and the second argument to represent the false case:

With these definitions of true and false, it’s easy to implement a combinator for if-then-else:

Here is our discriminating Boolean value, is the expression reduces to if , and is the expression reduces to if . Working with Church encoded Booleans, conditionals are just function application. This isn’t terribly useful on its own; let’s implement some more more Boolean operators as combinators:

To keep things straight, think of the first and second arguments to and in these definitions as pattern matching on true and false respectively. In order for to reduce to , must be equal to and must be equal to . The expression for the first argument of is the case for , so all we have to do is check that is also equal to . To do that, we simply apply . Reason through yourself to check that it indeed implements logical conjunction over our definitions of and . Notice that is equal to from the notation example.

Since a Church encoded Boolean is a function of two arguments, , , as we’ve written them above are meant to be partially applied. Since always returns its first argument and always returns its second argument, we can write these more succinctly as:

Let’s check these definitions with GHCi. If you run `ghci -XNoImplicitPrelude` we can get away with using the same names (except for ).

```
import Prelude

true = \t f -> t
false = \t f -> f

toBool b = b True False
```

Since there’s no meaningful `Show` instance for functions, we’ll use `toBool` to check our answers[1][1].

```
iff = \b t f -> b t f

-- Equivalently:
iff = id

and = \x y t f -> x (y t f) f

or = \x y t f -> x t (y t f)

not = \x t f -> x f t

-- Equivalently:
not = flip
```

`true` and `false` should behave exactly as one would expect:

```
>>> toBool (true `and` false)
False
>>> toBool (true `and` true)
True
>>> toBool (not (false `or` true))
False
```

Note that whether or not a Church encoded Boolean represents true or false is simply whether or not the representative function returns its first or second argument. Compare the first definitions of `and` and `or` above with these definitions using plain Haskell `Bool`s and `case` expressions:

```
and x y = case x of True  -> (case y of True  -> True
                                        False -> False)
                    False -> False

or x y = case x of True  -> True
                   False -> (case y of True  -> True
                                       False -> False)
```

## Church Encoded Maybe

```
data Maybe a = Nothing
             | Just a
```

A `Maybe` value has two “choices,” just like Booleans, so our Church encoded maybe values will also be functions of two arguments:

works just like or in the Boolean example, but assumes that the term passed in for the case is a function. This is analogous to pattern matching on `Just` bringing a variable into scope. Let’s implement some functions from the `Data.Maybe` module:

(pronounced “bottom”) is morally equivalent to `undefined` in Haskell, representing a divergent computation. Notice that is simply function application, just like from the Boolean example. Both of these operations are nothing more than total pattern matches on their respective types. Let’s drop back into Haskell and implement these combinators. We’ll define a type for Church encoded maybes:

```
{-# LANGUAGE RankNTypes #-}

module ChurchMaybe where

newtype ChurchMaybe a =
    ChurchMaybe { runChurchMaybe :: forall r. r -> (a -> r) -> r }
```

The `forall` bit is important. We’re explicitly stating that our functions representing maybe values have to work for any possible result type `r`. When pattern matching on ADTs, the type being matched on has no bearing on the type of the right hand side of the `=` or `->`[2][2]. Equipped with `forall`, we can implement the simplified Boolean combinator definitions:

```
and :: (forall a. a -> a -> a)
    -> (forall a. a -> a -> a)
    -> (forall a. a -> a -> a)
and = \x y -> x y x

or :: (forall a. a -> a -> a)
   -> (forall a. a -> a -> a)
   -> (forall a. a -> a -> a)
or = \x y -> x x y
```

Without the explicit `forall`, GHC would try (and fail) to unify `a ~ a -> a -> a`. On with the maybe combinators:

```
nothing :: ChurchMaybe a
nothing = ChurchMaybe $ \n _ -> n

just :: a -> ChurchMaybe a
just x = ChurchMaybe $ \_ j -> j x

isNothing :: ChurchMaybe a -> Bool
isNothing (ChurchMaybe m) = m True (const False)

isJust :: ChurchMaybe a -> Bool
isJust (ChurchMaybe m) = m False (const True)

fromJust :: ChurchMaybe a -> a
fromJust (ChurchMaybe m) = m (error "fromJust") id

maybe :: b -> (a -> b) -> ChurchMaybe a -> b
maybe d f (ChurchMaybe m) = m d f
```

These functions should behave just like their `Data.Maybe` counterparts, without a single pattern match in sight! (well, except for `newtype` unwrapping, but that doesn’t count). Let’s move on to the `Maybe` class instances. We’ll define `Eq` first:

```
instance Eq a => Eq (ChurchMaybe a) where
    (ChurchMaybe x) == (ChurchMaybe y) =
        x (y True (const False)) (y False . (==))
```

Here there are four branches in our “pattern matches.” The first argument to `x` is the `nothing` case for the first `(==)` argument. In this case, if `y` is also `nothing` then `(==)` reduces to `True`, otherwise it reduces to `False`. The second argument to `x` is the `just` case for the first `(==)` argument. In this case, if `y` is `nothing` then `(==)` simply reduces to `False`. `y` in this context has the type `forall r a. Eq a => r -> (a -> r) -> r`, so `y False` has type `forall a. Eq a => (a -> Bool) -> Bool`. The second argument of `x` needs to have the type `forall a. Eq a => a -> Bool`, so we compose `(==) :: forall a. Eq a => a -> a -> Bool` with `y False`. The equivalent eta abstracted definition:

```
(ChurchMaybe x) == (ChurchMaybe y) = x (y True (\y' -> False))
                                       (\x' -> y False (\y' -> x' == y'))
```

The `Ord` instance has a similar structure. `Show` follows straightforwardly from the corresponding `Maybe` definition (we’ll omit the `Read` instance for now):

```
instance Ord a => Ord (ChurchMaybe a) where
    compare (ChurchMaybe x) (ChurchMaybe y) =
        x (y EQ (const LT)) (y GT . compare)

instance Show a => Ord (ChurchMaybe a) where
    show (ChurchMaybe m) = m "Nothing" (("Just " ++) . show)
```

`fmap` simply composes a new function with the `just` branch, `pure` simply selects the `just` case, and `(<*>)` has similar structure to `(==)` and `compare`:

```
instance Functor ChurchMaybe where
    fmap f (ChurchMaybe x) = ChurchMaybe $ \n j -> x n (j . f)

instance Applicative ChurchMaybe where
    pure = ChurchMaybe $ \_ j -> j x
    (ChurchMaybe f) <*> (ChurchMaybe x) = f nothing (x nothing . (just .))
```

`(>>=)` simply substitutes the `just` branch with a new function that must return a new `ChurchMaybe`:

```
instance Monad ChurchMaybe where
    pure = return
    (ChurchMaybe x) >>= f = x nothing f
```

`foldMap` from the `Foldable` class has a similar structure, instead substituting the `just` branch with a new function returning any monoid:

```
instance Foldable ChurchMaybe where
    foldMap f (ChurchMaybe x) = x mempty f
```

`traverse` from `Traversable` has the same structure, but also threads `ChurchMaybe` through an applicative functor:

```
instance Traversable ChurchMaybe where
    traverse f (ChurchMaybe x) = x (pure nothing) ((just <$>) . f)
```

Finally, there’s the `Monoid a => Monoid (Maybe a)` instance. This instance simply provides an “extra” `mempty` value to an existing `Monoid` instance, for example:

```
-- Data.Monoid provides (<>) = mappend
>>> (Just [1]) <> (Just [2])
Just [1, 2]
>>> (Just [1]) <> (Just [])
Just [1]
>>> (Just [1]) <> Nothing
Just [1]
>>> mempty :: Maybe [Int]
Nothing
```

Here’s the instance for `ChurchMaybe` implementing this behavior:

```
instance Monoid a => Monoid (ChurchMaybe a) where
    mempty = nothing
    mappend (ChurchMaybe x) (ChurchMaybe y) =
        x (y mempty just)
          (y <$> just <*> ((just .) . mappend))
```

If `x` is `nothing`, then `mappend` reduces to `mempty` if `y` is nothing, and wraps the underlying monoid in `just` if `y` is `just`. Look carefully at the second case. It’s defined applicatively, but which `Applicative` instance are we using? No peeking…

That’s right, it’s the instance for `((->) r)`. To see how this works, let’s completely eta abstract that expression:

```
(\x' -> y (just x') (\y' -> just (mappend x' y')))
```

Both arguments to `y` are functions of `x'`, so we can use the `(->)` instances to eliminate the outer lambda:

```
y <$> just <*> (\x' -> (\y' -> just (mappend x' y')))
```

Now we can eta reduce the second `y` argument, which has the type `forall a. Monoid a => a -> a -> ChurchMaybe a`. `mappend` has the type `forall a. Monoid a => a -> a -> a`, and in this branch of the enclosing definition we know we’ll be returning `just` something. Eliminating `y'` first:

```
y <$> just <*> (\x' -> just . mappend x')
```

`(just .)` has the type `(a -> b) -> a -> ChurchMaybe b`. If we let `b = a` and treat `mappend` as having the type `forall a. Monoid a => a -> (a -> a)`, then we can compose `(just .)` with `mappend`, yielding:

```
y <$> just <*> ((just .) . mappend)
```

In practice one might not go to such trouble to fully eta reduce an expression, but it’s a great way to practice reasoning about types and flex your lambda calculus muscles. If you just want the pointfree street cred, you can get that [automatically][3]. Now try working with Church encoded lists. You could start with this type, but there are actually other ways[3][4].

```
newtype ChurchList a = ChurchList {
    runChurchList :: forall r. r -> (a -> ChurchList a -> r) -> r
  }
```

Church encoded data is more than just a theoretical curiosity; there are situations in which Church encoded types are more convenient or even more performant than the equivalent ADT. Church encoded free monads are an example of the latter. If you’re unfamiliar with free monads and their applications I’d highly recommend [Gabriel Gonzalez’s introduction][5]. The type providing free monads is typically defined this way:

```
data Free f a = Pure a
              | Free (f (Free f a))

liftF :: Functor f => f a -> Free f a
liftF = Free . fmap pure
```

A `Functor` instance for this type must traverse the entire tree:

```
instance Functor f => Functor (Free f) where
    fmap f (Pure x) = Pure (f x)
    fmap f (Free f) = Free ((fmap f) <$> f)
```

And so must `(<*>)` and `(>>=)`:

```
instance Functor f => Applicative (Free f) where
    pure = Pure
    Pure f <*> Pure x = Pure (f x)
    Pure f <*> Free x = Free ((fmap f) <$> x)
    Free f <*> x      = Free ((<*> x) <$> f)

instance Functor f => Monad (Free f) where
    return = Pure
    Pure x >>= f = f x
    Free x >>= f = Free ((>>= f) <$> x)
```

This is especially troublesome for `(>>=)`, since it is typical for code using do notation to deeply left-associate the bind operator, which is . Suppose we have something like this:

```
data FExp a = GetSomething (Int -> a)
            | WithSomething Int (Int -> a)
            | DoSomething Int a
            deriving (Functor)

getSomething :: Free FExp Int
getSomething = liftF $ GetSomething id

withSomething :: Int -> Free FExp Int
withSomething = liftF . flip WithSomething id

doSomething :: Int -> Free FExp ()
doSomething = liftF . flip DoSomething ()

ohNo :: Free FExp ()
ohNo = do
    x <- getSomething
    y <- withSomething x
    z <- withSomething y
    doSomething z
```

Here the `withSomething x` binding must traverse `Free GetSomething (...)`, the `withSomething y` binding must traverse `Free GetSomething (\x -> Free WithSomething x (...))`, the `withSomething y` binding must traverse `Free GetSomething (\x -> Free WithSomething x (\y -> Free WithSomething y (...)))`… This can become problematic for large monadic “blocks.”

The `Control.Monad.Free.Church` module in Edward Kmett’s [`free`][6] provides an alternative Church encoded variant:

```
newtype F f a = F { runF :: forall r. (a -> r) -> (f r -> r) -> r }
```

This type lets us take advantage of `fmap` fusion:

```
fmap f . fmap g == fmap (f . g)
```

and the associativity of `(>>=)`:

```
(x >>= f) >>= g == x >>= (\x' -> f x' >>= g)
```

to ensure that transformations on `F` trees take place in a single pass. Edward Kmett’s _Free Monads for Less_ [part 1][7] and [part 2][8] go into formal detail. Bryan O’Sullivan’s [attoparsec][9] library also takes advantage of Church encoding with its core [`Parser`][10] type. Church encoded data plays nicely with continuation passing style and can be used in certain performance-critical situations to short-circuit explicit pattern matching.

[Module containing this post’s code.][11]

---

1.  With `-XFlexibleInstances` one could write an instance for `Show (a -> a -> a)`.[↩︎][12]
    
2.  [Ertugrul Söylemez][13] wrote a [good introduction][14] to the topic of higher-ranked polymorphism on Oliver Charles’ series [24 Days of GHC Extensions][15]. The respective [Haskell Wikibook page][16] also provides some motivating examples.[↩︎][17]
    
3.  I have since learned that I was mistaken in calling these “Church encoded lists.” This is actually [Morgensen-Scott encoding][18]. Kwang Yul Seo has a good exposition of [Scott encoding in Haskell][19]. A true Church encoded list is the list’s [foldr][20].[↩︎][21]
    

[1]: https://programmable.computer/posts/church_encoding.html#fn1
[2]: https://programmable.computer/posts/church_encoding.html#fn2
[3]: http://hackage.haskell.org/package/pointfree
[4]: https://programmable.computer/posts/church_encoding.html#fn3
[5]: http://www.haskellforall.com/2012/07/purify-code-using-free-monads.html
[6]: http://hackage.haskell.org/package/free
[7]: http://comonad.com/reader/2011/free-monads-for-less/
[8]: http://comonad.com/reader/2011/free-monads-for-less-2/
[9]: http://hackage.haskell.org/package/attoparsec
[10]: http://hackage.haskell.org/package/attoparsec-0.13.1.0/docs/Data-Attoparsec-Internal-Types.html#t:Parser
[11]: https://programmable.computer/code/Church.hs
[12]: https://programmable.computer/posts/church_encoding.html#fnref1
[13]: https://github.com/ertes
[14]: https://ocharles.org.uk/blog/guest-posts/2014-12-18-rank-n-types.html
[15]: https://ocharles.org.uk/blog/guest-posts/2014-12-18-rank-n-types.html
[16]: https://en.wikibooks.org/wiki/Haskell/Polymorphism#Higher_rank_types
[17]: https://programmable.computer/posts/church_encoding.html#fnref2
[18]: https://en.wikipedia.org/wiki/Mogensen%E2%80%93Scott_encoding
[19]: https://kseo.github.io/posts/2016-12-13-scott-encoding.html
[20]: https://en.wikipedia.org/wiki/Church_encoding#Represent_the_list_using_right_fold
[21]: https://programmable.computer/posts/church_encoding.html#fnref3

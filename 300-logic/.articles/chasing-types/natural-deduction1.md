
Besides observation that combinators have a definition that is forced by their type signature, another significant observation, relevant to their translation to logic under the Curry-Howard correspondence, is that *the function type constructor is right-associative*, meaning the following type signatures are equivalent:

```hs
f :: (a -> b) -> (a -> ((b -> r) -> r)) -> ((b -> r) -> r)
-- is the same as
f :: (a -> b) -> (a -> ( b -> r) -> r)  ->  (b -> r) -> r
```

Haskell has the equivalence between the uncurryied and curryied functions (as long as the types correspond to a function's arguments). In translation to logic, we can represent a pair as conjunction, or convert it into an implication.

```hs
fst   :: (a, b) -> a    -- (a ∧ b) -> a
const :: a -> b -> a    -- a -> b -> a
fst = uncurry const
const = curry fst

state :: s -> (a, s)    -- s -> (a ∧ s)
```

However, when a function returns a pair, it must be translated as logical conjunction.

Another equivalence that may come in handy is that an argument to a function may be bound by a corresponding parameter on the left-hand side of an equation, or it may be bound by a lambda on its right-hand side.

```hs
g :: a -> (a -> b) -> b
g x f = f x
-- is the same as
h :: a -> (a -> b) -> b
h x = \f -> x
```

This will be particularly important with types wrapped in a newtype because then the data constructor will be in a way, preventing the binding of an argument on the LHS.

## Type triplets

A theme that frequently reoccurs comes in the form of types and their newtype wrappings. Sometimes wrapping a type in a newtype is just a more convenient way to handle that type, but sometimes it's the only way to partially apply its type ctor in a different way.

Considering, for example, a type of functions like `a -> b` (that doesn't really exists - it is more of a type scheme), it is easy to fix the input type, `a` and leave the output type `b` to vary. In fact, the datatype of functions could be imagined as if defined as `data (->) a b`, which shows that the function type ctor, `->`, can only be partially applied as `((->) a)`, thereby fixing the input while letting the output vary. This is exactly the form that has FAM instances.

However, there is no way to partially apply the output type `b` and let the input type vary. The definition just doesn't allow it; we'd need to redefine it by declaring (or applying) the type parameters in the different order. And that's easily achieved with a newtype. By convention, the fixed type is named `r`, while the type that varies is labelled with `a`.

```hs
data (->) a b = a -> b
-- to flip the type params either:
-- flip their declaration occurrence
newtype Func b a = Func (a -> b)
-- or their application occurrence
newtype Func a b = Func (b -> a)

-- by convention fixed type is named `r` and it's declared first
newtype Reader r a = Reader (a -> r)
-- that is:
newtype Reader r a = Reader {runReader :: a -> r }

-- as a monad transformer
newtype ReaderT r m a = ReaderT {runReaderT :: a -> m r }
```

Another such triplet is the continuation type:

```hs
-- Continuation as function type
type Continuation :: (a -> r) -> r

-- Continuation function type wrapped in a newtype
newtype Cont r a = Cont ((a -> r) -> r)

-- Continuation monad transformer
newtype ContT r m a = ContT ((a -> m r) -> m r)
```


## Type groups

Writer - Writer's Monad instance - Writer's MonadWriter instance

```hs
newtype Writer w a = Writer { runWriter :: (a, w) }

instance (Monoid w) => Monad (Writer w) where
  return a = Writer (a, mempty)
  m >>= k = Writer $
    let (a, w)  = runWriter m
        (b, w') = runWriter (k a)
    in  (b, w `mappend` w')

instance (Monoid w) => MonadWriter w (Writer w) where
  tell w   = Writer ((), w)
  listen m = Writer $ let (a, w)      = runWriter m in ((a, w), w)
  pass m   = Writer $ let ((a, f), w) = runWriter m in (a, f w)
```


## Motivation



```hs
-- Applicative class, f :: * -> *
class Applicative f where
  (<*>) :: f (a -> b) -> f a -> f b

-- Applicative in terms of Cont newtype, f is Cont r
instance Applicative (Cont r) where
  (<*>) :: Cont r (a -> b)
        -> Cont r a
        -> Cont r b
  (<*>) h k = -- only 2 args can be bound on the LHS

-- but <*> as a standalone function in terms of ((a -> r) -> r)
(<*>) :: (((a -> b) -> r) -> r)     -- Cont r (a -> b)
      -> ((a -> r) -> r)            -- Cont r a
      -> ((b -> r) -> r)            -- Cont r b

-- after removing redundant parens
(<*>) :: (((a -> b) -> r) -> r)
      -> ((a -> r) -> r)
      -> (b -> r)
      -> r
(<*>) h k g = -- we see that 3 args can be bound on the LHS
```

And this was exactly the function (that I've renamed to `kmap` since `<*>` is a class-reserved method name) where I've got stuck with the implementation.


```hs
-- ContT as a monad transformer
newtype ContT r m a = ContT { runContT :: (a -> m r) -> m r }

-- Applicative instance for ContT
instance Applicative (ContT r m) where
  (<*>) :: ContT r m (a -> b) -> ContT r m a -> ContT r m b
  f <*> v = ContT $ \ c -> runContT f $ \ g -> runContT v (c . g)
```

This is the official implementation of Applicative for `ContT` monad transformer, but apart from the type parameter `m`, this is practically the same for the `Cont` type (that lacks the monadic parameter `m`).

```hs
-- defining Cont in terms of its monad transformer...
type Cont r a = ContT r Identity a

-- ...corresponds to defining Cont as a newtype
newtype Cont r a = Cont { runCont :: (a -> r) -> r }

-- Applicative instance for Cont
instance Applicative (Cont r) where
  (<*>) :: Cont r (a -> b) -> Cont r a -> Cont r b
  f <*> v = Cont $ \c -> runCont f $ \g -> runCont v (c . g)
```






Staring some more at `kmap` but failing to find a way forward, I've switched to staring at the solution (`<*>` above). It was particularly frustrating how they knew to introduce that lambda there but apply it way over there. And the other lambda as well. It was exactly these lambda introductions that reminded me of the inference rules in propositional logic, specifically implication introduction, so I've decided to Curry-Howard the shit out of this thing.


However, continuations are not made an instance of any class in this particular form because, not only is the newtype wrapper easier to handle but it's actually necessary in order to fix the `r` type while letting the `a` vary. That newtype could be declared as `newtype Cont r a = Cont ((a -> r) -> r)`, i.e. the declaration occurrence of type paramaters is switched in comparison to their application occurrence. However, this declaration cannot be found anywhere because, like many other types, `Cont` is defined in terms of the `ContT` monad transformer.


---

We're only interested in a small set of inference rules here: primarily conditional introduction and elimination

The rules of inference

Purity, polymorphism, and a very strong type system are necessary but not enough because not all functions have a corresponding logical derivation.

┌──┬──────────────────────┬────────────────────────┐
│1 │ ((a -> b) -> r) -> r │ proposition 1          │
│2 │ (a -> r) -> r        │ proposition 2          │
│3 │ b -> r               │ proposition 3          │
├──┼──────────────────────┼────────────────────────┤
│  │ r                    │ conclusion             │
╞══╪══════════════════════╪════════════════════════╡
│4 │ ┌ (a -> b)¹          │ assumption¹            │
│5 │ │ ┌ a²               │ assumption²            │
│6 │ │ │ b                │ MP 4,5                 │
│7 │ │ │ r                │ MP 3,6                 │
│8 │ │ a² -> r            │ →i 5-7                 │
│9 │ │ r                  │ MP 2,8                 │
│10│ (a -> b)¹ -> r       │ →i 4-9                 │
│11│ r                    │ MP 1,10                │
└──┴──────────────────────┴────────────────────────┘

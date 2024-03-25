# Lens

## Existential lens in Haskell

### Compound types

Compound types are made up of a number of fields, each field with a distinct type. Data structures are compound types, and although these two terms are often used interchangibly, the main interest with the former is on the internal structure, on the way the data is organized, and regards the efficiency of algorithms that operate on it in order to access and manipulate the data within.

A whole is composed from a number of parts. 
A compound type (or a data structure - we'll use these terms synonymously here) is built from a number of *fields*. 
Its (overall) type is composed from the individual types of its fields; each field has its own distinct type.

A data structure of type `τ` has `n` fields, with types `a₀`, `a₁`, …, `aₙ`. 
An instance of a data structure is a value made by aggregating the values of each constituent field. Similarly, a data structure's overall type is like an aggregation of individual types - the types of its fields, `a₀ ∘ a₁ ∘ … aₙ = τ`.

### Decomposing a data structure

It shouldn't be strange to assume that a compound value could be decomposed into its parts. If a data structure is a "whole", then its fields are the parts.

For example ,the canonical product type (which is a pair) `(a, b)` can be decomposed into the field `a` … but we can't really say "and the field `b`". To see why, suppose we focus instead on the second component - we can then say that the type `(a, b)` could be decomposed into the field `b`, called **focus**, plus something else. The "something else" part is called the **residue**, and it is more than just the field `a`.

In this case, the residue part, `(a, -)`, has a type that is easily determined: it is `(,) a`.

~~Note that the residue part, `(a, -)`, is reminiscent of the hom-set `C(a, -)` in a category C.~~

This is why we had to switch the focus to the second component of the pair - we cannot express the type of a pair when the first component has the focus. At least not directly - we'd have to define an alternative version of a pair type with the type params flipped, i.e. `(,) b a`.

```hs
-- official definition of Pair
data (a, b) = (a, b)
-- is desugared into
data (,) a b = (,) a b
-- i.e. `,` is the type/data ctor; parens are merely punctuation/delimiters

-- Pair as a custom data type
data Pair a b = Pair a b
-- Pair version with type params flipped as a new type
data Flipper b a = Flipper a b
-- Pair version with type params flipped as a newtype
newtype Flipper b a = Flipper (a, b)
-- Pair version with type params flipped as a type alias
type Flipper b a = (a, b)
```

### Focus and residue

A compound type represents a "whole" that can be decomposed into parts. Usually we are interested in a particular part (field) of a data structure, so we'd like to decompose it into two parts: one that we are interested in, called the *focus*, and the "leftover" part, called the  *residue*.

If we have a data structure of type `s`, we can *decompose* it into the focus, of type `a`, and the residue, of type `r`.

    s -> (r, a)

We can then take the focus `a` and the residue `r` and *recompose* them back into the data structure `s`.

    (r, a) -> s


```hs
decompose :: s -> (a, r)
╭───────╮     ╭───────╮     ╭───────╮
│       │     │ ╭───╮ │     │       │
│       │     │ │ a │ │     │       │
│   s   │ --> │ ╰───╯ │ --> │   s   │
│       │     │   r   │     │       │
╰───────╯     ╰───────╯     ╰───────╯
              recompose :: (a, r) -> s
```


### Getter

The decomposition of a data structure, `s`, into focus `a` and residue `r`, gives rise to the `get` function that just retrieves the focus, `a`, and thus behaves similarly to *getters* in OOP.

    get : s -> a


```hs
╭───────╮
│       │     ╭───╮
│   s   │ --> │ a │
│       │     ╰───╯
│       │
╰───────╯

get :: s -> a
```

### Setter

Before the structure is recomposed, we can set the focus to a new value. This is what the `set` function does, behaving similarly to *setters* in OOP.

    set : s -> a -> s


```hs
╭───────╮               ╭───────╮
│       │     ╭───╮     │       │
│   s   │ --> │ a │ --> │   s   │
│       │     ╰───╯     │       │
│       │               │       │
╰───────╯               ╰───────╯

set :: s -> a -> s
```

~~Note that the `get` and `set` are not standalone functions, i.e. there is no polymorphic function with the signature `f :: a -> b` because it would mean that it manages to somehow directly convert a type `a` into type `b`. No resonable function has this signature, only degenerate functions like `error :: a -> String`, or `coerce :: a -> b`, which are unsound.~~

```hs
get :: s -> a
set :: s -> a -> s
```

Nevertheless, we can imagine that the implementations of `get` and `set` (inside a bigger, encosing function) could look like this:

```hs
get :: s -> a
get ds = let (focus, residue) = decompose ds
         in  focus

set :: s -> a -> s
set ds x = let (focus, residue) = decompose ds
           in  recompose (x, residue)
```

A data structure is decomposed into a pair `(focus, residue)`, and `get` just returns the `focus` value. The `set` function sets focus to a new value before returning the updated structure.


~~A/N: Note that `get` doesn't behave in a purely-functional manner - unlike `set` which returns the structure, `get` only returns a part of the structure; the purely-functional thing to do would be to return both the structure and the focus (e.g. as a pair) instead. This further reinforces the suspecion that `get` and `set` are not standalone functions, but parts of a bigger function.~~


The pair of a getter and a setter essentially defines a lens:

```hs
get :: s -> a
set :: s -> a -> s
```

- `get` is a unary, `set` is a binary function
- `get` returns a part, `set` returns the whole data structure
- information about the focus (of a data structure) remains implicit - both `get` and `set` implicitly know what part of the structure to operate on.

### The laws of lenses

Getter and setter functions must obey the 3 lens laws:
1. set s (get s)   = id
2. get (set s a)   = a
3. set (set s a) b = set s b

In (1), `get` takes a structure `s` and returns the focus, as value `a` (e.g. `get s = a`); then `set` takes the same structure `s` and sets the focus to the same value `a` retrieved by `get` (`set s a`), and thus returns the structure `s` unchanged.

*Resetting the focus to the same value changes nothing*. That is, getting the value of the focus, then setting the focus to that same value, changes nothing (behaves the same as `id`).

In (2), the setter sets the focus of structure `s` to `a` (`set s a = s`), and returns the structure `s`; second, the getter, taking the returned structure `s`, returns that value `a`, i.e. the focus (`get s = a`).

The original structure was changed because the setter altered its field, returning the updated structure. The getter then retrieves the value (`a`) that the setter has set. That is, *the value that the getter gets must be the same value set by the setter*.

In (3), setting the focus of a structure `s` to the value `a` (`set s a`), results in the altered structure `s`. Taking that altered structure and setting the focus to a new value `b` (`set s b`), overrides the old focus value, and the updated structure `s` is returned. In brief, *resetting the focus overrides the old value*.


~~A/N: Note that the crucial information - what part of the data structure has the focus - remains implicit. Both `get` and `set` are given this information implicitly - they just know what part of the structure to operate on.~~

### Lens type

```hs
get :: s -> a
      └┬┘  └┬┘
  struct  focus


set :: s -> a -> s
      └┬┘  └┬┘  └┬┘
  struct   new   modified
          focus    struct
          value

by combining get and set we obtain a Lens

getset :: s -> (a -> s, a)
         └┬┘    └──┬─┘ └┬┘
     struct   accessor  focus
```

It is convenient to stick to the same type var name when defining lens, Store comonad, etc. unfortunatelly everyone seems to use different version - either the type var names are changed, or the position of the getter and setter components of a pair, or their positions when they are fields...

```hs
-- (1) version one
get    :: s -> a
set    :: s -> a -> s
getset :: s -> (a, a -> s) -- or
getset :: s -> (a -> s, a)


-- (2) package comonad defined Store as
newtype Store s a = Store (s -> a, s)
-- thus
get    :: a -> s
set    :: a -> s -> a
getset :: a -> (s -> a, s)

-- (3) Bartosz in his lectures uses
get    :: w -> p
set    :: w -> p -> w
getset :: w -> (p, p -> w)
```

### Store functor

Combining get and set into a single function gives `s -> (a -> s, a)`, where the type `(a -> s, a)` should remind us of the `Store` comonad.

The `Store` comonad holds a constant value of type `a`, along with a modifiable accessor function, of type `a -> s`, that maps the stored value to the focus.

```hs
-- Store as ADT with 2 fields
data Store s a = Store (a -> s) a

-- Store as newtype holding a pair
newtype Store s a = Store (a -> s, a)
```

In a pair `(a -> s, a)`, type `a` represents the key and the function `a -> s`, returns stored values, `s`, given a key `a`. This means we can imediately apply this function to the constant key to get the default `s`.

`Store` is a functor in `a`

```hs
-- | Store defined like this is not a functor
newtype Store s a = Store (a -> s, a)

instance Functor (Store s) where
  -- Store s a := (a -> s, a)
  -- Store s b := (b -> s, b)
  --         as :: a -> s
  --          a :: a
  --         ab :: a -> b
  -- To get the required function (b -> s) from (g : a -> s), we need to
  -- shift the domain of g by pre-composing with the function (h : b -> a), i.e.
  --     h : b -> a
  --     g : a -> s
  -- h ∘ g : b -> s
  -- But we only have the function (f : a -> b)
  fmap :: (a -> b) -> Store s a -> Store s b
  fmap ab (Store (as, a)) = Store (???, ab a)


-- | but if Store is defined with the type vars flipped is a functor
newtype Store p w = Store (p, p -> w)

instance Functor (Store p) where
  fmap :: (a -> b) -> Store p a -> Store p b
  fmap g (Store (p, f)) = Store (p, g . f)
```

### StoreT comonad transformer

By the way, in the module Control.Comonad.Trans.Store, `Store` is actually defined in terms of the `StoreT` comonad transformer.

```hs
-- https://hackage.haskell.org/package/comonad-5.0.8/docs/src/Control.Comonad.Trans.Store.html#Store

-- ----------------------------------------------------------------------------
type Store s = StoreT s Identity

-- | Create a Store using an accessor function and a stored value
store :: (s -> a) -> s -> Store s a
store f s = StoreT (Identity f) s

runStore :: Store s a -> (s -> a, s)
runStore (StoreT (Identity f) s) = (f, s)

-- ----------------------------------------------------------------------------
data StoreT s w a = StoreT (w (s -> a)) s

runStoreT :: StoreT s w a -> (w (s -> a), s)
runStoreT (StoreT wf s) = (wf, s)

-- ----------------------------------------------------------------------------
instance Functor w => Functor (StoreT s w) where
  fmap f (StoreT wf s) = StoreT (fmap (f .) wf) s

-- ----------------------------------------------------------------------------
instance (ComonadApply w, Semigroup s) => ComonadApply (StoreT s w) where
  StoreT ff m <@> StoreT fa n = StoreT ((<*>) <$> ff <@> fa) (m <> n)

-- ----------------------------------------------------------------------------
instance (Applicative w, Monoid s) => Applicative (StoreT s w) where
  pure a = StoreT (pure (const a)) mempty
  StoreT ff m <*> StoreT fa n = StoreT ((<*>) <$> ff <*> fa) (mappend m n)

-- ----------------------------------------------------------------------------
instance Comonad w => Comonad (StoreT s w) where
  duplicate (StoreT wf s) = StoreT (extend StoreT wf) s
  extend f (StoreT wf s) = StoreT (extend (\wf' s' -> f (StoreT wf' s')) wf) s
  extract (StoreT wf s) = extract wf s

-- ----------------------------------------------------------------------------
instance ComonadTrans (StoreT s) where
  lower (StoreT f s) = fmap ($ s) f

-- ----------------------------------------------------------------------------
instance ComonadHoist (StoreT s) where
  cohoist l (StoreT f s) = StoreT (l f) s

-- ----------------------------------------------------------------------------
-- Extra functions
-- ----------------------------------------------------------------------------
-- | Read the stored value
-- >>> pos $ store fst (1,5) -- (1,5)
pos :: StoreT s w a -> s
pos (StoreT _ s) = s

-- | Set the stored value
-- >>> pos . seek (3,7) $ store fst (1,5) -- (3,7)
-- Seek satisfies the law: seek s = peek s . duplicate
seek :: s -> StoreT s w a -> StoreT s w a
seek s ~(StoreT f _) = StoreT f s

-- | Modify the stored value
-- >>> pos . seeks swap $ store fst (1,5) -- (5,1)
-- Seeks satisfies the law: seeks f = peeks f . duplicate
seeks :: (s -> s) -> StoreT s w a -> StoreT s w a
seeks f ~(StoreT g s) = StoreT g (f s)

-- | Peek at what the current focus would be for a different stored value
-- Peek satisfies the law: peek x . extend (peek y) = peek y
peek :: Comonad w => s -> StoreT s w a -> a
peek s (StoreT g _) = extract g s


-- | Peek at what the current focus would be if the stored value was
--   modified by some function
peeks :: Comonad w => (s -> s) -> StoreT s w a -> a
peeks f ~(StoreT g s) = extract g (f s)

-- | Applies a functor-valued function to the stored value, and then uses the
--   new accessor to read the resulting focus.
--
--   >>> let f x = if x > 0 then Just (x^2) else Nothing
--
--   >>> experiment f $ store (+1) 2
--   Just 5
--
--   >>> experiment f $ store (+1) (-2)
--   Nothing
experiment :: (Comonad w, Functor f) => (s -> f s) -> StoreT s w a -> f a
experiment f (StoreT wf s) = extract wf <$> f s

-- ----------------------------------------------------------------------------
instance Comonad w => Comonad (StoreT s w) where
  extract   (StoreT wf s) = extract wf s
  duplicate (StoreT wf s) = StoreT (extend StoreT wf) s
  extend f  (StoreT wf s) = StoreT (extend (\wf' s' -> f (StoreT wf' s')) wf) s
```


### Store with Bartosz

Follwing Bartosz in: Category Theory II 9.1: Lenses
https://www.youtube.com/watch?v=9_iYlp8smc8&list=PLMTONe7-tohmE02KadSPXvgpu26sn5j_n

Bartosz defines the set and get as

    w -> p
    w -> p -> w

and combines them as

    w -> (p, p -> w)

then defines the Store type and its Functor instance as

```hs
-- Bartosz's Store
data Store p w = Store p (p -> w)

instance Functor p => Functor (Store p) where
  fmap g (Store p f) = Store p (g . f)
```

Bartosz continues saying that we now have a *coalgebra* from `w` to functor `Store`, where Store is `(p, p -> w)`, and the `Store` is also a *comonad*.

```hs
class Functor w => Comonad w where
  -- | extract . fmap f = f . extract
  extract   :: w a -> a
  -- return :: a -> w a

  extend    :: (w a -> b) -> (w a -> w b)
  -- (=<<)  :: (a -> m b) -> (m a -> m b)
  --           (m b -> a) -> (m b -> m a)
  --           (m a -> b) -> (m a -> m b)
  extend f = fmap f . duplicate

  -- | fmap (fmap f) . duplicate = duplicate . fmap f
  duplicate :: w a -> w (w a)
  --   join :: m (m a) -> m a
  duplicate = extend id
```

### Store comonad

The `Store` type is also a `Comonad`:

```hs
data Store p w = Store p (p -> w)

instance Functor p => Comonad (Store p) where
  extract :: Store p a -> a
  extract (Store p f) = f p

  --          Store p a  :=          (p, p -> a)
  -- Store p (Store p a) := (p, p -> (p, p -> a))
  duplicate :: Store p a -> Store p (Store p a)
  duplicate (Store p f) = Store p (\p' -> Store p' f)
  -- have
  --    p :: p
  --    f :: p -> a
  -- want :: p -> (p, p -> a)


-- compare with Comonad instance of StoreT
type Store  s     = StoreT s Identity       -- Store as StoreT
data StoreT s w a = StoreT (w (s -> a)) s
data Store  s   a = Store     (s -> a)  s   -- Store standalone
data Store  p   w = Store   p (p -> w)      -- Store standalone by Bartosz
-- Bartosz has flipped
instance Comonad w => Comonad (StoreT s w) where
  extract   (StoreT wf s) = extract wf s
  duplicate (StoreT wf s) = StoreT (extend StoreT wf) s
  extend f  (StoreT wf s) = StoreT (extend (\wf' s' -> f (StoreT wf' s')) wf) s
```

### Back to lenses

In the comonad `(p, p -> w)` i.e. `Store p w`, the type param `p` is the *focus* (a single field), while `w` represents the whole structure. We have a memoization table, aka the store `w`, that stores all the possible tuples - all possible value sof tuples - that differ by `p` (the input). 

~~Do we get the output `r` by applying the lookup function `p -> r` to the input param `p`? But then `r` = `w`? i.e. we have the lookup function `p -> w`, not `p -> r`?! Is the output the whole structure? Are the pairs made of input `p` and the structure `w` as output? But he stracture cannot vary - its fields can?!?~~

### Coalgebra

A coalgebra is a function `a -> w a`

```hs
-- (constraints in data type decl are deprecated but whatdahell)
type Comonad w => Coalgebra w a = a -> w a

coalgebra :: Comonad w => a -> w a
extract   :: Comonad w => w a -> a

duplicate :: Comonad w => w a -> w (w a)
extend    :: Comonad w => (w a -> b) -> (w a -> w b)
```

Coalgebra `coalgebra` and `extract` should be compatible and this is expressed by the laws:

1. "extract" law

    extract . coalgebra = id

If coalgebra puts something in a container, we should be able to extract the same thing back from that container.

2. "duplicate" law

    duplicate . coalg = fmap coalg . colag

    fmap (fmap f) . duplicate = duplicate . fmap f


Duplicate has the type `w a -> w (w a)` and to get it, notice that the type of coalgebra `a -> w a` may be reinterpreted as `w a -> w (w a)` by putting `w a` for `a`.

```
          coalg
a ───────────────────→ w a
│                      │
│                      │
│ coalg                │ dup
│                      │
↓                      ↓
w a ─────────────────→ w (w a)
        fmap coalg
```

>dup . coalg = fmap coalg . colag

The coalgebra is `a -> w a`, so fmapping a coalgebra goes under the comonad `w` to map the `a` to `w a` (in `w a`) yielding `w (w a)`. `fmap (alg :: a -> w a)` gets us `a -> w (w a)`.

We can express the lens laws in terms of colagebra:

```hs
get :: w -> p
set :: w -> p -> w

-- (1) 
--        Store    p    (p -> w)
coalg w = Store (get w) (set w)

-- (2) 
set w (get w) = id
```

A lens that change the type of focus is `IStore a b t` where `a` and `b` are before and after types of the focus, and `t` is the whole structure. In this case `set` is changed into `set :: w -> p' -> w`.

```hs
data IStore a b t = IStore a (b -> t)
```

In afct, the full lens type is `Lens s t a b`, where `s` and `t` are before and after types of the structure, and `a` and `b` are before and after types of the focus.

```hs
data Lens s t a b = Lens (forall r. (s -> (r, a), (r, b) -> t))
```

## Lenses categorically

Category Theory II 9.2: Lenses categorically   
https://www.youtube.com/watch?v=rAa3pGp97IM&list=PLMTONe7-tohmE02KadSPXvgpu26sn5j_n&index=38

Van Laarhoven came up with the idea of lenses polymorphic in the type ctor.

```hs
type Lens s t a b = forall f. Functor f => (a -> f b) -> (s -> f t)
```

If this was instead `a -> b`, i.e. a function that chnages the focus of type `a` into type `b`, the other function would be `s -> t`, i.e. it takes the type of the whole structure `s` and returns the updated type of that structure `t` with the focus (field) updated. Since the focused field of `s` changes from `a` to `b`, the overall type changes from `s` to `t`.


```hs
╭───────╮     ╭───────╮     ╭───────╮     ╭───────╮
│       │     │ ╭───╮ │     │ ╭───╮ │     │       │
│       │     │ │ a ├─┼─────┼→│ b │ │     │       │
│   s   │     │ ╰───╯ │     │ ╰───╯ │     │   t   │
│       │ --> │   r   │ --> │   r   │ --> │       │
╰───────╯     ╰───────╯     ╰───────╯     ╰───────╯
```

But these are not the plain functions; instead, it is `a -> f b` and `s -> f t`.

```hs
type Lens s t a b = forall f. Functor f => (a -> f b) -> s -> f t

-- flipping the args
type Lens s t a b = forall f. Functor f => s -> (a -> f b) -> f t
type Lens s t a b = s -> forall f. Functor f => (a -> f b) -> f t
```

This more clearly shows that the function `(a -> f b) -> f t` should work for any Functor `f`, so it cannot do anything specific to any one functor; it can only `fmap` (as usual). Looking at the function `a -> f b`, we know we need an `a`. And we'd also need a fucntion `b -> t` that we can fmap to get `f b -> f t`. The pair `(a, b -> t)` is actually the `IStore` comonad mentioned earlier, i.e. the type of lens that changes the type of focus.

```hs
data IStore a b t = IStore a (b -> t)

want :: s -> IStore a b t
```

https://bartoszmilewski.com/2021/04/01/traversals-1-van-laarhoven-and-existentials/

## Lenses categorically II

The interpretation of lenses in CT is in term of the *Yoneda lemma*:

    [C,Set](C(a,-), F) ≅ F a

Actually, it is better given in terms of the *Yoneda embedding*:

    [C,Set](C(a,-), C(b,-)) ≅ C(b,a)

We have a category of functors from C to Set. In Haskell notation,

    forall c. (a -> c) -> (b -> c) = b -> a

We now have `forall c`, but we need `forall f. Functor f`. In order for `c` to be a functor, the category `C` in [C,Set] needs to be a functor category.

Taking an endofunctor for simplicity, we change the C category into [C,C], thereby getting this

  [[C,C],Set]([C,C](a,-), [C,C](b,-)) ≅ [C,C](b,a)

and renaming the types `a` and `b` to reflect that they are now functors

```hs
[[C, C], Set]([C, C](f, -), [C, C](g, -)) ≅ [C, C](g, f)
              └────┬─────┘   └────┬─────┘   └────┬─────┘
                NT α           NT β           NT γ
```





## Lens

(from the book `The Dao of Functional Programming` - Bartosz Milewski)

Another way of describing a composite object is to say that it can be split into a focus and a residue.
>The trick is that, although we want to know what type the focus is, we don't care about the type of the residue. All we need to know about the residue is that it can be combined with the focus to recreate the whole object.

In Haskell, we would express this idea using *an existential type*:

```hs
data Lens s a = Lens { unLens :: forall r. (s -> (r, a), (r, a) -> s) }


data Lens s a where
  Lens :: (s -> (r, a), (r, a) -> s) -> Lens s a
```

This tells us that there exists some unspecified type `r` (representing the residue type) such that `s` can be decomposed into, and recomposed from, a product `(c, a)`.

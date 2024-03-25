# 8. Functors

## TOC

8. Functors
- 8.1 Categories
  - Category of sets
  - Opposite and product categories
- 8.2 Functors
  - Functors between categories
- 8.3 Functors in Programming
  - Endofunctors
  - Bifunctors
  - Contravariant functors
  - Profunctors
- 8.4 The Hom-Functor
- 8.5 Functor Composition
  - Category of categories

## 8.1 Categories

A category is a collection of objects and arrows that go between them. Every pair of composable arrows can be composed. The composition is associative, and there is an identity arrow looping back on every object

Based on the definition of a category, we can come up with all kinds of weird categories. For instance, there is a category that has no objects and no arrows. It satisfies all the condition of a category vacuously.

There's another that contains a single object and a single arrow. There's one with two unconnected objects, and one where the two objects are connected by a single arrow (plus two identity arrows), and so on. These are example of "stick-figure" categories.

### Category of sets

We can also strip a category of all arrows (except for the identity arrows). Such a bare-object category is called a *discrete category* or a *set*. Since we associate arrows with structure, a set is a category with no structure. *This is the categorical modelling of sets*.

Sets form their own category called `Set`. The objects in the `Set` are sets, and the arrows are functions between sets. Such functions are defined as special kind of relations, which themselves are defined as sets of pairs.

Note: we ignore the "size" issues of sets, in particular the non-existence of the set of all sets.

To the lowest approximation, we can model programming in the category of sets. We often think of types as sets of values, and functions as set-theoretical functions.

What category theory offers is more precision: the fine distinction between the structure that is absolutely necessary, and the superfluous details.

A set-theoretical function, for instance, doesn't fit the definition of a function we work with as programmers. Our functions must have underlying algorithms because they have to be computable by some physical systems, be it computers or a human brains.

### Opposite and product categories

In programming, the focus is on the category of types and functions, but we can use this category as a starting point to construct other categories.

One such category is called the *opposite category*. This is the category in which all the original arrows are inverted: what is called the source of an arrow in the original category is now called its target, and vice versa.

The opposite of a category `C` is called `Cᴼᴾ`, they are duals: the terminal object in C is the initial object in Cᴼᴾ, the product in C is the sum in Cᴼᴾ, and so on.

Given two categories C and D, we can construct a *product category* `C × D`. Objects in this category are pairs of objects `(c, d)`, and the arrows are pairs of arrows.

If we have 
an arrow `f : c -> cʹ` in C and 
an arrow `g : d -> dʹ` in D 
then there is a corresponding
arrow `(f, g)` in `C × D`.
This arrow goes from `(c, d)` to `(cʹ, dʹ)`, 
both being objects in `C×D`.

Two such arrows can be composed if their components are composable in, respectively, C and D. An identity arrow is a pair of identity arrows.

The two product categories we are most interested in are `C × C` and `Cᴼᴾ × C`, where C is our familiar category of types and functions. In both of these categories, objects are pairs of objects from C. 

In the first category, `C × C`, 
a morphism from (a, b) to (aʹ, bʹ) 
is a pair (f, g),
i.e. a pair (f : a -> aʹ, g : b -> bʹ). 

In the second category, `Cᴼᴾ × C`, 
a morphism is a pair (fʹ, gʹ), 
i.e. a pair (fʹ : aʹ -> a, gʹ : b -> bʹ), 
in which the first arrow goes in the opposite direction.


## 8.2 Functors

We can visualize a **function object** as secretly storing all possible results and using the function argument to index into them.

A function from Bool is obviously equivalent to a pair of values, one for True and one for False. A known programming technic called memoization implements expensive functions as lookup tables.

Even though it's not practical to memoize functions that take, say, natural numbers as arguments; we can still conceptualize them as (infinite, or even uncountable) lookup tables.

If you can think of a data type as a container of values, it makes sense to apply a function to transform all these values, and create a transformed container. When this is possible, we say that the *data type is functorial*.

We can visualize a function object as a lookup table, keyed by some type. If we want to use another, ralated type as the key, we need a function that translates the new key to the original key. This is why **functoriality of the function object** has one of the arrows reversed:

```hs
dimap :: (a' -> a) -> (b -> b') -> (a -> b) -> (a' -> b')
dimap f g h = g . h . f
```

We are applying the transformation to a function h :: a -> b that has a "receptor" that responds to values of type `a`, but we want to use it to process input of another type, `a'`. This is only possible if we have an adapter from `a'` to `a`, namely a function `f :: a' -> a`.

The idea of a data type "containing" values of another type can be also expressed by saying that one data type is paremeterized by another. For instance, the type `List a` is parameterized by the type `a`. In other words, `List` maps the type `a` to the type `List a`. `List` by itself (without the argument), is called a **type constructor**.

### Functors between categories

In category theory, a *type constructor* is modeled as a mapping of objects to objects. It's a *function on objects*. This is not to be confused with *arrows between objects*, which are part of the structure of the category.

In fact, it's easier to imagine a mapping between categories. Every object in the source category is mapped to an object in the target category. If `a` is an object in C, there is a corrsponding object `F a` in D.

A *functorial mapping or functor* not only maps objects but also arrows between them. Every arrow `f : a → b` in the src category has a corresponding arrow in the tgt category: `F f : F a → F b`. We use the same letter, here `F`, to name both, the mapping of objects and the mapping of arrows.

If categories distill the essence of structure, then functors are mappings that preserve this structure. Objects that are related in the source category are related in the target category. The structure of a category is defined by arrows and their composition. Therefore, a functor must preserve composition. What is composed in one category, `h = g ◦ f`, should remain composed in the second category: `F h = F (g ◦ f) = F g ◦ F f`. We can either compose two arrows in C and map the composite to D, or we can map individual arrows and then compose them in D. We demand that the result be the same. Finally, a functor must preserve identity arrows, `F 1ᵃ = 1ꜰₐ`.

These conditions taken together define what it means for a functor to preserve the structure of a category.

>It is important to realize what conditions are not part of the definition.

For instance, a functor is allowed to map multiple objects into the same object. It can also map multiple arrows into the same arrow, as long as the endpoints match. In the extreme, any category can be mapped to a singleton category with one object and one arrow.

Moreover, not all object or arrows in the target category must be covered by a functor. In the extreme, we can have a functor from a singleton category to any (non-empty) category. Such a functor picks a single object together with its identity arrow.

A constant functor `∆c` is an example of a functor that maps all objects from the source category to a single object `c` in the target category, and all arrows from the source category to a single identity arrow `1ᶜ`.

In category theory, functors are often used to create models of one category inside another. The fact that they can collapse multiple objects and arrows into one means that they can produce simplified views of the source category, i.e. they "abstract" some aspects of the source category.

The fact that they may only cover parts of the target category means that the models are *embedded* in a larger environment. Functors from some minimalistic, stick-figure, categories can be used to define patterns in larger categories.

## 8.3 Functors in Programming

### Endofunctors

Endofunctors are the class of functors that are the easiest to express in a programming language. These are functors that map a category (here, the category of types and functions) to itself.

The first part of the endofunctor is the mapping of types to types.

This is done using *type constructors*, which are type-level functions. The list type constructor, `List`, maps an arbitrary type `a` to the type `List a`; the `Maybe` type constructor maps `a` to `Maybe a`.

The second part of an endofunctor is the mapping of arrows.

Given a function `a -> b`, we want to be able to define a function `List a -> List b`, or `Maybe a -> Maybe b`. This is the *functoriality property* of these data types. Functoriality lets us lift an arbitrary function to a function between transformed types, `f ⟼ F f` (via fmap).

Functoriality can be expressed in Haskell using a typeclass. In this case, the typeclass is parameterized by a type constructor `f`. We say that `f` is a `Functor` if there is a corresponding mapping of functions called fmap:

```hs
class Functor f where
  fmap :: (a -> b) -> (f a -> f b)
```

The compiler knows that `f` is a type constructor because it's applied to types, as in `f a` and `f b`.

To prove to the compiler that a particular type constructor is a Functor, we have to provide the implementation of fmap for it. This is done by defining an instance of the typeclass Functor.

```hs
instance Functor [] where
  fmap :: (a -> b) -> [a] -> [b]
  fmap f [] = []
  fmap f (a : as) = f a : fmap f as
```

#### Functor laws

A functor must also satisfy some laws: it must preserve composition and identity.

    fmap id = id                           [ Identity ]
    fmap (f . g) = fmap f . fmap g         [ Composition ]

These laws cannot be expressed in Haskell, but should be checked by the programmer. Here's an examaple of a bad implementation:

```hs
instance Functor [] where
  fmapBad :: (a -> b) -> [a] -> [b]
  fmapBad f [] = []
  fmapBad f (a : as) = fmapBad f as
  -- instead of the correct:
  -- fmap f (a : as) = f a : fmap f as
```

This implementation does not satisfy the functor laws; namely, the law of identity fails on non-empty lists, yet the definition is accepted by the compiler.

```hs
-- Law of Identity
            fmapBad id [] = id []
                       [] = []
                       -- ok

           fmapBad id [1] = id [1]
                       [] = [1]
                       -- FAILS!

-- Law of Composition
fmapBad (succ . succ)  [] = (fmapBad succ . fmapBad succ) []
                       [] = []
                       -- ok

fmapBad (succ . succ) [1] = (fmapBad succ . fmapBad succ) [1]
                       [] = []
                       -- ok
                       -- even though the result is incorrect,
                       -- the correct result is:
                      [3] = [3]
```


#### Identity functor

There are some elementary functors that might seem trivial, but they serve as building blocks for other functors.

The *identity (endo)functor* maps all objects to themselves, and all arrows to themselves.

```hs
data Identity a = Identity { runIdentity :: a }
```

#### Constant functor

Constant functor `∆c` maps all objects to a single object `c`, and all arrows to the identity arrow on this object.

In Haskell, it's a family of functors parameterized by the target object `c`. The type constructor `Const` ignores its second argument `b`.

```hs
data Const a b = Const { getConst :: a }

instance Functor (Const v) where
  fmap :: (a -> b) -> Const v a -> Const v b
  fmap _ (Const v) = Const v


-- flipped (Const v u)
newtype Konst u v = Konst { getConst :: v }

instance Functor (Konst u) where
  fmap :: (a -> b) -> Konst u a -> Konst u b
  fmap f (Konst u) = Konst (f u)
```

### Bifunctors


### Contravariant functors


### Profunctors





## 8.4 The Hom Functor

Arrows between any two objects form a set, called a hom-set, and denoted variously by `Homᶜ(a, b)`, `Hom(a, b)` or using the name of category followed by names of objects, `C(a, b)`.

The hom-set `C(a, b)` may be interpreted as all the ways the object `b` can be observed from the object `a`. Another way of looking at hom-sets is to say that they define a mapping that assigns the set `C(a, b)` to every pair of objects `a` and `b`.

Since hom-sets are sets it means they are objects in `Set`. So a hom-set in a category `C` induces a mapping between category `C` and `Set`.

To see that mapping is functorial, let's consider what happens when we transform the two objects `a` and `b`. We are interested in a transformation that would map the set `C(a, b)` to the set `C(aʹ, bʹ)`. Arrows in Set are regular functions, so it's enough to define their action on individual elements of a set.

An element of `C(a, b)` is an arrow `h: a -> b` and
an element of `C(aʹ, bʹ)` is an arrow `hʹ : aʹ -> bʹ`.

We know how to transform one into another: we need to 
pre-compose `h` with an arrow `gʹ : aʹ -> a` and 
post-compose `h` with an arrow `g : b -> bʹ`.

In other words, the mapping that takes a pair `⟨a, b⟩` to the set `C(a, b)` is a *profunctor*:

    Cᴼᴾ × C -> Set

Frequently, we are interested in varying only one of the objects, keeping the other fixed.

When we fix the source object and vary the target, the result is a functor

    C(a, −) : C -> Set

The action of this functor on an arrow `g : b -> bʹ` is written as:

    C(a, −)(g) = C(a, b) -> C(a, bʹ) = C(a, g)

    C(a, g) : C(a, b) -> C(a, bʹ)

and is given by post-composition:

    C(a, g) = (g ◦ −)

Varying `b` means switching focus from one object to another, so the complete functor `C(a, −)` combines all the arrows emanating from a into a coherent view of the category from the perspective of a. It is *"the world according to `a`"*.

Conversely, when we fix the target and vary the source of the hom-functor, we get a contravariant functor:

    C(−, b): Cᴼᴾ -> Set

whose action on an arrow `gʹ : aʹ -> a` is written as:

    C(gʹ, b): C(a, b) -> C(aʹ, b)

and is given by pre-composition:

    C(gʹ, b) = (− ◦ gʹ)

The functor `C(−, b)` organizes all the arrows pointing at b into one coherent view. It is the picture of `b` *"as it's seen by the world"*.

>If two objects `a` and `b` are isomorphic, than their hom-sets are also isomorphic.
In particular:

    C(a, x) ≅ C(b, x)

    C(x, a) ≅ C(x, b)


## 8.5 Functor Composition

Just like we can compose functions, we can compose functors. Two functors are composable if the target category of one is the source category of the other.

On objects, functor composition of G after F first applies F to an object, then applies G to the result; and similarly on arrows.

All endofunctors are composable since their target category is the same as the source category.

In Haskell, a functor is a parameterized data type, so the composition of two functors is again a parameterized data type. On objects, we define:

```hs
data Compose g f a = Compose (g (f a))
```

Any two type constructors can be composed this way. There is no requirement, at
this point, that they be functors. However, if we want to lift a function using the composition of type constructors, `g` after `f`, then they must be functors. This requirement is encoded as a constraint in instance declaration:

```hs
instance (Functor g, Functor f) => Functor (Compose g f) where
--fmap :: (a -> b) -> (F ∘ G) a     -> (F ∘ G) b
  fmap :: (a -> b) -> Compose f g a -> Compose f g b
  fmap h (Compose gf) = Compose $ fmap (fmap h) gf
```

In the implementation of fmap, we pattern match on the data constructor `Compose`. The value `gf` has the type `g (f a)`. We use one `fmap` to "get under" the functor `g`. Then we use `fmap h` to get under the functor `f`. The compiler knows which fmap to use by analyzing the types.

The signatures from CT and Haskell are similar: 
`fmap :: (a -> b) -> Compose f g a -> Compose f g b` 
`fmap :: (a -> b) -> (F ∘ G) a     -> (F ∘ G) b`

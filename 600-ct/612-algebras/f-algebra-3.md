# F-algebra

## Back to monoids

A monoid as a set 𝑚 with a pair of functions:
- 𝜂 ∷ 1 → 𝑚
- 𝜇 ∷ 𝑚 × 𝑚 → 𝑚
where `1` is the terminal object in 𝐒𝐞𝐭 - the singleton set.

A pair of functions is an element of a Cartesian product of two sets of functions. We know that these sets may be represented as exponential objects:
- 𝜇 ∈ 𝑚^(𝑚×𝑚)
- 𝜂 ∈ 𝑚¹

The Cartesian product of these two sets is:
- 𝑚^(𝑚×𝑚) × 𝑚¹

Using some high-school algebra (which works in every Cartesian closed category), we can rewrite it as:
- 𝑚^(𝑚×𝑚 + 1)

The `+` sign stands for the coproduct in 𝐒𝐞𝐭. We have replaced a pair of functions with a single function - an element of the set:
- `𝑚×𝑚 + 1 → 𝑚`

Any element of this set of functions is a potential monoid.

The great thing about this formulation is that it can be generalized. For instance, to describe groups - a group is a monoid with inverse an additional function that assigns the inverse to every element - we just incorporate the equation for inverse `𝜀 ∷ 𝑚 → 𝑚`, so we get
- `𝑚×𝑚 + 𝑚 + 1 → 𝑚`

And to define a ring, we would add one more binary operator and one nullary operator:
- `𝑚×𝑚 + 𝑚 + 𝑚 + 1 + 1 → 𝑚`

And so on for other algebraic structures.

Each time we end up with a function type whose left-hand side is a sum of powers (possibly including the zeroth power - the terminal object), and the right-hand side being the set itself.

Now we can go crazy with generalizations. First of all, we can replace sets with objects and functions with morphisms. We can define n-ary operators as morphisms from n-ary products. It means that we need a category that supports finite products. For nullary operators we require the existence of the terminal object. So we need a Cartesian category. In order to combine these operators we need exponentials, so that's a *Cartesian closed category*. Finally, we need coproducts to complete our algebraic shenanigans.

Alternatively, we can just forget about the way we derived our formulas and concentrate on the final product. The sum of products on the lhs of our morphism defines an endofunctor. What if we pick an arbitrary endofunctor `F` instead? In that case we don't have to impose any constraints on our category. What we obtain is called an F-algebra.

> An F-algebra is a triple consisting of an endofunctor `𝐹`, an object `𝑎`,and a morphism `𝐹 𝑎 → 𝑎`.

The object is called **carrier** or underlying object/type. The morphism is called the *evaluation function* or **structure map**. Think of the functor `F` as forming expressions and the morphism as evaluating them.

In Haskell, we define an F-algebra as

```hs
type Algebra f a = f a -> a
```

>Haskell's definition of algebra identifies an algebra with its evaluation function.

For monoid, the functor would be `MonF`, which in Haskell is

```hs
-- Semigroup: m×m -> m
data SemF a
  = SConcat a a

-- Monoid: 1 + m×m -> m
data MonF a
  = MEmpty
  | MAppend a a

data MonF a where
  MEmpty  :: MonF a
  MAppend :: a -> a -> MonF a

-- Group: 1 + m + m×m -> m
data GrpF a
  = GUnit
  | GInv a
  | GOp a a

-- Ring: 1 + m + m×m + 1 + m×m -> m
data RingF a
  = RAddUnit
  | RInv a
  | RAdd a a
  | RMulUnit
  | RMul a a
```

This Haskell's definition tranlates to the presentation of monoid algebraic structure as `1 + m×m -> m` (monoid: unit is `1`, binop is `m²`). Similarly, a ring can be defined using the `RingF` functor, while adding the unary operation of inverse: `1 + r + r×r -> r` (ring: unit, inverse, binop).

There are more F-algebras based on the same functor `RingF`. For instance, polynomials form a ring and so do square matrices.

As you can see, the role of the functor is to generate expressions that can be evaluated using the evaluator of the algebra. So far we've only seen very simple expressions. We are often interested in more elaborate expressions that can be defined using recursion.

## Recursion

We have to somehow formalize the process of replacing the free type variable in the definition of our functor, recursively, with the result of the replacement.

Applying an endofunctor infinitely many times produces a fixed point, an object defined as `Fix f = f (Fix f)`. The intuition behind this definition is that, since we applied f infinitely many times to get `Fix f`, applying it one more time doesn't change anything.

## Category of F-Algebras

Whenever you come up with a way of constructing some new objects, see if they form a category. Not surprisingly, 

>Algebras over a given endofunctor `F` form a category. Objects in that category are algebras (pairs consisting of a carrier object `a` and a morphism `F a -> a`), both from the original category `C`.

To complete the picture, we have to define morphisms in the category of F-algebras.

A morphism must map one algebra `(a, f)` to another algebra `(b, g)`. We'll define it as a morphism `m` that maps the carriers - it goes from `a` to `b` in the original category. Not any morphism will do: we want it to be compatible with the two evaluators. We call such a structure-preserving morphism a **homomorphism**.

To define a homomorphism of F-algebras we first notice that we can lift `m` to the mapping `F m :: F a -> F b`. We can then follow it with `g` to get to `b`. Equivalently, (the other way to `b`) is to first use `f` to go from `F a` to `a` and then follow it with `m`. We want these two paths to be equal, so this diagram must commute:

```hs
F a     F m       F b
● --------------> ●
│                 │
│                 │
│f               g│
│                 │
↓                 ↓
● --------------> ●
a        m        b

type Algebra f a = f a -> a   -- Haskell's type for algebras

(α, φ) :: (α, f α -> α)       -- any algebra is a pair of a carrier and emap

(a, f) :: (a, f a -> a)       -- an algebra A
carrierA :: a                 -- carrier object A of an algebra
evalMapA :: f a -> a          -- eval map (emap) of an algebra

(b, g) :: (b, f b -> b)       -- an algebra B
carrierB :: b                 -- carrier object B of an algebra
evalMapB :: f b -> b          -- eval map (emap) of an algebra

m :: a -> b                  -- m maps carrier objects of algebras
f m :: f a -> f b            -- F m maps objects mapped by the endofunctor F
g . fmap m = m . f           -- such that this holds
```

>g ∘ F m = m ∘ f

An algebra is a pair of a carrier object `a` and structur map `f : F a -> a`, that is, a pair `(a, f)`.

Another algebra is a pair of a carrier object `b` and structur map `g : F b -> b`, that is, a pair `(b, g)`.

Homomorphisms are structure-preserving arrows in the category of F-algebras, mapping one algebra to another.

A homomorphism `m` maps algebras: it maps the carrier objects by mapping `a` to `b` in the original category C, and it maps objects mapped by the endofunctor `F` by lifting itself as `F m : F a -> F b`.

So, a homomorphism `m` is a pair of mappings: it acts on carriers as `m`, and it acts on the objects mapped by the endofunctor `F` as a lifted map, `F m`.

```hs
type Algebra f a = f a -> a  -- Haskell's type for algebras

(a, f a -> a)                -- an algebra is a pair of a carrier and smap
(a, f) :: (a, f a -> a)      -- any algebra
evalMap :: f a -> a          -- structure map (smap) of an algebra

m :: a -> b                  -- m maps carrier objects of algebras
f m :: f a -> f b            -- F m maps objects mapped by the endofunctor F
```

This is indeed a category: the identity morphisms from theoriginal category `C` still work fine, and a composition of homomorphisms is a homomorphism.

## Initial algebra

An initial object in the category of F-algebras, if one exists, is **the initial algebra**.

Let's name the carrier object of the initial algebra `i`, and its evaluator map `j : F i -> i`. It turns out that `j`, the evaluator or the structure map of the initial algebra, is an **isomorphism**.

This means `j` goes both ways, that is the arrow `j : F i -> i` and the arrow `j⁻¹ : i -> F i` are isomorphic since `j` and `j⁻¹` are each other's inverses, plus the identities hold, `j ∘ j⁻¹ = 1ᵢ` and `j⁻¹ ∘ j = 1ꜰᵢ`.

Since `m = j⁻¹`, then `j ∘ m = 1ᵢ` and `m ∘ j = 1ꜰᵢ`.




## Lambek's theorem

The fact that the arrow `j`, the evaluator map of the initial algebra in the category of F-algebras, is an isomorphism is called the **Lambek's theorem**.

The proof relies on the definition of initial objects, i.e. on the fact that there is *a unique arrow from an initial object to any other object* in the category.

In the category of F-algebras, the initial object is the initial algebra, so there is a unique arrow from the initial algebra to any other F-algebra.

We can call this unique arrow `m`, and proceed with the two-part proof to show that `j` is an isomorphism.

1. We first consider a mapping between the initial algebra `(i, j: F i -> i)` to another algebra `(a, f : F a -> a)`.

2. We then consider a mapping between the initial algebra `(i, j)` to another algebra `(F i, F j : F (F i) -> i)`.


1. We first consider the mapping between the initial algebra and any other algebra, knowing that must be a unique arrow from the former to the latter.

The diagram shows the mapping from the initial algebra `(i, j)` to any other algebra `(a, f)` by that unique arrow `m`. This diagram must commute:

```hs
F i     F m       F a
● --------------> ●
│                 │
│                 │
│j               f│
│                 │
↓                 ↓
● --------------> ●
i        m        a

initialAlgebra :: (i, f i -> i)
initCarrierObj :: i
initStructuMap :: f i -> i
uniqueArrow,    m ::   i ->   a  -- unique arrow `m` from init to any algebra
uniqueLifted, F m :: F i -> F a  -- lifted unique arrow `m`
f . fmap m = m . j               -- the two paths to `a` must commute

F(μF)    F h      F b
● --------------> ●
│                 │
│                 │
│in              g│
│                 │
↓                 ↓
● - - - - - - - ->●
μF       !h       b
```

>f ∘ F m = m ∘ j


2. We then construct an algebra whose carrier object is `F i`.

If `F i` is the carrier object, then the evaluator function of such an algebra must be an arrow mapping `F (F i)` to `F i`, which can be constructed by lifting `j`, as `F j :: F (F i) -> F i`.

Because `(i, j : F i → i)` is the initial algebra, we know there must be a unique arrow, `m`, from the inital algebra to the algebra `(F i, F j)`.

This time, the unique arrow `m` maps the initial algebra (which remains on the left side of the diagram) to an algebra `(F i, F j)`, that is on the righ side of the diagram, instead of (a, f).

This diagram must commute:

```hs
F i            F (F i)
● --------------> ●
│       F m       │
│                 │
│j             F j│
│                 │
↓                 ↓
● --------------> ●
i        m       F i
```


But we also have this trivially commuting diagram (both paths are the same!):

```hs
F (F i)           F i
● --------------> ●
│       F j       │
│                 │
│F j             j│
│                 │
↓         j       ↓
● --------------> ●
F i               i
```

which can be interpreted as showing that `j` is a homomorphism of algebras, mapping `(F i, F j)` to `(i, j)`.


We can glue the last two diagrams together to get:

```hs
F i            F (F i)           F i
● --------------> ● --------------> ●
│       F m       │       F j       │
│                 │                 │
│j             F j│                j│
│                 │                 │
↓                 ↓                 ↓
● --------------> ● --------------> ●
i        m       F i        j       i
```

This diagram may, in turn, be interpreted as showing that `j ∘ m` is a *homomorphism of algebras*. Only in this case the two algebras are the same (since going from `i` via `m` we get at `F i`, then taking `j` we land at `i` again).

Moreover, because `(i, j)` is the initial algebra, there can only be one homomorphism from it to itself, and that's the identity morphism `1ᵢ`, which we know is a *homomorphism of algebras*.

Therefore `j ∘ m = 1ᵢ`. Using this fact and the commuting property of the left diagram we can prove that `m ∘ j = 1ꜰᵢ`.

This shows that `m` is the inverse of `j` and therefore `j` is an isomorphism between `F i` and `i`, `F i ≅ i`.

```hs
j   : F i -> i
j⁻¹ : i -> F i
j⁻¹ = m

j ∘ j⁻¹ = 1ᵢ
j⁻¹ ∘ j = 1ꜰᵢ

j ∘ m = 1ᵢ
m ∘ j = 1ꜰᵢ
```

But that is just saying that `i` is a fixpoint of `F`. This is the formal proof behind the fixpoint of the endofunctor F (aka the original, hand-waving, argument above).

Back in Haskell, we recognize these correspondencies
- `i` as `Fix f`
- `j` as the data ctor `Fix`
- `j⁻¹` (inverse of `j`) as `unFix`, but since `j⁻¹ = m`, `m` is `unFix`

So, in Haskell we have:
- `i` is `Fix f` (let it be the initial algebra)
- `j` is `Fix`   (the evaluator map of the initial algebra)
- `m` is `unFix` (unique morphism from the initial to any algebra)

where
- `Fix :: f (Fix f) → Fix f`   is like `j`
- `unFix :: Fix f → f (Fix f)` is like `m`

```hs
newtype Fix f = Fix { unFix :: f (Fix f) }

Fix :: f (Fix f) → Fix f   -- is like j
unFix :: Fix f → f (Fix f) -- is like m


inn :: f (Fix f) → Fix f   -- is like j = inn = Fix data ctor = μ
out :: Fix f → f (Fix f)   -- is like m = out = unFix accessor
```

**Initial F-algebra** `(µF, in)` such that 
for all other algebras `(b, g : F b -> b)`, 
there exists a unique arrow `h` (∃!h) 
such that the following diagram commutes:

```hs
F(μF)    in       μF
● --------------> ●
│                 .
│                 .
│F h              .!h
│                 .
↓                 ↓
● --------------> ●
F b      g        b

Initial algebra: (µF, in :: F (µF) -> µF)
Any algebra:     (b,  g) :: (b, F b -> b)
such that
∀(b, g). ∃!h :: μF -> b

F(μF)    F h      F b
● --------------> ●
│                 │
│                 │
│in              g│
│                 │
↓                 ↓
● - - - - - - - ->●
μF       !h       b
```

Due to the uniqueness, `in` is an isomorphism, 
so it has an inverse `out : µF → F(µF)`.
In case `F X := 1 + X`, `µF = Nat` 
and `out` is basically the `pred` function.


The data ctor `Fix` (or `in`) is isomorphic with the accesor `unFix` (`out`), just like `j` is isomorphic to `m` (they are each other's inverses).

```hs
-- initial algebra (1)

F i             j             i
● --------------------------> ●
f (Fix f)      Fix          Fix f


-- initial algebra (2)

f (Fix f)     unFix         Fix f
● <-------------------------- ●
F i             m             i


-- initial algebra (3)

F(μF)         in              μF
● --------------------------> ●
● <-------------------------- ●
F(μF)         out             μF

```

The isomorphism in Lambek's theorem tells us that, in order to get the initial algebra, we take the functor `f` and replace its argument `a` with `Fix f`. We also see why the fixpoint doesn't depend on `a`.


## Natural Numbers

Natural numbers can also be defined as an F-algebra. The starting point is the pair of morphisms:
- zero :: 1 -> ℕ
- succ :: ℕ -> ℕ

The first one picks the zero, and the second one maps all numbers to their successors. As before, we can combine the two into one:
- 1 + ℕ -> ℕ

The left hand side defines a functor which, in Haskell, can be written like `data NatF a = ZeroF | SuccF a`.

The fixed point of this functor (the initial algebra that it generates) can be encoded in Haskell as `type Nat = Fix NatF`. This is like defining the natural numbers as normal by `data Nat = Zero | Succ Nat`.

A natural number is either zero or a successor of another number. This is known as the Peano representation for natural numbers.

## Catamorphisms

Let's rewrite the *initiality condition* using Haskell notation.

We'll call the initial algebra `Fix f`. The evaluator map of the initial algebra is then the data contructor `Fix`. There's a unique morphism `m` (corresponding to `unFix`) from the initial algebra to any other algebra over the same endofunctor. Let's pick an algebra whose carrier is `a` and the evaluator is `alg`.

```hs
    f (Fix f)    fmap m          f a
F i ● ---------------------------> ● F a
    ╷↑             F m             │
    ││                             │
  j ││                             │ f
    ││ unFix        ⟳             │
Fix ││                         alg │
    ││                             │
    ↓╵              m              ↓
  i ● ---------------------------> ●
    Fix f           m              a
```




By the way, notice what `m` is: `m` is the evaluator for the fixed point, an evaluator for the whole recursive expression tree. Let's find a general way of implementing it.

Lambek's theorem tells us that the constructor `Fix` is an isomorphism, i.e. `Fix` and its inverse, `unFix`, are isomorphic.

Therefore, we can flip the arrow on the left in the diagram above to get

```hs
f (Fix f)                   f a
● --------------------------> ●
↑            fmap m           │
│                             │
│                             │
│ unFix        ⟳         alg │
│                             │
│                             │
│              m              ↓
● --------------------------> ●
Fix f                         a
```

Let's write down the **commutation condition** for this diagram:

>m = alg . fmap m . unFix           ↱ ↴


We can interpret this equation as a recursive definition of `m`. The recursion is bound to terminate for any finite tree created using the functor `F`. We can see that by noticing that `fmap m` operates underneath the top layer of the functor `F`. In other words, it works on the children of the original tree. The children are always one level shallower than the original tree.


Here's what happens when we apply `m` to a tree constructed using `Fix f`. The action of `unFix` peels off the constructor, exposing the top level of the tree. We then apply `m` to all the children of the top node. This produces results of type `a`. Finally, we combine those results by applying the non-recursive evaluator `alg`. The key point is that `alg` is non-recursive.

Since we can do this for any algebra, `alg`, we define a higher-order function `cata` that takes an algebra `alg :: f a -> a` and gives us the function we called `m :: Fix f -> a`. This hof is called a **catamorphism**.

```hs
-- Fix f ≅ f
-- alg :: f a -> a
-- m :: Fix f -> a

cata :: Functor f => (f a -> a) -> (Fix f -> a)
cata alg = alg . fmap (cata alg) . unFix
```

## Naturals

Let's see an example of that. Take the functor that defines natural numbers:

```hs
data NatF a = ZeroF | SuccF a
```

Let's pick `(Int, Int)` as the carrier type and define our algebra as:

```hs
fib :: NatF (Int, Int) -> (Int, Int)
fib ZeroF = (1, 1)
fib (SuccF (m, n)) = (n, m + n)
```

You can easily convince yourself that the catamorphism for this algebra, cata fib, calculates Fibonacci numbers.

In general, an algebra for `NatF` defines a recurrence relation: the value of the current element in terms of the previous element. A catamorphism then evaluates the n-th element of that sequence.

## Folds

A list of `e` is the initial algebra of the following functor:

```hs
data ListF e a = NilF | ConsF e a
```

Indeed, replacing the variable a with the result of recursion, which we'll call List e, we get:

```hs
data List e = Nil | Cons e (List e)
```

An algebra for a list functor picks a particular carrier type and defines a function that does pattern matching on the two constructors. Its value for `NilF` tells us how to evaluate an empty list, and its value for `ConsF` tells us how to combine the current element with the previously accumulated value.

For instance, here's an algebra that can be used to calculate the length of a list (the carrier type is Int):

```hs
lenAlg :: ListF e Int -> Int
lenAlg (ConsF e n) = n + 1
lenAlg NilF = 0
```

Indeed, the resulting catamorphism `cata lenAlg` calculates the length of a list. Notice that the evaluator is a combination of (1) a function that takes a list element and an accumulator and returns a new accumulator, and (2) a starting value, here 0. The type of the value and the type of the accumulator are given by the carrier type.

Compare this to the traditional Haskell definition:

```hs
length = foldr (\e n -> n + 1) 0
```

The two arguments to `foldr` are exactly the two components of the algebra.

Let's try another example:

```hs
sumAlg :: ListF Double Double -> Double
sumAlg (ConsF e s) = e + s
sumAlg NilF = 0.0
```

Again, compare this with:

```hs
sum = foldr (\e s -> e + s) 0.0
```

As you can see, `foldr` is just a convenient specialization of a catamorphism to lists.

## Coalgebra

As usual, we have a dual construction of an *F-coagebra*, where the direction of the morphism is reversed, from `F a -> a` into `a -> F a`.

*Coalgebras* for a given functor also form a category, with homomorphisms preserving the coalgebraic structure. The terminal object `(t, u)` in that category is called the terminal or *final coalgebra*. For every other algebra `(a, f)` there is a unique homomorphism `m` that makes the following diagram commute:

```hs
F t     F m       F a
● <--------------- ●
↑                  ↑
│                  │
│u                f│
│                  │
│                  │
● <--------------- ●
t        m         a
```

A **terminal colagebra** is a fixed point of the functor, in the sense that the morphism `u :: t -> F t` is an isomorphism, `F t ≅ t` - which is **Lambek's theorem for coalgebras**.

A terminal coalgebra is usually interpreted in programming as a recipe for generating (possibly infinite) data structures or transition systems.

Just like a catamorphism can be used to evaluate an initial algebra, an *anamorphism is used to co-evaluate a terminal coalgebra*:

```hs
ana :: Functor f => (a -> f a) -> a -> Fix f
ana coalg = Fix . fmap (ana coalg) . coalg
```

A canonical example of a coalgebra is based on a functor whose fixed point is an infinite stream of elements of type `e`. This is the functor:

```hs
data StreamF e a = StreamF e a
```

and this is its fixed point

```hs
data Stream e = Stream e (Stream e)
```

A coalgebra for `StreamF e` is a function that takes the seed of type `a` and produces a pair (`StreamF` is just another name for a pair, i.e. `Pair a b` or `() a b`) consisting of an element, `e`, and the next seed, `a`.

You can easily generate simple examples of coalgebras that produce infinite sequences, like the list of squares, or reciprocals.

A more interesting example is a coalgebra that produces a *list of primes*.

The trick here is to use an infinite list as a carrier. Our starting seed will be the list [2..]. The next seed will be the tail of this list with all multiples of 2 removed; in the next step, we'll take the tail of this list and remove all multiples of 3, and so on. You might recognize the makings of the *Sieve of Eratosthenes*. This coalgebra is implemented by the following function:

```hs
sieve :: [Int] -> StreamF Int [Int]
sieve (p : ns) = StreamF p (filter (notdiv p) ns)
  where
  notdiv p n = n `mod` p /= 0
```

The anamorphism for this coalgebra generates the list of primes:

```hs
primes = ana era [2..]
```

A stream is an infinite list, so it should be possible to convert it to a Haskell list. To do that, we can use the same functor `StreamF` to form an algebra, and we can run a catamorphism over it. For instance, this is a catamorphism that converts a stream to a list:

```hs
toListC :: Fix (StreamF e) -> [e]
toListC = cata al
  where
  al :: StreamF e [e] -> [e]
  al (StreamF e a) = e : a
```

Here, the same fixed point is simultaneously an initial algebra and a terminal coalgebra for the same endofunctor. It's not always like this, in an arbitrary category. In general, an endofunctor may have many (or no) fixed points. The initial algebra is the so called least fixed point, and the terminal coalgebra is the greatest fixed point. In Haskell, though, both are defined by the same formula, and they coincide.

The anamorphism for lists is called unfold. To create finite lists, the functor is modified to produce a Maybe pair:

```hs
unfoldr :: (b -> Maybe (a, b)) -> b -> [a]
```

The value of Nothing will terminate the generation of the list.

An interesting case of a coalgebra is related to lenses. A lens can be represented as a pair of a getter and a setter:

set :: a -> s -> a
get :: a -> s
Here, a is usually some product data type with a field of type s. The getter retrieves the value of that field and the setter replaces this field with a new value. These two functions can be combined into one:

a -> (s, s -> a)
We can rewrite this function further as:

a -> Store s a
where we have defined a functor:

data Store s a = Store (s -> a) s
Notice that this is not a simple algebraic functor constructed from sums of products. It involves an exponential as.

A lens is a coalgebra for this functor with the carrier type a. We've seen before that Store s is also a comonad. It turns out that a well-behaved lens corresponds to a coalgebra that is compatible with the comonad structure. We'll talk about this in the next section.

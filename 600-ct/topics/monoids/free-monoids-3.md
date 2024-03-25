# Free monoids

Algebraic Terraforming: Trees from Magma, 2014, Boyd Stephen Smith Jr.
https://www.schoolofhaskell.com/user/bss/magma-tree

At ICFP 2009, Guy Steele critizied the FP community on their use of lists instead of trees. Trees parallelize better with balanced trees being the ideal case, and a divide-and-conquer approach can often achive good speedup over a more iterative approach.

## Why Choose Lists?

Lists are a very simple recursive, parameterized data type. They have a trivial base case, and only one recursive case. Their popularity has much to do with their simplicity: pedantically, they are accessible to a wider audience; academically, they can serve as a concrete example for a generic approach without taking time away from the development of the generic approach; industrially, they are used both due to their lack of time investment (e.g. during prototyping) and reliabilty (i.e. they are unlikely to be the source of your latest test failure).
>But are they the simplest?

## Some algebraic structures

A *monoid* is a set of objects equipped with an associative binary operation on those objects closed over the set, and a particular, known object that is "neutral" with respect to the operation, called identity. A *semigroup* is almost monoid, but does not require identity. A *magma* is almost semigroup but does not require the operation to be associative.

You've probably used monoids without knowing they were monoids; you may have even used some of the universal properties of monoids without realizing they applied to all monoids.

A **free object** over a set forgets everything about that set except some universal properties, specified by the word following free. For example, the free monoid over Integers forgets unique factorization, unique representation in every base, the GCD function, and everything else about the Integers except: they are a set of objects, there is an associative (binary) operation on Integers, and there is a "neutral" Integer; precisely the universal properties of monoids.

## Lists viewed Algebraically

Now, it turns out that [a] is a free monoid of values of type `a`.

>`List a` is a free monoid of values of type `a`.

Our first attempt at constructing a free monoid might look something like this (stated as a record type although it may also be a class):

```hs
data FreeMonoid a
  = Neutral
  | Single a
  | Op (FreeMonoid a) (FreeMonoid a)
```

We have a representation of the netural element, a representation of any value from the underlying set, and a representation of applying an Op.

However, this way of building a free monoid *lacks canonicity*, i.e. there are multiple ways to apply these data constructors that give equivalent objects.

The representation of _(a * b) * c_ is    
`Op (Op (Single a) (Single b)) (Single c)`.    
The represenation of _a * (b * c)_ is    
`Op (Single a) (Op (Single a) (Single b))`.    
but in a monoid _(a * b) * c = a * (b * c)_.

```hs
(Single a `Op`  Single b) `Op` Single c    -- repr of (a * b) * c
 Single a `Op` (Single a  `Op` Single b)   -- repr of a * (b * c)
```

But we want the representation of equivalent things to be the same.

## Ensuring associativity

To fix the current issue, we refactor the representation so it always associates to the right.

This simplest way to achieve this is to make the `Op` data ctor only right-recursive, *eliminating left recursion*. It means the left argument to `Op` is always "small" (it is never a nested `Op` ctor). This will make things a bit more complicated, but we'll clean this up shortly.

```hs
{-
term := int
      | term + term

-- eliminating left recursion:
atom := int
term := atom
      | atom + term

data FreeMonoid a = Neutral | Single a | Op (FreeMonoid a) (FreeMonoid a)
-}
data Atom a = Neutral | Single a

data FreeMon a
  = Atom (Atom a)
  | Op   (Atom a) (FreeMon a)

op :: FreeMon a -> FreeMon a -> FreeMon a
op (Atom xs) ys = Op xs ys
op (Op x xs) ys = Op x (op xs ys)
```

Now, we can show that `(a * b) * c` and `a * (b * c)` give the same representation, using equational reasoning:

```hs
-- (a * b) * c                       (★) = op
  op (op (Atom a)     b) c             (Atom a ★ b) ★ c
= op (OpAssoc  a      b) c           = (OpAssoc a b) ★ c
= OpAssoc      a  (op b  c)          = OpAssoc a (b ★ c)
= op     (Atom a) (op b  c)          = Atom a ★ (b ★ c)
-- a * (b * c)
```

With that change, it is no longer necessary to be explicit with parentheses, at least as long as we are talking about this free monoid, but we *still have canonicity problems*. If the neutral element is `e`, then `e * a = a = a * e`, but we generate different representations for it.

## Ensuring neutrality

We can generally add or remove the neutral element from expressions without affecting equality, so it might be a good idea to have all our canonical representations have the same number of neutral elements.

Still, there is one expression (namely `e`) that requires at least one neutral element. So, we make our new representation always have *exactly* one neutral element.

Again, this is a change in the type of the `Op` ctor: we now require the left arg to have no neutral elements and the right arg to have exactly one.

We also drop the `Atom` ctor from our main type (it doesn't have enough neutral elements - it has zero, instead of the required one), but we reintroduce the `Neutral` ctor back into the main type.

```hs
data FMAtom a = Single a

data FreeMonoid a
  = OpAssoc (FMAtom a) (FreeMonoid a)
  | Neutral
```

Wait a minute, this is wasteful! `FMAtom a` and `a` (i.e. `Single a` = `a`) are really the same thing. Let's try that again.

```hs
data FreeMonoid a
  = OpAssoc a (FreeMonoid a)
  | Neutral

single :: a -> FreeMonoid a
single a = OpAssoc a Neutral

op :: FreeMonoid a -> FreeMonoid a -> FreeMonoid a
op Neutral        ys = ys
op (OpAssoc x xs) ys = OpAssoc x (op xs ys)
```

That should clear up our canonicity problems. Reasoning:

```hs
  op Neutral (single a) -- e * a
= single a              -- a
= OpAssoc a Neutral
= OpAssoc a (op Neutral Neutral)
= op (OpAssoc a Neutral) Neutral
= op (single a) Neutral -- a * e
```

A few simple renames:
- FreeMonoid  -> List
- OpAssoc     -> Cons
- Neutral     -> Nil
- op          -> (++)

make it clear that this free monoid is just the standard cons list; had we associated to the left, we'd get a snoc list instead.

As an aside,
>Non-empty list with elements of type `a` are a **free semigroup over `a`**; 
the choice of associativity would give us the cons or snoc represenation.


## Trees viewed algebraically

Turns out that binary trees with values of type `a` at leaves is a **free magma over `a`**. Here is a first attempt at building a free magma:

```hs
data FreeMagma a
  = Single a
  | Operation (FreeMagma a) (FreeMagma a)
```

In our free magma, we have the representation of any value from the underlying set, and a representation of applying an operation. Now in the free monoid case, our first representation had some problems that were caused by two things: the neutral element and associativity.

However, when moving from discussing monoids to semigroups, we lost the neutral element, so there is no work to be done in that case.

When moving from discussing semigroups to magmas, we also lost associatity, so there is no work to do there.

In fact, this is (tree) a perfectly valid free magma. 
If you don't see the trees for the forest, try renaming:
- FreeMagma -> Tree
- Single    -> Leaf
- Operation -> Branch


## For simplicity choose trees

We started from a simpler algebraic object (a magma instead of a monoid), translated it directly, did no additional work, and got trees.

Compare this with the several steps needed to derive lists from the definition of a monoid, and I think you'll agree that trees are actually simpler than lists!

Next time you are choosing a data structure for your tutorial, paper, or project, if simplicity is your primary motivator, choose trees.

More complex trees form the foundation of many high-performance persistent data structures, arise naturaly when parsing and evaluating, and are key in many wire protocols (e.g. JSON-RPC or REST).

With associative operations, even the lowly free magma can still be used as an intermediate, non-canonical representation *to delay reassociation* which may improve preformance.

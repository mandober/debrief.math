# Category Theory for Programmers

The book "Category theory for programmers" by Bartosz Milewski
https://bartoszmilewski.com/2014/10/28/category-theory-for-programmers-the-preface/

Live lectures "Category theory for programmers" by Bartosz Milewski, 2016
https://www.youtube.com/playlist?list=PLbgaMIhjbmEnaH_LTkxLI7FMa2HsnawM_


**TOC**

<!-- TOC -->

- [2. Types and Functions](#2-types-and-functions)
- [Bottom](#bottom)
- [2.4 Mathematical Model](#24-mathematical-model)
- [2.5 Purity](#25-purity)
- [2.6 Examples of Types](#26-examples-of-types)
    - [Void](#void)
    - [Unit](#unit)
    - [Bool](#bool)
- [Categories](#categories)
- [Directed Graphs](#directed-graphs)

<!-- /TOC -->


## 2. Types and Functions

Category theory is about composing arrows. But not any two arrows can be composed. The target object of one arrow must be the same as the source object of the next arrow. The two ends must fit for the composition to work. The stronger the type system of the language, the better this match can be described and mechanically verified.

The simplest intuition for types is that they are sets of values. The type `Bool`is a set containing 2 elements, `True` and `False` (hand-wave). Sets can be finite or infinite. The type of `String`, which is a synonym for `[Char]`, is an example of an infinite set.

When we declare x to be an `Integer`, `x :: Integer`, we are saying that it's an element of the set of integers. Integer in Haskell is an infinite set, and it can be used to do arbitrary precision arithmetic. There is also a finite-set `Int` that corresponds to machine type integer.

There are some subtleties that make this correspondence between Haskell types and sets tricky. There are problems with polymorphic functions that involve circular definitions, and with the fact that you can't have a set of all sets. The great thing is that there is a category of sets, which is called `𝐒𝐞𝐭`, and we'll just work with it. In `𝐒𝐞𝐭`, objects are sets and arrows are functions. `𝐒𝐞𝐭` is a very special category, because we can actually peek inside its objects and prime our intuitions for later.

## Bottom

Ideally, Haskell's types would be sets and Haskell's functions mathematical functions between sets. Haskell functions would be exactly like the functions in math, but while a math function just knows the result, a function in Haskell has to compute it. And where there's computation there's decidability problem. Namely, there are calculations, especially those involving recursion, that might never terminate. We can't just ban the non-terminating functions from Haskell because we can't identify them in the first place. Distinguishing between terminating and non-terminating functions is famously **undecidable**.

Instead, every type in Haskell is extended by a special value called the "**bottom**" and denoted by **⊥**. This "value" corresponds to a non-terminating computation.

So, this function

```hs
f :: Bool -> Bool
f x = True      -- (1)
f x = False     -- (2)
f x = undefined -- (3)  undefined :: Bool
f = undefined   -- (4)  undefined :: Bool -> Bool
```

may actually return 3 values (not just two): `True`, `False` and `undefined` (⊥)where bottom means it never terminates. The expression (3) type-checks fine because `undefined` evaluates to bottom, which is a member of any type, Bool included. The expression (4) shows that ⊥ is also a member of `Bool -> Bool`.

Functions that are not defined for all elements of the domain are partial, in fact any function that may return bottom is partial as well. Functions defined for all elements of the domain are total.

It is convenient to treat all runtime errors as bottom, and to even allow functions to return bottom explicitly, as `undefined` "value".

Because of bottom, the category of Haskell types and functions is referred to as `Hask` rather than `𝐒𝐞𝐭`; from pragmatical point of view, it's acceptable to ignore the non-terminating functions and bottoms and treat `Hask` as bona fide `𝐒𝐞𝐭`.


## 2.4 Mathematical Model

**Operational semantics** describes the semantics of a language in terms of an abstract machine used to interpret a program. It is hard to prove properties of a program using operational semantics; to show a property of a program, you essentially have to *operate* it - run it on the abstract machine, describing what happens.

**Denotational semantics** is based on mathematical notation; there's no running programs - the static source code is enough to prove a program's properties. The source code itself, particularly the types, *denotes* mathematical theorems. The issue with this approach to describing semantics is that a PL needs to be pure.

The purity is a desirable property of a PL, but it wasn't always clear how to deal with side effects in such a language; e.g. what is the mathematical model for reading a character from the keyboard, or sending a packet across the network. The solution came from category theory; *Eugenio Moggi* discovered that computational effects can be mapped to monads. And with that, purely functional languages like Haskell became better then others, also due to the fact that having a mathematical model for describing language semantics allows automating the formal proofs of program correctness. And nothing is better then the software whose correctness can be proven mathematically (even though most people prefer fast to correct software).


## 2.5 Purity

A function that always produces the same result given the same input and has no side effects is a pure function. In a pure functional language, like Haskell, all functions are pure. Because of that, it's easier to give pFPLs denotational semantics and model them using category theory. As for other languages, it's always possible to restrict yourself to a pure subset, or reason about side effects separately, or have lots of money to burn.


## 2.6 Examples of Types

Sets            | Types
----------------|---------------------------
∅               | Void
F: ∅ -> A       | absurd :: Void -> a
⊥: A -> ∅       | impossible :: a -> Void
----------------|---------------------------
{ ∅ }           | ()
from: {∅} -> A  | konst :: () -> a
into: A -> {∅}  | unit :: a -> ()



### Void

With types as sets, the type corresponding to an empty set is `Void`; it's a type that's not inhabited by any values.

`f: ∅ -> A` : `absurd :: Void -> a`

You can define a function that takes `Void`, but you can never call it. Such a fn may return any type at all (it is polymorphic in the return type), which mathes the situation in logic, with `Void` being falsum and "ex falso quidlibet".

A function that takes any type into `Void` cannot exists, or we'd had to return a value of the elusive `Void` type. Although, we can just diverge and never returning.


### Unit

In Haskell, the type corresponding to a singleton set is unit; its data ctor and the sole value are all denoted by `()`.

A function from unit can always be called: it's a pure function that always return the same result; e.g. when instantiated to Int, it takes `()` into `Int`

```hs
from_unit :: () -> Int
from_unit () = 44
```

Every function from unit is equivalent to picking a single element from the target type, which is an example of how we can replace explicit mention of elements of a set by talking about functions (arrows) instead.

Functions from unit to any type 𝐴, are in 1-to-1 correspondence with the elements of that set 𝐴. If 𝐴 has n elements, there are n such functions.

Mathematically, a function from set 𝐴 to a singleton set maps every element of 𝐴 to the only element in the singleton set. For every 𝐴 there is exactly one such function.

A pure function that returns unit does nothing, it just discards its arg.

```hs
into_unit :: Int -> ()
into_unit _ = ()
```

A fn from Int into unit takes any int and returns the unit, depending neither on the arg's value nor on arg's type. Functions that can be implemented with the same equation for any type are *parametrically polymorphic*. You can implement a whole family of such functions with one equation using a type parameter instead of a concrete type.

> Any type has exactly one function from itself into unit.

The polymorphic function from any type to unit is called `unit`. The above fn is one of its instantiations.

```hs
unit :: a -> ()
unit _ = ()
```

If a type has `n` elements, there are exactly `n` functions from unit to that type. All of them will have the same signature and each will pick a different element from the codomain.


### Bool

`Bool` is the type inhabited by two values.

Pure functions from Bool just pick values from the target type, one corresponding to `True` and another to `False`.

Functions to Bool are called predicates.

```hs
-- 1 function from any/every type to ()
unit :: Bool -> ()
unit _ = ()

-- n functions from () to the type N (that has n elements)
true :: () -> Bool
true () = True

false :: () -> Bool
false () = False
```

To form a category, `()` and `Bool` must have `id` functions each.



## Categories

The most trivial category is the one with no objects and, consequently, no morphisms.

It's not very useful by itself, but it's important in the context of other categories, for instance, in the category of all categories.


## Directed Graphs

You can build categories just by connecting objects with arrows. You can start with a directed graph and make it into a category by adding more arrows. First, the identity arrow at each node, then, for any two arrows such that the end of one coincides with the beginning of the other (any two composable arrows), add a new arrow to serve as their composition.

Every time you add a new arrow, you have to also consider its composition with any other arrow (except for the identity arrows) and itself. You usually end up with infinitely many arrows, but that's okay.

Another way of looking at this process is that you're creating a category, which has an object for every node in the graph, and all possible chains of composable graph edges as morphisms. You may even consider identity morphisms as special cases of chains of length zero.

That category, generated by a given graph, is called a **free category**. It's an example of *free construction* - a process of completing a given structure by extending it with a minimum number of items to satisfy the axioms (of categories).

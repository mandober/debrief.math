# Category Theory for Programmers

By Bartosz Milewski

## Introduction

> A category consists of objects and arrows (morphisms). Arrows can be composed, and the composition is associative. Every object has an identity arrow that serves as a unit under composition.

A category consists arrows (morphisms) that go between them.

The essence of a category is composition. Arrows compose, and if there's an arrow from object A to object B, and an arrow from object B to object C, then there **must be an arrow**, their composition, that goes from A to C.

Mathematically composition is denoted by a small circle between two function that are listed in right to left application order (the function to apply first is on the right) order, g ◦ f, which you might read as "g after f" to remind yourself about the proper order.

$$
(f: A \to B ∧ g: B \to C) \to (g \circ f: A \to C) \\
\ \\
f(a) = b \\
g(b) = c = g(f(a)) \\
g \circ f [x] = g(f(a))
$$

In Haskell, double colon means "has the type of". A function type is created by inserting an arrow between two types. You compose two functions by inserting a dot between them.

Axioms of composition:
1. Associativity: $$g \circ (f \circ h) = (g \circ f) \circ h$$
2. Identity: every object has an identity arrow, which is a unit of composition

The identity arrow loops from an object back to itself. Being a unit of
composition means that, when composed with any arrow that either starts or ends at A, it gives back the same arrow. The unit arrow for object A is called identity on A, denoted by $$Id_A$$.

$$(f:A\to B) \to (f \circ Id_A = f = Id_B \circ f)$$


## Composition is the Essence of Programming

We decompose bigger problems into smaller problems. If the smaller problems are still too big, we decompose them further, and so on. Finally, we write code that solves all the small problems. And then comes the essence of programming: we compose those pieces of code to create solutions to larger problems. Decomposition wouldn't make sense if we weren't able to put the pieces back together. This process of hierarchical decomposition and recomposition is not imposed on us by computers, but reflects the limitation of the human mind. Our brains can only deal with a small number of concepts at a time ("The Magical Number Seven, Plus or Minus Two" theory postulates that we can only keep 7±2
chunks of information in the short-term memory at a time).

So what are the right chunks for the composition of programs? Their surface area has to increase slower than their volume. (I like this analogy because of the intuition that the surface area of a geometric object grows with the square of its size — slower than the volume, which grows with the cube of its size.) The surface area is the information we need in order to compose chunks. The volume is the information we need in order to implement them. The idea is that, once a chunk is implemented, we can forget about the details of its implementation and concentrate on how it interacts with other chunks. In object-oriented programming, the surface is the class declaration of the object, or its abstract interface. In functional programming, it's the declaration of a function.

Category theory is extreme in the sense that it actively discourages us from looking inside the objects. An object in category theory is an abstract nebulous entity. All you can ever know about it is how it relates to other objects — how it connects with them using arrows.

In object-oriented programming, an idealized object is only visible through its abstract interface (pure surface, no volume), with methods playing the role of arrows. The moment you have to dig into the implementation of the object in order to understand how to compose it with other objects, you've lost the advantages of your programming paradigm.

## Types and Functions

Category theory is about composing arrows. But not any two arrows can be composed. The target object of one arrow must be the same as the source object of the next arrow. The two ends must fit for the composition to work. The stronger the type system of the language, the better this match can be described and mechanically verified.

The simplest intuition for types is that they are sets of values. The type `Bool`is a set containing 2 elements, `True` and `False` (hand-wave). Sets can be finite or infinite. The type of `String`, which is a synonym for `[Char]`, is an example of an infinite set.

When we declare x to be an `Integer`, `x :: Integer`, we are saying that it's an element of the set of integers. Integer in Haskell is an infinite set, and it can be used to do arbitrary precision arithmetic. There is also a finite-set `Int` that corresponds to machine type integer.

There are some subtleties that make this correspondence between Haskell types and sets tricky. There are problems with polymorphic functions that involve circular definitions, and with the fact that you can't have a set of all sets. The great thing is that there is a category of sets, which is called `𝐒𝐞𝐭`, and we'll just work with it. In `𝐒𝐞𝐭`, objects are sets and arrows are functions. `𝐒𝐞𝐭` is a very special category, because we can actually peek inside its objects and prime our intuitions for later.

## Bottom

Ideally, Haskell's types would be sets and Haskell's functions mathematical functions between sets. Haskell functions would be exactly like the functions in math, but while a math function just knows the result, a function in Haskell has to compute it. And where there's computation there's decidability problem. Namely, there are calculations, especially those involving recursion, that might never terminate. We can't just ban the non-terminating functions from Haskell because we can't identify them in the first place. Distinguishing between terminating and non-terminating functions is famously **undecidable**.

Instead, every type in Haskell is extended by a special value called the "**bottom**" and denoted by **⊥**. This "value" corresponds to a non-terminating computation. So, a function declared as:

```hs
f :: Bool -> Bool
f x = True      -- 1
f x = False     -- 2
f x = undefined -- 3
f = undefined
```

may actually return 3 values (instead of just two): True, False and ⊥ (bottom), with the bottom meaning it would never terminate.

The second to last expression type-checks fine because `undefined` evaluates to bottom, which is a member of any type, including the Boolean. The last expression shows that bottom is also a member of `Bool -> Bool` type.

Along with functions that are not defined for all elements of the domain, functions that may return bottom are a type of **partial functions**. On the other hand, functions that are defined for each element in the domain are **total functions** and they return a valid result for every possible input.

Interestingly, once you accept the bottom as part of the type system, it is convenient to treat every runtime error as a bottom, and even allow functions to return the bottom explicitly. The latter is usually done using the "value" **`undefined`**.

Because of the bottom, the category of Haskell types and functions is referred to as `Hask` rather than `𝐒𝐞𝐭`. From the theoretical point of view, this is the source of never-ending complications; from a pragmatical point of view, it's okay to ignore the non-terminating functions and bottoms and treat `Hask` as bona fide `𝐒𝐞𝐭`.


## Mathematical Model

**Operational semantics** describes the mechanics of program execution. It defines a formalized idealized interpreter. The semantics of a language, such as C++, is usually described using informal operational reasoning, often in terms of an“abstract machine. The problem is that it's very hard to prove things about programs using operational semantics. To show a property of a program you essentially have to run it through the idealized interpreter.

**Denotational semantics** is based on math. In denotational semantics every programming construct is given its mathematical interpretation. With that, if you want to prove a property of a program, you just prove a mathematical theorem.

But what is the mathematical model for reading a character from the keyboard or sending a packet across the network? For the longest time that would have been an awkward question leading to a rather convoluted explanation. It seemed like denotational semantics wasn't the best fit for a considerable number of important tasks that were essential for writing useful programs, and which could be easily tackled by operational semantics. The breakthrough came from category theory. *Eugenio Moggi* discovered that computational effect can be mapped to *monads*. This turned out to be an important observation that not only gave denotational semantics a new lease on life and made pure functional programs more usable, but also shed new light on traditional programming.

One of the important advantages of having a mathematical model for programming is that it's possible to perform formal proofs of correctness of software.

## Purity

A function that always produces the same result given the same input and has no *side effects* is called **pure functions**.

In a pure functional language like Haskell all functions are pure. Because of that, it's easier to give these languages denotational semantics and model them using category theory. As for other languages, it's always possible to restrict yourself to a pure subset, or reason about side effects separately.

## Void

Since types are sets, we can consider the type corresponding to an empty set - it's a type that's not inhabited by any values.

### From void

f: ∅ -> A

You can define a function that takes Void, but you can never call it. To call it, you would have to provide a value of the type Void, and there just aren't any. As for what this function can return, there are no restrictions - it can return any type (although it never will, because it can't be called). In other words, it's a function that's *polymorphic in the return type*.

```hs
absurd :: Void -> a
```

The name is not coincidental. There is deeper interpretation of types and functions in terms of logic called the *Curry-Howard isomorphism*. The type Void represents falsity, and the type of the function absurd corresponds to the statement that from falsity follows anything, as in the Latin adage *"ex falso sequitur quodlibet"*.

### Into void

f: A -> ∅

How about the other way around - a function that takes any type into void? I guess this is the *bottom* value that marks a diverging computation [I guess]. The bottom is symbolically denoted as `⊥` and goes under the name `undefined` in Haskell.

```hs
absurd :: a -> Void
absurd' :: a -> undefined
```


## Unit

The type corresponding to a *singleton set* has only one possible value. In Haskell, this type (and value) is called *unit*. The same symbol, `()`, is used for the type constructor and for its sole value (in C it is `void`).


### From unit

f: {∅} -> A

A function from unit can always be called: it's a pure function that always return the same result, e.g. f44 takes the unit into integer.

```hs
f44 :: () -> Integer
f44 () = 44
```

Every function of unit is equivalent to picking a single element from the target type, so in fact, you could think of f44 as a different representation for the number 44.

This is an example of how we can replace explicit mention of elements of a set by talking about functions (arrows) instead:

> Functions from unit to any type 𝐴, are in 1-1 correspondence with the elements of that set 𝐴. **If 𝐴 has n elements, there are n such functions**.


### Into unit

f: A -> {∅}

A pure function that returns unit does nothing: it discards its argument.

> Mathematically, a function from set 𝐴 to a singleton set maps every element of 𝐴 to the sole element in the singleton set. **For every 𝐴 there is exactly one such function**.

Function from Integer into unit: give it any integer and it gives back a unit:

```hs
fInt :: Integer -> ()
fInt _ = ()
```

This function depends neither on the argument's value nor on its type.

Functions that can be implemented with the same formula for any type are called **parametrically polymorphic**. You can implement a whole family of such functions with one equation using a type parameter instead of a concrete type. The polymorphic function from any type to unit is called *unit* as well:

```hs
unit :: a -> ()
unit _ = ()
```

and in C++ write as:

```cpp
template<class T>
void unit(T) {}
```

## Bool

`Bool` is next in the typology of types: it is a two-element set.

Pure functions from Bool just pick two values from the target type, one corresponding to True and another to False.

Functions to Bool are called **predicates**.

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

**If a type has `n` elements, there are exactly `n` functions from unit to that type.** All of them will have the same signature and each will pick a different element from the codomain.

**Any type has exactly one function from itself into unit.**


To form a category unit and Bool must also have the id functions each.


## Categories

The most trivial category is the one with no objects and, consequently, no morphisms.

It’s not very useful by itself, but it's important in the context of other categories, for instance, in the category of all categories.

### Directed Graphs

You can build categories just by connecting objects with arrows. You can start with a directed graph and make it into a category by adding more arrows. First, the identity arrow at each node, then, for any two arrows such that the end of one coincides with the beginning of the other (any two composable arrows), add a new arrow to serve as their composition.

Every time you add a new arrow, you have to also consider its composition with any other arrow (except for the identity arrows) and itself. You usually end up with infinitely many arrows, but that’s okay.

Another way of looking at this process is that you’re creating a category, which has an object for every node in the graph, and all possible chains of composable graph edges as morphisms. You may even consider identity morphisms as special cases of chains of length zero.

That category, generated by a given graph, is called a **free category**. It’s an example of *free construction* - a process of completing a given structure by extending it with a minimum number of items to satisfy the axioms (of categories).

### Orders

A **preorder** is a set together with a "less than or equal" (LE) relation.

Preorder is an example of a category where morphisms are relation between objects. Preorder has *identity* morphism since every object is related to itself, `x<=x`. It also has *associative composition*:    
`(𝑎 ⩽ 𝑏 ∧ 𝑏 ⩽ 𝑐) -> 𝑎 ⩽ 𝑐`

A **partial order** is a set with a relation that is also *antisymmetric*:    
`(𝑎 ⩽ 𝑏 ∧ 𝑏 ⩽ a) -> 𝑎 = b`

A **linear order** or **total order** also satisfies the axiom of *trichotomy* which states that any two elements must be in relation with each other: either `𝑎 ⩽ 𝑏` or `b ⩽ a`.

A preorder is a category where there is at most one morphism going from any object 𝑎 to any object 𝑏. Another name for such a category is *thin*. A preorder is a **thin category**.

A set of morphisms from object 𝑎 to object 𝑏 in a category 𝐂 is called a hom-set and is written as 𝐂(𝑎, 𝑏), or, sometimes, Hom𝐂(𝑎, 𝑏).

So every hom-set in a preorder is either empty or a singleton.

That includes the hom-set 𝐂(𝑎, 𝑎), the set of morphisms from 𝑎 to 𝑎, which must be a singleton, containing only the identity, in any preorder. You may, however, have cycles in a preorder. Cycles are forbidden in a partial order.

It’s very important to be able to recognize preorders, partial orders,
and total orders because of sorting. Sorting algorithms, such as quicksort, bubble sort, merge sort, etc., can only work correctly on total orders. 

Partial orders can be sorted using *topological sort*.

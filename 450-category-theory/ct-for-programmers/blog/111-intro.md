# Category Theory for Programmers, part I

The book "Category theory for programmers" by Bartosz Milewski
https://bartoszmilewski.com/2014/10/28/category-theory-for-programmers-the-preface/

Live lectures "Category theory for programmers" by Bartosz Milewski, 2016
https://www.youtube.com/playlist?list=PLbgaMIhjbmEnaH_LTkxLI7FMa2HsnawM_


**TOC**

<!-- TOC -->

- [Introduction](#introduction)
- [Analysis and synthesis](#analysis-and-synthesis)

<!-- /TOC -->

## Introduction

In abstract algebra, a category is an algebraic structure consisting of the underlying (carrier) set and a binary operation that respects totality (it is closed over the carrier set), associativity and identity.

A category consists of objects and arrows (morphisms) that go between them.

Arrows can be composed, and the composition is associative. Every object has an identity arrow that serves as a unit under the binary operation of composition.



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


## Analysis and synthesis

We decompose bigger problems into smaller problems. If the smaller problems are still too big, we decompose them further, and so on. Finally, we write code that solves all the small problems. And then comes the essence of programming: we compose those pieces of code to create solutions to larger problems. Decomposition wouldn't make sense if we weren't able to put the pieces back together. This process of hierarchical decomposition and recomposition is not imposed on us by computers, but reflects the limitation of the human mind. Our brains can only deal with a small number of concepts at a time ("The Magical Number Seven, Plus or Minus Two" theory postulates that we can only keep 7±2
chunks of information in the short-term memory at a time).

So what are the right chunks for the composition of programs? Their surface area has to increase slower than their volume. (I like this analogy because of the intuition that the surface area of a geometric object grows with the square of its size — slower than the volume, which grows with the cube of its size.) The surface area is the information we need in order to compose chunks. The volume is the information we need in order to implement them. The idea is that, once a chunk is implemented, we can forget about the details of its implementation and concentrate on how it interacts with other chunks. In object-oriented programming, the surface is the class declaration of the object, or its abstract interface. In functional programming, it's the declaration of a function.

Category theory is extreme in the sense that it actively discourages us from looking inside the objects. An object in category theory is an abstract nebulous entity. All you can ever know about it is how it relates to other objects — how it connects with them using arrows.

In object-oriented programming, an idealized object is only visible through its abstract interface (pure surface, no volume), with methods playing the role of arrows. The moment you have to dig into the implementation of the object in order to understand how to compose it with other objects, you've lost the advantages of your programming paradigm.

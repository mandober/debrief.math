# Programming with Categories

Programming with Categories (draft)
Brendan Fong, Bartosz Milewski and David Spivak
2021

This book is actually derived from the course lecture notes
http://brendanfong.com/programmingcats_files/cats4progs-DRAFT.pdf

MIT *18.S097: Programming with Categories* IAP 2020
with Brendan Fong Bartosz Milewski David I. Spivak
http://brendanfong.com/programmingcats.html

Playlist of lectures
https://www.youtube.com/playlist?list=PLhgq-BqyZ7i7MTGhUROZy3BOICnVixETS


## TOC

1-categories.md
2-universal-construction.md
3-functors.md
4-algebra.md
5-monad.md
6-monoid.md
7-profunctor.md

1. Categories, Types, and Functions
  1.1 Programming: the art of composition
  1.2 Two fundamental ideas: sets and functions
    1.2.1 What is a set
    1.2.2 Functions
    1.2.3 Some intuitions about functions
  1.3 Categories
    1.3.1 Motivation: the category of sets
    1.3.2 The definition of a category
    1.3.3 Examples of categories
    1.3.4 Thinking in a category: the Yoneda perspective
  1.4 Categories and Haskell
    1.4.1 The lambda calculus
    1.4.2 Types
    1.4.3 Haskell functions
    1.4.4 Composing functions
    1.4.5 Thinking categorically about Haskell

2. Universal constructions and the algebra of types
  2.1 Constructing datatypes
  2.2 Universal constructions
    2.2.1 Terminal objects
    2.2.2 Initial objects
    2.2.3 Products
    2.2.4 Coproducts
  2.3 Type constructors
    2.3.1 Type constructors
    2.3.2 Unit and void
    2.3.3 Tuple types
    2.3.4 Sum types
  2.4 Exponentials and function types
    2.4.1 Interlude: Distributivity
    2.4.2 Exponential objects
    2.4.3 Function types, and currying in Haskell

3. Functors, natural transformations, and type polymorphism
  3.1 Relationships, relationships, relationships
  3.2 Functors
    3.2.1 Definition
    3.2.2 Examples of functors
    3.2.3 Functors and shapes
    3.2.4 The category of categories
  3.3 Type classes
    3.3.1 Polymorphism in Haskell
    3.3.2 Defining type classes and instances
  3.4 Functors in Haskell
    3.4.1 The Functor type class
    3.4.2 First examples of functors in Haskell
    3.4.3 Bifunctors
    3.4.4 A first glance at profunctors
  3.5 Natural transformations
    3.5.1 Definition
    3.5.2 Natural transformations in Haskell
  3.6 Bonus: Representable functors and the Yoneda embedding

4. Algebras and recursive data structures
  4.1 The string before the knot
  4.2 What you can do with recursive data types
  4.3 Algebras
  4.4 Initial algebras
  4.4.1 Lambek's lemma
  4.5 Recursive data structures
    4.5.1 Returning to expression trees
    4.5.2 The essence of recursion
    4.5.3 Algebras, catamorphsims, and folds
  4.6 Coalgebras, anamorphsims, and unfolds
    4.6.1 The type of streams, as a terminal coalgebra
    4.6.2 The stream of prime numbers
  4.7 Fixed points in Haskell
    4.7.1 Implementing initial algebras by universal property
    4.7.2 Implementing terminal coalgebras by universal property

5. Monads
  5.1 A teaser
  5.2 Different ways of working with monads
    5.2.1 Monads in terms of the fish
    5.2.2 Monads in terms of join
    5.2.3 Monads in terms of bind
    5.2.4 Monads in terms of the do notation
    5.2.5 Monads and effects
  5.3 Examples of monads
    5.3.1 The exceptions monads
    5.3.2 The list monad and nondeterminism
    5.3.3 The writer monads
    5.3.4 The reader monads
    5.3.5 The state monads
    5.3.6 The continuation monads
    5.3.7 The IO monad

6. Monoidal Categories
  6.1 Lax Monoidal Functors
    6.1.1 Monad as Applicative
  6.2 Strength and enrichment

7. Profunctors
  7.1 Profunctors revisited
  7.2 Ends and Coends
  7.3 Profunctors in Haskell
  7.4 Category of profunctors
    7.4.1 Category of profunctors in Haskell
  7.5 Day convolution
    7.5.1 Day convolution in Haskell
  7.6 Optics
    7.6.1 Motivation
    7.6.2 Tensorial optics
    7.6.3 Lens
    7.6.4 Lens in Haskell
    7.6.5 Prism
    7.6.6 Prism in Haskell
  7.7 Profunctor optics
    7.7.1 Tambara modules
    7.7.2 Profunctor optics in Haskell

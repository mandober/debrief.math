# Initial algebra

https://en.wikipedia.org/wiki/Initial_algebra

An **initial algebra** is an *initial object* in the *category of F-algebras* for a given *endofunctor* `F`. This initiality provides a general framework for induction and recursion.

## Functor `1 + (−)`

- 1 + (−)
- (-) + 1
the dash represents a type placeholder and it is usually parenthesized.


Consider the endofunctor `F : Set → Set` sending `X` to `1 + X`, where 1 is the one-point (singleton) set, the terminal object in the category.

An algebra for this endofunctor is a set `X` (called the carrier of the algebra) together with a function `f : (1 + X) → X`. Defining such a function amounts to defining a point `x ∈ X` and a function `X → X`. Define 

```
zero : 1 -> ℕ
       * ⟼ 0

succ : ℕ -> ℕ
       n ⟼ n + 1
```

Then the set `ℕ` of natural numbers together with the function `[zero, succ] : 1 + ℕ → ℕ` is an initial F-algebra.

The *initiality* (the universal property for this case) is not hard to establish: the *unique homomorphism to an arbitrary F-algebra* `(A, [e, f])`, for `e : 1 → A` an element of `A`, and `f : A → A`, a function on `A`, is the function sending a natural number `n` to `fⁿ e`, that is, `f (f (… (f e) … ))`, the n-fold application of `f` to `e`.

The set of natural numbers is the carrier of an initial algebra for this functor: the *point* is `zero` and the *function* is `succ` function.

## Functor `1 + N × (−)`

- 1 + N × (−)
- N × (-) + 1

Consider the endofunctor `1 + ℕ × (−)` on the category of sets, where `ℕ` is the set of natural numbers. An algebra for this endofunctor is a set `X` together with a function `1 + N × X → X`. To define such a function, we need a point `x ∈ X` and a function `ℕ × X → X`.

The set of finite lists of natural numbers is an initial algebra for this functor. The point is the empty list, `[]`, and the function is `cons`, taking a number and a finite list, and returning a new finite list with the number at the head.

In categories with binary coproducts, the definitions just given are equivalent to the usual definitions of a natural number object and a list object, respectively.

## Theorems

- Initial algebras are minimal (i.e. have no proper subalgebra)
- Final coalgebras are simple (i.e. have no proper quotients)

## Use in computer science

Various finite data structures used in programming, such as lists and trees, can be obtained as initial algebras of specific endofunctors.

While there may be several initial algebras for a given endofunctor, they are unique up to isomorphism, which informally means that the "observable" properties of a data structure can be adequately captured by defining it as an initial algebra.

To obtain the type `List(A)` of lists whose elements are members of set `A`, consider that the list-forming operations are:
- nil : 1 -> List(A)
- cons : A × List(A) -> List(A)

Combined into one function, they give:
- [nil,cons] : (1 + A × List(A)) -> List(A)

which makes this an F-algebra for endofunctor F sending `X` to `1 + (A × X)`.

It is, in fact, the initial F-algebra. Initiality is established by the function known as `foldr` in Haskell.


Likewise, binary trees with elements at the leaves can be obtained as the initial algebra
- [tip,join] : A + (Tree(A) × Tree(A)) -> Tree(A)

Types obtained this way are known as *algebraic data types*.

>Types defined by using *least fixed point construct* with functor `F` can be regarded as an *initial F-algebra*, provided that parametricity holds for the type.


In a dual way, similar relationship exists between notions of *greatest fixed point* and *terminal F-coalgebra*, with applications to coinductive types.

These can be used for allowing potentially infinite objects while maintaining *strong normalization property*.

In the strongly normalizing (each program terminates) "Charity" programming language, coinductive data types can be used for achieving surprising results, e.g. defining lookup constructs to implement such "strong" functions like the Ackermann function.

## Refs



Initiality And Finality
http://tunes.org/wiki/initiality_20and_20finality.html

Algebra And Coalgebra
http://tunes.org/wiki/algebra_20and_20coalgebra.html

Induction And Co-Induction
http://tunes.org/wiki/induction_20and_20co-induction.html


## External links

- `Categorical programming with inductive and coinductive types` by Varmo Vene
http://www.cs.ut.ee/~varmo/papers/thesis.pdf

- `Recursive types for free!` by Philip Wadler, 1998
http://homepages.inf.ed.ac.uk/wadler/papers/free-rectypes/free-rectypes.txt

- `Initial Algebra and Final Coalgebra Semantics for Concurrency`
by J.J.M.M. Rutten and D. Turi
http://citeseer.ist.psu.edu/rutten94initial.html

- `Initiality and finality` from CLiki
http://tunes.org/wiki/initiality_20and_20finality.html

- `Typed Tagless Final Interpreters`, by Oleg Kiselyov
http://okmij.org/ftp/tagless-final/course/lecture.pdf

- Robin Cockett: `Charitable Thoughts`
(ps.gz) http://pll.cpsc.ucalgary.ca/charity1/download/literature/papers_and_reports/charitable.ps.gz

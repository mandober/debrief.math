# Coinduction

https://en.wikipedia.org/wiki/Coinduction

In computer science, **coinduction** is a technique for defining and proving properties of systems of *concurrent interacting objects*.

Coinduction is the mathematical dual to structural induction.

Coinductively defined data types are known as *codata* and are typically infinite data structures, such as streams.

As a definition or specification, coinduction describes how an object may be "observed", "broken down" or "destructed" into simpler objects.

As a proof technique, coinduction may be used to show that an equation is satisfied by all possible implementations of such a specification.

To generate and manipulate codata, one typically uses *corecursive functions*, in conjunction with lazy evaluation. Informally, rather than defining a function by pattern-matching on each of the inductive constructors, one defines each of the "destructors" or *"observers" over the function result*.

Co-logic programming (co-LP) is a natural generalization of logic programming and coinductive logic programming, which in turn generalizes other extensions of logic programming, such as infinite trees, lazy predicates, and concurrent communicating predicates. Co-LP has applications to rational trees, verifying infinitary properties, lazy evaluation, concurrent logic programming, model checking, bisimilarity proofs, etc.

## Contents

- 1. Description
  - 1.1. Preliminaries
  - 1.2. Definition
- 2. Discussion
- 3. Examples
  - 3.1. Defining a set of datatypes
  - 3.2. Coinductive datatypes in programming languages
  - 3.3. Relationship with F-coalgebras
    - 3.3.1. Stream as a final coalgebra
  - 3.4. Relationship with mathematical induction
- 4. See also
- 5. References

## Description

In "Types and Programming Languages" by Benjamin Pierce, the principle of induction and the principle of coinduction are defined concisely.

### Preliminaries

Let `U` be a set and `F` be a monotone function `2ᵁ → 2ᵁ`, `X ⊆ Y ⇒ F X ⊆ F Y`. Unless otherwise stated, `F` will be assumed to be monotone.
- `X` is F-closed      if `F X ⊆ X`
- `X` is F-consistent  if `X ⊆ F X`
- `X` is a fixed point if `X = F(X)`

These terms can be intuitively understood in the following way. Suppose that `X` is a set of assertions, and `F X` is the operation that yields the consequences of `X`. Then `X` is F-closed when you cannot conclude anymore than you already asserted, while `X` is F-consistent when all of your assertions are supported by other assertions (i.e. there are no "non-F-logical assumptions").

The Knaster-Tarski theorem tells us that the *least fixed-point* of `F`, denoted `μF`, is given by the intersection of all F-closed sets, while the *greatest fixed-point*, denoted `νF`, is given by the union of all F-consistent sets.

- `μ` least fixpoint
- `ν` greatest fixpoint

We can now state the principles of induction and coinduction.

### Definition

>**Principle of induction**: If `X` is F-closed, then `μF ⊆ X`.
>**Principle of coinduction**: If `X` is F-consistent, then `X ⊆ νF`.

## Discussion

The principles, as stated, are somewhat opaque, but can be usefully thought of in the following way. 

Suppose you wish to prove a property of `μF`. By the principle of induction, it suffices to exhibit an F-closed set `X` for which the property holds. 

Dually, suppose you wish to show that `x ∈ νF`. Then it suffices to exhibit an F-consistent set that `x` is known to be a member of.

## 3. Examples

### 3.1. Defining a set of datatypes


### 3.2. Coinductive datatypes in programming languages

Consider the following definition of a stream:

```hs
data Stream a = S a (Stream a)

-- Stream "destructors"
head (S a astream) = a
tail (S a astream) = astream
```

This would seem to be a definition that is not well-founded, but it is nonetheless useful in programming and can be reasoned about. In any case, a stream is an infinite list of elements from which you may observe the first element, or place an element in front of to get another stream.


### 3.3. Relationship with F-coalgebras

Generic Programming with Adjunctions - Ralf Hinze, 2012

https://en.wikipedia.org/wiki/F-coalgebra



#### 3.3.1. Stream as a final coalgebra

We will show that

`Stream A` is the final coalgebra of the functor `F(x) = A × x`. Consider the following implementations:

```hs
out astream = (head astream, tail astream)
out' (a, astream) = S a astream
```

These are easily seen to be mutually inverse, witnessing the isomorphism. See the reference for more details.

### 3.4. Relationship with mathematical induction

We will demonstrate how the principle of induction subsumes mathematical induction. Let `P` be some property of natural numbers. We will take the following definition of mathematical induction:

    0 ∈ P ∧ (n ∈ P ⇒ Sn ∈ P) ⇒ P = N

Now consider the function `F : 2ᴺ → 2ᴺ`

    F X = {0} ∪ {S x | x ∈ X}

It should not be difficult to see that `μF = N`. Therefore, by the principle of induction, if we wish to prove some property `P` of `N`, it suffices to show that `P` is F-closed. In detail, we require: `F(P) ⊆ P`. That is,

    {0} ∪ {S x | x ∈ P} ⊆ P

This is precisely mathematical induction as stated.


## See also

F-coalgebra
Corecursion
Bisimulation
Anamorphism
Total functional programming

https://en.wikipedia.org/wiki/F-coalgebra
https://en.wikipedia.org/wiki/Corecursion
https://en.wikipedia.org/wiki/Bisimulation
https://en.wikipedia.org/wiki/Anamorphism
https://en.wikipedia.org/wiki/Total_functional_programming

## Refs

- Gopal Gupta, Homepage
https://personal.utdallas.edu/~gupta/
http://www.utdallas.edu/~gupta/iclp07.pdf

- Co-Logic Programming
http://lambda-the-ultimate.org/node/2513

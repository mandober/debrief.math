# 11. Dependent Types

## TOC

11. Dependent Types
  - 11.1 Dependent Vectors
  - 11.2 Dependent Types Categorically
    - Fibrations
    - Type families as fibrations
    - Slice categories
    - Coslice categories
    - Pullbacks
    - Base-change functor
  - 11.3 Dependent Sum
    - Existential quantification
  - 11.4 Dependent Product
    - Dependent product in Haskell
    - Dependent product of sets
    - Dependent product categorically
    - Universal quantification
  - 11.5 Equality
    - Equational reasoning
    - Equality vs isomorphism
    - Equality types
    - Introduction rule
    - β-reduction and η-conversion
    - Induction principle for natural numbers
    - Equality elimination rule


## 11. Dependent Types

Types may depend on other types - generic types are types parameterized by types. Their type ctors have type parameters, like `Maybe a` or [a].

In fact, the `Maybe` type ctor can be viewed as a function on types - it takes a single type `a` and produces a type `Maybe a`.

>Categorically, generic types are modeled as functors.

Type ctors without a Functor instance (all nullary types, e.g. `Bool`) can be thought of as functors from a discrete category - a category with no arrows other than identities.

A natural generalization of this idea is to have types parameterized by values, called *dependent types*.

The canonical example of a dependent type is a vector, i.e. a list parameterized by its length (length is a term-level value, i.e. an `Int`). An empty list would have a different type than a list of length one, and so on. Changing the length of a vector also changes its type. This is not a problem in FP, where all data is immutable anyway. When we prepend an element to a list, a new list is created (at least conceptually), but with a length-encoded list, the new list has a different type.

The reason for using dependent types in programming is to make programs provably correct. In order to do that, the compiler must be able to check the assumptions made by the programmer.

Powerful as it is, Haskell's type system provides no support for dependent typing. Hell, we cannot encode, and the type system cannot enforce, even the algebraic laws - unit and associativity axioms - for the Monoid class. For that, an instance of the Monoid class would have to carry with itself proofs of equality (in pseudocode):

```hs
assoc :: m <> (n <> p) = (m <> n) <> p
lunit :: mempty <> m = m
runit :: m <> mempty = m
```

Dependent types, and equality types in particular, pave the way towards this goal, so switch to Agda or Idris.


To avoid confusion between fibers and functions, this chapter uses capital letters for objects.

## 11.1 Dependent Vectors

Haskell is not dependetly-typed language, but some level of support for dependent types can be squeezed out using tricks like singleton types et al.

The canonical example of a dependent type is a vector - a list parameterized by its length.

```hs
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE GADTs     #-}

data Vec (n :: Nat) (a :: Type) where
  VNil  :: Vec Z a
  VCons :: a -> Vec n a -> Vec (S n) a
```

The first argument of the `Vec` type ctor is a natural number `n`. In proper dependently-typed languages, this is a value, not strictly a type, although such languages do not make a disctinction between values and types. In Agda, we can put a literal natural number in there, like 0, (yes, in decimal notation).

On the other hand, Haskell has a clear distinction beteen values (terms) and types - they even live in different namespaces - so the number that encodes the length of the list must actually be a type. Haskell has introduced some support for this in the form of type literals which allows us to use numbers in decimal notation there, or we can define our own type of naturals.

```hs
data Nat = Z | S Nat
```

So, the first type ctor `VNil`

one creates a vector of the type Vec Z a, and the
second creates a vector of the type Vect (S n) a, where Z and S are defined as the
constructors of natural numbers:




## 11.2 Dependent Types Categorically
## Fibrations
## Type families as fibrations
## Slice categories
## Coslice categories
## Pullbacks
## Base-change functor

## 11.3 Dependent Sum
## Existential quantification

## 11.4 Dependent Product
## Dependent product in Haskell
## Dependent product of sets
## Dependent product categorically
## Universal quantification

## 11.5 Equality
## Equational reasoning
## Equality vs isomorphism
## Equality types
## Introduction rule
## β-reduction and η-conversion
## Induction principle for natural numbers
## Equality elimination rule

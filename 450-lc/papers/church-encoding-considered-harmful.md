# Church encoding of data types considered harmful for implementations

by Pieter Koopman, Rinus Plasmeijer, Jan Martin Jansen
Functional Pearl


## Abstract

From the λ-calculus it is known how to *represent recursive data structures by ordinary λ-terms*. Based on this idea, we can represent ADTs in a FPL by higher-order functions. Using a particular encoding, we only have to create functions to achieve the same implementation as a FPL with ADTs.

In this paper we compare the famous Church encoding of data types with the less familiar Scott and Parigot encoding.

We show that one can use the encoding of data types by functions in a Hindley-Milner typed language by adding a single constructor for each data type. In an untyped context, this constructor can be omitted to achieve a more efficient implementation.

By collecting the basic operations of a data type in a constructor class and providing instances for the various encodings, we can compare their differences and similarities.

In *the Church encoding*, selectors of constructors yielding the recursive type (e.g. the tail of a list) have an undesirable strictness in the spine of the data structure. The evaluation of the recursive spine by the Church encoding requires `O(n)` time. Moreover, the Church encoding has serious problems with graph reduction. *The Scott encoding* does not hamper lazy evaluation in any way. The same deconstructors in the Scott encoding require only `0(1)` time. *The Parigot encoding* combines the best of both worlds, but in practice this does not offer an advantage.

## 1. Introduction

In this paper we review the Church encoding of data types and show that it causes serve complexity problems and spoils laziness. These problems can be prevented by using the lesser known *Scott encoding of data types*. Based on this approach we can transform the ADTs from Haskell to functions.

>The algebraic data types were first introduced in the language HOPE.

The ADTs are equivalent to the polynomial data types used in type theory.

Most abstract machines (the SECD machine, the G-machine and the ABC-machine) that are used to implement FPLs contain special instructions to handle data types. But representing all data types by plain functions simplifies the implementation of a PL because an implementation only has to deal with the higher-order functions, instead of both functions and data types.

When we represent data types by functions, the transformed program only contains functions. Since the implementation of the transformed programs does not have to cope with ADT, they become easier to implement.

Barendregt et al. explained (H. Barendregt, W. Dekkers, and R. Statman, "Lambda Calculus with Types", 2013, chapter 6) how the Church encoding was transformed to the typed λ-calculus.

**The Böhm-Berarducci encoding** is the Church encoding adapted to the typed λ-calculus.

Barendregt introduced an alternative encoding known as **the standard representation** (in H. Barendregt, 1985, "The Lambda Calculus: Its Syntax and Semantics"). It was a two-step approach to represent λ-terms: first, the λ-terms are represented as Gödel numbers; next, the Gödel numbers are represented as Church Numerals.

**The Scott encoding** was the oldest alternative to Church encoding invented by Dana Scott. His encoding was reinvented many times in history.

**The Mogensen encoding** is a representation of data types invented by Torben Mogensen as an extension of the Scott encoding that enables reflection (T. Mogensen, "Efficient self-interpretations in lambda calculus", 1992).

**The Parigot encoding** proposed by Michael Parigot was an encoding for data types that combined the Church and Scott encoding (M. Parigot, "Recursive programming with proofs", 1992).

>Using one additional constructor for each type and encoding, a data type encoding becomes a valid type in the Hindley-Milner type system.

In this paper we use a constructor class to group all basic operations on an ADT, its constructors and matching and selector functions. All manipulations of a data type in the source language are expressed in terms of methods of this class. By switching the class instance, we can use another encoding of the same data type.

In section 2 we review the encoding of non-recursive data types in the λ-calculus. In Section 3 the λ-calculus is replaced by named higher-order functions. The named function makes the notation of recursive algorithms easier. We show how recursive data types can be represented by named function in Section 4. The Church and Scott encodings will be different instances of the same constructor class. This makes the differences in the encodings obvious. Optimisations of the encodings are discussed in Section 5. In Section 6 we show that the algorithmic complexity of the Church encoding is higher than Scott's
for recursive selector functions.

## 2. Data types in λ-calculus

To avoid extending λ-calculus with additinal language primitives, an early wuestion in the development of λ-calculus was how to encode ADTs using only functions. The first such encoding was invented by Church himself, and the alternative encoding schemes soon followed by various authors.

An enumeration type is the simplest ADT. It has several data ctors which take no args.

A representation of an enumeration type with `n` data ctors, a λ-term that is equivalent to the iᵗʰ data ctor, `Cᵢ`, selects the arg `i` from those `n` args:

`Cᵢ ≡ λ x₁ … xₙ . xᵢ`

For each function over an enumeration type, we supply `n` args corresponding to results for the ctors. The simplest example is the encoding of the Booleans.

### 2.1 Booleans in λ-calculus

In Haskell, the Boolean ADT is an enumeration data type with 2 data ctors. We can eliminate values of the Boolean type by pattern matching, like we do with other ADTs. Another common eliminator is the `if-then-else` function (which is actually a language construct in Haskell, even though it can be user-defined).

```hs
-- type (value) introduction
data Bool = True | False

-- type (value) elimination via pattern matching
(⋀) :: Bool -> Bool -> Bool
True ⋀ True = True
_    ⋀ _    = False

-- type (value) elimination via a conditional function
not :: Bool -> Bool
not b = if b then False else True
```

**Church Booleans** is the encoding invented by Church himself to represent the two Boolean values and the operations on the Booean domain (such as logical connectives AND, OR, NOT, etc.).

The two Boolean values are represented by the two constructor functions `T` and `F` (ctor functions start with a capital letter). The two lambda abstractions are actually the combinators `K` and `KI`, respectively.

```hs
-- | constructor functions for type introduction:
-- T :: a -> b -> a
T := λ a b . a
-- F :: a -> b -> b
F := λ a b . b

-- | conditional function for type elimination:
cond := λ p t e . p t e

-- and :: a -> b -> b
and := λ a b . a b b
and := λ a b . a b F
```

The constructor function `T` is a lambda term (lambda abstraction) that introduces the value 'true' of the Boolean type; similarly for `F` and the value 'false'.

A conditional function like `cond` is a common way to consume (eliminate) a Boolean: the argument `t` represents the "then" part, while the `e` argument represents the "else" part, and the predicate `p` is a lambda expression that evaluates to a Boolean value; if it evaluates to 'true', the entire conditional is reduced to the "then" lambda expression.

### 2.2 Pairs in λ-calculus

This approach can be directly extended to data constructors with non-recursive arguments. The arguments of the constructor in the original data type are given as arguments to the function representing this constructor.

A pair is a data type with a single binary constructor. The function `π₁` selects the first element of a pair, and `π₂` the second. The λ-terms encoding such a pair are:

```hs
Pair := λ a b s . s a b

π₁ := λ p . p (λa b . a)
π₂ := λ p . p (λa b . b)

swap := λ p . Pair (π₂ p) (π₁ p)
-- or (after defining C and B combinators)
swap := λ p . Pair (p ∘ flip)

(∘) = B := λ a b c . a (b c)
flip = C := λ a b c . a c b
```

## 3. Representing data types by named functions

### Encoding Booleans by Named Functions

The functions for the Booleans:

```hs
T :: a -> a ->  a
T t f = t

F :: a -> a -> a
F t f = f

cond :: (a -> a -> a) -> a -> a -> a
cond c t e = c t e
```

### Encoding Pairs by Named Functions

```hs
Pair :: a -> b -> (a -> b -> r) -> r
Pair a b f = f a b

fst :: ((a -> b -> a) -> a) -> a
fst p = p (\a b -> a)

snd :: ((a -> b -> b) -> b) -> b
snd p = p (\a b -> b)

swap :: ((a -> a -> a) -> a)
     -> ((a -> a -> b) -> b)
swap p = Pair (snd p) (fst p)
```

Unfortunately, the type for `swap` requires that both elements of the pair have the same type `a`. This is due to the fact that the type for `Pair` states the type of the accessor function as `(a -> b -> r)` and the Hindley-Milner type system requires a single type for such an argument.

In Haskell, enabling the `RankNTypes` extension allows us to type the `Pair` as

```hs
{-# LANGUAGE RankNTypes #-}

Pair :: forall a b. a -> b -> (forall r. (a -> b -> r) -> r)
```

The encoding with additional constructors and constructor classes developed later will remove this limitation. This restriction only limits the possibility to execute the encoding in functions in a strongly typed language; in an untyped context these functions will behave correctly.

## 4. Recursive Data Types

For recursive data types we show two different ways to represent data types by functions.

The first approach is a generalisation of the well-known Church Numerals. Here, *the recursive occurrences of a function representing a constructor are all equal*. This implies that a recursive data structure mirrors an expanded fold. This is especially convenient in λ-calculus since recursive functions require that the function itself is passed around as an additional argument. This recursion is usually achieved by an application of the Y-combinator.

The second approach does nothing special for recursive args of constructors. Hence, *it uses explicitly recursive manipulation functions for recursive data types*, just like the ADTs in Haskell. This arbitrary recursion pattern of these functions is not limited to folds of the Church encoding. The oldest source of this approach is a set of unpublished notes from Dana Scott, hence this approach is called the Scott encoding.

Since we have named functions, arbitrary recursion is no problem at all. For this reason we state both encodings of the data type and the associated manipulation functions directly as named functions.

In order to compare both encodings easily and to be able to write functions that work for both encodings, we create type the constructor classes for the described data types. A constructor class contains all the constructors and the selection functions for elements of the constructors.

These type classes require a constructor in the functions representing data types. We already want to insert constructors to enable the use of the functional encodings in a strongly typed language.

The constructors are still unnecessary when we fix the encoding and work in an untyped setting.

### 4.1 Pairs Revisited

```hs
-- | p is a binary type ctor :: * → * → *
class Pair p where
  Pair :: a b -> p a b
  fst :: (p a b) -> a
  snd :: (p a b) -> b

-- Using the primitives from this class, the swap is
swap :: Pair p => (p a b) -> p b a
swap p = Pair (fst p) (snd p)

-- The instance of the `Pair` for tuples
instance Pair (,) where
  pair a b = (a,b)
  fst (a,b) = a
  snd (a,b) = b

newtype FPair a b = FPair (forall r. (a -> b -> r) -> r)

-- The instance of the `Pair` for functional encoding
instance Pair FPair where
  pair a b = FPair \p -> p a b
  fst (FPair p) = p \a b -> a
  snd (FPair p) = p \a b -> b
```

Note that the use of the class yields better readable types and eliminates the problem with the types of the arguments in the function swap. Here it is completely valid to use different types for the elements of the pair. In fact, it is even possible to yield a pair that is a member of another instance of the type constructor class:

```hs
swap :: (Pair t, Pair u) => (t a b) -> (u b a)
```

#### 4.1.1 Pairs with tuples

The instance of the `Pair` for tuples is completely standard.

```hs
instance Pair (,) where
  pair a b = (a,b)
  fst (a,b) = a
  snd (a,b) = b
```

#### 4.1.2 Pairs with Functions

Since `Pair` is not recursive, Church and Scott's encoding of pairs coincide.

The `FPair` newtype wraps the encoding with functions, allowing us to define an instance of the `Pair` class it. The `FPair` data ctor contains a forall type variable `r` that represents the resulting type of pair manipulations - since we cannot know whether the result type will be `a` or `b`, we must account for both possibilities by introducing a universally quantified type var `r` that in fact acts as an existentially quantified variable. So, there exists a type `r` that is the result type of extracting either a type `a` or `b` from a pair (`r` stands for either an `a` or `b`).

```hs
newtype FPair a b = FPair (forall r. (a -> b -> r) -> r)

instance Pair FPair where
  pair a b = FPair \p -> p a b
  fst (FPair p) = p \a b -> a
  snd (FPair p) = p \a b -> b
```

In order to give `FPair` the kind required by the type constructor class `Pair`, the type of the result `t` is universally quantified. This makes the definition of `swap` typable in the Hindley-Milner type system, even without the constructor class (unlike the definition of `swap` from before that had restricted the elements of the pair to have identical types).

### 4.2 Peano Numbers

The simplest recursive data type is a type `Peano` for Peano numbers. This type has two constructors. `zero` is the non recursive constructor that represents the value zero. The recursive constructor `succ` yields the successor of another Peano number passed as an argument. There are two basic manipulation functions, `isZero` test and the `pred`.

```hs
class Peano t where
  zero   :: t
  succ   :: t -> t
  pred   :: t -> t
  isZero :: t -> Bool
```

#### 4.2.1 Peano Numbers with Integers

An instance of `Peano` for `Int`.

```hs
instance Peano Int where
  zero      = 0
  succ n    = n + 1
  pred n    = if n > 0 then n - 1 else 0
  isZero n  = n == 0
```

#### 4.2.2 Peano numbers as an ADT

The implementation of `Peano` with an ordinary ADT `Peano` has no surprises.

```hs
data Nat = Z | S Nat

instance Peano Nat where
  zero        = Z
  succ n      = S n
  pred (S m)  = m
  pred _      = Z
  isZero Z    = True
  isZero _    = False
```

#### 4.2.3 Peano Numbers in the Church Encoding

The first encoding of Peano numbers is known as the *Church Numerals*.

The type `Nat` has two constructors, hence each constructor function has two arguments. The first arg represents the case for zero, the second one mimics the successor. A number `n` is represented by `n` applications of the `S` to the value for zero, `Z`. The constructor `succ` adds one application of `S`.

The `isZero` test yields `True` when `n` is `Z`; otherwise, the result is `False`.

The `pred` in the Church encoding is somewhat more challenging. The number `n` is represented by `n` applications of some higher-order function `s` to a given value `z`. The predecessor must remove one `s`.

The first solution of this problem was found by Kleene while his wisdom teeth were extracted at the dentist. Zero is replaced by a tuple (0,0), where the first component is the predecessor of 0, and the second component is the predecessor of the next number (again 0 since it's the pred of 1).

```hs
pred 3 =
(0,0) ⟼ (0,1)
(0,1) ⟼ (1,2)
(1,2) ⟼ (2,3)
= fst (2,3)
= 2

-- in general
(x, S x) ⟼ (S x, S (S x))
```

The successor function recursively replaces the tuple    
`(x, succ x)` by `(succ x, succ (succ x))`    
starting at `z`.



A Church numeral applies a function n times. The predecessor function must return a function that applies its parameter n - 1 times. This is achieved by building a container around f and x, which is initialized in a way that omits the application of the function the first time. See predecessor for a more detailed explanation.


The result of this construct is the tuple `(pred n, n)`. The predecessor function selects the first element of this tuple. Since the predecessor is constructed from 0 upwards to `n`, the complexity is horrible, `O(n)`.

Just like in the representation of pairs we add, a constructor `CPeano` to solve the type problems of this representation in the Hindley-Milner type system. The universally quantified type variable `b` ensures that the functions representing the the constructors can yield any type without exposing this type in `CPeano`. This type is very similar to the type `cnat := ∀X.X→(X→X)→X` used for Church numbers in the polymorphic λ-calculus.

The pattern `FPair _` in the `pred` function is an artefact of our encoding by type classes, it solves the overloading of `Pair`.

```hs
newtype CPeano = CPeano (forall b. b -> (b -> b) -> b)

instance Peano CPeano where
  zero = CPeano \ zero succ -> zero
  succ n = CPeano \ zero succ -> succ ((\ (CPeano x) -> x) n zero succ)
  isZero (CPeano n) = n True \ x -> False
  pred (CPeano n)
    = CPeano \ z s -> fst (n (pair Z z)
      (\ p (FPair _) -> pair (snd p) (s (snd p))))
```

Notice that the successor itself passes the values for zero and succ recursively to the given number n. Removing the constructor CPeano from the argument of Succ is done in its right-hand side to prevent this argument that the argument is strict. This enables the proper evaluation of expressions like isZero (Succ undef).

The function Succ has to add one application of the argument succ to the given number. Since all functions are equal this can be done in two ways. Above we add the additional application of succ to the encoding of n. It is in this encoding also possible to replace the given value of zero in the recursion by succ zero. That is Succ (CPeano n) = CPeano λzero succ.n (succ zero) succ. The direct access to both side of the sequence of applications of succ is unique for the Church encoding. We will use this below in Section 5 to optimise fold like operations over recursive types in the Church encoding.

#### 4.2.4 Peano Numbers in the Scott Encoding

The type `SNum` to represent the Scott representation of numerals uses a constructor and a universally quantified type variable for exactly the same reasons as the Church encoding. This type is related to the types assigned to [Scott numerals][1].

This type is again similar to this type used for Scott numbers in [λ2µ][14]

    snat := ∀X. X -> (snat -> X) -> X

Since we have recursive functions in our core language, the external recursion in this problem is no problem. But in the pure λ-calculus we'd need a fixed point-combinator for the recursion.

The Scott encoding for the non-recursive cases `zero` and `isZero` is equal to the Church encoding.

For the recursive functions `succ` and `pred` the Scott encoding is simpler than the Church encoding.

The recursion pattern of the Scott encoding is very similar to the definitions for the type Peano.

```clean hs
newtype SNum = SNum (forall r. r -> (SNum -> r) -> r)
-- vs
newtype CNum = CNum (forall r. r -> (r -> r) -> r)

instance Num SNum where
  zero = SNum \ z s -> z
  isZero (SNum n) = n True (const False)
  succ   (SNum n) = SNum \ z s -> s n
  pred   (SNum n) = n zero id
```

Since the implementation of `pred` in this Scott encoding is a simple selection of an element of the constructor its complexity is `O(1)`. This is much better than the `O(n)` complexity of the same operator in the Church encoding.



[1]: M.Abadi, L.Cardelli, G.Plotkin. "Types for the scott numerals", 1993 
http://lucacardelli.name/Papers/Notes/scott2.pdf

[14]: H. Geuvers. "The Church-Scott representation of inductive and coinductive data", 2014 http://www.cs.ru.nl/∼herman/PUBS/ChurchScottDataTypes.pdf


#### 4.2.5 Peano Numbers in the Parigot Encoding

Parigot proposed a different encoding of data types in an attempt to enable reasoning about algorithms as well as an efficient implementation of [these][27] [algorithms][28].

These papers do not mentioning the Scott encoding. In addition for a recursive type the constructors contain the Church-Style fold argument, as well as the Scott-style plain recursive argument. For numbers this reads:

```hs
newtype PNum = PNum (forall b. b -> (PNum b -> b) -> b)

instance Num PNum where
  zero = PNum \z s -> z
  succ p = PNum \z s -> s p ((\(PNum n) -> n) p z s)
  isZero (PNum n) = n True \p x -> False
  pred (PNum n) = n undefined (\p x -> p)
```

It will be no surprise that this type resembles the type in λ2µ:

    pnat := ∀X. X -> (pnat -> X -> X) -> X

used for *Parigot numbers* in [14] (called Church-Scott numbers there). Notice that pred is implemented here in the more efficient Scott way. The second argument of `succ` is more suited for a fold-like operation.


[14]: H. Geuvers. `The Church-Scott representation of inductive and coinductive data`, 2014 http://www.cs.ru.nl/∼herman/PUBS/ChurchScottDataTypes.pdf

[27]: M. Parigot. `Programming with proofs: A second-order type theory`, 1988

[28]: M. Parigot. `Recursive programming with proofs`, 1992


#### 4.2.6 Using the Type Class Num

Using the primitive from the class `Num` we can define manipulation functions for these numbers. The transformation of any of these number encodings to one of the other encodings is given by `NumToNum`.

This uniform transformation is a generalisation of the transformations between Church and Scott numbers in [20]. The context determines the encodings `n` and `m`. Using a very similar recursion pattern we can define addition for all instances of `Num` by the function `add`.

```hs
numToNum :: (Num n, Num m) => n -> m
numToNum n | isZero n  = zero
           | otherwise = succ (numToNum (pred n))

add :: Num t => t -> t -> t
add x y | isZero x = y
        | otherwise = add (pred x) (succ y)
```


[20]: J. M. Jansen. Programming in the λ-calculus: `From Church to Scott and back`, 2013. ISBN 978-3-642-40354-5.

### 4.3 Lists

In the Peano numbers all information is given by the number of applications of the `Succ` in the entire data structure. Recursive data types that contain more information are often needed. The simplest extension of the Peano numbers is the list. The `Cons` nodes of a list corresponds to the `Succ` in the Peano numbers, but in contrast to the Peano numbers a `Cons` contains an element stored at that place in the list. This is modelled by type class `List`. Compared to `Num` there is an additional argument `a` in the constructor for the recursive case, and there is an additional primitive access function `head` to select this element from the outermost `Cons`.

```hs
class List t where
  nil   :: t a
  isNil :: t a -> Bool
  cons  :: a -> t a -> t a
  head  :: t a -> a
  tail  :: t a -> t a
```


#### 4.3.1 List with the native list type

The instance for the native lists in Clean is very simple

```hs
instance List [] where
  nil = []
  cons x xs = x : xs
  isNil xs = case xs of
    [] = True
    _  = False
  head  xs = case xs of
    a : xs = a
    _ = undefined
  tail  xs = case xs of
    _ : xs = xs
    _ = undefined
```


#### 4.3.2 List in the Church Encoding

The instance inspired on the Church numbers is rather similar to the instance for `CNum`.

The definition for `Nil` is completely similar to the instance for `Zero`.

The constructor `Cons` receives an element in the first arg to insert into a list in the second arg. That element should be appended, but it is actually quite remarkable that it can be prepended as well without explicit recursion. Note that the args for `n` and `c` are passed recursively to the tail `xs` of the list.

The functions `isNil` and `head` directly yield the desired result by applying the function `xs` to the appropriate arguments.

The `tail` uses an approach similar to `pred`: from the end of the list upwards, we make a new list, that is the `tail` of this, current, list.

The `tail`, like `pred`, is `O(n)` with `n` the length of the list. Moreover, it spoils lazy evaluation by requiring a complete evaluation of the spine of the list. This also excludes the use of infinite list as args of this version of the `tail`.


```hs
newtype CList a = CList (forall b. b -> (a -> b -> b) -> b)

instance List CList where
  nil = CList \n c ->
    n

  cons x xs = CList \n c ->
    c x
      ((\(CList ls) -> ls) xs n c)

  isNil (CList ls) =
    ls True
       (\ a x -> False)

  head (CList ls)
    = ls undefined
         (\a x -> a)

  tail (CList ls) =
    CList \nil cons ->
      fst (
          ls (Pair undefined nil)
          (
            \ a (p :: FPair _) ->
              Pair (snd p)
                   (cons a (snd p))
          )
      )
```

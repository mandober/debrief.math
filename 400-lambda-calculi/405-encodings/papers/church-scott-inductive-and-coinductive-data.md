# The Church-Scott representation of inductive and coinductive data

`The Church-Scott representation of inductive and coinductive data`
by Herman Geuvers, 2014    
https://www.irif.fr/~letouzey/types2014/abstract-36.pdf

## Contents

- Abstract
- 1. Introduction
- 2. Natural numbers
  - 2.1 Church natural numbers
  - 2.2 Scott natural numbers
  - 2.3 Combined Church-Scott natural numbers
- 3. Categorical data types
- 4. Church and Scott data types in type theory
  - 4.1 Inductive data types
  - 4.2 Co-inductive data types
- 5. Conclusion
  - Typing rules for `λ2μ`
  - Future Work
  - Refs

## Abstract

Data in the lambda calculus is usually represented using the *Church encoding*, which gives closed terms for the constructors and which naturally allows to define functions by iteration. An additional nice feature is that in system F (polymorphically typed lambda calculus) one can define types for this data and the iteration scheme is well-typed. A problem is that primitive recursion is not directly available: it can be coded in terms of iteration at the cost of inefficiency (e.g. a predecessor with linear run-time).

The less known *Scott encoding* has case distinction as a primitive. The terms are not typable in System F and there is no iteration scheme, but there is a constant time deconstructor (e.g. predecessor).

We present a unification of the Church and Scott definition of data types, the *Church-Scott encoding*, which has primitive recursion as basic. For the numerals, these are also known as *Parigot numerals*.

We show how these can be typed in the System F extended with recursive types. 
We show that this also works for the dual case, *co-inductive data types with primitive co-recursion*. 

We single out the 3 major schemes for defining functions over data-types:
- iteration scheme
- case scheme
- primitive recursion

We show how these 3 schemes are tightly connected to the Church, the Scott and the Church-Scott representation.

We also single out the duals of these schemes:
- co-iteration
- co-case
- primitive co-recursion

These dual schemes are used for defining functions on *codata*.

A major advantage is that these are all encodings in a pure untyped λ-calculus and that *strong normalization is guaranteed* because the terms are typable in the *System F with recursive types*.

## 1. Introduction

The Church representation can be generalized to many other data types, and these can be typed in system F and already quite a few functions are well-typed. Already in simple type theory, the basic functions like addition and multiplication can be typed on the Church numerals. On the other hand, the Scott representation of data can also be generalized, and the encoding is simpler, but it's not very well-known probably because the Scott data (e.g. Scott numerals) are not readily typable in System F.

In the present paper we look at the various numeral systems from the point of view of function definition schemes. The most well-known function definition schemes are iteration and primitive recursion over the natural numbers.

### Iteration scheme

The *iteration property for natural numbers* states that 
if `d ∈ N` and `g : N → N` 
then there is a total function `h : N → N` such that
- `h    0  = d`
- `h (S x) = g (h x)`

It can easily be proven that such `h` indeed exists and is computable if `d` and `g` are (`d` certainly is, being in ℕ). Actually, the equations give an algorithm for computing `h` (given algorithms for computing `d` and `f`).

In a FPL, especially in a strongly typed language with all functions being total, it is natural to add the iteration property as a primitive scheme: given a data-type for natural numbers `Nat`, with constructors `Z` and `S` we have the following iteration scheme for defining functions over the naturals:

```hs
d : Nat    f : Nat → Nat
------------------------- ITER
Iter d f : Nat → Nat

-- with reduction rules
Iter d f    Z  ~~>ᵦ d
Iter d f (S t) ~~>ᵦ f (Iter d f t)
```

The nice feature of the Church numerals, and Church data-types in general, is that they are iterators: the n-th Church numeral just takes an initial value and a function and iterates the function `n` times over iteslf starting with the initial value.

### Primitive recursion scheme

Primitive recursion states that if
`fᵏ⁻¹ : N → N` and 
`gᵏᐩ¹ : N → N` then 
`hᵏ : N → N`   such that
(e.g. for k=2):
- `h    0  y = f y`
- `h (S x) y = g y (h x) y`


Primitive recursion is another well-known scheme:

```hs
d : Nat    f : Nat → Nat → Nat
-------------------------------- REC
Rec d f : nat → nat

-- with reduction rules
Rec d f    Z   ~~>ᵦ  d
Rec d f (S t)  ~~>ᵦ  f t (Rec d f t)
```

It is well-known that primitive recursion scheme can be coded in terms of iteration (although in a slightly cumbersome way), so it would be desirable to have it as a primitive.

### Overview

We have argued (`Inductive and coinductive types with iteration and recursion`, Herman Geuvers, 1992) that the primitive recursion is the most desirable to have, and we have also extended the concept of primitive recursion to general inductive data types, and also to coinductive data types, with a scheme for primitive corecursion.

To support these schemes, λ→ and System F were extended with schemes for defining inductive (and coinductive) types with primitive recursion (and primitive corecursion), and it was shown that this system is strongly normalizing and has the same expressive power as Mendler's system (`Inductive types and type constraints in the second-order lambda calculus`, Nax Paul Mendler, 1991).

The (implicit) question was left open whether it would be possible to define data types with primitive recursion (and data-types with primitive co-recursion) directly in λ-calculus, typed or untyped.

Later, (`Iteration and primitive recursion in categorical terms`, H. Geuvers, E. Poll, 2007), it was further broken down and it was shown that 
>primitive recursion is the combination of a case scheme, allowing simple pattern matching over a data-type, and the iteration scheme.

Here we discuss the 3 schemes:
- iteration
- case
- primitive recursion

and also their duals
- co-iteration
- co-case
- primitive co-recursion

and we show that
- Church data-types support iteration
- Scott data-types support case

New **Church-Scott data-type** is introduced, which is a kind of union of the two that supports primitive recursion.

Then we define
- Church encoding
- Scott encoding
- Church-Scott encoding

of codata types and we show that they support
- co-iteration
- co-case
- primitive co-recursion


An important feature of this work is that primitive recursion (and its dual, primitive co-recursion) can be encoded directly in pure untyped λ-calculus, without needing any additional constants or constructs. This simplifies the study of these schemes.

In addition, there is a typed λ-calculus, `λ2µ` (see Appendix), in which these data-types can be defined and these schemes are well-typed.

The system `λ2µ` *extends system F with recursive type definitions for positive type schemes*. It was inspired from (`Types for the Scott numerals`, M. Abadi, L. Cardelli, G. Plotkin, 1993) where it was shown how to type the Scott numerals.

The system λ2µ can be shown to be strongly normalizing, by applying the standard *saturated sets* technique. This has been done for a slightly different system of recursive types in (`Inductive types and type constraints in the second-order lambda calculus`, Nax Paul Mendler, 1991), but the approach is basically the same, so we don't repeat the proof here. The *strong normalization guarantees the termination of functions* defined by the schemes we consider.


## 2. Natural numbers

### 2.1 Church natural numbers

We look at the well-known definitions of data in the untyped λ-calculus. The most well-known are the Church numerals [^6]:

```hs
0̅ := λx f. x
1̅ := λx f. f x
2̅ := λx f. f (f x)

n̅ = λx f. fⁿ (x)
-- p̅ = λx f. fᵖ (x)

S̅ = λn. λx f. f (n x f)
```

>The Church numerals are based on iteration: the numerals themselves are iterators.

This means that for `c` and `f` terms, there is a term `iter c f` satisfying:

```hs
iter d f   ⌜0⌝  =ᵦ  d
iter d f ⌜S n⌝  =ᵦ  f (iter d f n)
```

where
- `⌜0⌝` is the Church numeral zero, `0̅ := λx f. x`
- `⌜S n⌝` is the successor of the Church numeral `n`
- `⌜S n⌝` where S is defined as `S̅ = λn. λx f. f (n x f)` (see above)

Ideally, one would have `~~>ᵦ` instead of `=ᵦ`, which we could call a *reducing iterator*.

The Church numerals are the iterators themselves: `iter d f := λn.n d f` does the job. This doesn't give a reducing iterator, because one β-expansion is needed: `(λn.n d f) ⌜p+1⌝ ~~>ᵦ f (⌜p⌝ d f)`, which β-expands to `f (iter d f ⌜p⌝)`. Also, one would like the iterator to not just work for closed values (actual numbers), but for any term of the shape `S̅ t` (aka `⌜S n⌝`). We can make these requirements explicit by **defining the iteration scheme for natural number** as follows.


[Definition-1] The iteration scheme for natural numbers in untyped λ-calculus consists of closed terms `Z` and `S`, and for all terms `d`, `f`, `t`, a term `iter d f t` satisfying the following properties:

```hs lc
iter d f    Z   ~~>ᵦ  d
iter d f (S t)  ~~>ᵦ  f (iter d f t)
```

It is now easy to check that the Church numerals with `Z`, `S` and 
`iter d f t = t d f` form an **iteration scheme for the natural numbers**.

In a typed setting, this can be turned into a **typed iteration scheme for the natural numbers** by requiring the terms to be well-typed.


[Definition-2] The typed iteration scheme for natural numbers in some ambient typed λ-calculus extends the notion of iteration scheme for the natural numbers by a type `nat` and the following typing conditions: `Z : nat`, `S : nat → nat` and

```
d : D    f : D → D    n : nat
------------------------------
iter d f n : D
```

for any type `D` and terms `d` and `f` of the appropriate types, 
`iter d f` is of type `nat → D`, 
where `nat` is a type for the numerals `n`.

**The advantage of the iteration scheme** is that one gets quite a bit of well-founded recursion for free: many well-known functions (add, mul, exp) fit in the iteration scheme. Also the Ackermann function can be defined using the iteration scheme, in case one also allows higher types (types containing arrows) for `D`. In a typed setting where the *defining equations* (`=ᵦ`) for the iteration scheme are actually *reductions* (`=ᵦ`), the normalization property for the type system implies the termination of algorithms defined using the iteration scheme.

A well-known result of Girard is that in system F (the polymorphic lambda calculus), there is a typed iteration scheme for natural numbers:

`nat` can be defined as `∀α. α → (α → α) → α`

and then the terms above are all well-typed.

Böhm and Berarducci have shown how to extend this to arbitrary inductive data types, giving a general procedure for defining a closed System F type for a data type, closed terms for its constructors and an iteration scheme.

A disadvantage of the iteration scheme is that there is no pattern matching built in, so the predecessor is hard to define. This was already known to Church, who seems to have been a bit dissatisfied with these numerals. Kleene was the first to discover a definition for the predecessor on the Church numerals. The idea is to define the function

```hs
φ :: (Nat, Nat) → (Nat, Nat)
φ (x, y) = (succ x, x)
```

If one takes the n-times iteration of `φ` on `(Z, Z)` and then applies `snd`, one obtains `n−1` (and `Z` if n=0).

```h
PRED := λn. SND ( ITER (ZERO, ZERO) λz. (SUCC z, z) )
```

This trick applies generally to define deconstructors for data types in the typed λ-calculus, as shown e.g. in [^8].

The problem is that
* the `pred` only works for closed values: `pred ⌜n + 1⌝ =ᵦ ⌜n⌝`, but not `pred (succ x) =ᵦ x`.
* the `pred` doesn't compute in constant time: `pred ⌜n+1⌝ ~~>ᵦ ⌜n⌝` in a number of steps linear in `n` (basically, `pred` counts down to 0, keeping track of the number of steps it takes to do that, and then it counts up one step less).

These problems are the same for all inductive data type definitions in typed or untyped λ-calculus that follow the "Church style approach". See [^8] for details.


```hs
-- The first equation returns the initial term d (e.g. Z) if the Church numeral is 0. The second equation applies f to (iter d f n) for each S it strips form the Church numeral (the term d doesn't play a part here). f is a unary function here, so it's not quite a foldr yet.

-- In Haskell, with a type alias for the type of Church numerals:

-- Peano naturals
data Nat = Z | S Nat

iter :: (Nat -> Nat) -> Nat -> Nat -> Nat
iter f z    Z  = z
iter f z (S n) = f (iter f z n)

primRec :: (Nat -> Nat -> Nat) -> Nat -> Nat -> Nat
primRec f z    Z  = z
primRec f z (S n) = f n (primRec f z n)

-- Church numerals
type Church = forall a. (a -> a) -> a -> a

iterChurch :: (Nat -> Nat) -> Nat -> Church -> Nat
iterChurch f z n = f (iterChurch f z (predN n))

recChurch :: (Church -> Nat -> Nat) -> Nat -> Church -> Nat
recChurch f z n = f (predN n) (recChurch f z (predN n))

predN :: Church -> Church
predN n = undefined
```


### 2.2 Scott natural numbers




### 2.3 Combined Church-Scott natural numbers

## 3. Categorical data types


## 4. Church and Scott data types in type theory

### 4.1 Inductive data types

### 4.2 Co-inductive data types


## Refs

[^1]: 1993 Types for the Scott numerals. M. Abadi, L. Cardelli, G. Plotkin
[^2]: 1984 The Lambda Calculus: its Syntax and Semantics. H.P. Barendregt
[^3]: 1991 An unsolvable numeral system in lambda calculus. Erik Barendsen
[^4]: 1985 Automatic synthesis of typed lambda-programs on term algebras. Corrado Böhm, Alessandro Berarducci
[^5]: 2010 Church => Scott = Ptime: an application of resource sensitive realizability. Aloïs Brunel, Kazushige Terui
[^6]: 1940 A formulation of the simple theory of types. Alonzo Church
[^7]: 1972 Combinatory Logic, volume 2. H. Curry, J. Hindley, J. Seldin
[^8]: Inductive and coinductive types with iteration and recursion, Herman Geuvers, 1992
[^9]: 2007 Iteration and primitive recursion in categorical terms. H. Geuvers, E. Poll
[^10]: 1990 Proofs and Types. J. Y. Girard, Y. Lafont, P. Taylor
[^11]: 1987 A typed lambda calculus with categorical type constructors. Tatsuya Hagino
[^12]: 2013 Programming in the λ-calculus: From Church to Scott and back Jan Martin Jansen
[^13]: 1990 Programming with proofs. Jean-Louis Krivine, Michel Parigot 
[^14]: 2012 On constructor rewrite systems and the lambda calculus. Ugo Dal Lago, Simone Martini
[^15]: 2013 Global semantic typing for inductive and coinductive computing. Daniel Leivant
[^16]: 1991 Inductive types and type constraints in the second-order lambda calculus. Nax Paul Mendler
[^17]: 1992 Efficient self-interpretations in lambda calculus. Torben Æ. Mogensen
[^18]: 1992 Recursive programming with proofs. Michel Parigot
[^19]: 1963 A system of functional abstraction. D. Scott
[^20]: 2009 Directly reflective meta-programming. Aaron Stump
[^21]: 1999 Mendler-style inductive types, categorically. Tarmo Uustalu, Varmo Vene
[^22]: Primitive (co)recursion and course-of-value (co)iteration, categorically. Tarmo Uustalu, Varmo Vene
[^23]: 1980 Some unusual λ-calculus numeral systems. Ch. Wadsworth
[^24]: 1989 A note on categorical datatypes. G. C. Wraith

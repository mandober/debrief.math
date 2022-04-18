<!-- TOC -->

- [About](#about)
- [The Curry-Howard isomorphism](#the-curry-howard-isomorphism)
- [Conjunction](#conjunction)
- [Implication](#implication)
- [Inference rules vs constructors and destructors](#inference-rules-vs-constructors-and-destructors)
- [Conjunction](#conjunction-1)
  - [Example: functions over a state](#example-functions-over-a-state)
- [Haskell and formation rules](#haskell-and-formation-rules)
- [The Fitch-style proof derivations](#the-fitch-style-proof-derivations)

<!-- /TOC -->


## About

A routinely dispensed advice, related to programming in Haskell, is to approach a problem by first modelling the types, then rely on them to drive the development further.

Type-driven development is feasible thanks to Haskell's purity, polymorphic and otherwise advanced type system. Given a function's type signature, it becomes less demanding to come up with a correct definition.

Signatures of parametrically polymorphic functions are practically forcing the only possible implementation, so a programmer just needs to "follow the types", as it's often said.

However, sometimes a function's signature alone fails to inspire the correct implementation, and on such occasions turning to the Curry-Howard correspondence for help can prove beneficial.

## The Curry-Howard isomorphism

*The Curry-Howard isomorphism* (CHI) is a correspondence between logic and programming languages, and especially interesting in a functional programming language is the connection to *intuitionistic logic* (IL).

*Natural deduction*, here presented using the *Fitch-style diagrams*, is a framework for deriving proofs based on a set of initial premises, using a specific set of rules of inference.

The rules of inference determine the introduction and elimination rules for logical connectives. Each logical connectives in IL has a corresponding form in Haskell.

The logical connectives of particular interest in connection to Haskell are conjunction, disjunction, implication.

Correspondences of logical connectives and Haskell's types in their canonical representation:
- Conjunction: product types, canonical repr is `(,) a b`
- Disjunction: sum types, canonical repr is `Either a b`
- Implication: function types, canonical repr is `(->) a b`

## Conjunction

*Conjunction introduction* in IL states that if you have a formula `p` and a formula `q` then you are allowed to introduce a conjunction of the two formulas, denoted by `p ∧ q`. In Haskell, this corresponds to having two types `a` and `b`, that is, two values, e.g. `x :: a` and `y :: b`, which allows you to make a pair `(x, y) :: (a, b)`. The type ctor `(,)` takes two types and produces a pair (conjunction).

```
a   b               a ∧ b        a ∧ b
----- ∧I            ----- ∧E₁    ----- ∧E₂
a ∧ b                 a            b
```

*Conjunction elimination* has two inference rule because there are two ways to go about it: if you have `p ∧ q`, then you can have `p` (∧E₁), and you can have `q` (∧E₂). The index signifies which of the two conjuncts is derived (remains). Accordingly, Haskell also has two functions, called projections, where each extracts one component from a pair.

```hs
-- introduction
data (,) a b = (a, b)

-- elimination 1
fst :: (a, b)
fst (x, y) = x

-- elimination 2
fst :: (a, b)
fst (x, y) = y
```

## Implication

*Implication elimination* (modus ponens) in IL corresponds to function application in Haskell. It is very straightforward inference rule: if you have an formula `p -> q` *and* a formula `p`, then you can conclude `q`. Over in the code: if you have a function `f :: a -> b` and a value `x :: a`, then you can produce a value of type `b` by applying `f` to `x`, `f x :: b`.

*Implication introduction* in IL corresponds to introducing a lambda abstraction in Haskell. This is the most interesting aspect of the correspondence because it is exactly this one that allows us to use derivation as a guide when we get stuck with a function's implementation.












---





This can sometimes be quite evocative of the way a definition of a function is derived based on a type signature.


* Correspondences between the natural deduction system and λ-calculus (Haskell)

Logic                    | Haskell
-------------------------|----------------------------------
conjunction              | product type
disjunction              | sum type
premises                 | types of lambda arguments
implication introduction | λ-abstraction
assumption               | parameter declaration occurrence
assumption discharge     | parameter application occurrence
implication elimination  | function application


* Logic formulae and type signatures:

Logic       | Haskell
------------|--------------
a -> b      | a -> b
a ∧ b       | (a, b)
a ∨ b       | Either a b
⊥           | undefined



## Inference rules vs constructors and destructors

IL has pairs of inference rules for each logic connective: introductory rule(s) and elimination rule(s).

Rule          | Introduction  | Elimination
--------------|---------------|----------------------------------------
conjunction   | ∧I            | ∧E₁ , ∧E₂
disjunction   | ∨I₁ , ∨I₂     | ∨E
implication   | ->I           | ->E or MP (modus ponens)

Example: given a function (implication) `a -> b`, derive `b`.

This can be represented as a sequent `a -> b |- b`. We have a premise `a -> b` (logic side) that corresponds to a function (e.g. `f`) of type `f :: a -> b`.

Actually, we should consider the entire sequent as a (higher-order) function, `σ`. If we have some premises, they can be considered as arguments to the function `σ` that are already supplied. The conclusion of a sequent that we're trying to show corresponds to the `σ` function's return type.

In general, a sequent has the form `a, b, c ... |- x, y, z` where the commas of the LHS represent conjunctions, and the RHS's commas stands for disjunctions. A sequent may have the form `|- a` i.e. it may have no premises, in which case it just means that the `a` is true (the entailment holds). A sequent of the form `a |-` represent contradiction. However, the general form and the two extreme forms will not be encountered in our translations. The form of sequents we'll use is `a, b, c |- z` and the commas on the LHS can be considered conjunctions or implications because of currying: `(a, b) -> c ≅ a -> b -> c`. In any case, we'll consider each LHS formula/type as a premise/argument.

Another issue is a function type ctor (`->`); since it's right-associative, the following signatures are equal (the rightmost parenthesis can be elided):

```js
a -> (b -> (c -> d)) ≅
a ->  b -> (c -> d)  ≅
a ->  b ->  c -> d   ≅
(a, b, c) -> d


(a, b, c) -> d    ≅  a, b, c |- d
a -> b -> c -> d  ≅  a, b, c |- d


(a, b, c) -> d    ≅  (a ∧ b ∧ c) => d
a -> b -> c -> d  ≅  a => b => c => d
```



```hs
h1 :: a -> (b -> (c -> d))
h2 :: a -> (b ->  c -> d)

f1 :: a -> b -> ((r -> a) -> (r -> b))
f2 :: a -> b ->  (r -> a) -> (r -> b)
f3 :: a -> b ->  (r -> a) ->  r -> b

g1 :: ((a -> r) -> r) -> ((a -> ((b -> r) -> r)) -> ((b -> r) -> r))
g2 :: ((a -> r) -> r) ->  (a -> ((b -> r) -> r)) -> ((b -> r) -> r)
g3 :: ((a -> r) -> r) ->  (a -> ((b -> r) -> r)) ->  (b -> r) -> r
g4 :: ((a -> r) -> r) ->  (a ->  (b -> r) -> r)  ->  (b -> r) -> r

g4 :: ((a -> r) -> r)
   -> (a -> (b -> r) -> r)
   -> (b -> r)
   -> r
```





```
a -> b |- b

1 | a -> b      premise
2 | | a         assumption
3 | | b         ->E 1,2
4 | a -> b      ->I 2-3
```



## Conjunction

Inference rules related to introduction and elimination of conjunction are very straightforward:
- ∧I   `a, b |- a ∧ b`
- ∧E₁ `a ∧ b |- a`
- ∧E₂ `a ∧ b |- b`

In a line-form:

```
a   b       a ∧ b          a ∧ b
----- ∧I    ----- ∧E₁      ----- ∧E₂
a ∧ b         a              b
```

In Haskell:

```hs
-- ∧I
(,) :: a -> b -> (a, b)
(,) x y = (x, y)

-- ∧E₁
fst :: (a, b) -> a
fst (x, y) = x

-- ∧E₂
snd :: (a, b) -> b
snd (x, y) = y
```


### Example: functions over a state

The type that represents stateful computations is a function from some initial state, of type `s`, to the pair consisting of the result, `a`, and the modified (next) state, `s`, together having the type `(a, s)`; therefore, state type signature has the distinctive form `s -> (a, s)`.

The type of state is represented by the type parameter `s`, but the value of state is different: an initial state value, e.g. `s0 :: s`, goes in, but the modified state value, e.g. `s1 :: s`, comes out.

However, when translating to logic, only the types are considered; types correspond to theorems, terms to proofs.

```hs
newtype State s a = State (s -> (a, s))


-- The first form
smap :: (a -> b)        -- f
     -> (s -> (a, s))   -- h
     -> (s -> (b, s))
smap f h = \s₀ ->
  let (  x, s₁) = h s₀
  in  (f x, s₁)


-- The second form:
-- removing redundant (rightmost) parenthesis from the signature
smap :: (a -> b)       -- f
     -> (s -> (a, s))  -- h
     -> s              -- s₀
     -> (b, s)
smap f h s₀ =
  let (  x, s₁) = h s₀
  in  (f x, s₁)
```


The first signature corresponds to the judgement:     
`a -> b, s -> (a ∧ s) |- s -> (b ∧ s)`

The second signature (equivalent to the 1st) corresponds to:    
`a -> b, s -> (a ∧ s) -> s |- b ∧ s`



```
>>> The derivation of the judgment:

a -> b, s -> (a ∧ s) |- (s -> (b ∧ s))

--|---------------------------------|------------------
1 | a -> b          Premise         | f :: a -> b
2 | s -> (a ∧ s)    Premise         | h :: s -> (a, s)
0 | s -> (b ∧ s)    Conclusion      |
--|---------------------------------|------------------
3 | | s             Assumption      | \s₀ -> ...
4 | | a ∧ s         MP 2,3          | h s₀ :: (a, s)
5 | | a             ∧E₁ 4           | let (x, _) = h s₀
6 | | b             MP 1,5          | f x :: b
7 | | s             ∧E₂ 4           | let (_, s₁) = h s₀
8 | | b ∧ s         ∧I 6,7          | (f x, s₁)
9 | s -> (b ∧ s)    →E 3-9          | \s₀ -> (f x, s₁)
--|---------------------------------|------------------


>>> The derivation of the judgment:

a -> b, s -> (a ∧ s), s |- b ∧ s

--|---------------------------------|------------------
1 | a -> b          Premise         | f
2 | s -> (a ∧ s)    Premise         | h
3 | s               Premise         | s
0 | b ∧ s           Conclusion      |
--|---------------------------------|------------------
4 | a ∧ s           MP 2,3          | h s0 :: (a, s1)
5 | a               ∧E₁             | let (a, _) = h s0
6 | b               MP 1,5          | f a :: b
7 | s               ∧E₂             | let (_, s1) = h s0
8 | b ∧ s           ∧I 6,7          | (b, s1)
--|---------------------------------|------------------
```



> Example: applicatively mapping a state

```hs
newtype State s a = State (s -> (a, s))

apst :: (s -> ((a -> b), s))
     -> (s -> (a, s))
     -> (s -> (b, s))
```





## Haskell and formation rules

```hs
id :: a -> a
const :: a -> b -> a
(.) :: (b -> c) -> (a -> b) -> (a -> c)
flip :: (a -> b -> c) -> (b -> a -> c)

curry :: ((a, b) -> c) -> a -> b -> c
uncurry :: (a -> b -> c) -> (a, b) -> c

-- conjunction / product types

-- ∧I
(,) :: a -> b -> (a, b)

-- ∧E₁
fst :: (a, b) -> a
-- ∧E₂
snd :: (a, b) -> b

-- disjunction / sum types

-- ∨I₁
Left :: a -> Either a b
-- ∨I₂
Right :: b -> Either a b

-- ∨E
caseAnalysis Left a = 
caseAnalysis Right b = 
```


## The Fitch-style proof derivations


* example: `a -> c |- a -> (b -> c)`

1 | a -> c             premise
2 | | a                assumption
3 | | | b              assumption
4 | | | c              ->e 1,2
5 | | b -> c           ->i 3-4
6 | a -> (b -> c)      ->i 2-5


* example: `|- a -> ((a -> b) -> b)`

0 a -> ((a -> b) -> b)       P
1 . a¹                       A¹
2 . . (a -> b)²              A²
3 . . b                      MP 1,2
4 . (a -> b) -> b            ->I 2-3 (A²)
5 a -> ((a -> b) -> b)       ->I 1-4 (A¹)


* example: `|- ((a ∧ b) -> c)` -> `(a -> (b -> c))` AKA `curry`

0 (a ∧ b) -> c    P
1 . a¹            A¹
2 . . b²          A²
3 . . a ∧ b       ∧i
4 . . c           MP 0,3
5 . b -> c        ->i A²
6 a -> b -> c     ->i A¹

* flip: `|- (a -> b -> c) -> (b -> a -> c)`

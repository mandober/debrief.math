<!-- TOC -->

- [About](#about)
- [Motivation](#motivation)
- [The Curry-Howard isomorphism](#the-curry-howard-isomorphism)
- [Conjunction](#conjunction)
- [Implication](#implication)

<!-- /TOC -->


## The Curry-Howard isomorphism

*The Curry-Howard isomorphism* (CHI) is a correspondence between logic and programming languages, and especially interesting in the context of functional programming languages, is the connection between *intuitionistic logic* (IL) and typed lambda calculi.

More specifically, a type declaration corresponds to a logical proposition and an implementation of that type declaration is a proof of that proposition. A function's type signature can be translated into a proof derivation and vice versa.

*Natural deduction*, here presented using the *Fitch-style diagrams*, is a framework for deriving proofs, based on a set of initial premises or on a set of assumptions, using a specific set of inference rules.

The *rules of inference* dictate the conditions needed for introduction or elimination of logical connectives. Each logical connective in IL, that is, its introduction or elimination, has a corresponding function in Haskell.


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

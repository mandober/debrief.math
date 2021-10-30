# Proof by induction

A proof by induction consists of two cases.

1. The first, *the base case*, proves the statement for `n := 0`, without assuming any knowledge of other cases.

2. The second case, *the induction step*, proves that, if the statement holds for any given case `n := k`, then it must also hold for the next case `n := k+1`.

These two steps together establish that the statement holds for every natural number `n`.

The base case does not necessarily begin with n = 0, but possibly with any fixed natural number (n = N), establishing the truth of the statement for all natural numbers (n ≥ N).


1. φ(Z)
2. φ(n) -> φ(S(n))


## Description

The simplest and most common form of mathematical induction infers that a statement involving a natural number n (that is, an integer n ≥ 0 or 1) holds for all values of n. The proof consists of two steps:

1. The *base (initial) case*:
- prove that the statement holds for 0.
- φ(Z), φ(Zero), φ(0), φ(1)

2. The *inductive (induction) step*:
- prove that, for every n, if the statement holds for n, then it holds for S(n)
- ∀n. φ (n) -> φ (Succ n)

In other words:
- *assume* that the statement holds for some arbitrary natural number `n`
- then prove that the statement holds for its successor, `S(n)` i.e. `n + 1`

The hypothesis (assumption) in the inductive step (that the statement holds for a particular `n`) is called the *induction (inductive) hypothesis*.

To prove the inductive step, one assumes the induction hypothesis for n and then uses this assumption to prove that the statement holds for n + 1.

## Elements

Prove the statement (proposition, predicate) `P(n)` for all natural numbers n, `n ∈ ℕ`.

- we need "to prove", "to show"; the proof is required for
- mathematical: statement, proposition, predicate
- using the *proof method* called math induction

## Terminology

- theorem proving
- proof
- formal proof
- proof method
- mathematical induction
- proof by induction
- base case, initial case
- asssumption
- hypothesis
- induction hypothesis, inductive hypothesis
- conclusion, consequence
- collary
- well-founded induction
- structural induction
- formal verification
- formal proof
- formal proof of mathematical model
- mathematical model

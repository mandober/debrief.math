# Mathematical induction

https://en.wikipedia.org/wiki/Mathematical_induction

Mathematical induction is a mathematical proof technique.

Mathematical induction is used to prove that a statement `P(n)` holds for every natural number `n`; that is, the overall statement is a sequence of infinitely many cases `( P(0), P(1), P(2), P(3), ... )`.

Informal metaphors help to explain this technique, such as:

> Mathematical induction is a method of proof we can use to prove that we can climb as high as we like on a ladder, by proving that we can climb onto the bottom rung (base case) and that from each rung we can climb up to the next one (inductive case).

A proof by induction consists of two cases.
1. The base case proves the statement for the basis (e.g. n = 0) without assuming any knowledge of other cases.
2. The inductive case (or step) proves that if the statement holds for any given case `k`, then it must also hold for the next case `k + 1`.


The simplest and most common form of mathematical induction infers that a statement about a natural number `n` (where n ≥ 0) holds for all values of `n`.

The proof consists of two steps:
1. The base case: prove that the statement holds for 0
2. The induction step (case): prove that for every n, if the statement holds for n, then it holds for n + 1.

In other words, assume that the statement holds for some arbitrary natural number `n`, and prove that the statement holds for its successor.

The hypothesis in the inductive step (that the statement holds for a particular `n`) is the **induction (inductive) hypothesis**.

To prove the inductive step, you **assumes the induction hypothesis** for `n` and then, based on this assumption, prove that the statement holds for `n + 1`.


## Natural numbers

The first two Peano axioms are the essential for defining numbers numbers (they're not sufficient, other axioms are needed for restriction and additional properties). We let the predicate `P(χ)` mean that `χ ∈ ℕ`.

1. P(0)                     0 ∈ ℕ
2. P(n) -> P(n+1)           n ∈ ℕ -> S(n) ∈ ℕ

In a PL, wee could give the inference rules for natural numbers:

```
              n : ℕ
----- (1)   --------- (2)
0 : ℕ       S(n) : ℕ
```

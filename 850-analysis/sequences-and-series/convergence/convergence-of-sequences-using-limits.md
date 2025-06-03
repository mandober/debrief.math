# Convergence and divergence of sequences using limits

This is a basic introduction into convergence and divergence of sequences using limits. It explains how to figure out a first few terms of a sequence and how to determine if a sequence converges or diverges by finding its limit.

A sequence can be turned into a series and summed, either obtaining the infinite sum of the series or a finite partial sum of the series. Sequences and series both admit the notion of a limit, partial sum and infinite sum.

- `lim{n→∞} aₙ = L` ⇒ converges
- `lim{n→∞} aₙ ≠ L` ⇒ diverges

If the limit
* If the limit exists and is a constant `L`, then the sequence converges.
* If the limit DNE or is `±∞`, then the sequence diverges.

The limit may exist, converging to a constant value (e.g. 0) or to infinity (either +∞ or -∞), or it may not exist at all (DNE). However, it is only in the case when the limit converges to a constant that the sequence converges. If the limit does not exist or if it diverges into infinity (i.e. increases or decreases without bound), then the sequence diverges.

Determining if a sequence is convergent or divergent may involve using the L'Hopital's rule, various theorems (like the Squeeze Theorem), and properties of arithemtic operations (e.g. logarithms, number e, exponentiation, etc.).

An expression involving limits is approached by first separating the terms, as much as possible, which depend on the limiting variable (typically `n`, which tends to ∞) and those terms which are independent of `n`. Then we can directly evalute the limit; we can even replace `n` with the limiting value (tipically `∞`, but generally any number).

Evaluting the limit may yield, e.g. `1/n`, which may be treated as `1/∞`. In expressions with `∞`, inifinity is actually treated as a very large number. In `1/∞`, the denominator gets larger, while the nominator remains constant, which evaluates to zero, `1/∞ = 0`. If the nominator gets larger and larger while the denominator remains constant, then the limit evalutes to `∞`, i.e. it diverges into infinity. And there are sequences like the alternating sequence of ones where the limit does not exist.

Another significant result of evaluating a limit may be to get a so-called *indeterminate form*, like ±∞/±∞, ±∞ ⋅ 0, 0/0

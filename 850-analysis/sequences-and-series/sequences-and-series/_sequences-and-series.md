# Sequences and Series

* PatrickJMT's Sequences and Series in Order (ritoruchou) 113 videos
https://www.youtube.com/playlist?list=PLqef6KgycNCyyCXi5BUNnmK2nZtEohyq3

## Convergence of sequences

Convergence of sequences depends on limits. Given an equation for a sequence, we want to evaluate the limit but as late as possible; that is, we'd like to separate the term that depend on the limit variable.

Ex. In `lim{n→∞} n(n-1)` both terms, `n` and `n-1`, depend on the limit variable `n` so there's not much to do as both terms tend to ∞, except realize that this sequence diverges: as `n` tends to infinity, the sequence tends to infinity as well, so `lim{n→∞} n(n-1) = ∞`.

Ex. Find the limit of the sequence `2ⁿ/3ⁿᐩ¹` as `n→∞`. This time we can mnaipulate the expression a little: `2ⁿ/3¹3ⁿ` so

```js
lim{n→∞} 2ⁿ/3ⁿᐩ¹
lim{n→∞} 2ⁿ/3¹3ⁿ
1/3 lim{n→∞} 2ⁿ/3ⁿ  // since 1/3 is a constant we can pull it out
1/3 lim{n→∞} (2/3)ⁿ // (2/3)ⁿ goes to 0 as n→∞
1/3 lim{n→∞} (2/3)ⁿ = 1/3 × 0 = 0
```

In this example, we were able to separate a constant, 1/3, from the parts that depend on the limit variable `n`. Since any constant does not, we can pull it out in front of the limit. Then, since `2ⁿ/3ⁿ` we  get the exp `(2/3)ⁿ` in which `n` is the exponent. This particular limit converges to zero, which is justified by the fact that the denominator grows faster then nominator, so the expression `(2/3)ⁿ` tends to 0 as `n` tends to infinity (not very rigorous for now).

In general, `lim{n→∞} xⁿ` converges to a constant limit, `1/(1-r)`, iff the base number, `x`, satisfies `-1 < x < 1`, i.e. `|x| < 1`.

## Geometeric series

>`Σ{n=0..∞} arⁿ` is the general form of a geometeric series. `a` is the first term and a constant coefficient, and `r` is the common ratio. The series will converge to `1/(1-r)` but only if `|r| < 1`.

# Series :: Series

## Definition of a series

>A **series** is the sum of terms of a *sequence*.

Sequences and series are similar in that they both contain terms, except sequences actually consists of delineated elements as their terms, while the terms of a series only exist implicitly as the summands of a summation. Logically, the *value of a series* is a single real number because a series represents the summation of all its terms. In practice, though, series are seldom evaluted down to a single value. They are commonly laid out with their (insides exposed) terms connected by the plus sign - just like sequences, except the comma of sequences is replaced by plus in series.

## Partial sum

The primary action performed on sequences is taking their **partial sum** (we cannot really sum up an infinite number of terms anyway). The partial sum is obtained by summing up all the terms of a subsequence.

A **subsequence** is an initial segment of a sequence up to and including some final term, say, with index `k`.

Now, a *k-subsequence* might mean either the first `k` terms (i.e. `k` many terms of a sequence), or it may mean all terms of a sequence up to (and including) the term at index `k`.

```pl
₀ ₁ ₂ ₃
a b c d = S
¹ ² ³ ⁴

0-BASED INDEXING:
  S₁ = b
  S₄ = DNE
  S₀ = a

  the first term is 'a'  # ambiguous: or is it 'b'?
  the last term is 'd'
  the zeroth term is 'a'

  k-subsequence, with k=3, where k means
    * up to index k ==> {a,b,c,d}   # different
    * k-many terms  ==> {a,b,c}     # different

1-BASED INDEXING:
  S₁ = a
  S₄ = d
  (S₀ = DNE)

  the first term is 'a'
  the last term is 'd'
  the zeroth term nonsensical

  k-subsequence, with k=3, where k means
    * up to index k ==> {a,b,c}
    * k-many terms  ==> {a,b,c}
```



With 1-based indexing this is the same thing, but they differ when indexing starts at 0 or another constant. With 0-based indexing, a k-subsequence will either include the terms with indices from 0 to `k-1`, or the first `k` terms, which has the same result.

Summing up the first `n` terms of a sequence we get a partial sum up to `n`.

That limit is called the *upper bound*. With finite sequences, the upper bound is a constant. With infinite sequences, the upper bound is usually (the positive) infinity, denoted by `∞`. The starting index is the *lower bound*, and it is usually 0 or 1. When the series is expressed in sigma notation, the lower bound goes below the sigma symbol, and the upper bound is on top.

For a sequence `d`, the corresponding series `D` is `D = d₁ + d₂ + d₃ + …`.

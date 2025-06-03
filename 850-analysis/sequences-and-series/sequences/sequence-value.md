# Value of a sequence

- Can we assign a value to an infinite sequence
- Can we assign a value to an infinite sum

Sequences are sometimes treated as implicit series because a sequence can be easily converted into a series by replacing commas with pluses. Almost all things relevant to series hold for sequences as well. And vice versa. 

Sequences are investigated for their own sake to find if they converge, and to find their limit if they do.

There doesn't seem to be any sense in investigating the *limit of a finite sequence*, which is probably why they are almost never mentioned. What can we do with finite sequences and series. Perhaps, we can sum them up (and that's about it). After converting it to a series, a finite sequence may be summed up. Finite series, like finite sequences are not frequently used. However, the operations performed on infinite sequences and series may yield finite sequences or series. For instance, a *partial sum* of a series means summing up an initial segment of an infinite series up to some index `n`. So each partial sum means adding together a finite number of terms, and the resulting sum may then be placed into a sequence of the partial sums of the series. We can then see if that sequence of partial sums converges, and if it does, we can try to calculate the limit. Thus, by investigating one collection (series) we often employ the other collection (sequences) to hold the intermediate results. In fact, sequence is often used as an ordered container that holds the data set we intend to work with. Then we can manipulate it, either directly or after converting it to a series.

Limit does not seem to be a concept applicable to finite sequences; after all, the definition of a limit is related, perhaps implicitly, to infinite sequences so there is always a next index and next term.

A finite sequence doesn't seem to be queryable for a limit, but it can be converted to a series and summed up.

Finite sequences are rarely considered, more interesting are infinite sequences. We can easily sum up all the terms of a finite sequence (explicitly converting it to a series, or implicitly treating it as a series), and there is usually an existing or derivable formula for this sum.

Infinite sequences are explored to find out whether they converge and then their limit if they do. As with any infinite series, the *sum of the series* is defined to mean the limit of the partial sum of the first `n` terms. 




## Can we assign a numerical value to an infinite sum?

Consider the following sum:

    1/2 + 1/4 + 1/8 + 1/16 + ⋯ + 1/2ᵏ + ⋯

The dots at the end indicate that the sum goes on forever. Does this make sense? Can we assign a numerical value to an infinite sum?

While at first sight, that may seem difficult or impossible, we have done something similar when we talked about one quantity getting "closer and closer" to another, fixed, quantity. With series we could ask whether - as we add more and more terms together - does these partial sums get closer and closer to a fixed limiting value.

The sequence of partial sums of the series above,

    Sₙ = 1/2, 3/4, 7/8, 15/16, 31/32, …

clearly tends to a value that is its limit, i.e. 1. We can consider the partial sum of the sequence above up to term aₙ (n-th term):

```js
1/2 + 1/4 + 1/8 + 1/16 + ⋯ + 1/2ⁿ =

  2ⁿ - 1      2ⁿ     1            1
= ------  =  ---- - ----  =  1 - ----
    2ⁿ        2ⁿ     2ⁿ           2ⁿ

// and then we take the limit:
lim (1 - 1/2ⁿ) = 1 - 0 = 1
n→∞
// the term 2ⁿ goes to ∞, so 1/∞ = 0, so we get 1 - 0, which is 1
```


## Absolute value of a sequence

For example, does `|aₙ| < 1` mean that the absolute value of the sequence is less then 1?

Thanks to ambiguous notation, `aₙ`, may denote the entire sequence or a term (any term) of the sequence, or the term indexed by a constant `n` (the n-th term). So, a single expression has at least 3 interpretations.

If a sequence can have a value (even in the form of limit), then it can have an absolute value. In fact, the absolute value can have an additional interpretation: taking the absolute value of each term, and then considering the resulting sequence.

The notation `|r| < 1` means that some variable `r` is bouned between -1 and 1, i.e. `-1 < r < 1`. So when we have `aₙ` instead of `r`, `|aₙ| < 1` does it mean that the value of the whole sequence is bounded, or that each term is bounded as `n` ranges over the domain set ℕ which provides indexes? For example, if `a₀` uniquely identifies the first term, then `aₙ` may similarly identify the n-th term (if `n` is a known value), or the `n` may implicitly range over all indexes, so `aₙ` denotes any term. A sequence iteself should be denoted by enclosing `aₙ` in braces or something, but too often `aₙ` alone is used to denote a sequence.

```js
{aₙ} =        ( 1 , -1 ,  1 , -1 , ⋯)   → DNE
{bₙ} =        (-1 ,  1 , -1 ,  1 , ⋯)   → DNE
{aₙ} + {bₙ} = ( 0 ,  0 ,  0 ,  0 , ⋯)   → 0
{aₙ} - {bₙ} = ( 2 ,  2 ,  2 ,  2 , ⋯)   → 2
```

Alternating sequences of 1 and -1 (with a₀ = 1 or a₀ = -1) diverge, but combining them with some operation may render the resutling sequence convergent.

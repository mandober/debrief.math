# The importance of the lower bound

The importance of the lower bound in a sequence or series

A sequence or series has an *iterting variable*, usually named `n` or `k`, that takes a lower bound - usually 0 or 1, although it may also be any other positive integer as well - and starts counting from that lower bound up to (and including) the value of the upper bound. This iteration is particularly conveniently expressed using *sigma notation* which the notation for series levereges, `Σ {n=1..∞} aₙ`. The notation for sequences also has a notation for iteration but it is not as pleasent, `{aₙ}{n=1..∞}`.

The iterator variable `n` is always a member of the set of the natural numbers, `ℕ`, since the *indices* of a sequence of series are always whole, positive numbers, sometimes starting from 0 and sometimes from 1. The issue of not knowing what the default lower bound should be, is inherited directly from the fact that `n ∈ ℕ`, in that there is no agreement whether ℕ includes 0 or not.

Therefore, we must be very explicit about the lower bound: we must explicitly declare the name of the iterating variable and initialize it with the lower bound, e.g. `n=1` or `n=0` (or some other integer). Alternatively, we can explicitly write the first terms of the sequence or series, and this usually has the form `a₀ = C` or `a₁ = C`, where the subscript implies the starting index value (and `C` is the value of the initial term). The initial term is also used in some formulas so it should be clear what it is and what index it uses.

When 1 is used as a lower bound, we call it *1-based indexing*, and when 0 is used it is *0-based indexing*. Normally, 1 and 0 are the two numbers commonly used to initialize the lower bound with (i.e. to start counting form), but there is no restriction on this, and any other positive integer may be used as well.

One good thing about this is that we can easily convert a formula that uses 1-based indexing into a formula with 0-based indexing, and vice versa. However, a bad aspect of this is that confusing the starting value may result in a sequence or series that skips a term or has an extra term, possibly *violating some properties* (limit, sum, partial sum, limit of partial sums, etc.), or even producing a term that raises a *division by zero* fault.


We can convert a formula for a sequence or series that starts from 1 (`n=1`) into a formula that starts counting from 0 (`n=0`) - and vice versa - by adjusting all occurrences of the iterating variable `n` (either decrementing or incrementing all occurrences of `n` by 1).

```js
// series that starts counting from 1
⎲∞    1
⎳ₙ₌₁ ---- = 1 + 1/2 + 1/3 + 1/4 + 1/5 + ⋯
       n

// equivalent series that starts counting from 0
⎲∞      1
⎳ₙ₌₀ ------- = 1 + 1/2 + 1/3 + 1/4 + 1/5 + ⋯
       n + 1
```





However, if the lower bound has a wrong value, it can yield a sequence that skips a term or has an extra term.

```js
// sigma notation that starts from 1
⎲∞    1
⎳ₙ₌₁ ---- = 1/2 + 1/4 + 1/8 + 1/16 + ⋯
       2ⁿ

// sigma notation that starts from 0
⎲∞     1
⎳ₙ₌₀ ----- = 1 + 1/2 + 1/4 + 1/8 + 1/16 + ⋯
        2ⁿ
```

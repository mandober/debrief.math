# Sequence :: Notation

A sequence is loosely denoted `{aₙ}ₖ₌₁` or `{aₙ}`. The `a` is the name of the sequence, and the subscript (index) `n` stands for the number of elements, except it is almost never seen taking on a constant value, which it should at least with finite sequences.

A notation for sequences should inform us about
- sequence name
- the name of the iterator variable
- lower bound
- upper bound (a constant for finite or ∞ for infinite sequences)
- general form for constructing any term based on an index
- listing of terms

Usually however, the best we can hope for is the listing of terms, hopefully with a formula how to construct more.

    a₁, a₂, a₃, a₄, …, aₘ, …, aₙ



Given each term of GP as `a₁, a₂, a₃, a₄, …, aₘ, …, aₙ`, expressing these terms according to the first term `a₁` will give us the terms of the sequence:

```js
a₁ = a₁
a₂ = a₁r
a₃ = a₂r = (a₁r)r = a₁r²
a₄ = a₃r = (a₁r₂)r = a₁r³
…
aₘ = a₁rᵐ⁻¹
…
aₙ = a₁rⁿ⁻¹
```

where
- `a`    name of the sequence
- `aₙ`   reference to the sequence, e.g. in series `Σ{k=0..∞} aₙ`
- `{aₙ}` reference to the sequence, e.g. in series `Σ{k=0..∞} {aₙ}`
- `a`    value of the initial term under any indexing
- `a₁`   value of the initial term in 1-based indexing; 
         the index (subscript) 1 indicates the use of 1-based indexing
- `a₀`   value of the initial term in 0-based indexing; 
         the index (subscript) 0 indicates the use of 0-based indexing


- `a₁`   is the first term, `a₂` is the second term, etc.
- `aₘ`   any term before the last term
- `aₙ`   value of the last term (or the nth term)

- `aₘ`   value of any term after the first term but before the last term
- `aₙ₋₁` value of the second to last term, if seq length is `n`
- `aₙ` value of the last term, if the length of the sequence is `n`
- `n`  length of the sequence, total number of terms
- `k`  iterator variable, `k=0..∞`
- `m`    mth term after the first but before nth
- `d`   common difference of arithmetic progression
- `r`   common ratio of geometric progression
- `S`   sum of the 1st n terms

We should be able to refer to
- the whole sequence
- any term of the sequence by index
- the initial term by index 0 or 1
- the last term by index `n`
- length of the sequence, by `n`
- a term relative to another
- partial sum of the sequence
- sum of the sequence
- limit of the sequence
- series derived from the sequence
- partial sums of the series

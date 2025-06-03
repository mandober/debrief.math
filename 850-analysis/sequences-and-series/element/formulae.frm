# Formulas

## Power series

```js
// power series (general form) centered at c, starting at n=0
⎲∞
⎳ₙ₌₀ aₙ(x-c)ⁿ

// power series (general form) centered at c=0, starting at n=0
⎲∞
⎳ₙ₌₀ aₙxⁿ
```

## P-series

```js
// p-series
⎲∞    1
⎳ₙ₌₀ ----   if p > 1 ⇒ converges, if p < 1 ⇒ diverges, if p = 1 inconclusive
       nᵖ
```

## Harmonic sequence

```js
// Harmonic Sequence (divergent)
⎲∞    1
⎳ₙ₌₀ ----
       n

// Alternating Harmonic Sequence (convergent)
⎲∞          1
⎳ₙ₌₀ (-1)ⁿ ----
             n
```


## Geometric series

```js
⎲∞
⎳ₙ₌₀ a(r)ⁿ    for |r| < 1 (then converges)
// a = initial term, r = common ratio


// limit of infinite geometeric series that starts at k=0
⎲∞                                    a
⎳ₙ₌₀ arⁿ = a + ar + ar² + ar³ + ⋯ = ------      iff |r| < 1
                                      1 - r

// limit of infinite geometeric series that starts at k=1
⎲∞                                      a
⎳ₖ₌₁ arᵏ⁻¹ = a + ar + ar² + ar³ + ⋯ = ------    iff |r| < 1
                                       1 - r

// sum of a finite geometeric series that starts at k=0
⎲ₙ                                         a₀(1 - rⁿᐩ¹)
⎳ₖ₌₀ arᵏ = a + ar + ar² + ar³ + ⋯ + arⁿ = -------------
                                               1 - r

// sum of a finite geometeric series that starts at k=1
⎲ₙ                                           a₁(1 - rⁿ)
⎳ₖ₌₁ arᵏ⁻¹ = a + ar + ar² + ar³ + ⋯ + arⁿ = ------------
                                                1 - r
```

## Arithmetic series

If `c` and `d` are fixed integers (coefficients), the sequence `aₙ = c + nd` is called arithmetic sequence.

```js
⎲∞
⎳ₙ₌₀ a₀ + nd
// a₀ = initial term, d = common difference
```

Common difference, `d`, is the relation between consequtive terms.

Any 3 consequtive terms of arithemtic seq are related by *arithmetic mean*: in (…, a, b, c, …), term `b` is the average of `a` and `c` terms, `b = (a+c)/2`.

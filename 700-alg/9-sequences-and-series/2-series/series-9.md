# Series

- A series is the sum of a sequence.
- A series of a finite sequence is a single number.
- A series of an infinite sequence is a *partial sum* up to some term `N`
- A sequence of partial sums


## Partial sums

Given an infinite sequence `S`, we can calculate a partial sum of terms of `S` up to the index `N` (the index of the last term we are considering; the index of the first term is 0). So, we are summing the terms of sequence `S` from 0 up to and including `N`.

However, we can also form a *sequence of running partial sums*. Given a sequence `A`, a new sequence `S` can be derived from `A` with terms of `S` which are running partial sums of `A`.

The term `S₀` is the same as `A₀`:
- S₀ = A₀

The term `S₁` is a sum of the first 2 terms of `A`:
- S₁ = A₀ + A₁

The term `S₂` is a sum of the first 3 terms of `A`:
- S₂ = A₀ + A₁ + A₂   



A sequence `S` of *running partial sums* of another sequence `A`:   
>Sᵢ = `Aᵢ + Aᵢ˗₁ + … + A₂ + A₁ + A₀` = `Aᵢ + Sᵢ˗₁`


```
sequence aₙ = {a₀, a₁, a₂, a₃, a₄, …, aₙ}
sequence aɴ = {a₀, a₁, a₂, a₃, a₄, …, aɴ}
sequence sₙ = {s₀, s₁, s₂, s₃, s₄, …, sₙ}

               ₀  ₁  ₂  ₃   ₄   ₅   ₆   ₇
sequence A = { 1, 3, 5,  7,  9, 11, 13, 15, … }
series   S = { 1, 4, 9, 16, 25, 36, 49, 64, … }


Sₙ = Σ{i=0..n}

Sₙ = Σ{i=0..n} Aᵢ

S₂ = A₀ + A₁ + A₂        = A₂ + S₁

S₃ = A₃ + (A₂ + A₁ + A₀)
   = A₃ + S₂

Sᵢ = Aᵢ + Aᵢ˗₁ + … + A₂ + A₁ + A₀
Sᵢ = Aᵢ + Sᵢ˗₁


S₃ = A₀ + A₁ + A₂ + A₃ =  S₁ + A₂

S₂ = 1  +  3 +  5  =   4 + 5 = 9
S₃ = 1  +  3 +  5  =   4 + 5 = 9



S₀ = Σ{i=0..0} Aᵢ = A₀                          = 1
S₁ = Σ{i=0..1} Aᵢ = A₀ + A₁                     = 1 + 3 = 4
S₂ = Σ{i=0..2} Aᵢ = A₀ + A₁ + A₂                = 1 + 3 + 5 = 9
S₃ = Σ{i=0..3} Aᵢ = A₀ + A₁ + A₂ + A₃ + A₄      = 1 + 3 + 5 + 7 = 12
S₃ = Σ{i=0..3} Aᵢ = A₀ + A₁ + A₂ + A₃ + A₄ + A₅ = 1 + 3 + 5 + 7 + 9 = 21
```


## 0-indexing vs 1-indexing

```js
// zero-indexing
     ∞
     ⎲
Sₙ = ⎳ axⁿ = a + ax + ax² + ax³ + … + axⁿ
    ⁿ⁼⁰

// one-indexing
// When using 1-indexing we need to use n-1 in the exponent to get x⁰
// in the 1st term. Also the last term is then axⁿ⁻¹, rather then axⁿ
     ∞
     ⎲
Sₙ = ⎳ axⁿ⁻¹ = ax⁰ + ax¹ + ax² + ax³ + … + axⁿ⁻¹
    ⁿ⁼¹
```

## Finding the common ratio

Figuring out the equation for the common ratio. To find the common ratio we divide any two consequtive terms (current by next), e.g. `ax²/ax = x`. So `x` is the ratio by which we multiply a term to get the next term. Each term is `x` times the previous term.

To find the general form of how to figure out the common ratio, we multiply the entire series `Sₙ` by `x`

```js
     ∞
     ⎲                                     a
Sₙ = ⎳ axⁿ = ax⁰ + ax¹ + ax² + … + axⁿ = -----  // for x<1
    ⁿ⁼⁰                                   1 - x

// x        … is the ratio
// ax⁰ = a  … is the first term

 Sₙ = a + ax + ax² + ax³ + … + axⁿ         // mul both sides by x
xSₙ =     ax + ax² + ax³ + … + axⁿ + axⁿᐩ¹ // most terms eliminated
Sₙ - xSₙ = a - axⁿᐩ¹                       // difference of sequences
Sₙ(1 - x) = a(1 - xⁿᐩ¹)                    // factor out common terms

     a(1 - xⁿᐩ¹)
Sₙ = -----------                          // general equation
       1 - x
```

The series where `|x| < 1`, that is `-1 < x < 1` converge, so such series are useful. In these cases, the term `xⁿᐩ¹` tends to zero:

```js
lim{n→∞} Sₙ

           a(1 - xⁿᐩ¹)     a
lim{n→∞} = ----------- = ------ // for |x| < 1
             1 - x       1 - x
```

When `|x| < 1` the series converges; otherwise it deverges for x < -1 or x > 1.

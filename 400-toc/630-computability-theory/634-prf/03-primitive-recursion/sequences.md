# Sequences

The set of primitive recursive functions is remarkably robust, and we can extend it even further, but first we need a way to represent sequences of the natural numbers as a single natural number.

We identify a finite sequence of naturals with a specific natural as follows: the sequence `⟨a₀, a₁, a₂, …, aₖ⟩` corresponds to the number

>Q(⟨a₀, a₁, a₂, …, aₖ⟩) = p₀^(a₀+1) · p₁^(a₁+1) · p₂^(a₂+1) · … · pₖ^(aₖ+1)

```
k: 0 1 2 3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 …
p: 2 3 5 7 11 13 17 19 23 27 29 31 37 41 43 47 49 53 61 …
so
p₃ = 7, p₁₂ = 37

(2, 7, 3) = p₀^(a₀+1) · p₁^(a₁+1) · p₂^(a₂+1) =
          = 2²ᐩ¹ ∙ 3⁷ᐩ¹ ∙ 5³ᐩ¹
          = 2³   ∙ 3⁸ ∙ 5⁴
          = 8 ∙ 6561 ∙ 625
          = 52488 ∙ 625
(2, 7, 3) = 32,805,000

(2, 7, 3, 0, 0) = p₀^(a₀+1) · p₁^(a₁+1) · p₂^(a₂+1) · p₃^(a₃+1) · p₄^(a₄+1)
                = 2²ᐩ¹ ∙ 3⁷ᐩ¹ ∙ 5³ᐩ¹ ∙ 7⁰ᐩ¹ ∙ 11⁰ᐩ¹
                = 2³ ∙ 3⁸ ∙ 5⁴ ∙ 7¹ ∙ 11¹
                = 32,805,000 ∙ 7 ∙ 11
(2, 7, 3, 0, 0) = 2,525,985,000
```

We add one to the exponents to guarantee that, e.g. the sequences ⟨2,7,3⟩ and ⟨2,7,3,0,0⟩ are uniquely encoded.

We can take both 0 and 1 to code the empty sequence; for concreteness, let `Λ` denote 0.

The reason that this coding of sequences works is 
>The Fundamental Theorem of Arithmetic:
>Every natural number `n ≥ 2`, can be written in exactly one way as the sum of the products of primes,
i.e. in the form: `n = p₀^a₀ · p₁^a₁ · p₂^a₂ · … · pₖ^aₖ`.

    n = p₀ᵃ · p₁ᵇ · p₂ᶜ · … · pₖᶻ

where
- p₀ is the 0th prime number, prime #0 = 2
- p₁ is the 1st prime number, prime #1 = 3
- p₂ is the 2nd prime number, prime #2 = 5
- p₃ is the 3rd prime number, prime #3 = 7
- p₄ is the 4th prime number, prime #4 = 11

This guarantees that the mapping `⟨⟩(a₀, …, aₖ) = ⟨a₀, …, aₖ⟩` is *injective*: different sequences are mapped to different numbers; to each number at most one sequence corresponds.

In other words, if numbers are represented in unary notation as dots, then composite numbers can be arranged into rectangles, but primes cannot.

>We'll now show that the operations of determining the length of a sequence, determining its `i`-th element, appending an element to a sequence, and concatenating two sequences, are all primitive recursive.


```hs
-- seq
Q(⟨a₀, a₁, a₂, …, aₖ⟩) = p₀^(a₀+1) · p₁^(a₁+1) · p₂^(a₂+1) · … · pₖ^(aₖ+1)

-- examples
260 = 2² · 5 · 13
180 = 2² · 3² · 5

-- begging of encoding
n = 2^a₀ · 3^a₁ · 5^a₂ · … · pₖ^aₖ

-- ex
Q(⟨2,7,3⟩) = 2^2+1 · 3^7+1 · 5^3+1
           = 2^3 · 3^8 · 5^4
           = 8 · 6,561 · 625
           = 32,805,000
```

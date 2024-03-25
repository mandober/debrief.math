# Sequences

The set of primitive recursive functions is remarkably robust, and we can extend it even further, but first we need a way to represent sequences of the natural numbers as a single natural number.

We identify a finite sequence of naturald with a specific natural number as follows: the sequence `⟨a₀, a₁, a₂, …, aₖ⟩` corresponds to the number

>Q(⟨a₀, a₁, a₂, …, aₖ⟩) = p₀^(a₀+1) · p₁^(a₁+1) · p₂^(a₂+1) · … · pₖ^(aₖ+1)


k | 0 | 1 | 2 | 3 |  4| 5| 6| 7| 8| 9|10|11|12|13|14|15|16|17|18| …
p̅     | 2 | 3 | 5 | 7 |11|13|17|19|23|27|29|31|37|41|43|47|49|53| …


We add one to the exponents to guarantee that, e.g. the sequences ⟨2,7,3⟩ and ⟨2,7,3,0,0⟩ are uniquely encoded. We can take both 0 and 1 to code the empty sequence; for concreteness, let `Λ` denote 0.

The reason that this coding of sequences works is the *Fundamental Theorem of Arithmetic*:

Every natural number `n`, n ≥ 2, can be written in only one way as the sum of the products of primes, i.e. in the form:

>n = p₀^a₀ · p₁^a₁ · p₂^a₂ · … · pₖ^aₖ

This guarantees that the mapping `⟨⟩(a₀,…,aₖ) = ⟨a₀,…,aₖ⟩` is *injective*: different sequences are mapped to different numbers; to each number only at most one sequence corresponds.

In other words, if numbers are represented in a unary notation as dots, then each composite number can be arranged to make a rectangle, but primes cannot.

>We'll now show that the operations of determining the length of a sequence, determining its ith element, appending an element to a sequence, and concatenating two sequences, are all primitive recursive.


```hs
-- seq
Q(⟨a₀, a₁, a₂, …, aₖ⟩) = p₀^(a₀+1) · p₁^(a₁+1) · p₂^(a₂+1) · … · pₖ^(aₖ+1)

-- examples
260 = 2² · 5 · 13
180 = 2² · 3² · 5

-- begging of encoding
n = 2^a₀ · 3^a₁ · 5^a₂ · … · pₖ^aₖ

-- ex
Q(⟨2,7,3⟩) = 2^2 · 3^7 · 5^3 = 4 · 2,187 · 125 =  ‭1,093,500‬
Q(⟨2,7,3⟩) = 2^3 · 3^8 · 5^4 = 8 · 6,561 · 625 = 32,805,000
```

# Sequences

- sequence is an ordered list
- sequence is a map
- members of a sequences are called the terms of the sequence
- arithmetic: next = prev + const
- geometric:  next = prev × const
- harmonic
- recursive
- fibonacci
- combination sequence: combo of arithmetic and geometric
- sequences without general equations
- infinite sequence


A mathematical sequence is a list (not a sum, difference or entailment) of terms (usually numbers) that follow a certain order. A sequence is not a set nor a multiset but a *list* - an ordered collection of elements which may appear multiple times. The imposed order is a relation between the terms of a sequence.

A sequence is a *mapping* from ℕ to objects, typically numbers, called the *terms of the sequence*. It is a map from ℕ to another set (usually ℝ) because each term has a fixed position or *index* within the sequence, and this index is given by a natural number.

A sequence is formally denoted by `{aₙ}` and then qualifying `n` as e.g. `n ∈ ℕ` or `n ∈ ℕᐩ` or `n ≥ 0`. So `{aₙ}` subscripted by n ∈ ℕ. The first term in the sequence is generically denoted `a₀` which suggests its index is 0. If the first term is given as `a₁` it means indexing is one-based so the first term has index 1. The nth term in a sequences is `aₙ`, but this is ambiguous because it may also stand for the entire sequence in a loose notation; moreover, `aₙ` may also denote a generic term, like `aₙ˗₁` denotes a previous term (in relation to what should be clear from the context), in which case `aₙ` then denotes the current term.

Sequences may be described by stating the initial segment, i.e. a few terms from the beginning of the sequence, but that is not rigorous or precise. Given only a few terms, the next term can still be anything at all since there need not be any logic to it. Typically, of course, there is means to the madness, but giving only a few terms and hoping the reader will infer the rest is still not rigorous.



Arithmetic sequence
- next = prev + const (constant value)
- `aₙ = aₙ˗₁ + c`
- *common difference*, `c = aₙ - aₙ˗₁`
- aₙ = aₙ˗₁ + 4 = { 1, 5, 9, 13, 17, … }

Geometric sequence
- next = prev × const
- `aₙ = aₙ˗₁ × c`
- *common ratio*, `c = aₙ ÷ aₙ˗₁`
- aₙ = aₙ˗₁ × 4 = { 1, 4, 16, 64, 256, … }

Combination sequence
- a combination of arithmetic and geometric sequence
- e.g. the numerator increases arithmetically, denominator geometrically:
- aₙ = n/4ⁿ = { 1/4, 2/16, 3/64, 4/256, 5/1024, …}

Sequences without a general equation
- sequences that don't have a relation between terms
- sequences that cannot be described by an equation
- prime numbers = { 2, 3, 5, 7, 11, 13, 17, 19, … }
- random sequences
- sometimes the pattern is not obvious, but it may turn out there is one
- {1, 4, 1, 5, 9}
- above is the sequence of the decimal expansion of π (after the decimal dot)

Recursive sequence
- described by a recurrence relation
- described by a recursive function
- must have a base case consisting of a few initial terms
- Fibonacci sequence: `F₀ = 1`, `F₁ = 1`, `F = Fₙ˗₁ + Fₙ˗₂`
- F = {1, 1, 2, 3, 5, 8, 13, 21, 34, …}

Infinite sequence
- a sequence with an infinite number of terms
- soften denoted by abusing notation for fundamental sets: ℕ, ℚ, ℝ, ℝᐩ
- ℕ is actually a set, but the notation may be abused to denote a sequence
- we may want only `N` terms of an infinite sequence
- then we ask for terms from 0 to `N`
- *initial segment* of a sequence are terms indexed starting with 0 up to `N`
- vat `i` is often used to iterate through a sequence up to `N`, [i=0..N]
- setting `i` initially to 0, then incrementing it by 1, we can index as many terms of the sequence as we want. However, math has no notation for this, but it does have the sigma (Σ) notation for series (sums of terms of a sequence).

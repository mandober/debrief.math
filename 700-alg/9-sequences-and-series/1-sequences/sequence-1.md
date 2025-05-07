# Sequences

https://en.wikipedia.org/wiki/Sequence


## Contents

- definition of sequence
- notation
- finite sequence
- infinite sequence
- discrete definition, explicit definition
  - discrete function
- recursive sequence
  - recursive function


## Definition of sequence

https://en.wikibooks.org/wiki/Calculus/Definition_of_a_Sequence

>A *sequence* is an ordered collection of terms in which repetition is allowed.

A sequence is an ordered list of objects. Like a set, it contains members, called terms, and the number of terms (possibly infinite) is called the *length of the sequence*. Unlike with sets, order in a seq matters and the same elements can occur multiple times. For example, `(C, R, Y)` is a sequence of letters that differs from `(Y, C, R)` since the ordering matters.

A *finite sequence* is also called an *n-tuple*. Finite sequences include the empty sequence `()` that has no elements, and is sometimes called an empty product (then, a sequence is considered a product type) that represents not then number 0 but number 1 as the unit of multiplication. This is often the case in type theory where `()` frequently denotes the unit type (single-element type) whose sole element is also denoted by `()`.

## Types of sequences

- finite sequence
- infinite sequence
- recursive sequence
- bi-infinite sequence
- harmonic sequence
- arithmetic sequence
- geometric sequence

A function from integers into some set is sometimes called a *bi-infinite sequence*, since it may be thought of as a sequence indexed by negative integers grafted onto a sequence indexed by positive integers.

The sequence `aₙ = 1/n` is called the *harmonic sequence*.

If `c` and `d` are fixed integers (coefficients), the sequence `aₙ = c + nd` is called *arithmetic sequence*.

If `b` and `r ≠ 0` are coefficients, the sequence `aₙ = b⋅rⁿ` is called a *geometric sequence*.

## Notation for sequences

Sequences are often denoted by braces (like sets), `{2, 3, 3, 4, 4}`, which denotes an anonymous sequence.

To name it, we can use a letter, commonly those from the start of the alphabet (`a` is a popular choice). A named sequence looks like `a = {1, 2, 3}`. When a sequence has a name we can refer to its terms with a *subscript* (index), which is usually a positive integer, so indexing may start at 1, called *one-based indexing*. Sometimes indexing starts from 0, called *zero-based indexing*, but, generally, indexing may start from any number.

This sequence is referred to by `a`, and its first term by `a₁` (a₁=1). We can describe the terms in this sequence with a formula `aₙ = n`, where `0 < n < 4` is an integer. So under this definition `a₄` is undefined since the sequence has no term at index 4.

Sequences are usually presented as `{aᵢ}` or `{aᵢ}i∈ℕ` (where the part `i ∈ ℕ` should also be in subscript).

An arbitrary sequence may be presented as `{aₙ} = (a₀, a₁, a₂, …, aₙ)`.


## Infinite sequences

>An *infinite sequence* is a sequence with an infinite number of terms.

A sequence `a` can be represented by `aₙ = n` for all non-negative integers `n`. This sequence could also be realized as `{0, 1, 2, 3, …}`, where ellipses implies this sequence is infinite.

## Discrete functions

With indexing in mind, a *sequence is a map* from non-negative integers, `ℕ` or `ℤᐩ` to (usually) real numbers, `a : ℕ → ℝ`. This is known as a discrete function (discrete definition, explicit definition).

>A *discrete function* is any function whose domain is not an uncountable set like ℝ or ℂ, but a countable set like ℤ or ℚ.

Given a discrete function, since the domain is discrete, the range must also be discrete. This means that since the domain of a discrete function is countable, the output (range) must also be a countable set (even if it's a subset of an uncountable set). Discrete function acts like an enumerator, counting the terms in the sequence.

## Arithmetic sequence

Thise are arithmetic sequences
- `aₙ = n + 1`, a = {2, 3, 4, 5, 6, …}
- `bₙ = cos(n−1)`, b = {1,0.5403…, −0.4161…, −0.9899…, 0.2836…, …}

If `c` and `d` are fixed integers (coefficients), the sequence `aₙ = c + nd` is called a arithmetic sequence.

## Geometic sequence

If `b` and `r ≠ 0` are coefficients, the sequence `aₙ = b⋅rⁿ` is called a geometric sequence.

## Harmonic sequence

A sequence `aₙ = 1/n` is called a harmonic sequence.

## Recursive sequence

Recursive sequence (recursive function, recursive formula, recursive definition) is a sequence in which the current term `aₙ` is defined in terms of a previous one, `aₙ˗₁`.

To know any term in a recursively defined sequence requires you to know all the terms before it, which means you must know the first term, sometimes denoted `a₀`.

Sometimes, one can have a sequence that is necessarily defined by a recursive function. For instance, the recursively defined sequence `aₙ﹢₁ = cos(aₙ)` and `a₁ = 1`.

This is an arithmetic sequence (from above), but this time it uses a recursive definition: `pₙ﹢₁ = pₙ + 1`, `p₁=2`, yields `p = {2, 3, 4, 5, …}`.

`uₙ﹢₁ = cos(uₙ)`, `a₁ = 1` yields the same sequence of cos terms of integers like above, only here it is defined recursively.

`sₙ = 3sₙ﹢₁` is also a valid way to define a recursive sequence, i.e. defining `sₙ` in terms of `sₙ﹢₁`.

## Types and properties of sequences

A *subsequence* of a sequence is formed by deleting some of its terms (without disturbing the relative positions of the remaining terms).

- Integer sequence: terms are integers
- Polynomial sequence: terms are polynomials
- Numerical sequence: elementary type of sequence with real or complex terms
- Real sequence: terms are reals
- Complex sequence: terms are complex numbers

### Monotonicity

If the terms of the sequence are a subset of an ordered set, then a *monotonically increasing sequence* is one where each term is greater than or equal to the preceeding term. If each term is strictly greater than the preceeding one, it is a monotonic strictly increasing sequence.

In a *monotonically decreasing sequence* each term is LE then the preceeding one. If each term is LT, then it is a monotonic strictly increasing sequence.

A sequence with monotonicity property is *monotonic* or monotone.

Monotonic sequence is a special case of the more general notion of a *monotonic function*.

A sequence that both increases and decreases (at different places in the sequence) is said to be *non-monotonic* or non-monotone.

The terms *non-decreasing* and *non-increasing* are often used in order to avoid any possible confusion with strictly increasing and strictly decreasing, respectively.

If `S` is endowed with a *topology* (as with e.g. reals), then it becomes possible to consider the *convergence* of an infinite sequence in `S`. Such considerations involve the concept of the *limit of a sequence*.

It can be shown that *bounded monotonic sequences* must converge.

## Sequences in analysis

In analysis, we generally consider infinite sequences of terms indexed by natural numbers. 

It may be convenient to have a sequence start with an index different from 1 or 0. For example, the sequence defined by `xₙ = 1/log(n)` would be defined only for `n ≥ 2`.

When talking about such infinite sequences, it is usually sufficient (and does not change much for most considerations) to assume that its terms are defined at least for all indices less than some integer `N`.

**Cauchy sequence** (sometimes called a fundamental sequence) is a sequence whose terms become arbitrarily close to each other as the sequence progresses. More precisely, given any small positive distance `δ`, all, except a finite number of terms, are less than `δ` distance away from each other.

The infinite sequence of real numbers (i.e. the ordered set ℝ) is neither increasing, nor decreasing, nor convergent, nor Cauchy, but it is bounded.

# Sequence notation

## Delimiters

A sequence may be denoted by listing its terms surrounded by *braces*, for example, `{2,3,3,4,4}`, which denotes an **anonymous sequence**. Since it has no name we cannot refer to it later, but sometimes, for one-off or throw-away sequences such inlined notation may be useful (like anonymous functions are).

That braces must be used in not set in stone, and since they clash with the notation for sets *parenthesis* are even preferred, as in `a = (2,3,3,4,4)`. This sequence is now named `a` (which is a very popular name, like naming a function `f`).

Using *brackets* is rare but not disallowed. There are no strong rules about this, nor are there strongly-established conventions. The fact is that, in math, most things regarding notation are underdefined at best, leaving a lot of wiggle room for improvisation and ad hoc notation. Each delimiter type may be used with nearly everything, we just have to "call it" in advance. People even write "naked" sequences, e.g. `2,3,3,4,4`, skipping the delimiters completely.

When a sequence is named we can refer to it, as `a` or `(a)` or `{aₙ}`. Having a name also enables *indexing* - referring to the terms by their *index*, made possible by each term having a fixed position. Extremelly, a sequence may be viewed as a collection of indexed holes, called *slots*; a slot may have a term occupying it or not (extremelly rare occurrence).

The previous was an example of a finite sequence, but infinite sequences use the same notation except they end in *ellipses* which serves to draw attention to the infinitude of their elements (and thus their length). In one variant of notation, there is only a single ellipses at the end of the sequence. This may be used for sequences with "obvious" terms. Otherwise, we can follow the ellipses with a formula defining how to create any term of the sequence; then we write another ellipses at the end.

```js
// infinite seq, notation v.1
      ₁  ₂  ₃  ₄  ₅   ₆
bₙ = (0, 1, 2, 4, 16, 25, …)
// this sequence uses 1-based indexing, so the formula
// for constructing terms must take that into account:
//   0 ⟼ undefined as there is no index 0
//   1 ⟼ 0, input 1 is mapped to 0, (not to 1 which is perhaps expected)
//   2 ⟼ 1
//   3 ⟼ 2
b₀ = undefined
b₁ = 0
b₂ = 1
b₅ = 16
b₉ = 81
b₃₂ = 1024
bₙ = n²

// infinite seq, notation v.2, with indices made explicit
      ₀  ₁  ₂  ₃  ₄   ₅      ₙ
aₙ = (0, 1, 2, 4, 16, 25, …, n², …)
a₀ = 0
a₁ = 1
a₅ = 25
a₉ = 81
a₃₂ = 1024
```



Unlike finite sequences, the elements of which may be drawn from one's ass, infinite sequence cannot be arbitrary (just shoving in terms willy-nilly). They follow a pattern that is expressed as a formula prescribing how to create any term of the sequence given an index. Indices are natural numbers that usually start with 0 or 1 (although they may start from another constant too), which makes functions out of sequences.

A sequence is then a *mapping* from natural numbers to terms. Terms of a sequence are frequently real numbers (in which case it is a real-valued sequence. These are very common, especially in real analysis. Complex-valued sequences are also common, at least in complex analysis), although they rarely take the form of constant, but are given as expressions that would (eventually) evaluate to reals (this evaluation is not the point either).


For example, a sequence of squares of natural numbers


A previosly defined sequence, named `a`, may be referred to by its bare name, `aₙ`.

## Notation for sequences

This sequence is referred to by `a`, and its first term by `a₁` (a₁=1). We can describe the terms in this sequence with a formula `aₙ = n`, where `0 < n < 4` is an integer. So under this definition `a₄` is undefined since the sequence has no term at index 4.

Sequences are usually presented as `{aᵢ}` or `{aᵢ}i∈ℕ` (where the part `i ∈ ℕ` should also be in subscript).

An arbitrary sequence may be presented as `{aₙ} = (a₀, a₁, a₂, …, aₙ)`.

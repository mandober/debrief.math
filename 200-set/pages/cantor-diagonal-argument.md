# Cantor's diagonal argument

https://en.wikipedia.org/wiki/Cantor_diagonal_argument

In set theory, **Cantor's diagonal argument**, 
  aka 
  the diagonalisation argument, 
  the diagonal slash argument, 
  the anti-diagonal argument, 
  the diagonal method, 
  the Cantor's diagonalization proof, 
was published in 1891 by Georg Cantor 
as a mathematical proof 
that there are infinite sets 
which cannot be put into a bijection 
with the set of natural numbers.

Such sets are now known as *uncountable sets*, and the size of infinite sets is now treated by the *Theory Of Cardinal Numbers* which Cantor began.

The diagonal argument was not Cantor's first proof of the uncountability of the real numbers, which appeared in 1874. However, it demonstrates a general technique that has since been used in a wide range of proofs, including the *first of Gödel's incompleteness theorems* and Turing's answer to the *Entscheidungsproblem*. *Diagonalization arguments* are often also the source of contradictions like Russell's paradox and Richard's paradox.

## Uncountable sets

Instead of using real numbers in decimal presentation, Cantor considered the set `T` of all infinite sequences of binary digits. He begins with a constructive proof of the following lemma:

If `s₁, s₂, …, sₙ, …` is any enumeration of elements from `T` (Cantor does not assume that every element of `T` is in this enumeration), then an element `s` of `T` can be constructed that doesn't correspond to any `sᵢ` in the enumeration.

The proof starts with an enumeration of elements from `T`, for example

- s1 = (`0`, 0 , 0 , 0 , 0 , 0 , 0 , …)
- s2 = ( 1 ,`1`, 1 , 1 , 1 , 1 , 1 , …)
- s3 = ( 0 , 1 ,`0`, 1 , 0 , 1 , 0 , …)
- s4 = ( 1 , 0 , 1 ,`0`, 1 , 0 , 1 , …)
- s5 = ( 1 , 1 , 0 , 1 ,`0`, 1 , 1 , …)
- s6 = ( 0 , 0 , 1 , 1 , 0 ,`1`, 1 , …)
- s7 = ( 1 , 0 , 0 , 0 , 1 , 0 ,`0`, …)
- …
- s  = ( 1,  0,  1,  1,  1,  0,  1 , …)


An enumeration of binary sequences proceeds indefinitely by supposedly listing all the binary sequences. However, it fails because a completely new sequence `s`, different from any other sequence `sᵢ` in the list can be constructed by inverting the bits on the main diagonal. The sequence `s` is guaranteed to differ from the sequence `s1` because their first bits are different; it is different from `s2` because their second digits are different; etc. The sequence `s` cannot possibly turn out to be in the list because we explicitly constructed it by making it different from any sequence in the list by (at least) one digit (bit).

Again: The resulting binary sequence `s` cannot be in the list because if it were it would have to match one of the `sᵢ` sequences, say `sₙ` for some `n`. But we have just deliberately made sure that the `n`th column of `s` differs from `sₙ`. So we arrive at the contradiction. No matter how we list the binary sequences we can always construct a new sequence which is not in the list.

This procedure is called *diagonalization*.

By construction, `s` is a member of `T` that differs from each `sn`, since their `n`th digits differ. Hence, `s` cannot occur in the enumeration.

Based on this lemma, Cantor then uses a proof by contradiction to show that: *The set `T` is uncountable*.

The proof starts by assuming that `T` is countable. Then all its elements can be written in an enumeration of an infinite number of sequences, `sᵢ`. Applying the previous lemma to this enumeration produces a sequence `s` that is a member of `T`, but is not in the enumeration. However, if `T` is enumerated, then every member of `T`, including this `s`, is in the enumeration. This contradiction implies that the original assumption is false. *Therefore, `T` is uncountable*.

## Uncountability of real numbers

The uncountability of the real numbers was already established by *Cantor's First Uncountability Proof*, but it also follows from by diagonalization.

To prove this, an injection will be constructed from the set `T` of infinite binary strings to the set `ℝ`. Since `T` is uncountable (it is the domain of the function), the image of this function, which is a subset of `ℝ`, is also uncountable. *Therefore, ℝ is uncountable*.

Also, by using a method of construction devised by Cantor, a bijection will be constructed between `T` and `ℝ`. Therefore, `T` and `ℝ` have the same cardinality, which is called the *cardinality of the continuum*, denoted `𝔠`.

An injection from `T` to `ℝ` is given by mapping binary strings in `T` to decimal fractions, e.g. `0111… ⟼ 0.0111…`. The function `f` takes a binary string and produces a decimal fraction, defined as `f (t) = 0.t`. This function is an injection because it maps different strings (binary fractional numbers) to different strings (decimal fractional numbers).

Note: While the decimal fractions `0.0111…` and `0.1000…` would be equal if interpreted as binary fractions (which would destroy injectivity), they are distinct when interpreted as decimal fractions, as is done by `f`. On the other hand, since `t` is a binary string, the equality `0.0999… = 0.1000…` of decimal fractions is not relevant here.

Constructing a bijection between `T` and `ℝ` is slightly more complicated. Instead of mapping `(0111…)²` to the decimal `(0.0111…)¹⁰`, it can be mapped to the base `b` number `(0.0111…)ᵇ`. 
This leads to the family of functions: `fᵇ (t) = 0.tᵇ`. 
The functions `fᵇ(t)` are injections, except for `f₂(t)`. This function will be modified to produce a bijection between `T` and `ℝ`.

## Constructing bijection between `T` and `ℝ`

bijection between [0, 1] and (0, 1)

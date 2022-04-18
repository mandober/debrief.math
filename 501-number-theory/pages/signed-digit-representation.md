# Signed-digit representation

https://en.wikipedia.org/wiki/Signed-digit_representation

In mathematical notation for numbers, a signed-digit representation is a positional numeral system with a set of signed digits used to encode the integers.

Signed-digit representation can be used to accomplish fast addition of integers because it can eliminate chains of dependent carries.

In the binary numeral system, a special case signed-digit representation is the non-adjacent form, which can offer speed benefits with minimal space overhead.

## Contents

- 1. History
- 2. Definition and properties
  - 2.1 Digit set
    - 2.1.1 Balanced form representations
    - 2.1.2 Dual signed-digit representation
  - 2.2 For integers
  - 2.3 For decimal fractions
  - 2.4 For real numbers
  - 2.5 For other number systems
    - 2.5.1 Integers modulo UNIQ--postMath-0000007D-QINU
    - 2.5.2 Prüfer groups
    - 2.5.3 Circle group
  - 2.5.4 UNIQ--postMath-00000095-QINU -adic integers
  - 2.5.5 UNIQ--postMath-0000009D-QINU-adic solenoids
- 3. In written and spoken language
  - 3.1 Indo-Aryan languages
  - 3.2 Classical Latin
  - 3.3 Finnish Language
  - 3.4 Time keeping
- 4. Other systems


## Definition and properties

### Digit set

Let `𝓓` be a finite set of numerical digits with cardinality `b > 1` (if `b <= 1`, then the positional number system is trivial and only represents the trivial ring), with each digit denoted as `dᵢ` for `0 <= i < b`. The number base `b` is also called the radix.

`𝓓` can be used for a signed-digit representation if it's associated with a unique function `fᴅ : 𝓓 → ℤ` such that `fᴅ(dᵢ) ≡ i mod b` for all `0 <= i < b`.

This function, `fᴅ` is what rigorously and formally establishes how integer values are assigned to the symbols/glyphs in `𝓓`.

One benefit of this formalism is that the definition of "the integers" (however they may be defined) is not conflated with any particular system for writing or representing them; in this way, these two distinct (albeit closely related) concepts are kept separate.

`𝓓` can be partitioned into three distinct sets `𝓓﹢`, `𝓓₀` and `𝓓˗`, representing the positive, zero, and negative digits respectively, such that:
- all digits `d﹢ ∈ 𝓓﹢` satisfy `fᴅ(d﹢) > 0`, 
- all digits `d₀ ∈ 𝓓₀` satisfy `fᴅ(d₀) = 0`, 
- all digits `d˗ ∈ 𝓓˗` satisfy `fᴅ(d˗) < 0`, 

The cardinality
- of `𝓓﹢` is `b﹢`
- of `𝓓₀` is `b₀`
- of `𝓓˗` is `b˗`

giving the number of positive and negative digits respectively, such that 
`b = b﹢ + b₀ + b˗`

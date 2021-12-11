# Cardinality

https://en.wikipedia.org/wiki/Cardinality

The cardinality of a set is a measure of the "number of elements" of the set. Cardinality of finite sets is trivial, also called its size (if unambiguous).

Beginning in the late 19th century, due to Cantor, the concept of cardinality was generalized to infinite sets, which allows one to distinguish between different types of infinity. For infinite sets, cardinality is defined in terms of bijective functions: two sets have the same cardinality iff there is a bijection between them.

There are two approaches to cardinality:
- comparing sets directly using bijections and injections
- using cardinal numbers

The cardinality of a set `A` is denoted `|A|`, alternatively, `#A`, `n(A)` or `card(A)`.

## Comparing sets

While the cardinality of a finite set is just the number of its elements, extending the notion to infinite sets usually starts with defining the notion of comparison of arbitrary sets (some of which are possibly infinite).

* Definition 1: `|A| = |B|`

Two sets `A` and `B` have the same cardinality if there is a bijective function from `A` to `B` (or from `B` to `A` since bijections are invertable functions, i.e. the inverse of a bijection is a function). Such sets are said to be *equipotent*, *equipollent* or *equinumerous*.

Unintuitively, the size of the set of natural numbers is the same as the size of the set of even natural numbers, `|𝔼| = |ℕ|`, since `f(n) = 2n` is a bijection. Although `𝔼 ⊂ ℕ`, both sets have the same cardinality.

* Definition 2:` |A| <= |B|`

if there exists an injective function from `A` into `B`.


* Definition 3: `|A| < |B|`

if there is an injective (but not bijective) function from `A` to `B`.

because `f(n) = {n}` is an injective function `ℕ -> 𝓟(ℕ)`, and it can be shown that no function from `ℕ -> 𝓟(ℕ)` can be bijective.

`ℕ` doesn't have the same cardinality as its powerset `𝓟(ℕ)`: for every function `f` from `ℕ` to `P(ℕ)`, the set `T = { n ∈ N | n ∉ f(n) }` disagrees with every set in the range of `f`, hence `f` cannot be surjective.

The picture shows an example f and the corresponding T; red: `n ∈ f(n) ∖ T`, blue: `n ∈ T ∖ f(n)`


> |ℕ| < |𝓟(ℕ)|

> |ℕ| = |ℤ| = |ℚ| < |ℝ|

> 𝖈 = 2ᶲ = ℶ₁ (where ϕ is ℵ₀) i.e. 2^ℵ₀ = ℶ₁


By a similar argument, `|ℕ| < |ℝ|`. For proofs, see Cantor's diagonal argument or Cantor's first uncountability proof.

* Schröder-Bernstein theorem: `|A| <= |B|` ⋀ `|B| <= |A|` -> `|A| = |B|`

* The axiom of choice is equivalent to the statement that 
`∀AB. |A| <= |B|` ⋁ `|B| <= |A|`

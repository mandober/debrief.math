# Primitive combination

An additional operation on PRFs is a combination of functions, denoted `f ⨯ g`.

Both `f` and `g` take the same `k`-tuple of args, but each can return a different `m`-tuple where `0 <= m <= k`. The returned tuples are concatenated together, forming a single `m+n`-tuple, provided `f` returns an `m`-tuple and `g` returns a `n`-tuple.

That is, in the returned `m+n`-tuple, the first `m` elements come form the `f`'s applications to the arg-list, and the following `n` elements come from the `g`'s applications to the (same input) arg-list.

f :: (ℕ ⨯ ℕ ⨯ ℕ) -> (ℕ ⨯ ℕ)         f : ℕ³ -> ℕ¹
g :: (ℕ ⨯ ℕ ⨯ ℕ) -> (ℕ ⨯ ℕ ⨯ ℕ)     g : ℕ³ -> ℕ³

f ⨯ g (x, y, z) = (f x, f y, g x, g y, g z)

fᵏ ⨯ gᵏ (x₁ … xₖ)

Combination operation is similar to composition, if was somehow defined without the rightmost `f` function.

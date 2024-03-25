# Identity type

https://en.wikipedia.org/wiki/Identity_type

In type theory, **identity type** represents the concept of equality. It is also known as *propositional equality* to differentiate it from *judgemental or definitional equality*.

Equality in type theory is a complex topic and has been the subject of extensive research, leading to new fields such as homotopy type theory.

The more fundamental notion of equality in type theory is that of judgemental equality, which is definitinal or syntactical equality. For example, if the addition is defined as

```hs
m + 0 = m
m + S n = S (m + n)
```

then `x + 0 = x` is a judgemental equality since this is what the first equations states. However, `0 + x` is not judgementally equal to `x`, that is, `0 + x ≠ x`; this may hold as a propositional equality, `0 + x ≡ x`, once we prove it.

## Beyond Judgemental Equality

The identity type can do more than what judgemental equality can do. It can be used to show `∀x(0 + x ≡ x)`, which is impossible to show with judgemental equality. This is accomplished by using the eliminator, or *recursor*, of the natural numbers.

Recursor or the `R` function let's us define a new function on the natural numbers. That new function `P` is defined as `λx:ℕ. x + 1 ≡ 1 + x`. The other arguments act like the parts of an induction proof.

The argument `PZ : P 0` becomes the base case `0 + 1 = 1 + 0`, which is the term `refl nat 1`.

The argument `PS : P n → P (S n)` becomes the inductive case. Essentially, this says that when `x + 1 = 1 + x` has `x` replaced with a canonical value, the expression will be the same as `refl nat (x + 1)`.

## Versions of the Identity Type

The identity type is complex and is the subject of research in type theory. While every version agrees on the constructor, `refl`, their properties and eliminator functions differ dramatically.

In extensional type theories, any identity type can be converted into a judgemental equality. A computational version is known as *Axiom K* due to Thomas Streicher (not very popular lately).

## Complexity of Identity Type

Martin Hoffman and Thomas Streicher refuted the idea that type theory required all terms of the identity type to be the same.

A popular branches of research into the identity type are homotopy type theory and its *Cubical type theory*.

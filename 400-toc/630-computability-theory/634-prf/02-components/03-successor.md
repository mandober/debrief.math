# Successor

- The successor is a unary function from ℕ to ℕ, `σ : ℕ → ℕ`.
- The successor function is named `Succ`, `succ`, `σ`, `S`.
- The successor function is obviously primitive recursive.
- The successor function cannot possibly fail.

Unlike the other initial functions that take varying number of arguments, the successor always takes a single argument, a natural number, and returns the successor of that number.

```hs
-- definition
succ :: ℕ → ℕ
succ n = S n = n + 1

-- examples
succ 0 = 1
succ 1 = 2
```

The successor function cannot possibly fail. Well, neither can the other initial functions, but that fact is ensured because we say so: all initial functions have the form that cannot fail. However, when implementing PR in a PL, they have a lot of opportunitie to fail; e.g. both proj and const depend on the (correct) number of args being passed to them - what if they receive more or less? That can't happend theoretically, but it may practically. But the succ is safe from that as it cannot fail either way. Failing because it was given something other than a natural number doesn't count because its signature clearly states that it expects a natural.

# Successor function

The successor function is one of the 3 initial primitive functions used in the characterization of computability by recursive functions.

Primitive recursive functions only operate on the set of the natural numbers. In PRF theory, the successor function is denoted by `σ` or `Succ`, and defined in the unsurprising, number-theoretic way:

```hs
succ :: ℕ -> ℕ
succ n = n + 1
```

In PRF, it is always a unary function, returning a single number. This may be a problem when implementing PRF in a PL, since other initial functions take (some even return) k-tuples, i.e. tuples of an arbitrary number of elements.

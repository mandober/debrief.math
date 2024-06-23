# Polynomial types

Polynomial types are nonrecursive algebraic data types build from types:
- empty,        `0`
- unit,         `1`
- sum,          `+`, a + b
- product,      `×`, a × b
- exponentials, `→`, a → b

Empty and unit and constant types that are combined with the 3 type operations.

For example, Bool type, `𝔹`, is `1 + 1` in this notation, so it is also denoted by `𝟚`. This is eqivalent to `1 → 2` or `1 → (1 + 1)`, i.e. 2¹ = 2, and to a lot more similar types: 1 → 2, 1 → (1 × 2), 2 × 1, 1 × 2, … all of which result in 2.

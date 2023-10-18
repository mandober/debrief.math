# Monotonicity

*Monotonicity* is a property of functions whose results never increase (or never decrease) as the values of the independent variables (i.e. inputs) change.

A *monotonic function* is a function between ordered sets that preserves, or reverses, the given order. ∀x,y ∈ Dom f

Preserve the order:
* *monotonically increasing*:           `x <= y --> f x <= f y`
* *monotonically strictly increasing*:  `x <  y --> f x < f y`

Reverses the order:
* *monotonically decreasing*:           `x <= y --> f x >= f y `
* *monotonically strictly decreasing*:  `x <  y --> f x > f y`

## Boolean functions

Valid arguments are monotonic
- If `φ |- ψ` is valid     then `φ, χ |- ψ`  is also valid
- If `φ -> ψ` is tautology then `φ ⋀ χ -> ψ` is also tautology

Binary logical connectives as Booolean functions are **monotone** 
if, for every combination of inputs, 
changing an input from 0 to 1 
(with the other input fixed)
can only cause the 
output to change from 0 to 1 
(and not from 1 to 0).

∀x∀y((x ∈ 𝔹 ⋀ y ∈ 𝔹) -> ((x <= y) -> (f x <= f y)))

A function is said to be **unate** in a certain variable if it is monotone with respect to changes in that variable.

If the order in the `𝔹` set is `0 <= 1`.
- 1 <= 1  ✔
- 1 <= 0  ✘
- 0 <= 1  ✔
- 0 <= 0  ✔

Note that this ordering corresponds to implication.

If the order in the `𝔹` set is strict, `0 < 1`.
- 1 < 1  ✘
- 1 < 0  ✘
- 0 < 1  ✔
- 0 < 0  ✘

Note that this ordering corresponds to converse non-implication.

Considering conjunction, which is a binary function, we can fix one of the inputs to get 2 unary functions: `AND1` and `AND0`.

p | AND0 | AND1
--|------|------
0 | 0  F | 0  p
1 | 0  F | 1  p

p | q | AND
--|---|-----
0 | 0 | 0
1 | 0 | 0
0 | 1 | 0
1 | 1 | 1

Changing p from 0 to 1 (with q fixed) can only cause the output to change from 0 to 1 (and not from 1 to 0).
- Changing p from 0 to 1, with q = 0, chanages the output from 0 to 0
- Changing p from 0 to 1, with q = 1, chanages the output from 0 to 1

p q r | p q r
0 0 0 | 0 1 0
↓   ↓ | ↓   ↓
1   0 | 1   1

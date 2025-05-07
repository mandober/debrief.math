# Arithmetic manipulations


## Domain

It can get complicated to express something relatively simply like the fact that a square of a number is always bigger then the number, `a < a²`.
- it's the opposite if the interval (0, 1)
- in fact, in the interval (-1, 1)
- except 0 behaves differently
- and 1
- and -1

We gotta restrict the domain heavily, and say something like
- a ≤ a² in general but
- a² > a² under certain circumstances

In `a²` vs `a`:
- (-1)² = 1, so -1 < 1 or -1 ≤ 1
- 0² = 0, so 0 ≥ 0, 0 = 0, 0 ≤ 0 all hold
- 1² = 1, so 1 ≥ 1, 1 = 1, 1 ≤ 1 all hold
- 1.000001² = 1.0000200001 > 1.000001
- 1.1² = 1.21 > 1.1



That `a² > a` seems reasonable but it ain't always so. So we gotta say something like `a² > a` if `a ∈ ℝ ∖ (-1, 1)`. But, shit, homes, 0² > 0 is a false statement; we gotta exclude 0. Also, `1² > 1` is a problem, so we adjust the constrainsts to: `a² ≥ a` if `a ∈ ℝ ∖ (-1, 0) ∪ (0,1)`.
- `(-1)² ≥ -1` simplifies to `1 ≥ -1` oh, good…
a < a²

On the other hand, `a² < a` if a ∈ (-1,1)

## Negative integers, powers and shit

- raising an argument to an odd vs even power

In `xⁿ`, with even `n`, result is always positive regardless of the argument
- (-1)⁰ = 1
- (-3)² = 9
- (-2)⁴ = 16

In `xⁿ`, with odd `n`, the result is negative if the argument is negative
- (-1)¹ = -1
- (-1)³ = -1
- (-2)⁵ = 16

In `x²ⁿ`, the result is always positive as the power is forced to be even. In `x²ⁿᐩ¹`, the power is forced to be odd, so the sign of the result depends on the sign of the argument.

In the cases above it is assumed that the power is a whole positive number.
If the power is negative integer, the result is the *reciprocal* of the same expression but with a positive integer for power.
- x⁰ = 1
- x¹ = x
- x⁻¹ = 1/x
- x⁻² = 1/x²
- x⁻³ = 1/x³

If the power is a positive fraction
- `xⁿ′ʳ` = `ʳ√xⁿ`
- `x¹′²` = `√x`

If the power is a negative fraction
- `x⁻ⁿ′ʳ` = `1/ʳ√xⁿ`
- `x⁻¹′²` = `1/√x`


## Negative integers

Negative integers raised to an even power result in the same value as positive integers.
- `a² = b` then `a = √b` is not enough! It's even correct if `a` is negative.
- 1² = 1, so a = b = 1 but (-1)² = 1 and `a ≠ b`
- 1² = 1 = (-1)²

Making an expresion square free by taking the square root of the other side must account for `±` before the root:
- `a² = b` does not imply `a = √b`
- `a² = b ⇒ a = ±√b`
- or, use `abs` to elide `±`:
- `a² = b ⇒ |a| = √b`


We must be careful when doing certain arithmetic manipulations:

    a² = b + c

cannot be naively be equalized to

    a = √(b + c)

as it would be wrong in case `a < 0`. We must either do

    a = ±√(b + c)
    or
    |a| = √(b + c)

In ℝ, the argument to the square root function cannot be negative: `√-1` is undefined (√0 = 0 is ok). In ℂ, though, it is well-defined, `√-1 = i`, so `i² = -1`.

In any set, the arguments to `ln` cannot be 0 or negative; `ln(0)` and `ln(-1)` are undefined. The same goes for `log` with additional constraint that the base cannot be 0 or 1 or negative; `log₀(x)`, `log₁(x)` and `log₋₁(x)` are all undefined.

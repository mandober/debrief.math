# Polynomial

Polynomial is an algebraic expression of the form

aₙxⁿ + ... + a₃x³ + a₂x² + a₁x¹ + a₀x⁰

It is built from **terms** which are individual expressions connected with addition, starting with the lowest term on the right.

Each term consists of a **constant** and a **variable** raised to a power. These constant are also called **coefficients**.

The lowest term has the constant `a₀` and a variable `x` raised to 0. Each succeeding term (in right to left direction) must have a variable raised to ever increasing power, i.e. if the term's power is `k`, the power of the succeeding term must be `k+1`.

axᵏ + bxᵏ⁻¹ + ... + ix³ + jx² + nx + m

The lowest term collapses to the value of its constant, `a₀`, since its power is 0; the next term is `a₁x`, and form there on, a term may be elided only if its constant mutiplier is 0, which annihiltes the entire term. 

Examples:
* `5x² + 3x + 6`        = 5x² + 3x¹ + 6x⁰
* `42`                  = 42x⁰ = 42 * 1
* `4x⁴ - 4`             = 4x⁴ + 0x³ + 0x² + 0x¹ + 4


The only allowed operation for connecting the terms is addition, but since the terms might be nagative, the addition subsumes subtraction.

**Degree** of a polynomial is determined by the term with the largest power. The one above is nth degree polynomial.

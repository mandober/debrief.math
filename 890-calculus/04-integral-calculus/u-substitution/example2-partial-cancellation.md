# Substitution :: Examples :: Partial cancellation

This example illustrates the next best situation (we hope to get) after rewriting the integral with substitutions. The "situation" in question is about dealing with unreplaced expressions of the integrand. This example illustrates the case when we don't have a full, but equally desirable, partial cancellation with a constant left over.

```js
∫ 4x √(16-x²) dx =
// we pick u to be the nested subexpression
let u = 16-x²         // we diff both sides
    du/dx = -2x       // to get an equation for dx
    dx = -du/2x       // the right-hand side replaces dx

// rewrite the integral with substitutions
= ∫ 4x √u (-du/2x)
= ∫ -4x √u du/2x      // simplify it
= -∫ 4x √u du/2x      // pull out the sign, actually constant -1
= -∫ 4x √u du 1/2x
= -∫ 4x ⋅ 1/2x ⋅ √u ⋅ du
= -∫ 4x/2x ⋅ √u ⋅ du
= -∫ 2 √u du
= -2 ∫ √u du          // pull out the constant
= -2 ∫ u¹′² du         // ta-da! integral is now in the form…

= -2 u³′²/3⁄2           // …suitable for finding the antiderivative easily
= -4 u³′²/3
= -4/3 u³′²
= -4/3 √u³ + C        // don't forget the COI
```

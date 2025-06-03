# Substitution :: Examples :: No cancellation

Here we have 3 substitutions: replacing a subexpression (that has `x`) with `u`, replacing `dx` with `du/u′`, but also replacing a factor (`x`) of the interand with the rhs of the equation derived from the equation for `u`.

- pick a subexp for `u`, i.e. `u = …x…`
- find its derivative, `d/dx u = (…x…)′`
- isolate `dx`, expressing it as `dx = du/u′`
- back in the equation for `u`, isolate `x`, i.e. `x = …u…`
- make these 3 substitutions

```js
∫ x √(3x+2) dx

  let u = 3x+2
      du/dx = 3
      dx = du/3

      // This time, we must also express this in terms of x;
      // we need to isolate x alone in the equation for u = …x…
      u = 3x + 2
      3x = u - 2
      x = (u-2)/3

// substitutions:
//  ↓¹  ↓↓↓↓² ↓↓³
= ∫ x √(3x+2) dx

= ∫ x       √u dx       // (1) substitute 3x+2 with u
= ∫ x       √u du/3     // (2) substitute dx   with du/3
= ∫ (u-2)/3 √u du/3     // (3) substitute x    with (u-2)/3

// after the substitutions we get
= ∫ (u-2)/3 √u du/3

// we can now simplify it, and solve it
= ∫ 1/3 ⋅ (u-2) ⋅ √u ⋅ 1/3 ⋅ du
= 1/9 ∫ (u-2)√u ⋅ du
= 1/9 ∫ (u-2)u¹′² ⋅ du
= 1/9 ∫ (u³′² - 2u¹′²) du
= 1/9 (∫ u³′² du - ∫ 2u¹′² du)
= 1/9 (u⁵′²/5⁄2 - 2u³′²/3⁄2)
= 1/9 (2/5 u⁵′² - 4/3 u³′²)
= 2/45 u⁵′² - 4/27 u³′² + C
```

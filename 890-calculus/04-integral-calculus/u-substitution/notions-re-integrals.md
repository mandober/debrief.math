# Notions re integrals

**Terms** are usually expressions joined by addition.

**Factors** are parts of a term that is a product (as a whole).

**Subexpression** is any part of an expression.

**Functions** are also expressions defined by one (usually) or more equations (piece-wise functions).

**Equation** joins two expressions with the equals sign.

**Integrand** is part of the integral after the integral sign and before the differential.

Substitution rule is about picking a subexpression of the integrand and representing it with a fresh variable `u`, e.g. let `u = x²+4`. However, we also need to account for this *change of variable* by adjusting other parts of the integrand including also the differential. By differentiating `u` we get an equation for `dx`, e.g. as `dx = du/u′`, and we use its rhs to replace `dx` in the integral by `du/u′`.

```js
∫ f(x) g(x) dx

  let u = g(x)
      du/dx = g′(x)
      dx = du/g′(x)
      dx = 1/g′(x) ⋅ du

∫ f(x) ⋅ u ⋅ du/g′(x)
∫ f(x) ⋅ u ⋅ 1/g′(x) ⋅ du
```

The last line above show the state after we rewrite the integral. We should hope to get pairs of expressions that can be cancelled or simplified. In the best case, a factor of the integrand, `f(x)`, would cancel out completely with the same expression in the denominator - the one represented by `g′(x)` above. If not a full, at least a partial cancellation that leaves a constant behind is also welcomed, as we can then pull that constant in front of the integral.

Otherwise, if the expression represented by `f(x)` is just `x`, then we must replace that `x` also. With what. Well, we take the equation for `u` which is expressed in terms of `x`, that is, `u = g(x)`, so it has the form `u = …x…`. We must manipulate this equation so we isolate `x`, i.e. to get `x = …u…`. Then we use the rhs of this last equation (i.e. `…u…`) to replace the `x` in the integral.

A concerete example illustrates this:

```js
∫ x √(3x+2) dx

  let u = 3x+2
      du/dx = 3
      dx = du/3

      // isolate x from the equation for u:
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






## misc

An integral of the form `∫ g(x) ⋅ f(x) dx` combines two functions with multiplication.

such as `∫ 2x(x²+4)² dx` or `∫ 4x√(x³+1) dx`, 


We usually want to pick a nested subexpression to substitute by `u`. In these examples, we let `u = x²+4` and `u = x³+1`.





∫ g(x) ⋅ f(x) dx
∫ 2x (x²+4)² dx
∫ 4x √(x³+1) dx

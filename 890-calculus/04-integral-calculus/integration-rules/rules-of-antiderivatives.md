# Rules of antiderivatives

## Integration procedure

To integrate a definite integral `ₐ∫ᵇ f(x) dx`, also denoted `∫{a..b} f(x) dx`, we find the antiderivative of the integrand, `f(x)`. Depending on the type of function `f(x)` is, this may be just the application of the power rule, or something more elaborate involving the application of other rules. The resulting antiderivative of `f(x)` is denoted `F(x)`. For indefinite intergals, this is the solutution, we just need to append the constant of integration, so the result is `F(x) + C`. For definite integrals, we need to evaluate the bounds and subtract `F(b) - F(a)`.

## The power rule

The main rule for antiderivatives is the power rule that mimicks and reverses the power rule for derivatives:

Power rule: `xⁿ` ⇒ `xⁿᐩ¹/(n+1)`

Since differentiation and integration are each other's inverses, the rules for derivatation often have corresponding rules for antiderivation that reverse them.

## Corresponding rules

*Tip*: If during the integration process by applying the integration-by-parts rule, we yield a term that is *identical to the original integral* (the integral we are solving), there's no point applying the integration-by-parts rule on it. Instead, we can treat that integral as a term and move it to the left-hand side in order to combine it with the original integral, yielding 2 × intergal. Then we can actually move the 2 to the other side, dividing everything there by 2, thereby producing the solution.

*Trick*: Integrating exponential function `eᵏˣ`, where the exponent is some constant times `x`, can be quickly resolved as `eᵏˣ/k`, without going through the whole process of applying the u-substitution rule due to `eᵏˣ` being a composite function. For example, `∫e⁴ˣdx = e⁴ˣ/4`.

*Trick*: Integrating a trig function that has another function inside, like `cos(2x)`, there is a shortcut: we integrate the trig function as usual, keeping the inside function, but then divide the whole resulting expression by that constant. So `cos(2x)` becomes `sin(2x)/2` (the antiderivative). This only works if the function inside is simple, like `x` multiplied by a constant (so not `x²` or anything more complex).


The integral `ₐ∫ᵇ f(x) dx` consists of an *inteval*, `(a, b)`, the *integrand*, which is a function `f(x)` we need to integrate, along with `dx` serving as part of the notation to signify slices along `x`. These slices along the x-axis are the rectangles fitted under the curve, each with width denoted by `Δx`. Using these rectangles, we approximate the area under the curve, at first imprecisely because `Δx` (the width of rectangles) is large, but as we make it smaller and smaller, the approximation improves. In the limit - as `Δx` tends to 0 - we get the precise area.

The width of each rectangle roughly fitted under the curve is the same, but the height of each is different and given by the function defining the curve. So each of the `n` rectangles has the area of `Δx × f(x)` (as width × height).



To integrate `₄∫² (x²) dx`, we first find the antiderivative of the integrand, which is `F(x) = 1/3x³`, and then do `F(b) - F(a)`, i.e. `F(4) - F(2)`, which is   
1/3(2)³ - 1/3(4)³ =
1/3(8) - 1/3(64) =
8/3 - 64/3 = -56/3


## restl

### Properties of differentiation

- derivative of function `f(x)` is denoted by `f′(x)` or `d/dx f(x)`
- `d/dx f(x)` means taking derivative of function wrt `x`
- `d/dt f(t)` means taking derivative of function wrt `t`
- `d/dx f(z)` means taking deriv of fn wrt `x`, treating other vars as const
- d/dx u = (3x³)′, du/dx = 9x², du = 9x² dx, dx = du/9x² (differential)
- f(x) = k ⋅ x, f′(x) = (k ⋅ x)′ = k ⋅ (x)′ (pulling out a const)

- (f + g)′ = f′ + g′                        (sum rule)
- (f - g)′ = f′ - g′                        (difference rule)
- (f × g)′ = f′g + fg′                      (product rule)
- (f ∘ g)′ = f′(g) × g′                     (chain rule)
- (f ÷ g)′ = f′(g) × g′                     (quotient rule)
- product rule: `(f ∘ g)′ = (f′ ∘ g) g′`


### Properties of trig functions

-  sin(−x) = −sin(x)
- −sin(x)  =  sin(−x)
- −sin(−x) =  sin(x)




### Properties of indefinite integrals

- ∫ k f(x)        dx = k ∫ f(x) dx
- ∫  -f(x)        dx = - ∫ f(x) dx
- ∫   f(x) ± g(x) dx =   ∫ f(x) dx ± ∫ g(x) dx
- ∫   f(x) + g(x) dx =   ∫ f(x) dx + ∫ g(x) dx
- ∫   f(x) - g(x) dx =   ∫ f(x) dx - ∫ g(x) dx


We can factor multiplicative constants out of indefinite integrals:

    ∫ k f(x) dx = k ∫ f(x) dx                         (1)
    ∫  -f(x) dx = - ∫ f(x) dx                         (2)

where `k` is any constant; in the second example, `k = -1`.

The integral of a sum/difference of functions is the sum/difference of the individual integrals. This rule can be extended to as many functions as we need.

    ∫ f(x) ± g(x) dx = ∫ f(x) dx ± ∫ g(x) dx          (3)





## All applicable rules

- `ln xᵃ = a ∙ ln x`
- `eᴸᴺ ˣ = x`, i.e. `e^(ln x) = x`, or `e^(ln xᵃ) = xᵃ`

- sg(x) = x < 0 ? -1 : 1
- abs(x) = x < 0 ? -1 ⋅ x : x > 0 ? x : 0
- a + b = b + a
- a + (b + c) = (a + b) + c
- a ⋅ (b + c) = ab + ac
- (a + b) ⋅ c = ac + bc
- a + 0 = a
- a + (-a) = 0
- a + b = c ⇒ (a + d) + (b + d) = (c + d)
- -(x - 1) = -x + 1
- -a/b = a/-b = - a/b
- a/b = a ⋅ 1/b
- a ⋅ 1/a = 1
- a/b ÷ c/d = a/b ⋅ d/c
- a : b = c : d ⊢ ad = bc
- a : 4 = 2 : 9 ⊢ 9a = 8 ⊢ a = 8⁄9
- xᵃᐩᵇ = xᵃxᵇ
- (xy)ᵃ = xᵃyᵃ
- n⁻ᵏ = 1/nᵏ


```
a + b     m + n    (a + b)(k + j) + (m + n)(c + d)
------ + ------- = -------------------------------
c + d     k + j            (c + d)(k + j)
```

- (a + b)² = a² + 2ab + b²
- (a - b)² = a² - 2ab + b²
- a² - b² = (a + b)(a - b)
- a² - 1 = (a + 1)(a - 1)

- (a + b)² = a²b⁰                  +  2a¹b¹ +  a⁰b²
- (a + b)³ = a³b⁰                  +  3a²b¹ + 3a¹b² + a⁰b³
- (a + b)⁴ = a⁴b⁰         +  4a³b¹ +  6a²b² + 4a¹b³ + a⁰b⁴
- (a + b)⁵ = a⁵b⁰ + 5a⁴b¹ + 10a³b² + 10a²b³ + 5a¹b⁴ + a⁰b⁵

- (x + y)ᵏ = c₀xᵏy⁰ + c₁xᵏ⁻¹y¹ + c₂x³y² + c₃x²y³ + c₄x¹y⁴ + c₅x⁰yᵏ

>(x + y)ᵏ = Σ{ⁱ⁼⁰⋅⋅ᵏ} cᵢ xᵏ⁻ⁱ yⁱ
for k=6: (x + y)⁶ = c₀ x⁶⁻⁰ y⁰      = c₀x⁶
                  + c₁ x⁶⁻¹ y¹      + c₁x⁵y
                  + c₂ x⁶⁻² y²      + c₂x⁴y²

>(x + y)ᵏ = Σ{ⁱ⁼⁰⋅⋅ᵏ} Σ{ʲ⁼ᵏ⋅⋅⁰} cᵢxʲyⁱ

(x + y)⁶ =
Σ{ⁱ⁼⁰⋅⋅⁶} {ʲ⁼⁶⋅⋅⁰} cᵢxʲyⁱ
i=0, j=6,      = c₀x⁶y⁰
i=1, j=5,      + c₁x⁵y¹
i=2, j=4,      + c₂x⁴y²
i=3, j=3,      + c₂x⁴y²


= c₀ xᵏ   y⁰
+ c₁ xᵏ⁻¹ y¹
+ c₂ xᵏ⁻² y²
+ c₃ x²   y³
+ c₄ x¹   y⁴
+ c₅ x⁰   yᵏ



```
              1
             1 1
            1 2 1             (a + b)²
           1 3 3 1             (a + b)³
          1 4 6 4 1             (a + b)⁴
         1 5 10 10 5 1           (a + b)⁵
        1 6 15 20 15 6 1
       1 7 21 35 35 21 7 1
      1 8 28 56 70 56 28 8 1
     1 9 36 84 126 126 84 36 9 1
    1 10 45 120 210 252 210 120 45 10 1
   1 11 55 165 330 462 462 330 165 55 11 1
  1 12 66 220 495 792 924 792 495 220 66 12 1
 1 13 78 286 715 1287 1716 1287 715 286 78 13 1
```

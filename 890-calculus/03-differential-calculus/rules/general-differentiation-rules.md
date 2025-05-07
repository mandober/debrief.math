# General differentiation rules

- Linearity of differentiation (L-diff)
  - Constant Factor rule (CFR, ConstR), (c⋅f(x))′ = c⋅f′(x)
  - Sum-Difference rule (SDR, ±R)
  - Sum rule (SumR, +R, Rᐩ)
  - Difference rule (DiffR, -R, R⁻)
- Chain rule (TCR)
- Power rule (TPR)
- Quotient rule (TQR)
- Substitution rule (TSR)
- Inverse Function rule (IFR)

Functions are combined in/as
- product with a constant multiplier, k∙f(x)
- sum of two functions,               f(x) + g(x)
- difference of two functions,        f(x) - g(x)
- product with another function,      f(x) ∙ g(x)
- quotient of two functions,          f(x) ÷ g(x)
- composition of two functions,       f(g(x)) = (f ∘ g)(x)



```js
/* Linearity of Differentiation */
(c∙f(x) + k∙g(x))′ = c∙f′(x) + k∙g′(x)
// L-diff in Legrange point-free notation
(c∙f + k∙g)′ = c∙f′ + k∙g′

/* Constant Factor Rule */

// Legrange notation
(c∙f(x))′ = c∙f′(x)
// Legrange point-free notation
(c∙f)′ = c∙f′

// Leibniz notation
d(a∙f + b∙g)       df       dg
------------- = a ---- + b ----
      dx           dx       dx

/* Product Rule */

(f∙g)′(x) = f′(x)∙g(x) + f(x)∙g′(x)
(fg)′(x) = f′(x)g(x) + f(x)g′(x)
(f∙g)′ = f′∙g + f∙g′
(fg)′ = f′g + fg′

/* Quotient rule */
f′(x) ÷ g′(x) = [f′(x) g(x) - f(x) g′(x)] / g²(x)
f′ ÷ g′ = (f′g - fg′) ÷ g²

f′(x)    f′(x) g(x) - f(x) g′(x)
----- = ------------------------
g′(x)          (g(x))²

// in point-free notation
 f′    f′g - fg′
---- = ---------
 g′        g²

/* Inverse function rule */
                  1             1
(f⁻¹)′(y) = ------------- = -----------
            (f′ ∘ f⁻¹)(y)    f′(f⁻¹(y))

// Leibniz notation
 d x       1
---- = ---------
 d y     dy/dx


/* Chain rule */
h(x) = f(g(x))
h′(x) = (f(g(x)))′
(f ∘ g)′(x) = [f(g(x))]′ = f′(g(x)) ∙ g′(x)
(f ∘ g)′ = (f′ ∘ g) ∙ g′
// Leibniz notation
d h(x)   d f(g(x))    d g(x)
----- = --------- ∙ -------
 dx      d g(x)        dx


```

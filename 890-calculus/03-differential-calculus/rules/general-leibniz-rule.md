# General Leibniz rule

https://en.wikipedia.org/wiki/General_Leibniz_rule

In calculus, **the general Leibniz rule**, named after Gottfried Wilhelm Leibniz, generalizes the product rule for the derivative of the product of two functions (which is also known as "Leibniz's rule").

The General Leibniz Rule states that if `f` and `g` are `n`-times differentiable functions, then the product `fg` is also `n`-times differentiable and its `n`-th derivative is given by


```js
(fg)⁽ⁿ⁾ = ∑{k=0..n} (n-choose-k) f⁽ⁿ⁻ᵏ⁾gᵏ

           n
          ⎲ ⎛ n ⎞
(fg)⁽ⁿ⁾ = ⎳ ⎝ k ⎠ f⁽ⁿ⁻ᵏ⁾gᵏ
          ᵏ⁼⁰

      ⎛ n ⎞      n!
where ⎝ k ⎠ = ---------- is the binomial coefficient and
              k!(n - k)!
```

and `f⁽ʲ⁾` denotes the j-th derivative of `f` (and in particular `f⁽⁰⁾ = f`).

The rule can be proven by using the product rule and mathematical induction.

## Second derivative

If, for example, `n = 2`, the rule gives an expression for the second derivative of a product of two functions:

(fg)′′(x) = ∑{k=0..2} f⁽²⁻ᵏ⁾(x)g⁽ᵏ⁾(x) = f′′(x)g(x) + 2f′(x)g′(x) + f(x)g′′(x)

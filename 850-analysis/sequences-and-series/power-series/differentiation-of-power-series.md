# Power Series :: Differentiation

A power series represents a certain function but only over a particular interval, i.e. on a particular domain of divergence. Outside that domain, the series diverges.

We can differentiate a power series on a term-by-term basis. Just by using the power rule, we pull down the exponent so it multiplies the coefficient, and then we decrease the exponent by one; we need not touch the expression in parenthesis. Technically, we are using the *chain rule*, but since the derivative of the expression in parens is always 1, it looks as if we are only using the power rule.


f(x) = `Σ {n=0..∞} aₙ(x-c)ⁿ` = a₀ + a₁(x-c) + a₂(x-c)² + a₃(x-c)³ + ⋯

- `a₀`, `a₁`, `a₂`, …, are constants (coefficints)
- `x` is the input value
- `c` is the center of the series

```js
// expanded general form of a power series, followed by
// expanded 1st derivative of the general form of power series
f(x) = a₀ + a₁(x-c) + a₂(x-c)² + a₃(x-c)³  + a₄(x-c)⁴  + ⋯
f′(x) = 0  + a₁      + 2a₂(x-c) + 3a₃(x-c)² + 4a₄(x-c)³ + ⋯

// general form of power series
f(x) = Σ {n=0..∞} aₙ(x-c)ⁿ
// 1st derivative of the general form of power series
f′(x) = Σ {n=1..∞} naₙ(x-c)ⁿ⁻¹
            ↑
starting number now must be 1
// not 0 like in the original fn
```

The general form of a power series is differentiated term by term, and we see above that the 1st derivative follows a certain pattern, just like the power series iteself, `aₙ(x-c)ⁿ` ⟼ `naₙ(x-c)ⁿ⁻¹`. When we put this into the sigma notation, we should pay attention to adjust the starting value - it cannot remain 0 but must be 1 for the derivative. When it starts the count at 1, then the initial value is `a₁`; otherwise, with start at 0, it would be 0.

```js
n × aₙ × (x-c)ⁿ⁻¹
// initial term with n=1
  1 × a₁ × (x-c)¹⁻¹
= 1 × a₁ × (x-c)⁰
= 1 × a₁ × 1
= a₁
```

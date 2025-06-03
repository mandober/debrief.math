# Power series

The power series is a type of series that introduces a continuous variable `x` into the defining formula.

So far, we saw series whose defining formula only involves the iterator variable `n`. The series is defined by a *closed formula* that takes the descrete variable `n` and transforms it into an expression that is a term of the series. At the same time the value of `n` serves as the index for that term, so we can retrieve it easily.

If a series `Σaₙ` is defined by the closed formula `2ⁿ/n!`, then the expression `a₀` represents the value of its initial term, so it should evaluate to 1 (since 2⁰/0! = 1/1 = 1). The expression `a₁` should evalaute to 2 (since 2¹/1! = 2/1 = 2). We can also interpret these expressions as indexing the series, so `a₁` means retrieveing the term with index 1 from the series, which amounts to the same as evaluating it by plugging `n=1` into the formula.


We can use this to say: suppose the function `f(x)` has a *power series representation on the interval* `(-1,1)`, which is the interval of convergence centered at `c=0`, and with the radius of convergence equal to `r=1`.



A power series is a series of the general form

```js
// power series (general form)
⎲∞
⎳ₙ₌₀ aₙ(x-c)ⁿ
```

where
- `aₙ` are constants (coefficients)

- `a₀`, `a₁`, `a₂`, …, are constants (coefficients)
- `x` is the input value
- `c` is the center of the series

# Integral test for convergence

The integral test can be used to find out whether a series (sequence) `Σ aₙ` converges or diverges. The first condition to use the test is that the series can be described by a function, `Σ aₙ = f(n)`. In fact, the corresponding function replaces the descrete variable `n` for the continuous variable `x`.

Moreover, the function `f(x)` must be
- positive
- continuous
- decreasing

but *only over the interval* `[1, ∞)`.

The function `f(x)` needs to satisfy these 3 conditions, however, only over the interval `[1, ∞)`, that is when `x ≥ 1`. This means that the function need not be continuous everywhere, but continuous only when `x` is larger then 1. And also positive, but only over that interval. To check whether the function is decreasing, we can find its first derivative: if it's negative, the function is decreasing.
- `f′(x) < 0 ⇒ f(x)` is decreasing


If the function satisfies these conditions, then we can use it with the integral test, which consists of integrating the function and seeing if we get a constant (if the integral converges), or if it diverges into infinity. If we get a constant out after evaluating the integral, then the underlying series converges. If the integral diverges, so does the series.

>If `∫ f(x) dx` evaluates to constant, then the series converges, else diverges.

## Example

For example, consider a series `Σ{n=1..∞} 1/(n+2)²` whose corresponding function is `f(x) = 1/(x+2)²`.

So, we need to check the conditions.
- Is the function positive? 
  Due to the square in the denominator, it in fact cannot be negative.
- Is the function continuous? 
  The function has an asymptote at `x = -2` so it is not continuous everywhere. However, we only need it to be continuous over the interval `[1, ∞)`, which it is.
- Is the function decreasing? 
  To find this out, we take its first derivative. If that derivative is negative then the function is decreasing.

```js
// the function is
f(x) = 1/(x+2)² = (x+2)⁻²
// get the first derivative of the function; use the chain rule
f′(x) = -2(x+2)⁻¹(1) = -2(x+2)⁻¹
```

Since the first derivative is negative, all 3 conditions have been satisfied, so we can use the integral test on the function.

The integral is a definite integral as it has the lower bound (1) and the upper bound (∞), but since the upper bound is ∞, it is an improper integral. In that case we need to introduce a limiting variable `a` such that `a` tends to infinity in the limit and replaces the `∞` as the upper bound in the integral.

However, to ease notation, we first find the antiderivative (and we need no use the constant of integration, `C`, since it is a definite intergal).

```js
// integrate the function
∫ 1/(x+2)² dx
// use u-subst
u = x+2
du = dx
// so the integral becomes
∫ u⁻² du = u⁻¹/-1 = -u⁻¹ = -1/u
// subst back u = x+2
-1/(x+2)
// Now we express it fully
⌠∞               
⌡₁ 1/(x+2)² dx
// improper intergal
lim ⌠ᵃ
a→∞ ⌡₁ 1/(x+2)² dx =
// introduce the limit and swap the upper bound with it
lim ⎡          ⎤ᵃ
a→∞ ⎣ -1/(x+2) ⎦₁ =
// evaluate the antiderivative
lim{a→∞} -1/(a+2) - (-1/(1+2)) =
lim{a→∞} -1/(a+2) + 1/3 =
// evaluate the limit: (a) tends to ∞, so (a+2) also does.
// So the first term evaluates to 0, the second to 1/3
-1/∞ + 1/3 = 0 + 1/3 = 1/3
```

>Finally, since the integral converges (it evaluated to a constant 1/3), it means that the underlying sequence converges.

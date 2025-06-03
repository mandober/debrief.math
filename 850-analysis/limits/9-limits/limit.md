# Limits

https://en.wikipedia.org/wiki/Limit_of_a_function

The limit of a function is a fundamental concept in calculus and analysis concerning the behavior of that function near a particular input which may or may not be in the domain of the function.

We say that the function has a limit `L` at an input `p`, if `f(x)` gets closer and closer to `L` as `x` moves closer and closer to `p`. More specifically, the output value can be made arbitrarily close to `L` if the input to `f` is taken sufficiently close to `p`. On the other hand, if some inputs very close to `p` are taken to outputs that stay a fixed distance apart, then we say the limit does not exist.

The notion of a limit has many applications in modern calculus. In particular, the many definitions of continuity employ the concept of limit: roughly, a function is continuous if all of its limits agree with the values of the function.

The concept of limit also appears in the definition of the derivative: in the calculus of one variable, this is the limiting value of the slope of secant lines to the graph of a function.

## Contents
- 1. History
- 2. Motivation
- 3. Functions of a single variable
  - 3.1. (ε, δ)-definition of limit
  - 3.2. Existence and one-sided limits
  - 3.3. More general definition using limit points and subsets
  - 3.4. Deleted versus non-deleted limits
  - 3.5. Examples
    - 3.5.1. Non-existence of one-sided limits
    - 3.5.2. Non-equality of one-sided limits
    - 3.5.3. Limits at only one point
    - 3.5.4. Limits at countably many points
- 4. Limits involving infinity
  - 4.1. Limits at infinity
  - 4.2. Infinite limits
  - 4.3. Alternative notation
  - 4.4. Limits at infinity for rational functions
- 5. Functions of more than one variable
  - 5.1. Ordinary limits
  - 5.2. Multiple limits
  - 5.3. Multiple limits at infinity
  - 5.4. Pointwise limits and uniform limits
  - 5.5. Iterated limits
- 6. Functions on metric spaces
  - 6.1. Euclidean metric
  - 6.2. Manhattan metric
  - 6.3. Uniform metric
- 7. Functions on topological spaces
- 8. Other characterizations
  - 8.1. In terms of sequences
  - 8.2. In non-standard calculus
  - 8.3. In terms of nearness
- 9. Relationship to continuity
- 10. Properties
  - 10.1. Limits of compositions of functions
  - 10.2. Limits of special interest
    - 10.2.1. Rational functions
    - 10.2.2. Trigonometric functions
    - 10.2.3. Exponential functions
    - 10.2.4. Logarithmic functions
  - 10.3. L'Hôpital's rule
  - 10.4. Summations and integrals
- 11. See also
- 12. Notes
- 13. References
- 14. External links


## Informal

A function's value may not be defined for a certain input value `x`, but it may still have a limit, as a value on y-axis, as the inputs approach the value `x`, from both negative (left) and positive (right) direction.

A limit describes what is happening very close around a point (an input value), not exactly at that point.

Techically, inputs to a function are values on x-axis, x-coordinate numbers, and outputs or function's values are on the y-axis. However, if we aleady have a function, then it will determine the y value for any input x, so we often say "a point" even though we only have an input x. That is, x-values and points are used interchangibly, and this is almost always justified by the presence of a function that determines the y-values (of any x-value), and thus the corresponding (x, y) points. Even though a point is a pair of values, but input, as well as output, are single values.

- as x tends to a value, f(x) approaches some value, so limit is wrt y-axis
- we approach a value from both negative (left) and positive (right) direction
- convergent and divergent limits/functions/values
- continuity
  - continuous functions
  - discontinuous functions
  - point discontinuity
  - asymptote

Limit must agree in both directions to exist. If there is a limit in one direction (e.g. as we approach a point from the left), but not in the other direction, then the limit overall does not exist (DNE). Or, both approaches may yield a limit, but if they are different, there is still no limit overall (e.g. the limit from left is ∞, but from the right -∞, then overall the limit DNE).




Limit formalizes the process of decreasing a quantity so it approaches some discrete value (convergent) or ±∞ (divergent).

Considering some function, we can see what value it approaches as the input `x`, in turn, approaches another value. We are interested in the value the output approaches as the input approaches some value. Normally, we can just plug in an argument into a function and read off the output. For example, in the function f(x) = x², as the input approaches the value 1, so does the output; as input approaches value 2, the output approaches value 4, etc. The latter is formally denoted by `lim{x→2} x² = 4`.

Whether we approach the value of input (i.e. 2) from the negative or positive direction, as we get closer and closer to x = 2, we get closer and closer to the value 4 of the function, that is, y = 4 = x².

- approaching 0 from the positive direction, i.e. from right, `lim{x→0ᐩ}`
- approaching 0 from the negative direction, i.e. from left, `lim{x→0⁻}`

However, merely substituting in an argument to see the value of the function, and, thus, what its limit is, at that input value, is only possible for *continuous functions*. Functions with asymptotes and discontinuous points cannot be evaluated in the same manner.

For example, if the function x² had a point discontinuity at (2,4) (which is often a consequence of defining a function with multiple equations), we could not evaluate it at that point, but, still, approaching that point from either side would give the same result as before, namely the value of the function, as x approaches 2, would approach 4. More interesting thing happens if we want to see the limit of x² at the extremes, i.e. as input approaches -∞ or ∞. This is denoted by `lim{x→-∞} f(x)` or `lim{x→∞} f(x)`.

Moreover, when the domain of the function is restricted due to the division by zero, then there is a point discontinuity or an asymptote for the input value that would let the denominator evaluate to 0. For example, f(x) = (x-1)/(x²-1) cannot have `x=1` is the domain as it would result in the denominator 0. However, we can investigate the value of the function as we use values closer and closer to 1, and from both sides: as `x` approaches 1 from either side, the value of the function, `y`, approaches 0.5.




## Laws of limits

1. Constant:   `lim{x→a} c ∙ f x    =  c ∙ lim{x→a} f x`
2. Sum:        `lim{x→a} f x + g x  =  lim{x→a} f x + lim{x→a} g x`
3. Difference: `lim{x→a} f x - g x  =  lim{x→a} f x - lim{x→a} g x`
3. Product:    `lim{x→a} f x ∙ g x  =  lim{x→a} f x ∙ lim{x→a} g x`
4. Quotient:   `lim{x→a} f x ÷ g x  =  lim{x→a} f x ÷ lim{x→a} g x`, gx≠0
5. Powers:     `lim{x→a} (f x)ⁿ     =  (lim{x→a} f x)ⁿ`
6. Roots:      `lim{x→a} √(f x)     =  √(lim{x→a} f x)`


For `lim{x→a} f(x) = L` and `lim{x→a} g(x) = M`
- constant: `lim{x→a} c∙f(x)` = `c∙L`
- arith:    `lim{x→a} f(x) ⊕ g(x)` = `L⊕M`, for ⊕={+,-,×,÷} (for ÷, M≠0)
- powers:   `lim{x→a} (f x)ⁿ` = `Lⁿ`
- roots:    `lim{x→a} √(f x)` = `√L`


## Trivial limit evaluation

1. `lim{x→a} c = c` (limit of const fn is the constant)
  - if f(x)=3 then, lim{x→6} f(x) = 3
2. `lim{x→c} x = c` (limit of identity fn is the input)
  - if f(x)=x then, lim{x→6} f(x) = 6
3. `lim{x→c} xⁿ = cⁿ`
  - if f(x)=x² then, lim{x→6} f(x) = 6²


## Limits of trig functions

1. lim{x→0}      sin x  / x = 1
2. lim{x→0} (1 - cos x) / x = 0


## Properties of infinite limits

For `lim{x→a} f(x) = ∞` and `lim{x→a} g(x) = M`

- Sum and difference
  - `lim{x→a} f x ± g x` = ∞ ± M = `∞`
- Product
  - `lim{x→a} f x × g x` =  `∞` (if M > 0)
  - `lim{x→a} f x × g x` = `-∞` (if M < 0)
- Quotient
  - `lim{x→a} f x ÷ g x` = ∞ ÷ M = `∞` (if M ≠ ±∞)
  - `lim{x→a} g x ÷ f x` = M ÷ ∞ = `0` (if M ≠ ±∞)

## Evaluating limits at infinity

Infinity is not a number, but for the purposes here best understood as a representation of a number getting extremly large (∞), or extremly smaller (-∞).

- `lim{x→∞}  c = c` (const), e.g. lim{x→∞} 5 = 5
- `lim{x→-∞} c = c` (const), e.g. lim{x→-∞} 5 = 5
- `lim{x→∞}  x = ∞` (id)
- `lim{x→-∞} x = -∞` (id)

## Special limits

- `lim{x→±∞} 1/x  = 0` (asymptote at x=0, so x≠0)
- `lim{x→±∞} 1/x² = 0` (x≠0)
- `lim{x→±∞} 1/x³ = 0` (x≠0)
- `lim{x→±∞} 1/xⁿ = 0` (x≠0, n≠0 ∧ n≠±∞)
- `lim{x→±∞} 2/xⁿ = 0` (x≠0, n≠0 ∧ n≠±∞)
- `lim{x→±∞} c/xⁿ = 0` (x≠0, n≠0 ∧ n≠±∞, c≠±∞)

lim{x→±∞}(1/x²) = lim{x→±∞}(1/x∙1/x) = lim{x→±∞}1/x∙lim{x→±∞}1/x = 0 ∙ 0 = 0

As `x` tends to infininty, if the limit of `1/x` approaches 0, then it does the same for `1/x²`, `1/x³`, or, in general, `1/xⁿ`, where `n≠±∞, n>0`. But then again, the same is true if the nominator is a constant other then 1, `2/xⁿ`, `3/xⁿ`, etc., in general, `c/xⁿ`, where c≠±∞.


It is not trivial finding the right way to refactor the function so that limits can be neatly evaluated. In the first example we mult both sides by 1/x, but in the second with 1/x². We want to get parts of the equation that can be individually evaluated to known limits (as x tends to ∞: const to a const limit, 1/x to 0, 1/x² also to 0, etc.)

To get the equation in a form so that we can use a special limit form to evaluate the limit, we can refactor the division of polynomials by multiplying both nominator and denominator by 1 over `x` raised to the highest overall power in the polynomial (e.g. by 1/x, 1/x², 1/x³, etc.). For example,

```
         3x - 4
lim{x→∞} ----------
         √(2x² + 3)

           3x - 4        1/x
lim{x→∞} ---------- ∙ ---------
         √(2x² + 3)    √(1/x²)

          3 - 4/x
lim{x→∞} -----------  ...and now we can eval the limit
         √(2 + 3/x²)

   3 - 0       3
= --------- = ----
  √(2 + 0)     √2
```

Or, we could have just used the fact that both nom and den have the same highest power-terms, so we can just read off the limit as a ratio of `3x` over `√(2x²)` (which is just `2x`), so the ratio is `3/√2`.


### Example 1

```
        3x
lim ------ =
x→∞  x + 1

        3x    1/x
lim ------ ∙ ----- =
x→∞  x + 1    1/x

      3x/x
lim ------------ =
x→∞ (x + 1) / x

        3
lim ---------   Now we can evaluate the limit(¹)
x→∞ x/x + 1/x

  3
------ = 3
1 + 0
```

(¹)Now we can evaluate the limit:
- the limit of 3,       as x tends to ∞, is 3 (const)
- the limit of x/x = 1, as x tends to ∞, is 1 (const)
- the limit of 1/x,     as x tends to ∞, is 0 (spec)

### Example 2

```
        x
lim -------- =
x→∞  x² + 2

       x        1/x²
lim -------- ∙ ----- =
x→∞  x² + 2     1/x²

       x/x²
lim --------------- =
x→∞  (x² + 2) / x²

        1/x
lim --------------- =
x→∞  x²/x² + 2/x²

        1/x
lim ----------   Now we can evaluate the limit(¹)
x→∞  1 + 2/x²

        1/x         0
lim ---------- = -------- = 0
x→∞  1 + 2/x²     1 + 0

```

(¹)Now we can evaluate the limit:
- limit of 1, as x tends to ∞, is 1
- limit of 1/x, as x tends to ∞, is 0
- limit of 1/x², as x tends to ∞, is also 0


## Limit via ratios of leading coefficients

Polynomial division, with one polynomial as nominator and another as denominator: each polynomial has a term with the highest overall degree.

1. If both nom and denom have equal-power terms, then the limit, as x approaches infinity, is the ratio of the leading coefficients. *Limit is const*.

If `lim{x→±∞} f(x) = L`, then `f(x)` has a horizontal asymptote at `y=L`.

2. If denominator has the term with the highest degree, then the limit, as x approaches infinity, equals 0. *Limit is 0*.

3. If nominator has the term with the highest degree, then the limit, as x approaches infinity, does not exists (DNE). *Limit DNE*.

```
(1)
           3x
lim{x→∞} ------ = 3/1 = 3
         x + 1

(2)
            x
lim{x→∞} ------- = 0
         x² + 1

(3)
            x³
lim{x→∞} ------- = DNE
         x² + 1
```


## Links

https://www.mathsisfun.com/calculus/limits.html

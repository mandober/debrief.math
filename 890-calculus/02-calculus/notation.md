# Notation

Calculus need not have notation difficult to type on a computer. Even with the Latex, equations become unwieldy. Wolframalpha has a nice textual notation:

- indefinite integral: integrate x^2 sin^3 x dx
- definite integral:   integrate sin x dx from x=1 to pi
- improper integral:   int sin x/x dx, x=0..infinity
- limit: `lim (sin x - x)/x^3 as x->0`
  which seems to be represented as
  `lim Divide[\(40)sin x - x\(41),Power[x,3]] as x->0`
- `integrate by parts | sec(x) tan(x)`
- `1 + x^2/2 + (5 x^4)/24 + O[x]^6`


## Functions

`f(x)` is the usual notation for a genric, arbitrary function named `f` that has a single parameter, here incidently named `x`. But `f(x)` really denotes function application - the act of applying the function named `f` to an argument `x`. Ambiguously, `f(x)` also denotes a function declaration - the fact that there is a function named `f` that takes a single parameter, incidently named `x`. When the function `f` is applied to an argument `a` (or, equivalently, when an argument is passed into the function, or when an arg is plugged into the function), the function is evaluated by binding the argument (which is denoted by `a` here but will actually resolve into a concrete value eventually) `a` to the parameter `x`, then substituting all occurrences of the parameter `x` within the body of the function by `a`.

Note: this is called *positional binding* as the arguemnts are bounds to paramaters in order of appreance: the first argument is bound to the first paramater, the second arg (in binary fns) would be bound to the second parameter, and so on. In brief, there is no binding by name in mathematics.

For example, a function defined by `f : ℕ → ℝ, f(x) = 4x³ + 3x² - 2x`



## Derivatives

The (first) derivative of function `f(x)` is denoted by `f′(x)` in *Legrange notation* or by `d/dx f(x)` in *Lebniz notation*. These two styles of notation are often mixed even within the same expression.


Derivatives of function `f(x)`
- first   `f′(x)`
- second  `f′′(x)`
- third   `f′′′(x)`
- fourth  `f′′′′(x)`
- fifth   `f′′′′′(x)`
- sixth   `f⁶(x)` (ambiguous notation clashing with iteration)
- seventh `f⁷(x)` (ambiguous)
- etc.

Denoting a derivative of function `f(x)` as `f′(x)`, that is, using the prime sign is called the *Lagrange notation*, while using a differential, `d/dx`, is the *Lebniz notation*. Primes and differentials are often mixed in the same expression.

d/dx u = (x²)′




## Antiderivatives

- antiderivative of function `f(x)` is generally denoted `F(x)`
- for indefinite integrals it is actually `F(x) + C`
- for definite integrals it is `F(x) = F(b) - F(a)`
- definite integrals are evaluated by subst their bounds, then subtracting

# Indeterminate form

https://en.wikipedia.org/wiki/Indeterminate_form

**Indeterminate form** is an expression that can obtain *any value* depending on circumstances.

In calculus, it is usually possible to compute the limit of the sum, product, difference and quotient of two functions by taking a limit of each individual function, then combining the resulting limits. 

>The limit of the compound function is equal to their combination of limits of the constituent functions.

```js
// limit of the sum
lim{x→c} f(x) + g(x)   =  lim{x→c} f(x)  +  lim{x→c} g(x)
// limit of the difference
lim{x→c} f(x) - g(x)   =  lim{x→c} f(x)  -  lim{x→c} g(x)
// limit of the product
lim{x→c} f(x) ⋅ g(x)   =  lim{x→c} f(x)  ×  lim{x→c} g(x)
// limit of the quotient
lim{x→c} f(x) ÷ g(x)   =  lim{x→c} f(x)  ÷  lim{x→c} g(x)
```

This is sometimes called the **Algebraic Limit Theorem**. However, certain combinations of particular limiting values cannot be computed in this way, and knowing the limit of each individual function does not suffice to determine the limit of the whole.

In these particular situations, the limit is said to take an *indeterminate form*, described by one of the informal expressions:
- 0 / 0
- ∞ / ∞
- 0 × ∞
- ∞ − ∞
- 0⁰
- 1^∞
- ∞⁰

among a wide variety of uncommon others, where each expression stands for the limit of a function constructed by an arithmetical combination of two functions whose limits respectively tend to 0, 1 or ∞.

Depending on the specific functions involved, a limit taking one of these indeterminate forms might either (also see L'Hopital rule).
- tend to zero
- tend to any finite value
- tend to infinity
- diverge


A limit which unambiguously tends to infinity, e.g. `lim{x→0} 1/x² = ∞`, is not considered indeterminate.

The most common example of an indeterminate form is the quotient of two functions each of which converges to zero. This indeterminate form is denoted by `0/0`. For example, as `x` approaches 0, the ratios
- x/x³ = ∞
- x/x  = 1
- x²/x = 0

In each case, if the limits of the numerator and denominator are substituted, the resulting expression is `0/0`, which is indeterminate. In this sense, `0/0` can take on the values 0, 1, or ∞, by appropriate choices of functions to put in the numerator and denominator.

A pair of functions for which the limit is any particular given value may in fact be found. Even more surprising, perhaps, the quotient of the two functions may, in fact, diverge, and not merely diverge to infinity; e.g. `x⋅sin(1/x)/x`.

So the fact that two functions f(x) and g(x) converge to 0 as x approaches some limit point `c` is insufficient to determinate the limit

    lim{x→c} f(x) / g(x)

An expression that arises by ways other than applying the Algebraic Limit Theorem may have the same form of an indeterminate form. However it is not appropriate to call an expression "indeterminate form" if the expression is made outside the context of determining limits. An example is the expression `0⁰`. Whether this expression is left undefined, or is defined to equal 1, depends on the field of application and may vary between authors.

Contents
- 1. Some examples and non-examples
  - 1.1. Indeterminate form 0/0
  - 1.2. Indeterminate form 00
  - 1.3. Expressions that are not indeterminate forms
- 2. Evaluating indeterminate forms
  - 2.1. Equivalent infinitesimal
  - 2.2. L'Hôpital's rule
- 3. List of indeterminate forms

## 3. List of indeterminate forms

- Indeterminate form `0/0`
- Indeterminate form `∞/∞`
- Indeterminate form `0 ⋅ ∞`
- Indeterminate form `0⁰`
- Indeterminate form `1^∞`
- Indeterminate form `∞⁰`


### Indeterminate form `0/0`
- Conditions:
  - lim{x→c} f(x) = 0
  - lim{x→c} g(x) = 0
- Transformation to 0/0:
  - (none)
- Transformation to ∞/∞:
  - lim{x→c} `f(x) ÷ g(x)` =
    = lim{x→c} 1/g(x) ÷ 1/f(x)

```
If both f x and g x tend to 0,
(no transformation to 0/0)
transformation to ∞/∞:

         f x              1/g x
lim{x→c} ---- = lim{x→c} -----
         g x              1/f x
```


### Indeterminate form `∞/∞`
- Conditions:
  - lim{x→c} f(x) = ∞
  - lim{x→c} g(x) = ∞
- Transformation to 0/0:
  - lim{x→c} `f(x) ÷ g(x)` = lim{x→c} 1/g(x) ÷ 1/f(x)
- Transformation to ∞/∞:
  - (none)


### Indeterminate form `0 ⋅ ∞`
- Conditions:
  - lim{x→c} f(x) = 0
  - lim{x→c} g(x) = ∞
- Transformation to 0/0:
  - lim{x→c} `f(x) ⋅ g(x)` = lim{x→c} f(x) ÷ 1/g(x)
- Transformation to ∞/∞:
  - lim{x→c} `f(x) ⋅ g(x)` = lim{x→c} g(x) ÷ 1/f(x)


### Indeterminate form `∞ - ∞`
- Conditions:
  - lim{x→c} f(x) = ∞
  - lim{x→c} g(x) = ∞
- Transformation to 0/0:
  - lim{x→c} `f(x) - g(x)` =
    = lim{x→c} (1/g(x) - 1/f(x)) ÷ (1/f(x)⋅g(x))
- Transformation to ∞/∞:
  - lim{x→c} `f(x) - g(x)` =
    = ln lim{x→c} e^f(x) ÷ e^g(x)


### Indeterminate form `0⁰`
- Conditions:
  - lim{x→c} f(x) = 0ᐩ
  - lim{x→c} g(x) = 0
- Transformation to 0/0:
  - lim{x→c} `fx^gx` = exp lim{x→c} gx ÷ 1/ln fx
- Transformation to ∞/∞:
  - lim{x→c} `fx^gx` = exp lim{x→c} ln fx ÷ 1/gx


### Indeterminate form `1^∞`
- Conditions:
  - lim{x→c} f(x) = 1
  - lim{x→c} g(x) = ∞
- Transformation to 0/0:
  - lim{x→c} `fx^gx` = exp lim{x→c} ln fx ÷ 1/gx
- Transformation to ∞/∞:
  - lim{x→c} `fx^gx` = exp lim{x→c} gx ÷ 1/ln fx


### Indeterminate form `∞⁰`
- Conditions:
  - lim{x→c} f(x) = ∞
  - lim{x→c} g(x) = 0
- Transformation to 0/0:
  - lim{x→c} `fx^gx` = exp lim{x→c} gx ÷ 1/ln fx
- Transformation to ∞/∞:
  - lim{x→c} `fx^gx` = exp lim{x→c} ln fx ÷ 1/gx



## Links

https://en.wikipedia.org/wiki/Zero_to_the_power_of_zero

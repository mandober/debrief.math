# Undefined

- division by zero
- taking an n-th root of a negative number, where `n` is even
  - √(-5) is undefined
  - ∛(-5) is -1.70998
  - ∜(-5) is undefined
- slope of a vertical line
- logarithm of zero
  - natural logarithm of zero
  - logarithm-base-x of zero



## Undefined

https://en.wikipedia.org/wiki/Undefined_(mathematics)

The term *undefined* refers to a value, function, or some other expression that cannot be assigned a meaning within a specific formal system. Attempting to assign or use an undefined value within a particular formal system, may produce contradictory or meaningless results within that system.

Whether a particular function or value is undefined, depends on the rules of the formal system in which it is used. For example, taking a root of a negative number is undefined in ℝ, but defined in ℂ.

Situations where undefined values emerge also present an opportunity to assume something else and thereby come up with a new formal system as an extension of the original one. That is what has happend with the roots of negative numbers - instead of accepting such operation as being undefined, he [who?] elected to introduce a new axiom stating that `i = √-1`, thereby introducing a whole new set of numbers - complex numbers, ℂ. The rules regarding the behaviour of common arithmetical operations in relation to complex numbers have also been introduced. One thing of note here is that an extension like the complex number should try to keep the maximum level of compatibility with the original system, causing as little disruption as possible. This significantly increases its chance of wide acceptance. Also of note, and related to this, is the fact that only one "strange" notation was introduced - namely, `i = √-1`; the roots of all other negative number can then be expressed in term of this one. To maintain max compatibility, there is a rule that all occurences of i² should be replaced by -1, as well that complex numbers should be grouped and expressed in terms of a multiple of `i` [details][unclear].

- i = √-1, i² = -1
- (a + bi) + (c + di) = (a + c) + (b + d)i
- 5i, 3 √-1

There is a system of *dual numbers* which is especially advantageous in relation with the derivatives as it provides automatic differentiation - a derivate of the equation automatically falls out. In the system of dual numbers (at least for the purpose of auto-derivation), the things of importance are the introduction of a non-zero number `ε`, along with the fact that `ε² = 0`. To calculate the derivative of an equation, we just plug in `x + ε` rather then `x` alone: instead of `f(x)`, we use `f(x + ε)`. For example:

```
Given a function
f(x) = 6x² + 3x - 2
its derivative is:
f′(x) = 12x + 3

With dual numbers:
f(x + ε) = 6(x + ε)² + 3(x + ε) - 2     Plug in x+ε
= 6(x + ε)² + 3(x + ε) - 2              plug it in goddamn
= 6(x² + 2xε + ε²) + 3x + 3ε - 2        expand
= 6x² + 12xε + 6ε² + 3x + 3ε - 2        6ε² is a goner
= 6x² + 12xε + 3x + 3ε - 2              since ε²=0
= 6x² + 3x + 12xε + 3ε - 2              put x-terms together
= 6x² + 3x - 2 + ε(12x + 3)             factor out ε from ε-terms
```

We'll always get this - the orginal function along with its derivative. Sure, this is more work when finding the derivative manually, but for programming it is a blast since we need not worry about many potential implementation problems (from inaccuracies of floats, division by zero, etc). It is said that all algebra software today is performing derivation using this method.






1. Division by zero
- division by 0, `x/0`
- if denominator is 0, fraction/ration is undefined
  - in `(x+1)/(x-1)`, if `x=1` result is undefined
  - `x≠1` is a condition imposed to exclude `x=1` from domain
  - in the graph, such conditions become asymptotes

2. Logarithm of zero
- `ln 0` is undefined
- `logₐ 0` is undefined

3. n-th root of a negative number where n is even
- `√x`, if `x < 0`, result is undefined
  - in `y² = x`, `y = ±√x`
  - in `y = x²`, `x = ±√y`
  - `y = √x`, then `x = (±y)²`
  - (2)² = 4 = (-2)²
  - square roots of 36 are 6 and −6, but √36 = 6 (only 6, and not also −6)

## Division by 0


- (1) ∀xy. xy/y = x (holds in math but not in PLs with binary64 floats)
- (2) ∀x. x × 0 = 0

Assuming `x≠0`, let `k=x/0` since we want that `x/0` is some defined number `k` and not to be undefined. But then `(x/0)×0` must give back `x` according to (1). However, `(x/0)×0` is the same as `k×0`, and `k×0` must be 0 according to (2). Contradiction.

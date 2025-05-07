# Linearity of differentiation

https://en.wikipedia.org/wiki/Linearity_of_differentiation

The derivative of any linear combination of functions equals the same linear combination of the derivatives of the functions; this property is known as *linearity of differentiation* (aka the rule of linearity, the superposition rule for differentiation).

The *superposition principle* states that, for all linear systems, the net response caused by two or more stimuli is the sum of the responses that would have been caused by each stimulus individually. So that if input A produces response X, and input B produces response Y, then input (A + B) produces response (X + Y).

*Linearity of differentiation* is a fundamental property of the derivative that encapsulates in a single rule two simpler rules of differentiation, the *sum rule* (the derivative of the sum of two functions is the sum of the derivatives) and the *constant factor rule* (the derivative of a constant multiple of a function is the same constant multiple of the derivative). Thus it can be said that differentiation is linear, or that the differential operator is a linear operator.

## Statement and derivation

Let `f` and `g` be functions, with `α` and `β` constants. Now consider

    d/dx (αf(x) + βg(x))

By the sum rule this is

    d/dx(α∙f(x)) + d/dx(β∙g(x))

and by the constant factor rule, this reduces to

    α∙f′(x) + β∙g′(x)

Therefore,

    d/dx (α∙f(x) + β∙g(x)) = α∙f′(x) + β∙g′(x)

Omitting the brackets, this is often written as:

    (α∙f + β∙g)′ = α∙f′ + β∙g′


```js
// Linearity of differentiation: Legrange notation
(α∙f(x) + β∙g(x))′
= (α∙f(x))′ + (β∙g(x))′  // by the sum rule
= α∙f′(x) + β∙g′(x)      // by the factor rule

// Legrange PF notation
(αf + βg)′ = (αf)′ + (βg)′ = αf′ + βg′

// Leibniz notation
 d                         d             d
---- (a∙f(x) + b∙g(x)) = ---- a∙f(x) + ---- b∙g(x)
 dx                       dx            dx
```


## Derivation of the proofs

We prove the entire linearity principle at once, and, redundantly, the individual steps (of constant factor and adding) individually.

Proving linearity directly also proves the constant factor rule, the sum rule, and the difference rule as special cases.
- sum rule: set both constant coefficients to 1
- difference rule: set the 1st constant to 1 and 2nd to −1
- constant factor rule: set either 2nd constant or 2nd fn to 0

      d/dx (α⋅f(x) + β⋅g(x)) = α⋅f′(x) + β⋅g′(x)

      sum rule:
        d/dx (f(x) + g(x)) = f′(x) + g′(x)

      difference rule:
        d/dx (f(x) - g(x)) = f′(x) - g′(x)

      constant factor rule:
        d/dx (α⋅f(x) + 0⋅g(x)) = d/dx (α⋅f(x)) = α⋅f′(x)

In constant factor rule, technically, the domain of the second function is also considered, and an easy way to avoid issues is to set the second function equal to the first but set its constant to 0. Another possibility is to set both the second constant and function to 0, where the domain of the second function is a superset of the first function.

https://courseware.cemc.uwaterloo.ca/11/assignments/47/6

https://tutorial.math.lamar.edu/Classes/CalcI/DerivativeProofs.aspx

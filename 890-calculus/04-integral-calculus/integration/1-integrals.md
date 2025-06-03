# Integrals

https://tutorial.math.lamar.edu/Classes/CalcI/IndefiniteIntegrals.aspx

There are two types of integrals:
- indefinite integrals
- definite integrals

## Indefinite integrals

Given a function `f(x)`, the differentiation is about finding its derivative, `f′(x)`. Integration is the opposite operation to differentiation that asks what function we have differentiated to get the function `f(x)`.
- `f(x) ⇒ f′(x)` is differentiation that computes a derivative
- `f′(x) ⇒ f(x)` is integration that computes an antiderivative



### Definitions

Given a function `f(x)` its **antiderivative** is any function `F(x)` such that `F′(x) = f(x)`.

If `F(x)` is any antiderivative of `f(x)` then *the most general antiderivative* of `f(x)` is called an **indefinite integral** and denoted by

    ∫ f(x) dx = F(x) + C

where
- `∫`    is the *integral symbol* (symbol of integration)
- `f(x)` is the *integrand* (function)
- `dx`   is a *differential*
- `x`    variable is the *variable of integration* (integration variable)
- `C`    is the *constant of integration* (representing an arbitrary const)


The process of finding the indefinite integral is called **integration**, or integrating a function `f(x)`. To be specific about the integration variable we say that we are integrating the function `f(x)` *with respect to* variable `x`.

One of the more common mistakes with integrals is forgetting the `dx` at the end of the integral. This is necessary notation. Think of the integral sign `∫` as the opening marker and `dx` as the closing marker, `∫ … dx`. 

In fact, `dx` is not fixed notation as `x` variable is not always used; sometimes `dt`, `dv`, `du`, etc. is used instead. The `dx` or other variables that end the integral are actually *differentials*. If we change the integration variable in the integral, we also need to change the differential to match the new variable.

We only integrate what is between the integral sign and the trailling `dx`, e.g. the antiderivative of `∫ x³ dx + 3x - 4` is `x⁴/4 + C + 3x - 4`. 

The purpose of the differential at the end of integral is to tell us what variable we are integrating with respect to. This will be important in multi-variable calculus as there will be multiple variable in equations. Consider the integral `∫ 2t dx`. The `dx` tells us that we are integrating `x`'s. That means that we only integrate `x`'s that are in the integrand and all other variables in the integrand are considered to be constants. Its antiderivative is then `2t x + C`. The `x` arose due to there being a const 1 "in terms of `x`", as in `∫ dx = ∫ 1 dx = x + C`. [unclear]


### Properties of indefinite integrals

We can factor multiplicative constants out of indefinite integrals:

    ∫ k f(x) dx = k ∫ f(x) dx                         (1)
    ∫  -f(x) dx = - ∫ f(x) dx                         (2)

where `k` is any constant. In the second example `k = -1`.

The integral of a sum/difference of functions is the sum/difference of the individual integrals. This rule can be extended to as many functions as we need.

    ∫ f(x) ± g(x) dx = ∫ f(x) dx ± ∫ g(x) dx          (3)

With derivatives we had the product rule and the quotient rule, but with integrals there are no corresponding rules. When encountering a product or quotient in an integral, a variety of options will be available to deal with them depending on the type of integrand.

The main rule of integration is also called *the power rule*:

    xⁿ = xⁿᐩ¹/(n+1)  (for n ≠ −1)                      (4)

To find the antiderivative, we need to increment the exponent by one and then set up the coefficient as a reciprocal to get the correct coefficient if we would then differentiate the solution.

### Computing indefinite integrals

The general rule when integrating a power of `x` is to add one to the exponent and then divide everything by the new exponent.

```
           xⁿᐩ¹
∫ xⁿ dx = ----- + C  (for n ≠ −1)
          n + 1
```

It is clear that we need to avoid the case when `n` is -1; should we allow it, we would end up with division by zero. The solution is instead

    ∫ 1/x dx = ∫ x⁻¹ dx = ln |x| + C


### Antiderivatives of trig functions

sin ⇒ -cos
cos ⇒  sin

```
∫ sin(x)       dx  =  -cos(x) + C
∫ cos(x)       dx  =   sin(x) + C
∫ sec²(x)      dx  =   tan(x) + C
∫ sec(x)tan(x) dx  =   sec(x) + C
∫ csc²(x)      dx  =  -cot(x) + C
∫ csc(x)cot(x) dx  =  -csc(x) + C

∫ -sin(x) dx = -∫ sin(x) dx = -(-cos(x)) = cos(x)
∫ -cos(x) dx = -∫ cos(x) dx = -(-sin(x)) = cos(x)
```

Notice that we only integrated 2 of the 6 trig fns here. The remaining 4 integrals are really integrals that give the remaining 4 trig functions (they require the use of the substitution rule). Also, be careful with signs here. It is easy to get the signs for derivatives and integrals mixed up.

Remember, that we are asking what fn we differentiated to get the integrand.

### Antiderivatives of exponential and logarithmic functions

- ∫ eˣ dx = eˣ + C
- ∫ aˣ dx = aˣ/ln(a) + C
- ∫ 1/x dx = ∫ x⁻¹ dx = ln |x| + C

Integrating logarithms requires a topic that is usually taught in Calculus II and so we won't be integrating a logarithm in this class.

Note the third integrand can be written in a couple of ways and don't forget the absolute value bars in the `x` in the answer to the third integral.

### Antiderivatives of inverse trig

- ∫ 1/ (1+x²) dx = arctan(x) + C
- ∫ 1/√(1-x²) dx = arcsin(x) + C = -arccos(x) + C

We are asked what function did we differentiate to get the integrand, so the second integral above has two answers, but the first one is traditionally used.

Properties
- ∫ arcsin(ax) dx = x arcsin(ax) + 1/a  √ (1 − a²x²) + C
- ∫ arccos(ax) dx = x arccos(ax) - 1/a  √ (1 - a²x²) + C
- ∫ arctan(ax) dx = x arctan(ax) - 1/2a ln(1 + a²x²) + C

Integrals
- ∫ arccos(x) dx = x arccos(x) - √(1 - x²) + C
- ∫ arctan(x) dx = x arctan(x) - 1⁄2 ln(1+x²) + C
- ∫ arcsin(x) dx = x arcsin(x)

To calculate `∫ arcsin(x) dx`, we use the property:    
`∫ arcsin(ax) dx` = `x arcsin(ax) + 1/a √(1 − a²x²)`   
but since we have no `a`:    
`∫ arcsin(x) dx` = `x arcsin(x) + √(1 − x²)`    
we get    
`x arcsin(x) + √(1 - 1)`              [why is `x²=1`? cos `x` is set to `a`]
so the antiderivative is     
`x arcsin(x)` + C     


### Antiderivatives of hyperbolic functions

- ∫ sinh (x) dx = cosh(x) + C
- ∫ cosh (x) dx = sinh(x) + C
- ∫ sech²(x) dx = tanh(x) + C
- ∫ csch²(x) dx =-coth(x) + C
- ∫ sech(x) tanh(x) dx = -sech(x) + C
- ∫ csch(x) coth(x) dx = -csch(x) + C

As with logarithms, integrating inverse trig functions requires a topic usually taught in Calculus II and so we won't be integrating them in this class.

There will never be a single rule that will work for all products and there will never be a single rule that will work for all quotients. Every product and quotient is different and will need to be worked on a case by case basis.

## Computing some integrals

```js
// exercise
∫ (4x² + 3x³) / x² dx = 
∫ (4x²/x² + 3x³/x²) dx = 
∫ (4x²/x²) dx + ∫ (3x³/x²) dx = 
∫ 4 dx + ∫ 3x dx =
4 x + 3/2 x² + C
∎

// exercise
∫ 15/x dx =
15 ∫ 1x dx =
15 ln |x| + C
∎

// exercise
```

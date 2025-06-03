# Derivatives

https://tutorial.math.lamar.edu/Classes/CalcI/DerivativeIntro.aspx

## TOC

- derivative
- derivative definition
- derivative interpretation
- differentiation formulas
- product and quotient rule
- derivatives of trig functions
- derivatives of exponential and logarithmic functions
- derivatives of inverse trig functions
- derivatives of hyperbolic functions
- chain rule
- implicit differentiation
- related rates
- higher order derivatives
- logarithmic differentiation

## Contents

*Derivative definition* - we define the derivative, give various notations for the derivative and work a few problems illustrating how to use the definition of the derivative to actually compute the derivative of a function.

*Derivative interpretation* - several of the more important interpretations of the derivative. We discuss the rate of change of a function, the velocity of a moving object, and the slope of the tangent line to a graph of a function.

*Differentiation formulas* - most of the general derivative formulas and properties used when taking a derivative of a function. Examples in this section concentrate mostly on polynomials, roots and more generally variables raised to powers.

*Product and quotient rule* - allow us to differentiate functions that, up to this point, we were unable to differentiate.

*Derivatives of trig functions* - Derivatives of all 6 trig functions are given and we show the derivation of the derivative of sin and tan.

*Derivatives of exponential and logarithm functions* - derive the formulas for the derivatives of the exponential and logarithm functions.

*Derivatives of inverse trig functions* - derivatives of all six inverse trig functions. We show the derivation of the formulas for inverse sine, inverse cosine and inverse tangent.

*Derivatives of hyperbolic functions* - the relationships between them and some of the basic facts involving hyperbolic functions. We also give the derivatives of each of the six hyperbolic functions and show the derivation of the formula for hyperbolic sine.

*Chain rule* - one of the more useful and important differentiation formulas, the chain rule. With the chain rule in hand we will be able to differentiate a much wider variety of functions. As you will see throughout the rest of your Calculus courses a great many of derivatives you take will involve the chain rule!

*Implicit differentiation* - Not every function can be explicitly written in terms of independent variable, e.g. `y = f(x)` and yet we will still need to know what `f'(x)` is. Implicit differentiation will allow us to find the derivative in these cases. Knowing implicit differentiation will allow us to do one of the more important applications of derivatives, Related Rates (the next section).

*Related rates* - the only application of derivatives in this section, related rates. In related rates problems we are give the rate of change of one quantity in a problem and asked to determine the rate of one (or more) quantities in the problem. This is often one of the more difficult sections for students. We work quite a few problems in this section so hopefully by the end of this section you will get a decent understanding on how these problems work.

*Higher-order derivatives* - the concept of higher order derivatives and give a quick application of the second-order derivative and show how implicit differentiation works for higher-order derivatives.

*Logarithmic differentiation* - Logarithmic differentiation gives an alternative method for differentiating products and quotients (sometimes easier than using product and quotient rule). More importantly, however, is the fact that logarithmic differentiation allows us to differentiate functions that are in the form of one function raised to another function, i.e. there are variables in both the base and exponent of the function.

## Derivative definition

In the chapter on limits, we saw that the computation of the slope of a tangent line, the instantaneous rate of change of a function, and the instantaneous velocity of an object at `x = a` all required us to compute the limit.

    lim{x→a} (f(x) - f(a)) / (x - a)

with a small change of notation this limit could also be written as

    lim{h→0} (f(a + h) - f(a)) / h

This is such an important limit and it arises in so many places that we give it a name. We call it a *derivative*.

>The official definition of the derivative. 
The derivative of `f(x)` wrt `x` is the function `f′(x)` defined by

```
                   f(x + h) - f(x)
f′(x) = lim{h → 0} ---------------
                          h
```


## Derivatives of Trig Functions (section 3.5)

https://tutorial.math.lamar.edu/Classes/CalcI/DiffTrigFcns.aspx

With this section we're going to start looking at the derivatives of functions other than polynomials or roots of polynomials.

We start this process off by taking a look at the derivatives of the 6 trig functions.

Before we actually get into the derivatives of the trig functions we need to give a couple of limits that will show up in the derivation of two of the derivatives.
- lim{θ→0} sin(θ)/θ = 1
- lim{θ→0} (cos(θ)-1)/θ = 0

```
           sin(θ)
lim{θ → 0} ------
             θ

           cos(θ) - 1
lim{θ → 0} ----------
               θ
```

See [Proof of Trig Limits](https://tutorial.math.lamar.edu/Classes/CalcI/ProofTrigDeriv.aspx) section of the Extras chapter for proofs.

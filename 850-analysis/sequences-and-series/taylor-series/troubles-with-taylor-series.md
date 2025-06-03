# Troubles with Taylor series

Taylor series and Taylor polynomials, although they approximate many smooth functions very accurately within the interval of convergence, the disadvantage is they rapidly diverge immediately outside it, shooting off into infinity.

## Divergence

Taylor series can approximate a function via Taylor polynomials. When we take the limit of the Taylor polynomials we get the infinite Taylor series equal to the original function. However, this is not always the case, for several reasons.

One reason is that we simply cannot compute the Taylor series centered at a particular value (e.g. `ln(x)` is not defined at zero), or that the resulting series only converges over an interval that is too narrow.

The trickiest part, however, is that even when the Taylor Series converges, it doesn't necessarily mean it converges to a value that matches the modelled function.

For example, the function `f(x)` defined piece-wise to be `exp(-1/x²)` when `x≠0`, and 0 otherwise, is a smooth function, but its Taylor series coincides with the zero series, and thus clearly differs from the modelled function. An *analytic function* is one whose Taylor series convergences to the modelled function, so this was an example of a non-analytic yet smooth function.


## Vicious circle

Another disadvantage of Taylor series is that, being based on derivatives of the function we want to model, the zeroth derivative is the function itself. This clashes with the whole motivation to build Taylor series because we want to approximate functions that are difficult to compute with, so we use Taylor polynomials to represent them. But the very first term in any Taylor polynomial is exactly the function we are modelling! We need to apply it and evaluate it at an argument that is an x-value that represents the center of the series.

Maclaurin series are a subclass of Taylor series that are always centered at x=0, unlike Taylor series which may be centered anywhere. Being centered at x=0 means that the zeroth derivative (i.e. the function we are modelling) is always evaluated at x=0. Evaluating even otherwise difficult functions at x=0 is probably easy as we probably already know the result. But that is just an assumption; it may turn out that it is not as easy.

On the other hand, Taylor series can be centered anywhere, meaning the zeroth (i.e. the function we are modelling) is evaluated at some arbitrary x-value. And that may not be easy to compute. After all, that is the exact reason we have reached for the Taylor series - because computing with such functions is difficult. If we had problems evaluating something like `sin(1.047)` before, then we sure as shit still have the same problem now. The only thing different is that now, the argument `1.047` represents the center of the series, and we need to evaluate it as it is the initial term of any Taylor polynomial regardless of its degree (it is the initial term so it participates in building any partial sum).

Here is a quick reminder how the Taylor series looks like in general:

```js
       ⎲∞   f⁽ⁿ⁾(a)         f⁽⁰⁾(a)         f⁽¹⁾(a)         f⁽²⁾(a)
f(x) = ⎳ₙ₌₀ -------(x-a)ⁿ = -------(x-a)⁰ + -------(x-a)¹ + -------(x-a)² + ⋯
                n!              0!              1!              2!
```

If we expand the first few terms, we obtain the initial term above, which can be simplified down to `f⁽⁰⁾(a)`, which is the same as `f(a)`.

Therefore, we are trying to model a function `f`, that is difficult to compute with, as a Taylor polynomial because polynomials are very friendly for computation and manipluation. However, to do this, we immediately run into a problem: we need to apply that difficult function to an argument `a`, and thus to evaluate the expression `f(a)`. The argument `a` is an x-value that is the center of the series, so it could be any arbitrary number.
>If we had trouble computing with this function before, why should it be any different now?

## Comparison

If we get masochistic inclinations, we can sit down and manually calculate something like `exp(1.351)` using nothing but pen and paper.
>How could we judge the accuracy of the result we get
without reaching for the handheld devices and similar online aids?


We could calculate something like `exp(1.351)` the same way hand-held calculators do: we express it as a Taylor series, and then we search for Taylor polynomials of different degrees until we find the smallest one that still gives a satisfactory result.



This suggest we should already know the true answer of evaluating `exp(1.351)`, and yes, this is a disadvantage. 

In principle, we are always comparing the result we get from the approxiamtion with the true value we have obtained in another way (ok calculator), but what would we do if we couldn't obtain the true result for that comparison?

Another issue is that we can always obtain the true result in various ways (ok calculator) and use it to compare the result we get from an approximation with. But what if we didn't have access to the proper result. Would we still be able to tell how good or bad the approximated result is? (Taylor's theorem?) How would we know if we are within the interval of convergence, or we stepped outside it, overshooting every evaluation?




## Rant

Sure, this may be a simple evaluation at `x=0` like `sin(0)`. When the center of the series is at `x=0`, we actually have a Maclaurin series. Maclaurin series are always centered at x=0

that should be easy enough to evaluate at 0.

which could be easily computed despite the apparent difficulty to work with this function, but the again, it may be exactly the kind of computation that prompted us to model it via Taylor polynomials. 

So, it may come down to the chicken and egg problem.





To approaximate an unfriendly, non-polynomial function, `f`, we use Taylor polynomials. However, the get the first term of any degree Taylor polynomial, we need to use that same exact function to evalute `x=a`, where `a` is the center of the series. Sure, that may not be so bad, especially if `a=0`, however using the same exact function to approximate that same exact function smells bad (even if the approximation then works on a larger interval of `x` values, as opposed to just one `x` value, i.e. `x=a` that we need to evaluate using the function we are in the process of building an approximation of).

To represent an unfriendly, but smooth function `f`  as a polynomial, we start to build that polynomial, but then BLAM! …*the first term we need is built by calling the same function we are in the process of represeting via other means*, i.e. as a polynomial as it was difficult to calculate with that function!?!

>How are we to build the approximatation when we immediately need to call the very function we are approximating.

To build the initial term (required for any degree Taylor polynomial), we need to call the very same function we had great difficulty to work with; in fact, the great difficulty to use that function in calculations is exactly the reason that prompted us to try and express it some other way (namely via polynomials), but in order to build that polynomial we need to calculate something with that same dreadful function?!?

Well… it's not that dramatic, especially since we only need to use the original function to evaluate it at one value, usually, x=0.

Also, how do we determine the IOC? It seems we always need to keep the original function around to evaluate it occasionally at different values in order to compare them against approximations - but we don't want or cannot use it because it is difficult to compute with it, like we established. Can we find the IOC without it? Taylor theorem, does it help with this?

# Power rule of integration

Each general rule of differentiation has a corresponding rule of integration that reverses it.

The power rule of differentiation is reversed to become the power rule of integration. To find a derivative, we multiply by the value of the exponent (we "bring down" the exponent), then decrement the exponent, `(xⁿ)′ = nxⁿ⁻¹`. To find an antiderivative, we increment the exponent and divide by the new value of the exponent, `∫ xⁿ dx = xⁿᐩ¹/(n+1)`.

## Deriving the power rule

When differentiating powers of `x`, we multiply the term by the original exponent and then drop the exponent by one, e.g. `f(x) = x⁴ + 3x - 9` becomes differentiated to `f′(x) = 4x³ + 3`. Now, with integration, we need to reverse that process.

The power rule of differentiation is `xⁿ = nxⁿ⁻¹`, so to reverse it, one thing we need to do is increment the exponent; e.g. maybe `x³` goes to `x⁴`. However, the derivative of `x⁴` is not `x³` but `4x³`. We need to undo the constant. Undoing that 4 means multiplying it by its reciprocal 1/4. We want to start with `4x³` and get `x⁴` out of it. It seems we need to differentiate `1/4 ⋅ x⁴` so when we drop the exponent, it gets cancelled by being multiplied with its reciprocal and we end up with `x⁵`.

Likewise, for the second term: in order to get `3x` after differentiating, we need to differentiate `3/2⋅x²`. Again, the fraction is there to cancel out the constant (2) we pick up in the differentiation. The third term is just a constant and we know that if we differentiate `x` we get 1. So, it looks like we had to differentiate `-9x` to get the last term.

Putting all of this together gives the function

    F(x) = 1/5 x⁵ + 3/2 x² - 9x

It is always easy to check the answer by differentiating it:

    F′(x) = x⁴ + 3x - 9 = f(x)

So, it looks like we got the correct function. Or did we? We know that the derivative of a constant is zero and so there are many functions the antiderivative of which is the same. This is the reason we must append the *constant of integration*, `+ C`, to an antiderivative.

    F′(x) = x⁴ + 3x - 9 + C

There is an infinite number of functions, also referred to as a *family of functions* that differ by a constant `C`. The constant of integration must be added to indefinite integrals - definite integrals are evaluated down to a value so they don't need it.

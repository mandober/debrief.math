# Taylor series

**Taylor series**, or Taylor expansion, of a function is an infinite sum of terms expressed in terms of the function's *derivatives* at a single point.

Taylor series approximates a function `f` as an infinite sum of terms, each of which is expressed in terms of the function's derivatives at a single point, `a`. This point `a` is the center of the series, a point about which we approximate the function via the Taylor series.

The first approximation is via the *Taylor polynomial of degree 0*, which is just a partial sum consisting on the first term of the Taylor series, `P₀(x) = f(a)`. This Taylor polynomial is still a function of `x` but `x` does not occur on the right side implying that `f(a)` is a constant. In fact, `f(a)` is exactly the value of the function `f` we are modelling evaluated at `x=a`. Naturally, this is a bad approximation, only accurate when `x` is `a`.

However, the more terms of the Taylor series we inlcude in the partial sum that makes up a Taylor polynomial, the better the approximation.

The *Taylor polynomial of degree 1* includes the first two terms of the Taylor series. It is a linear approximation of the function `f`, and already much better then the constant approximation.

The *Taylor polynomial of degree 2* includes the first 3 terms of the Taylor series. It is a quadratic approximation of the function `f`, which is very accurate with a certain interval.

The *Taylor polynomial of degree n* is a function `Tₙ(x)` that consists of the first `n` terms of the Taylor series. It is a polynomial and the sum of the terms of increasing powers.

As the degree of a Taylor polynomial goes to infinity, `n→∞`, in the limit, we get a *Taylor series*, which not only approximates the function `f` but matches it exactly over the entire domain (not just over a certain interval).

```js
// Taylor polynomials
T₀(x) = f(a)
T₁(x) = f(a) + f⁽¹⁾(a)(x-a)
T₂(x) = f(a) + f⁽¹⁾(a)(x-a) + f⁽²⁾(a)(x-a)²/2
T₃(x) = f(a) + f⁽¹⁾(a)(x-a) + f⁽²⁾(a)(x-a)²/2 + f⁽³⁾(a)(x-a)³/3!
Tₙ(x) = f(a) + f⁽¹⁾(a)(x-a) + f⁽²⁾(a)(x-a)²/2 + ⋯ + f⁽ⁿ⁾(a)(x-a)³/n!
```

Many sensible (and smooth) functions can be expressed as Taylor series. We can find a Taylor polynomial of a certain degree such that it approximates the function accurately around the point of our interest.

Detailed, it works like this: we want to express a rather difficult function `f` (like `sin`, `cos`, `exp`, etc.) as a Taylor series because polynomials are much easier to manipulate and compute with. We can easily intergrate and differentiate them on a term by term basis. They have all the desirable qualities that the function we want to model lacks. This function `f` we want to express as a polynomial can be hard to evaluate at any argument. How can we calculate `exp(1.351)`?

We do it the same way hand calculators do: we find their Taylor series, and then we experiment with different degree Taylor polynomials until we find one that gives us a satisfying answer. This suggest we should already know the true answer of evaluating `exp(1.351)`, and yes, this is a disadvantage. In principle, we are always comparing the result we get from the approxiamtion with the true value we have obtained in another way (ok calculator), but what would we do if we couldn't obtain the true result for that comparison? How would we know if we are within the interval of convergence or we stepped outside of it, overshooting every evaluation? There are probably some theorems to help us with this (Taylor's theorem?).

So, we have a difficult function `f`, and we have expressed it as a Taylor series, `T(x)`. We then assume the Taylor polynomial of the second degree will do well to approximate results of `f` around the point `a`.

To make this more concrete, say we want to calculate `√10`. So, the difficult function is `√x`. Where would we even begin (if we weren't aware of the Newton's method)? Well, we'd use Taylor series to approximate it. We'd begin by realizing that we can't do shit about √10, but if only `x` was 9, it would be a whole different story. Computing √10 is hard, but evaluating the same function at a nearby point is easy since √9 = 3.

## Procedure

We consider the center of the series, `a`, about which we approximate the square root function to be `a = 9`. What we really want is to calculate the application of the function to argument `x=10`. The first thing is recall the general form of the Taylor series:

```js
       ⎲∞   f⁽ⁿ⁾(a)                                f⁽²⁾(a)
f(x) = ⎳ₙ₌₀ -------(x-a)ⁿ = f(a) + f⁽¹⁾(a)(x-a)¹ + -------(x-a)² + ⋯
                n!                                     2!
```

We assume the Taylor polynomial of degree 2 will be sufficient to calculate `√10` to a satisfactory precision.

```js
                               f⁽²⁾(a)
T₂(x) = f(a) + f⁽¹⁾(a)(x-a)¹ + ------- (x-a)²
                                 2

T₂(x) = f(a) + f⁽¹⁾(a)(x-a)¹ + f⁽²⁾(a)(x-a)²/2
```

The function we are approximating is `√x` so we should specialize the generic second degree Taylor polynomial wrt this function.

```js
T₂(x) = √a + f⁽¹⁾(a)(x-a) + f⁽²⁾(a)(x-a)²/2
```

Hmm, we need derivatives to finish this… namely, we need to find the first and second derivative of `√x` function. Then we need to evaluate the function itself, `√a`, and each derivative at `a`, `f⁽¹⁾(a)` and `f⁽²⁾(a)`. We'll need these results when we assemble the polynomial (these results will be combined with additional expression, but we can obtain them separately in anticipation).

### 1. Find derivatives

We need to find the first two derivatives of `f(x) = √x`. That is, in order to build the Taylor polynomial of degree 3, we need these 3 derivatives:
- f⁽⁰⁾(x) = f(x) = √x
- f⁽¹⁾(x) = f′(x)
- f⁽²⁾(x) = f′′(x)

The zeroth derivative is the function itself.

```js
// function
f(x) = √x
// and its derivatives
f⁽⁰⁾(x) = √x = x¹′²
f⁽¹⁾(x) = 1/2 x⁻¹′² = 1/(2√x)
f⁽²⁾(x) = -1/4 x⁻³′² = -1/(4√(x³))
```

### 2. Assemble the Taylor polynomial

We now assemble the Taylor polynomial of degree 2 in its general form. And then we specialize it in terms of the function `√x`.

```js
// Taylor polynomial of degree 2 (general form)
                               f⁽²⁾(a)
T₂(x) = f(a) + f⁽¹⁾(a)(x-a)¹ + ------- (x-a)²
                                  2

// Taylor polynomial of degree 2 (specialized to √)
              1             1
T₂(x) = √a + ---- (x-a) - ----- (x-a)²
             2√a           8√a³

// 8 in 8√x³ is from division by 2
```

### 3. Pick the central point

Again, we are trying to calculate √10 by expressing the function `√x` as a Taylor series. We assume a second degree Taylor polynomial derived from that Taylor series will be sufficiently precise to estimate `√10`. We figured out a couple of derivatives of the `√x` function, revealing the general form of the Taylor polynomial of degree 2, specializing it in terms of our function, finally obtaining the function `T₂(x)`.

Now we need to pick the point `a`, which we already did, `a=9`. We are using a nearby value (9) to approximate the square root function of √10. Obviously, the two values are different: the difference between them is `|√10 - √9|`, so the value of √10 must be somehow compensated to get it near the correct value. That compensation is done by summing the derivatives of the sqare root function evaluated at `a`, the same as the `√x` function. In fact, the first term of `T₂` is the constant `f(x) = √a`.

We specialize the polynomial once again, now that we have decided that it should be centered at `a=9`.

```js
              1             1
T₂(x) = √9 + ---- (x-9) - ----- (x-9)²
             2√9           8√9³

             1            1
T₂(x) = 3 + ---- (x-9) - ---- (x-9)²
             6           216
```

### 4. Evaluate the arguments

Finally, we use the constructed polynomial function, applying it to the argument `x=10` in order to estimate `√10`.

```js
              1                1
T₂(10) = 3 + ---- (10 - 9) - ----- (10 - 9)²
              6               216

              1       1
T₂(10) = 3 + ---- - -----
              6      216

T₂(10) = 3 + 0.167 - 0.005

T₂(10) = 3.162
```

The result `√10 = 3.162` is an excellent approximation considering that the true value `3.1625112` is practically the same.

### 5. Doing it wrong

The above was the right way to do it; the wrong way would be to pick an `a` value that is too far from the argument. The larger the distance between the central point `a` and the argument, the higher the Taylor polynomial degree.

See what happens when we try to estimate this Taylor polynomial at the same argument, `x=10`, but the center point we've picked is far from it, way down at `a=1`.

We return to the step just before we accounted for the central value `a`:

```js
// Taylor polynomial of degree 2 (specialized to √)
               1             1
T₂(x) = √a + ----- (x-a) - ----- (x-a)²
              2√a           8√a³

// Now the center is at a=1
              1             1
T₂(x) = √1 + ---- (x-1) - ----- (x-1)²
             2√1           8√1³

             1            1
T₂(x) = 1 + ---- (x-1) - ---- (x-1)²
             2            8

// Eval it at arg x=10
              1             1
T₂(10) = 1 + ---- (10-1) - ---- (10-1)²
              2             8

              9      81
T₂(10) = 1 + ---- - ---- = -4.125
              2      8
```

This time, with a far away center, `a=1` wrt the argument, `x=10`, the result we get from a 2nd degree Taylor polynomial is absurd, `-4.125`. The problem is that we must use a higher-degree Taylor polynomial when the difference between `x` and `a` is relatively big. That is, we should keep adding terms until we get a Taylor polynomial that accurately approximates the function in light of all these different parameters.

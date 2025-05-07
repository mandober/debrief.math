# 4. Quadratics and Derivatives of Functions

## Introduction

We describe the standard structure of formulae that we use to describe functions, review the properties of quadratic functions, and introduce the notion of the derivative.
- 4.1 More Complicated Functions
- 4.2 The Slope of a Quadratic Function

## 4.1 More Complicated Functions

Differential calculus is about approximating more complicated functions by linear functions.

Most functions we discuss can be constructed by applying operations on the 3 basic functions, operations like
- addition
- subtraction
- multiplication
- division
- inversion (function inverse)
- composition (function composition)

The 3 *basic functions*
- identity function
- sine function
- exponential function

If we multiply copies of the identity function together, we get powers of it, like `x * x = x²` (square fn), or `x * x * x = x³` (cube fn), etc.

- *Monomial* is a function having a positive power multiplied by a const.
- *Polynomials* are obtained by adding or subtracting a number of monomials.

The simplest polynomials are the linear functions. Next, ordered by complexity, are *quadratic functions* that have the form, `ax² + bx + c`, where `a,b,c` are numbers called **coefficiants**. 

A polynomial consists of terms, and the term with the highest power determines the *degree of the polynomial*. The polynomial `ax² + bx + c` has degree 2.

Polynomials
- polynomials of degree 2: quadratic
- polynomials of degree 3: cubic
- polynomials of degree 4: quartic
- polynomials of degree 5: quintic
- polynomials of degree 6: septic

## 4.2 The Slope of a Quadratic Function

If we graph a quadratic function we get a curve. But if we zoom in far enough, the curve of the quadratic function starts to look like a line. A function `f` at a particular argument `z`, or close around it, will look like a line when we zoom in. In fact, the curve of `f` will resamble a particular kind of line called the tangent line. A tangent line is defined at a particular point of the curve of `f`. If certain conditions hold, every point on the curve can have a tangent line. The slope of the tangent line at point determined by arg `z` to the function `f` is called the *derivative* of `f` at `z`. 

The derivative (slope) has several equivalent notations
- f′(z)
- d/dz f(z)
- df(z)/dz
- df/dz

The tangent line to the function `f` at a specific argument is the graph of a linear function. That function is called the **linear approximation** to `f` at argument `z`.

The derivative function is a function different from `f`. Typically, it is only at `z` and very near `z` that the derivative (tangent line) approximates the function `f` with acceptable fidelity. Applying the function `f` to the arg `z` should give nearly the same result as applying `f′` to `z`, `f(z) ≈ f′(z)`. The result is also an acceptable estimate in a very small region around `z`.

```js
// applying original fn 'f' to 'z'
(f x)(z) = Z
// applying derivative of fn 'f' to 'z'
(f′ x)(z) = Z′
// very close to 'z', the two values are almost the same
Z ≈ Z′
```

This suggest that the derivative of the function, `f′(x)`, is a very good approximation of the original function `f`, at least in a very small region around a particular point. In that region, the derivative, being a tangent line to that point, looks almost the same as the function `f`, if we zoom close enough. This means that having a derivative of some function is sometimes enough to get sufficiently good estimates of its values near a specific point.

The same exact words can be used to define the derivative of any function, `f`, that looks like a straight line in some vicinity of argument `z`. The derivative of `f` at argument `z`, written `f′(z)` or `d/dz f(z)`, will be the slope of that (tangent) line.

We will next see how to find the derivative of a quadratic function, or any polynomial function given its formula.

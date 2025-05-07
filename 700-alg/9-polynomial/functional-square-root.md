# Functional square root

A *functional square root* (sometimes called a *half iterate*) is a square root of a function with respect to the operation of function composition. In other words, a functional square root of a function `g` is a function `f` satisfying `∀x. f(f(x)) = g(x)`. So, `f²(x) = f ∘ f = g(x)`? A function `f` which iterated twice behaves the same as `g`. So, in a sense, f is a "square root" of g.

Notations expressing that `f` is a functional square root of `g` is `f = g¹′²`, although this leaves the usual ambiguity with taking a function to a power in the multiplicative sense, like `f² = f ∘ f` may be misinterpreted as `x↦f(x)²`.

## Examples

- `f(x) = 2x²` is a functional square root of `g(x) = 8x⁴`
- A functional square root of the nth Chebyshev polynomial, `g(x)=Tₙ(x)`, is `f(x) = cos(√n arccos(x))`, which in general is not a polynomial.
- `f(x) = x/(√2 + x(1−√2))` is a functional square root of `g(x) = x/(2−x)`

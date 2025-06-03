# Indefinite sum

https://en.wikipedia.org/wiki/Indefinite_sum

In discrete calculus the **indefinite sum operator** (aka *antidifference operator*), denoted by `∑ₓ` or `Δ⁻¹` is the linear operator, inverse of the *forward difference operator* `Δ`. It relates to the forward difference operator as the indefinite integral relates to the derivative.

Thus, 

    Δ ∑ₓ f(x) = f(x)

More explicitly, if 

    ∑ₓ f(x) = F(x)

then

    F(x+1) − F(x) = f(x)

If `F(x)` is a solution of this functional equation for a given `f(x)`, then so is `F(x) + C(x)` for any periodic function `C(x)` with period 1. 

Therefore, each indefinite sum actually represents a family of functions. 

However, due to the *Carlson's theorem*, the solution equal to its *Newton series expansion* is unique up to an additive constant `C`. 

This unique solution can be represented by formal power series form of the antidifference operator:

    Δ⁻¹ = 1 / (eᴰ − 1)

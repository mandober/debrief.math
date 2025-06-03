# Epsilon-Delta Definition of a Limit

https://math.libretexts.org/Bookshelves/Calculus/Calculus_3e_(Apex)/01%3A_Limits/1.02%3A_Epsilon-Delta_Definition_of_a_Limit

https://brilliant.org/wiki/epsilon-delta-definition-of-a-limit/


## Epsilon-Delta Definition of a Limit

In calculus, the ε-δ definition of a limit is an algebraically precise formulation of evaluating the limit of a function.

>Informally, the definition states that a limit `L` of a function at a point `x₀` exists if no matter how `x₀` is approached, the values returned by the function will always approach `L`.

This definition is consistent with methods used to evaluate limits in elementary calculus, but the mathematically rigorous language associated with it appears in higher-level analysis. The ε-δ definition is also useful when trying to show the continuity of a function.

## Formal Definition of Epsilon-Delta Limits

>Limit of a function (ε-δ definition)
Let `f(x)` be a function defined on an open interval around `a`, 
but `f(a)` need not be defined. We say the limit of `f(x)`, 
as `x` tends to `a`, is `L`, `lim{x→a} f(x⁡) = L`, 
if for every `ε > 0` there exists `δ > 0` such that for all x, 
`0 < |x - a| < δ  ⟹  |f(x) - L| < ε`.

∀ε ∈ ℝᐩ. ∃δ ∈ ℝᐩ. ∀x ∈ ℝ. 
0 < |x - a| < δ  ⟹  |f(x) - L| < ε

In other words, the definition states that we can make values returned by the function as close as we would like to the value L by using only the points in a small enough interval around `a`.


One helpful interpretation of this definition is visualizing an exchange between two parties, Alice and Bob. 

First, Alice challenges Bob, "I want to ensure that the values of `f(x)` will be no farther than `ε > 0` from `L`".

If the limit exists and is indeed `L`, then Bob will be able to respond by giving her a value of `δ`, "If for all points `x`, x is within a δ-radius interval of `a`, then `f(x)` will always be within an ε-interval of `L`".

If the limit exists, then Bob will be able to respond to Alice's challenge no matter how small she chooses `ε`.

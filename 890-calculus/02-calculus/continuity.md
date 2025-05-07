# Continuity

## Summary

Discontinuous functions
- hole (undefined domain element)
- jump (redefined domain element, usually with piecewise fns)
- asymptote (vertical asymptote, due to division by 0)

Discontinuity
- removable
- non-removable
- discontinuity ⇒ non-differentiability

Continuous functions
- continuous everywhere
- continuous everywhere where defined
- continuous nowhere

Differentiable functions
- continuity ⇒ differentiability
- differentiable everywhere
- non-differentiable
- continuous everywhere, differentiable nowhere (!)

Examples
- `sin`, `x²`, `x³` continuous
- `1/(x-1)`         discontinuous due to vertical asymptote at x=1
- `(x²-1)/(x-1)`    discontinuous due to hole at x=1
- `sg(x-1.5)`       discontinuous due to jump at x=1.5


A discontinuous function may be made continuous if we restrict its domain. For example, the function `(x²-1)/(x-1)` is discontinuous due to hole at x=1, but if the domain is restricted to `x > 1`, then it is continuous; or, if the domain is restricted to `x < 1`. If we define it piecewise, so its domain is a union over the defined intervals, (-∞, 1) ∪ (1, ∞), it won't be continuous as it will be undefined at x=1 still.



## Informally

A function f(x) is continuous if `f(c) = lim{x→c} f(c)`, i.e. if the value of the function at some point `c` is the same as the limit of that function at that point `c`. The conditions that the value exists, i.e. that it is not undefined, at a point, and that the limit exists at that point are subsumed by this, overall, condition (since undefined ≠ DNE, i.e. undefined for value of f(x) is not the same as the limit of the function not existing at that point - it's sufficient that `f(c) = lim{x→c} f(c)` for the function to be continuous at that point). If the function is continuous everywhere we say it is *everywhere continuous*. A function can also be *continuous nowhere*. Or just non-continuous (discontinuous), although there are different kinds of discontinuity: jump discontinuity (due to a hole), discontinuous due to a horizontal or vertical asymptote. In general, discontinuity is removable or non-removable.

For an example of a *removable discontinuity*, fn `f(x) = (x²-1) / (x-1)`, is undefined at x=1, which makes it discontinuous at that point. But we can refactor the function into `f(x) = x+1`; however, we still have to exclude `x≠1` from the domain, so we say it is continuous on the inteval (-∞,1) ∪ (1,∞).

A *non-removable discontinuity* cannot be removed, i.e. we cannot refactor the function to make it continuous at the offending point, e.g. the function `f(x) = x / (x-1)` has non-removable discontinuity at x=1. Also, the function `f(x) = 1/x`, which has a non-removable discontinuity due to a vertical asymptote at x=0, so it is continuous on the inteval (-∞,0) ∪ (0,∞).

Piecewise functions are excellent for introducing non-removable discontinuity.

Some functions have 2 discontinuous points, like at ±2, and sometimes one point is a non-removable, while the other is a removable discontinuity.

The function `f(x) = √(x + 7)` is actually *continuous everywhere it is defined*, and it is defined only when `x ≥ -7`, because taking a root of negative numbers is undefined; i.e. it is continuous on the interval (-7, ∞).


## Formally

A continuous function is a function such that a small variation of the argument induces a small variation of the value of the function. This implies there are no abrupt changes in value, known as discontinuities. More precisely, a function is continuous if arbitrarily small changes in its value can be assured by restricting to sufficiently small changes of its argument. A discontinuous function is a function that is not continuous. Until the 19th century, mathematicians largely relied on intuitive notions of continuity and considered only continuous functions. The epsilon-delta definition of a limit was introduced to formalize the definition of continuity.

Continuity is one of the core concepts of calculus and mathematical analysis, where arguments and values of functions are real and complex numbers. The concept has been generalized to functions between metric spaces and between topological spaces. The latter are the most general continuous functions, and their definition is the basis of topology.

A stronger form of continuity is uniform continuity. In order theory, especially in domain theory, a related concept of continuity is Scott continuity.

As an example, the function H(t) denoting the height of a growing flower at time t would be considered continuous. In contrast, the function M(t) denoting the amount of money in a bank account at time t would be considered discontinuous since it "jumps" at each point in time when money is deposited or withdrawn.



## Links

https://en.wikipedia.org/wiki/Continuous_function
https://www.mathsisfun.com/calculus/continuity.html

# Weak primitive recursion

- The definition of primitive recursion can be weakened by removing the implicit predecessor from the recursion rule.
- Even weakened primitive recursion still defines PRFs.


## Weak primitive recursion

The unary predecessor function is primitive recursive. Fischer, Fischer & Beigel removed the *implicit predecessor* from the *recursion rule*, replacing it by the weaker rule:

$${\displaystyle {\begin{array}{lcl}f(0,x_{1},\ldots ,x_{k})&=&g(x_{1},\ldots ,x_{k})&{\text{and}}\\f(S(y),x_{1},\ldots ,x_{k})&=&h(S(y),f(y,x_{1},\ldots ,x_{k}),x_{1},\ldots ,x_{k})\end{array}}}$$

They proved that the predecessor function still could be defined, and hence that *weak primitive recursion* also defines the PRFs.

The difference between the "regular" and "weak" PR is only in the first arg to `g` (on the rhs of the rec case): instead of `y` (like in the regular PR), in weak PR it is `S(y)`. Normally, the `y` signifyies the predecessor of the first arg on the lhs, albeit it has the form `S(y)` there; in fact, `S(y)` on the lhs stands for the *current value* of the (first) arg over which we recurse; and `y` (on the rhs) stands for the value that arg had *in the previous step*.

However, in both normal and weak case of PR, the second argument to `g` is still `h(y,x̅)`, i.e. `y` is in the predecessor form there (so it might as well been in this form in the first arg to `g`?!).


```hs
x̅ = x₁, …, xₖ

h(  0, x̅) = f(x̅)               -- base case: same for all
h(S y, x̅) = g(  y, h(y,x̅), x̅)  -- rec case: (1) primitive recursion
h(S y, x̅) = g(S y, h(y,x̅), x̅)  -- rec case: (2) weak primitive recursion
h(S y, x̅) = g(     h(y,x̅), x̅)  -- rec case: (3) iteration


-- primitive recursion
h(  0, x̅) = f(x̅)
h(S y, x̅) = g(y, h(y,x̅), x̅)
--            ↑
--           difference

-- weak primitive recursion
h(  0, x̅) = f(x̅)
h(S y, x̅) = g(S y, h(y,x̅), x̅)
--            ↑
--           difference
```

# Introduction to limits

https://www.mathsisfun.com/calculus/limits.html

Sometimes we cannot work out the value of a function directly, but we can see what happens as we get closer and closer to the problematic value

Consider the function `g` defined as `g(x) = (x²-1)/(x-1)`, and explore what happens when its argument is `x=1`. Let's plug it in

```js
       x² − 1   1² − 1    0
g(1) = ------ = ------ = ----
       x −  1   1 -  1    0
```

Division by zero immediately disqualifies the input at 1 and places a restriction on `x=1`; this input must be excluded from the domain of `g`. If `g` had started as a function type `g : ℝ → ℝ`, we must now attach a *sidecar condition* that `x≠1`. The domain of `g` was `ℝ`, but now we must demote its domain to `ℝ ∖ {1}`. However, this fact is not recorded in the function type signature, but mentioned as a side condition. So the type remains `g : ℝ → ℝ`.

Restating: Let `g : ℝ → ℝ` be a function defined by `g(x) = (x²-1)/(x-1)` such that `x ≠ 1`.

The fact that the type is not altered in the type signature itself is curious and quite typical. Even the integer division says nothing in the function type, `div : ℤ → ℤ`, delegating the division-by-zero warning to a side condition. In truth, the type like `f : ℝ → ℝ∖{1}` is more honest and immeditely tells us what to expect.

The fact that nominator is also 0 when x=1 is of no concern to us since that is well-defined. Moreover, the fact that the defining equation of `g` may be reduced down to `x + 1` during evaluation, thereby completely getting rid of the denominator, *does not change the fact that `x` must not be 1*. That is how `g` was defined, so it can't be helped. In other words, another function `f` defined by `f(x) = x + 1`, would be practically the same as `g`, save for the restricted domain. (well, and if both had the same type, like `f,g : ℝ → ℝ`). In fact the domain of `g` would remain 


Since `0/0` is what is called an *indeterminate form*, we need an alternative approach. Instead of trying to plug in `x=1` directly, let's see what output obtains as we get closer and closer to `x=1`, but avoid setting x to 1.
- a = 1
- L = 2

x       | f(x)    | x - a    | f(x) - L
--------|---------|----------|----------
0.5     | 1.5     | -0.5     | -0.5
0.9     | 1.9     | -0.1     | -0.1
0.99    | 1.99    | -0.01    | -0.01
0.999   | 1.999   | -0.001   | -0.001
0.9999  | 1.9999  | -0.0001  | -0.0001
0.99999 | 1.99999 | -0.00001 | -0.00001
1.01    | 2.01    |  0.01    |  0.01
1.001   | 2.001   |  0.001   |  0.001
1.0001  | 2.0001  |  0.0001  |  0.0001
1.00001 | 2.00001 |  0.00001 |  0.00001
-10     | -9      |  11      | 11



As input `x` gets closer to 1, the output `y` gets closer to 2. The function is NOT defined for `x=1`, still the output seems to approach a definitive value, `y=2`, as we get arbitrarily close to the problematic input value.

That output approaches the value 2 as input approaches vlaue 1 is also confirmed by a related function, `f(x) = x + 1`, which is viretually the same as the one above, except for the restricted domain due to the problematic input at x = 1. The function `f` can be shown to be derivable from the previosu one:

```js
x² − 1   (x + 1)(x - 1)
------ = -------------- = x + 1
x − 1        x - 1
```

This confirms that at input x=1, the value of output is y=2 (it is just the succ function).

Although these two functions are very similar, we must never forget they are not the same. The restricted domain is no funny bussines, it must be respected.

We'd like to give the answer "2" but can't, so instead mathematicians say exactly what is going on by using the special word "limit".

So it is a special way of saying, "ignoring what happens when we get there, but as we get closer and closer the answer gets closer and closer to 2"



https://www.mathsisfun.com/calculus/limits.html
https://www.mathsisfun.com/calculus/limits-infinity.html
https://www.mathsisfun.com/calculus/limits-evaluating.html
https://www.mathsisfun.com/calculus/limits-formal.html
https://www.mathsisfun.com/calculus/l-hopitals-rule.html
https://www.mathsisfun.com/calculus/continuity.html

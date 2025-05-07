# 2. Derivative - instantaneous rate of change

https://www.whitman.edu/mathematics/calculus_online/chapter02.html

## 2.1 The slope of a function

It is often necessary to know how sensitive the value (i.e. the output `y`) of a function is to small changes in input `x`, considering a function `y = f(x)`.

In the case of a straight line `y=mx+b`, the slope `m=Δy/Δx` measures the change in `y` per unit change in `x`. This can be interpreted as a measure of "sensitivity". For example, if y=100x+5, a small change in x corresponds to a change one hundred times as large in y, so y is quite sensitive to changes in x.

We want to see if the change in input results in as big of a change in the output (x ≈ y), smaller (x >> y) or larger (x << y).

Considering a function for the upper semicircle, `y = √(625 + x²)`, at x=7, y=24. Then at x=7.1, y=−0.0294. So a small change in x resulted in a not so big a change in y (about a third of x). This means that y changes by less than one third the change in x, so apparently y is not very sensitive to changes in x at x=7.

One way to interpret the above calculation is by reference to a line. We have computed the slope of the line through (7,24) and (7.1,23.9706), called a *chord* of the circle. In general, if we draw the chord from the point `(7, 24)` to a nearby point on the semicircle `(7+Δx, f(7+Δx))`, the slope of this chord is the so-called *difference quotient*.

```
slope of the chord:

f(7 + Δx) − f(7)   -24 + √(625 − (7 + Δx)²)
---------------- = ------------------------
      Δx                      Δx
```

For example, if x changes only from 7 to 7.01, then the difference quotient (slope of the chord) is approximately equal to (23.997081−24)/0.01=−0.2919. This is slightly less steep than the chord from (7,24) to (7.1,23.9706).

As `Δx` gets smaller and smaller, the slope `Δy/Δx` of the chord gets closer and closer to the slope of the *tangent line*.

Doing some algebra without using a specific value for x, gives `−x/√(625−x²)`. So now we have a single, simple formula, `−x/√(625−x²)`, that tells us the slope of the tangent line for any value of x. This slope, in turn, tells us how sensitive the value of y is to changes in the value of x.

Starting with one function, `√(625−x²)`, we have derived, by means of some slightly nasty algebra, a new function, `−x/√(625−x²)`, that gives us important information about the original function. This new function in fact is called the *derivative* of the original function. If the original is referred to as `f` or `y` then the derivative is often written `f′` or `y′` and pronounced "f prime" or "y prime".

To summarize, we compute the derivative of `f(x)` by forming the *difference quotient*

    f(x + Δx) − f(x)
    -----------------           (2.1.1)
            Δx

which is the slope of a line, then we figure out what happens when `Δx` gets very close to 0.

Note that in the particular case of a circle, there is a simpler way to find the derivative. Since the tangent to a circle at a point is perpendicular to the radius drawn to the point of contact, its slope is the negative reciprocal of the slope of the radius. The radius joining (0,0) to (7,24) has slope 24/7. Hence, the tangent line has slope −7/24.

Note: perpendicular lines have slopes `m₁` and `m₂` such that `m₂` is the opposite receiprocal of `m₁`, `m₂ = -1/m₁`; e.g. -2 and 1/2, 1/4 and -4.

As one might expect, for different values of `x` we generally get different values of the derivative `f′(x)`. But the case when the slope is always constant is that of a line; it seems odd to talk about the tangent line to a line, but the tangent line is the line itself. So `f(x) = mx+b` is `f′(x) = m`.

## 2.3 Limits

>Limit: definition
Suppose `f` is a function. We say that `lim{x→a} f(x) = L` if for every `ϵ > 0` there is a `δ > 0`, so that whenever `0 < |x − a| < δ`, `|f(x) − L| < ϵ`.

The `ϵ` and `δ` here play exactly the role they did in the preceding discussion. The definition says, in a very precise way, that `f(x)` can be made as close as desired to `L` (that's the `|f(x)−L|<ϵ` part) by making `x` close enough to `a` (the `0< |x−a|<δ` part). Note that we specifically make no mention of what must happen if `x=a`, that is, if `|x−a| = 0`. This is because the cases we are most interested in, substituting `a` for `x`, doesn't make sense.

Let's show that `lim {x→2} (x+4) = 6`. As is often the case in mathematical proofs, it helps to work backwards. We want to end up showing that under certain circumstances `x+4` is close to 6; we want to show that `|x+4−6|<ϵ` or `|x−2|<ϵ`. Under what circumstances? We want this to be true whenever 
`0 < |x−2| < δ`. So the question becomes: can we choose a value for `δ` that guarantees that `0 < |x−2| < δ` implies `|x−2| < ϵ`? Of course: no matter what `ϵ` is, `δ = ϵ` works.

*One-sided limit*. Suppose that `f(x)` is a function. We say that 
`lim{x→a} −f(x) = L` if for every ϵ > 0 there is a δ > 0 so that whenever 
`0 < a−x < δ`, `|f(x) − L| < ϵ`. We say that `lim {x→a} f(x) = L` if for every `ϵ>0` there is a `δ>0` so that whenever `0 < x−a < δ`, `|f(x) − L| < ϵ`.

```c
Let
      lim{x→a} f(x) = L
      lim{x→a} g(x) = M
      constant k
Then

lim{x→a} (k ⋅ f x) = k ⋅ lim{x→a} f x = k ⋅ L                           (1)

lim{x→a} (f x + g x) = lim{x→a} f x + lim{x→a} g x = L + M           (2)

lim{x→a} (f x - g x) = lim{x→a} f x - lim{x→a} g x = L - M           (3)

lim{x→a} (f x ∙ g x) = lim{x→a} f x ∙ lim{x→a} g x = LM             (4)

lim{x→a} (f x / g x) = lim{x→a} f x / lim{x→a} g x = L/M  (for M≠0)  (5)

          f x     lim{x→a} f x     L
lim{x→a} ----- = ------------ = ----       (for M≠0)              (5)
          g x    lim{x→a} g x     M


(2) - (5) can be summerized as: 

     lim{x→a} (f x ❋ g x) =
    = lim{x→a} f x ❋ lim{x→a} g x
    = L ❋ M
              where ❋ = {+, -, ×, ÷}


// Composition (6):
  if    lim{x→a} g(x) = L
 and    lim{x→L} f(x) = f(L)
then    lim{x→a} f ∘ g  = f(L)
```



## 2.4 The Derivative Function

The derivative of a function `f`, denoted `f′`, is
```
          lim  f(x + Δx) − f(x)            lim   Δy                    df(x)
f′(x) = {Δx→0} ----------------     y′ = {Δx→0} -----   f′(x) = {Δx→0} ------
                      Δx                         Δx                      dx
```

Example. Find the derivative of `f(x) = x²`.

```
f′(x) = lim{Δx→0} Δy/Δx
f′(x) = lim{Δx→0} [ f(x + Δx) - f(x) ] / Δx
f′(x) = lim{Δx→0} [ (x + Δx)² - x² ] / Δx
f′(x) = lim{Δx→0} [ x² + 2Δx + Δx² - x² ] / Δx
f′(x) = lim{Δx→0} [ 2Δx + Δx² ] / Δx
f′(x) = lim{Δx→0} [ Δx(2 + Δx) ] / Δx
f′(x) = lim{Δx→0} [ 2 + Δx ]
f′(x) = lim{Δx→0} 2 + lim{Δx→0} Δx
f′(x) = 2 + 0
f′(x) = 2
```


Sometimes one encounters a point in the domain of a function y=f(x) where there is no derivative, because there is no tangent line.

>No tangent line - no derivative.

In order for the notion of the tangent line at a point to make sense, the curve must be *continuous* at that point. There are two types of situations we should be aware of - corners and cusps - where there is a sudden change of direction, and hence, no derivative.

### The derivative of the absolute value function

Consider, for example, the function `f(x) = |x|` and its derivative. 
- if `x > 0` then this is the function y = x whose derivative is constant 1
- if `x < 0` this is the `y = −x` whose derivative is −1
- if `x = 0` then the function has a corner, i.e. there is no tangent line. A tangent line would have to point in the direction of the curve - but there are two directions of the curve that come together at the origin. We can summarize this as:

         ⎛ 1             if x > 0
    y′ = ⎨ -1            if x < 0
         ⎝ undefined     if x = 0

In fact there is a hole at (0, 1) and (0, -1) where the derivative is undefined; it seems this should be the same hole (split in two), since it is where x=0, but one hole for each derivative line.

The graph of the derivative function (of `y = |x|`) has two lines:
- one that goes from -∞ to 0 on x-axis and intersects y-axis at -1, i.e. for any x < 0 it gives -1; but the point (0,-1) is excluded - it is a hole.
- another line that goes from 0 to ∞ on x-axis and intersects y-axis at 1, i.e. for any x > 0 it gives 1; but the point (0,1) is excluded - it is a hole.

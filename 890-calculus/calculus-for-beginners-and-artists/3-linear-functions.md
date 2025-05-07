# Linear functions

https://math.mit.edu/~djk/calculus_beginners/chapter03/section03.html

## Terms

- line equation
- slope-intercept form
- slope
- y-intercept
- linear function
- homogeneous linear function
- linearity
- (when b = 0)    f(ax + bz) = a f(x) + b f(z)
- (when b = 1-a)  f(ax + (1 − a) z) = a f(x) + (1 − a) f(z)


## Linear functions

A **linear function** is a function whose graph is a (straight) line, defined by stating its slope (`m`) and y-intercept (`b`) in the equation `y = mx + b`.


## Linearity

**Homogeneous linear functions** are linear functions whose y-intercept is 0, i.e. `b = 0`, (e.g. functions like `3x`, or `5x`). These functions are defined by the equation `y = mx + 0` so `y = mx`. Their graph passes right through the origin. They have a property that their values at any combination of two args is the same combination of their values at those args, that is

    f(ax + bz) = a f(x) + b f(z)                    (1)

Linear functions, in general, have this property *but only when* `b = 1 − a`. Thus, for any linear function we have that

    f(ax + (1 − a) z) = a f(x) + (1 − a) f(z)          (2)

Be careful: linear functions that are not homogeneous (i.e. when `b≠0`) do not obey the linearity property (1).


- linear functions
- when `b = 0`
  - when y-intercept is 0, they are called *homogeneous linear functions*
  - defined by equation: `y = mx + 0`, i.e. `y = mx`
  - they have property: `f(ax + bz) = a f(x) + b f(z)`
- when `b = 1 - a`
  - defined by equation: `y = mx + b`, thus `y = mx + (1 - a)`
  - they have property: `f(ax + (1 − a) z) = a f(x) + (1 − a) f(z)`
- when `b` is anything else
  - defined by equation `y = mx + b`
  - this line equation is in slope-intercept form

```hs
b ∈ ℚ     y = mx + b
b = 0     y = mx + 0       f(ax + bz) = a f(x) + b f(z)
b = 1-a   y = mx + (1-a)   f(ax + (1 − a) z) = a f(x) + (1 − a) f(z)

f(ax +   b   z) = a ⋅ f(x) +   b   ⋅ f(z)
f(ax + (1−a) z) = a ⋅ f(x) + (1−a) ⋅ f(z)


f(ax + (1 − a)z) = af(x) + (1 − a)f(z)
f(ax + z − az) = a f(x) + f(z) − a f(z)
f(ax − az + z) = a f(x) − a f(z) + f(z)
f(a(x − z) + z) = a (f(x) − f(z)) + f(z)



f(ax + bz) = af(x) + bf(z)     …but
f(ax + 0z) = af(x) + 0f(z)     …since b=0
f(ax) = af(x)                  …we get this
```

Either one of these conditions allows you to calculate the value of `f` at any `y` given its value at `x` and `z`.

If     `y  =  z   + a (   x  −   z  )`    
then `f(y) = f(x) + a ( f(x) − f(z) )`.

Properties like these mean that once you know the value of a linear function at two args, you can easily find its value anywhere else it is defined.

The property described is sometimes called the **property of linearity**. This is not always a good description because linear functions with non-zero y-intercept do not satisfy the more general version of the property (1). Non-linear functions satisfy neither property.

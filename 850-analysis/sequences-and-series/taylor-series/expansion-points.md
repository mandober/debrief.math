# Expansion Points of Taylor series

## Intro

A Tailor series provides an excellent approximation for a function near 0. More precisely, A Tailor series approximates a function accurately only in a certain interval around 0, called the *interval of convergence* (IOC). Zero is the *point of convergence*, i.e. the central point around which the IOC spans in both direction. The magnitude of that value is called the *radius of convergence*, `r`. Thus, the IOC is from `0-r` to `0+r`, which may also be expressed as `|x| < r` or `-r < x < r`, or using the interval notation as `[-r, r]` or possibly `(-r, r)`.

So, with zero at the center, the interval (of convergence) in which the Taylor series behaves exactly as the function it is trying to approximate, is determined by a radius (of convergence) `r`.

The central point of convergence is represented by the variable `a`, although for now `a` was always 0, `a=0`. Zero is useful as the central point for many functions. In fact, *Maclaurin series* is just a Taylor series centered at 0.

This suggests that the central point need not be 0 for Taylor series, meaning we can use other points as well, which is fortunate since 0 is not always the primary point of interest - we might be more interested in finding an approximation for some function around a different point. In any case this point of convergence is denoted by `a`. And the radius of convergence by `r`. So, generally an IOC is determined by `r` and centered around `a`, `(a-r, a+r)`.

Now we consider changing the expansion point `a` which leads us to a broader definition and interpretation of Taylor series.

# Expansion Points

A Tailor series provides an excellent approximation of a function but only near zero. However in many applications zero is not the most interesting input.

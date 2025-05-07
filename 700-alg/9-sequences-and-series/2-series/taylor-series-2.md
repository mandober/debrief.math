# Taylor Series

https://www.youtube.com/watch?v=XLhUGraboSw&list=PLKc2XOQp0dMwj9zAXD5LlWpriIXIrGaNb&index=10

## Taylor series summary

Ingeredients, so far:
- `f(x)` is a function we want to approximate by its Taylor series, `Sᶠ`, usually defined using sigma notation. Taylor series are power series, so we get a sequence of terms starting with a constant (0) or a linear term (1), then quadratic (2), cubic (3), quartic (4), quintic (5), and higher-order terms (powers). These terms have `x` raised to a power, e.g. `1 + x + x² + x³ + …`. The first term, here 1, means `1x⁰` (0th power), the second term, here `x` means `1x¹`. Usually each term has a specific coefficient, `cᵢ`, so a power series is generally, `c₀x⁰ + c₁x¹ + c₂x² + …` i.e. `c₀ + c₁x + c₂x² + …`.






The expansion of a Taylor series gives an excellent approximation of a function for inputs near 0. Broadly, a Taylor series gives excellent approximation of a function within particular *domain of convergence* (DOC). Most functions and their representation as Taylor series have no restriction on the DOC, i.e. it is the whole ℝ. However, Taylor series based on a *geometric progression*, `1/(1-x)` have restricted DOC to only an interval where `|x| < 1`, i.e. input `x` must be in the inteval from -1 to 1 for the series to converge. This also goes for `ln(x)`, `arctan(x)` and binomial series, `(1+x)ⁿ`.

For functions whose Taylor series has unrestricted DOC, the entire function (e.g. `sin(x)`) can be represented accurately by expanding infinitely many terms of the corresponding Taylor series. The first term typically only gives a line that may match the target function within a tiny interval. By expanding another terms of the series (which are summed), we get a quadratic equation that, e.g. for `sin(x)`, already matches for the interval (-π/2, π/2). Expanding another term gives a cubic polynomial which accurately mimics the `sin` function within a broader interval. The more terms we expand we get the exact representation for `sin` function inside a particular (growing) interval. Inside the interval the function is precisely represented, but even a little outside it the approximation diverges dramatically from the targeted function.

These approximation obtained by expanding the corresponding Taylor series all start from 0 that is used as a point of convergence. The intervals in which the function is acurately represented grow on both sides of 0. However, 0 is not always the most interesting point of convergence (i.e. interesting input). Sometimes we'd like to have these intervals grow around another point - and that point is typically denoted by `a`. So, normally `a=0`, but now we want to set an arbitrary value as `a`. The value of `a` (`a` is an x-value, an input value) determines the radius of convergence (ROC), such that `|x| < a`.

The approximation of a function via its Taylor series is only faithful within a particular *interval of convergence*, `I`. Normally and with Maclaurin series, the IOC spans in both direction (on the number line) from the central point which is 0; so, the IOC is centered at 0. A *Maclaurin series* is just a Taylor series centered at 0. A lot of interesting functions use 0 as the central point of expansion of the IOC. The more terms we expand the more the IOC grows (in both directions).



which suggest that a Taylor series may have another point as the central point of expansion (point of convergence).

that is centered at `0` and has a particular *radius of convergence*, `r`. The IOC is then from `0-r` to `0+r`, i.e. `|x| < r` or `-a < x < a`.


- `x` is an input value, `x ∈ dom(f)`
- `I` interval of convergence
- radius of convergence
- domain of convergence
- `a` is the expansion point (point of convergence), `a ∈ dom(f)`

domain of of convergence

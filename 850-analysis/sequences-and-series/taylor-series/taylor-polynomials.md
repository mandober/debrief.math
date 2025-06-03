# Taylor polynomials

https://www.youtube.com/watch?v=3d6DsjIBzJ4

Functions are not as easy to work with as functions that can be expressed as polynomials. Polynomials are very convenient for manipulation, computation, differentiation and integration, as these operations can be done on a term by term basis. It turns out that many functions can be represented by polynomials, in particular by Taylor polynomials. A Taylor polynomial can represent and approximate a function near a certain point.

Finding polynomials that approximate non-polynomial functions using Taylor series over some interval with some input point at the center.

We have a function that has no polynomial form, and we want to express it as a polynomial because that allows for easier manipulation of that function.

Taylor series is an infinite series of terms. Considering only a finite number of terms we get a Taylor polynomial of some degree `n`, aka *n-th degree Taylor polynomial*, that can approximate the function very accurately but only over a certain interval, called the *interval of convegence* (IOC). This interval is centered at the point called *the center of the series*, and a *radius of convegence* (ROC) determines the span of the interval in both directions from that central point. *Maclaurin series* is a Taylor series that is always centered at 0 (as 0 is one of the most interesting points). Taylor series is more general then Maclaurin series as it can be centered about an arbitrary point.

Taylor polynomials are thus partial sums of a Taylor series. The underlying series is a power series so it involves variable `x` raised to some power. In fact, each term in a Taylor series is identified by the power to which `x` is raised, so we talk about e.g. 2nd degree Taylor polynomial in which `x²` occurs.

Taylor polynomials are very precise in approximating functions but only withing the interval of convegence do they give accurate results. Commonly, immediately after the IOC, the curve of a Taylor polynomial starts to diverge wildly from the curve of the modelled function. However, inside the IOC, the approximation is incredibly preceise. To extend the IOC, more terms can be considered in the partial sum that constitutes a Taylor polynomial. In the extreme, if we consider the infinity of terms, we get a Taylor series that approximates the function completely accurately everywhere.

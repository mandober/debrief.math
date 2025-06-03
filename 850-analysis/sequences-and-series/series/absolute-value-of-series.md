# Absolute value

## Absolute value of a series

The absolute value of a series is a new series derived from the original series by taking the absolute value of each term of the orignal series. So we get a derived series consisting of all positive terms. The terms of the original series are thus considered only for their magnitude, ignoring their sign, but still assembling them into a summation. 

This "procedure" is usually done in order to discard from the formula the subexpression that controls the sign of terms, i.e. `(-1)ⁿ` aka *sign control*. This may be desirable when we want to manipulate the formula further and do not want to deal with the sign control subexpression.

The absolute value of a series can also be obtained by converting a series back to the sequence (which uses comma as a delimiter of terms), then make a new series based on it. Come to think of it, this plan blows since terms of a sequence can be negative, and it is exactly the negative terms that give rise to using minus sign, rather then plus, as a term-joiner in the derived series.


Given an (alternating) series

    Σaₙ = a₀ - a₁ + a₂ - a₃ + a₄ - a₅ + ⋯

its *absolute value* is a series derived from it by swapping the sign of all negative terms, such that we get a series in which all terms are joined by the plus sign. Operationally, this is done by taking the absolute value of each term in the series:

    Σ|aₙ| = |a₀| + |a₁| + |a₂| + |a₃| + |a₄| + |a₅| + ⋯

The relation between a series and its absolute value, especially in terms of convergence, is used in some tests of convergence of series. These test try to establish a connection between the convergence of a series and the convergence of its absolute value (and v.v.).

## Absolute value of a sequence

The absolute value of a sequence is not used as often as that of a series, but it (probably) follows the same principle: turn negative into positive terms by taking the absolute value of each term. That way, we get to consider terms only for their magnitude, disregarding the sign.

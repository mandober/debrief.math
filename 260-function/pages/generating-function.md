# Generating function

https://en.wikipedia.org/wiki/Generating_function

A **generating function** is a way of encoding an infinite sequence of numbers (aₙ) by treating them as the coefficients of a formal power series. This series is called the generating function of the sequence. Unlike an ordinary series, the formal power series is not required to converge - in fact, the generating function is not actually regarded as a function, and the "variable" remains an indeterminate.

Generating functions were first introduced by Abraham de Moivre in 1730, in order to solve the general linear recurrence problem. One can generalize to formal power series in more than one indeterminate, to encode information about infinite multi-dimensional arrays of numbers.

Types of generating functions include
- Ordinary generating function (OGF)
- Exponential generating function (EGF)
- Lambert series
- Bell series
- Dirichlet series generating functions (DGFs)
- Poisson generating function
- Polynomial sequence generating functions

In principle, every sequence has a generating function of each type, but the ease with which they can be handled may differ considerably. The particular generating function, if any, that is most useful in a given context will depend upon the nature of the sequence and the details of the problem being addressed.

Generating functions are often expressed in closed form (rather than as a series), by some expression involving operations defined for formal series. These expressions, in terms of the indeterminate `x`, may involve arithmetic operations, differentiation with respect to `x` and composition with (i.e. substitution into) other generating functions; since these operations are also defined for functions, the result looks like a function of `x`.

Indeed, the closed form expression can often be interpreted as a function that can be evaluated at (sufficiently small) concrete values of `x`, and which has the formal series as its series expansion; this explains the designation "generating functions". 

However such interpretation is not required to be possible, because formal series are not required to give a convergent series when a nonzero numeric value is substituted for `x`. Also, not all expressions that are meaningful as functions of `x` are meaningful as expressions designating formal series; for example, negative and fractional powers of `x` are examples of functions that do not have a corresponding formal power series.

*Generating functions are not functions in the formal sense of a mapping from a domain to a codomain*. Generating functions are sometimes called generating series, in that a series of terms can be said to be the generator of its sequence of term coefficients.

## Contents

- 1. Definitions
  - 1.1 Ordinary generating function (OGF)
  - 1.2 Exponential generating function (EGF)
  - 1.3 Poisson generating function
  - 1.4 Lambert series
  - 1.5 Bell series
  - 1.6 Dirichlet series generating functions (DGFs)
  - 1.7 Polynomial sequence generating functions
- 2. Ordinary generating functions
  - 2.1 Examples of generating functions for simple sequences
  - 2.2 Rational functions
  - 2.3 Operations on generating functions
    - 2.3.1 Multiplication yields convolution
    - 2.3.2 Shifting sequence indices
    - 2.3.3 Differentiation and integration of generating functions
    - 2.3.4 Enumerating arithmetic progressions of sequences
  - 2.4 P-recursive sequences and holonomic generating functions
    - 2.4.1 Definitions
    - 2.4.2 Examples
    - 2.4.3 Software for working with P-recursive sequences
    - 2.4.4 Software for working with holonomic generating functions
  - 2.5 Relation to discrete-time Fourier transform
  - 2.6 Asymptotic growth of a sequence
    - 2.6.1 Asymptotic growth of the sequence of squares
    - 2.6.2 Asymptotic growth of the Catalan numbers
  - 2.7 Bivariate and multivariate generating functions
  - 2.8 Representation by continued fractions (Jacobi-type J-fractions)
    - 2.8.1 Definitions
    - 2.8.2 Properties of the hth convergent functions
    - 2.8.3 Examples
- 3. Examples
  - 3.1 Ordinary generating function
  - 3.2 Exponential generating function
  - 3.3 Lambert series
  - 3.4 Bell series
  - 3.5 Dirichlet series generating function
  - 3.6 Multivariate generating functions
- 4. Applications
  - 4.1 Various techniques: Evaluating sums, problems with generating functions
    - 4.1.1 Example 1: A formula for sums of harmonic numbers
    - 4.1.2 Example 2: Modified binomial coefficient sums and the binomial transform
    - 4.1.3 Example 3: Generating functions for mutually recursive sequences
  - 4.2 Convolution (Cauchy products)
    - 4.2.1 Example: The generating function for the Catalan numbers
    - 4.2.2 Example: Spanning trees of fans and convolutions of convolutions
  - 4.3 Implicit generating functions and the Lagrange inversion formula
  - 4.4 Introducing a free parameter (snake oil method)
  - 4.5 Generating functions prove congruences
    - 4.5.1 The Stirling numbers modulo small integers
    - 4.5.2 Congruences for the partition function
  - 4.6 Transformations of generating functions
  - 4.7 Other applications
- 5. Other generating functions
  - 5.1 Examples
  - 5.2 Convolution polynomials
  - 5.3 Tables of special generating functions


## Definitions

### Ordinary generating function

The ordinary generating function (OGF) of a sequence `a ₙ` is

`G(a ₙ ; x) = Σ {n=0 .. ∞} a ₙ xⁿ`

When the term "generating function" is used without qualification, it is usually taken to mean an ordinary generating function.

If `aₙ` is the probability mass function of a discrete random variable, then its ordinary generating function is called a probability-generating function.

The ordinary generating function can be generalized to arrays with multiple indices. For example, the ordinary generating function of a two-dimensional array `aₘ,ₙ` (where `n` and `m` are natural numbers) is

`G(a ₘ,ₙ ; x,y) = Σ {m,n=0 .. ∞} aₘ, ₙ xᵐyⁿ`

## Exponential generating function

The exponential generating function (EGF) of a sequence `aₙ` is

`EG(a ₙ ; x) = Σ {n=0 .. ∞} a ₙ xⁿ/n!`

Exponential generating functions are generally more convenient than ordinary generating functions for combinatorial enumeration problems that involve labelled objects.

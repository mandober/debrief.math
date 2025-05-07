# Generating function

A **generating function** is a representation of an *infinite sequence* as the *coefficients* of a formal *power series*.

Generating functions are often expressed in *closed form* (rather than as a series), by some expression involving operations on the formal series.

There are various types of generating functions, including
- ordinary generating functions
- exponential generating functions
- Lambert series
- Bell series
- Dirichlet series

*Every sequence in principle has a generating function of each type* (except that Lambert and Dirichlet series require indices to start at 1 rather than 0), but the ease with which they can be handled may differ considerably.

The particular generating function, if any, that is most useful in a given context will depend upon the nature of the sequence and the details of the problem being addressed.

Generating functions are sometimes called *generating series*, in that a series of terms can be said to be the generator of its sequence of term coefficients.

## Contents

- 1. History
- 2. Definition
  - 2.1. Convergence
  - 2.2. Limitations
- 3. Types
  - 3.1. Ordinary generating function (OGF)
  - 3.2. Exponential generating function (EGF)
  - 3.3. Poisson generating function
  - 3.4. Lambert series
  - 3.5. Bell series
  - 3.6. Dirichlet series generating functions (DGFs)
  - 3.7. Polynomial sequence generating functions
  - 3.8. Other generating functions
    - 3.8.1. Convolution polynomials
- 4. Ordinary generating functions
  - 4.1. Examples for simple sequences
  - 4.2. Rational functions
  - 4.3. Operations on generating functions
    - 4.3.1. Multiplication yields convolution
    - 4.3.2. Shifting sequence indices
    - 4.3.3. Differentiation and integration of generating functions
    - 4.3.4. Enumerating arithmetic progressions of sequences
  - 4.4. P-recursive sequences and holonomic generating functions
    - 4.4.1. Definitions
    - 4.4.2. Examples
    - 4.4.3. Software for working with P-recursive sequences and holonomic generating functions
  - 4.5. Relation to discrete-time Fourier transform
  - 4.6. Asymptotic growth of a sequence
    - 4.6.1. Asymptotic growth of the sequence of squares
    - 4.6.2. Asymptotic growth of the Catalan numbers
  - 4.7. Bivariate and multivariate generating functions
    - 4.7.1. Bivariate case
    - 4.7.2. Multivariate case
  - 4.8. Representation by continued fractions (Jacobi-type J-fractions)
    - 4.8.1. Definitions
    - 4.8.2. Properties of the hth convergent functions
    - 4.8.3. Examples
- 5. Examples
  - 5.1. Square numbers
- 6. Applications
  - 6.1. Various techniques: Evaluating sums and tackling other problems with generating functions
    - 6.1.1. Example 1: Formula for sums of harmonic numbers
    - 6.1.2. Example 2: Modified binomial coefficient sums and the binomial transform
    - 6.1.3. Example 3: Generating functions for mutually recursive sequences
  - 6.2. Convolution (Cauchy products)
    - 6.2.1. Example: The money-changing problem
    - 6.2.2. Example: Generating function for the Catalan numbers
    - 6.2.3. Example: Spanning trees of fans and convolutions of convolutions
  - 6.3. Implicit generating functions and the Lagrange inversion formula
  - 6.4. Introducing a free parameter (snake oil method)
  - 6.5. Generating functions prove congruences
    - 6.5.1. The Stirling numbers modulo small integers
    - 6.5.2. Congruences for the partition function
  - 6.6. Transformations of generating functions
- 7. Tables of special generating functions
- 8. See also
- 9. Notes
- 10. References
- 11. External links

## History

Generating functions were first introduced by Abraham de Moivre in 1730, in order to solve the *general linear recurrence problem*.

## Definition

A generating function is a device somewhat similar to a bag. Instead of carrying many little objects detachedly, which could be embarrassing, we put them all in a bag, and then we have only one object to carry, the bag.
--  George Pólya, Mathematics and plausible reasoning, 1954

A generating function is a clothesline on which we hang up a sequence of numbers for display.
--  Herbert Wilf, Generatingfunctionology, 1994

### Convergence

Unlike an ordinary series, the *formal power series* is not required to converge: in fact, the generating function is not actually regarded as a function, and the "variable" remains an indeterminate.

One can generalize to formal power series in more than one indeterminate, to encode information about infinite multi-dimensional arrays of numbers. Thus generating functions are not functions in the formal sense of a mapping from a domain to a codomain. [We won't even be plugging args into it].

These expressions in terms of the indeterminate `x` may involve arithmetic operations, differentiation with respect to `x` and composition with (i.e. substitution into) other generating functions; since these operations are also defined for functions, the result looks like a function of `x`.

Indeed, the closed form expression can often be interpreted as a function that can be evaluated at (sufficiently small) concrete values of `x`, and which has the *formal series as its series expansion*; this explains the designation "generating functions".

However such interpretation is not required to be possible, because formal series are not required to give a convergent series when a nonzero numeric value is substituted for `x`.

### Limitations

>Not all expressions that are meaningful as functions of `x` are meaningful as expressions designating formal series.

For example, negative and fractional powers of `x` are examples of functions that do not have a corresponding formal power series.

## Types

- Ordinary Generating Function (OGF)
- Exponential generating function (EGF)
- Poisson generating function
- Lambert series
- Bell series
- Dirichlet series generating functions (DGFs)
- Polynomial sequence generating functions
- Other generating functions
  - Convolution polynomials

### Ordinary generating function

When the term generating function is used without qualification, it is usually taken to mean an Ordinary Generating Function (OGF). OGF of a sequence `aₙ` is

G(aₙ; x) = Σ{n=0..∞} aₙxⁿ

If `aₙ` is the probability mass function of a discrete random variable, then its ordinary generating function is called a probability-generating function.





## Links

* Generating functions
https://discrete.openmathbooks.org/dmoi2/section-27.html

* What is a Generating Function
https://math.libretexts.org/Bookshelves/Combinatorics_and_Discrete_Mathematics/Combinatorics_(Morris)/02%3A_Enumeration/07%3A_Generating_Functions/7.01%3A_What_is_a_Generating_Function

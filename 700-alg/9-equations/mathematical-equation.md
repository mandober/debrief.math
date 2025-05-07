# Math :: Commons :: Mathematical Equation

https://en.wikipedia.org/wiki/Equation

In mathematics, an equation is a mathematical formula that expresses the equality of two expressions, by connecting them with the equals sign.

The word "equation" and its cognates in other languages may have subtly different meanings; for example, in French an équation is defined as containing one or more variables, while in English, any well-formed formula consisting of two expressions related with an equals sign is an equation.

Solving an equation containing variables consists of determining which values of the variables make the equality true. The *variables* for which the equation has to be solved are also called *unknowns*, and the values of the unknowns that satisfy the equality are called *solutions of the equation*. 

There are two kinds of equations: identities and conditional equations. An *identity* is true for all values of the variables. A *conditional equation* is only true for particular values of the variables.

The `=` symbol, which appears in every equation, was invented in 1557 by Robert Recorde, who considered that nothing could be more equal than parallel straight lines with the same length.

## Contents

- 1. Description
- 2. Properties
- 3. Examples
  - 3.1. Analogous illustration
  - 3.2. Parameters and unknowns
  - 3.3. Identities
- 4. Algebra
  - 4.1. Polynomial equations
  - 4.2. Systems of linear equations
- 5. Geometry
  - 5.1. Analytic geometry
  - 5.2. Cartesian equations
  - 5.3. Parametric equations
- 6. Number theory
  - 6.1. Diophantine equations
  - 6.2. Algebraic and transcendental numbers
  - 6.3. Algebraic geometry
- 7. Differential equations
  - 7.1. Ordinary differential equations
  - 7.2. Partial differential equations
- 8. Types of equations
- 9. See also
- 10. Notes
- 11. References
- 12. External links


## Description

An equation is written as two expressions, connected by an equals sign ("=").

The expressions on the two *sides of the equals sign* are called the "left-hand side" and "right-hand side" of the equation. Very often the right-hand side of an equation is assumed to be zero. This does not reduce the generality, as this can be realized by subtracting the right-hand side from both sides.

  3 + 4         is an implicit equation
  3 + 4 = x     is an explicit equation

The most common type of equation is a *polynomial equation* or *algebraic equation* in which the two sides are *polynomials*. The sides of a polynomial equation contain one or more terms.

For example, the equation `Ax² + Bx + C − y = 0` has four terms on the left-hand side (lhs), `Ax² + Bx + C − y`, and just one term on the right-hand side (rhs), `0`.

The names of the variables suggest that `x` and `y` are unknowns, and that `A`, `B`, and `C` are parameters (but this is normally clear/stated by the context).

An equation is analogous to a scale into which weights are placed. Each side of the equation corresponds to one side of the balance. Different quantities can be placed on each side: if the weights on the two sides are equal, the scale balances, and in analogy, the equality that represents the balance is also balanced (if not, then the lack of balance corresponds to an inequality represented by an inequation). If a quantity of grain is removed from one pan of the balance, an equal amount must be removed from the other pan to keep the scale in balance.

More generally, an *equation is balanced* and remains so if the same operation is performed on each side.

## Properties

Two equations or two *systems of equations* are equivalent, if they have the same set of solutions.

The following operations transform an equation or a system of equations into an equivalent one:
- adding or subtracting the same quantity to both sides of an equation. This shows that every equation is equivalent to an equation in which the right-hand side is zero.
- multiplying or dividing both sides of an equation by a non-zero quantity.
- applying an identity to transform one side of the equation.
- (for a system of equations only) adding to both sides of an equation the corresponding side of another equation, multiplied by the same quantity.

If some function is applied to both sides of an equation, the resulting equation has the solutions of the initial equation among its solutions, but may have further solutions called *extraneous solutions*.

For example, the equation `x = 1` has the solution x=1. Raising both sides to the power of 2 - that is, applying the function `f(x) = x²` to both sides of the equation - changes the equation to `x² = 1`, which not only has the previous solution but also introduces the extraneous solution, `x = − 1`. Moreover, if the function is not defined at some values (such as `1/x`, which is not defined for `x=0`), solutions existing at those values may be lost. Thus, caution must be exercised when applying such a transformation to an equation.

The above transformations are the basis of most elementary methods for equation solving, as well as some less elementary ones, like *Gaussian elimination*.

## Parameters and unknowns

See also: Expression (mathematics)
https://en.wikipedia.org/wiki/Expression_(mathematics)

Equations often contain terms other than the unknowns. These other terms, which are assumed to be known, are usually called constants, coefficients or parameters.

An example of an equation involving `x` and `y` as unknowns and the parameter `R` is `x² + y² = R²`. When `R` is chosen to have the value 2 (R = 2), this equation would be recognized in *Cartesian coordinates* as the equation for the circle of radius of 2 around the origin. Hence, the equation with R unspecified is the general equation for the circle.

Usually, the unknowns are denoted by letters at the end of the alphabet, while *coefficients (parameters)* are denoted by letters at the beginning.

The process of finding the solutions, or, in case of parameters, expressing the unknowns in terms of the parameters, is called *solving the equation*. Such expressions of the solutions in terms of the parameters are also called *solutions*.

A *system of equations* is a set of *simultaneous equations*, usually in several unknowns for which the common solutions are sought. Thus, a solution to the system is a set of values for each of the unknowns, which together form a solution to each equation in the system. For example, the system

```
3x + 5y = 2
5x + 8y = 3
```
has the unique solution `x = −1` and `y = 1`.

## Identities

Main articles:
- Identity (mathematics)
  https://en.wikipedia.org/wiki/Identity_(mathematics)
- List of trigonometric identities
  https://en.wikipedia.org/wiki/List_of_trigonometric_identities


An **identity** is an equation that is true for all possible values of the variables it contains.

Many identities are known in algebra and calculus. In the process of solving an equation, an identity is often used to simplify an equation, making it more easily solvable.

In algebra, an example of an identity is the difference of two squares: 
`x² − y² = (x + y)(x − y)` which is true for all `x` and `y`, so we may also write it as a FOL formula `∀xy ∈ ℝ. x² − y² = (x + y)(x − y)`.

*Trigonometry* is an area of geometry where many identities exist; these are useful in manipulating or solving *trigonometric equations*. Two of many identities that involve the sine and cosine that are true for all `θ` values:
- sin²(θ) + cos²(θ) = 1
- sin(2θ) = 2 sin(θ) cos(θ)

For example, to solve for the value of `θ` that satisfies the equation: 
`3 sin(θ) cos(θ) = 1`, where `θ` is limited to between 0 and 45 degrees, one may use the above identity for the product to give: `3⁄2 sin(2θ) = 1`, yielding the following solution for θ: `θ = 1⁄2 arcsin(2⁄3) ≈ 20.9ᵒ`. Since the sine function is a periodic function, there are infinitely many solutions if there are no restrictions on `θ`. In this example, restricting θ to be between 0 and 45 degrees would restrict the solution to only one number.

## Algebra

Algebra studies two main families of equations: *polynomial equations* and, among them, the special case of *linear equations*. 

When there is only one variable, polynomial equations have the form `P(x) = 0`, where `P` is a polynomial, and linear equations have the form `ax + b = 0`, where `a` and `b` are parameters.

To solve equations from either family, one uses algorithmic or geometric techniques that originate from linear algebra or mathematical analysis.

Algebra also studies *Diophantine equations* where the coefficients and solutions are integers. The techniques used are different and come from number theory. These equations are difficult in general; one often searches just to find the existence or absence of a solution, and, if they exist, to count the number of solutions.

### Polynomial equations

Main article: Polynomial equation
https://en.wikipedia.org/wiki/Polynomial_equation

In general, an *algebraic equation* or *polynomial equation* is an equation of the form `P = 0`, or `P = Q` (since such equation can be rewritten `P - Q = 0`, many authors do not consider this case explicitly), where `P` and `Q` are polynomials with coefficients in some field (e.g. ℚ, ℝ, ℂ).

An algebraic equation is *univariate* if it involves only one variable. On the other hand, a polynomial equation may involve several variables, in which case it is called *multivariate* (multiple variables, x, y, z, etc.).

For example, `x⁵ − 3x + 1 = 0` is a univariate algebraic (polynomial) equation with integer coefficients and `y⁴ + xy/2 = x³/3 − xy² + y² − 1/7` is a multivariate polynomial equation over the rational numbers.

Some polynomial equations with *rational coefficients* have a solution that is an *algebraic expression*, with a finite number of operations involving just those coefficients (i.e. can be solved algebraically). This can be done for all such equations of degree 1, 2, 3, or 4; but equations of degree 5 or more cannot always be solved in this way, as the *Abel-Ruffini theorem* demonstrates.

A large amount of research has been devoted to compute efficiently accurate approximations of the real or complex solutions of a *univariate algebraic equation* (see Root finding of polynomials) and of the common solutions of several *multivariate polynomial equations* (see System of polynomial equations).

### Systems of linear equations

## 5. Geometry
- 5.1. Analytic geometry
- 5.2. Cartesian equations
- 5.3. Parametric equations

## 6. Number theory
- 6.1. Diophantine equations
- 6.2. Algebraic and transcendental numbers
- 6.3. Algebraic geometry

## 7. Differential equations
- 7.1. Ordinary differential equations
- 7.2. Partial differential equations


## 8. Types of equations

- system of polynomial equations
- algebraic equation, polynomial equation
  - linear, degree 1
  - quadratic, 2
  - cubic, 3
  - quartic, 4
  - quintic, 5
  - sextic
  - septic
  - octic
- Diophantine equation
- transcendental equation
- parametric equation
- functional equation
  - differential equation
    - ordinary differential equations (ODEs)
    - partial differential equations (PDEs)
  - integral equation
  - integro-differential equation
  - functional differential equation of delay differential equation
  - difference equation
    - order of the equation
    - recurrence relation
  - stochastic differential equation



Equations can be classified according to the types of operations and quantities involved. Important types include:
- *Algebraic equation* or *polynomial equation* is an equation in which both sides are polynomials. These are further classified by degree:
  - linear equation for degree one
  - quadratic equation for degree two
  - cubic equation for degree three
  - quartic equation for degree four
  - quintic equation for degree five
  - sextic equation for degree six
  - septic equation for degree seven
  - octic equation for degree eight
- *Diophantine*: unknowns are required to be integers
- *transcendental*: involves a transcendental fn of its unknowns
- *parametric*: solutions for vars are expressed as fns of parameters
- *functional*: unknowns are fns rather than simple quantities; these include:

  - *differential equation* (DE) is a functional equation involving derivatives of the unknown functions, where the function and its derivatives are evaluated at the same point, such as `f′(x) = x²`. DEs are subdivided into:
    - ordinary differential equations (ODEs) for fns of a single variable
    - partial differential equations (PDEs) for fns of multiple variables

  - *integral equation* is a functional equation involving the antiderivatives of the unknown functions. For functions of one variable, such an equation differs from a DE primarily through a change of variable substituting the function by its derivative, however this is not the case when the integral is taken over an open surface.

  - *integro-differential equation* is a functional equation involving both the derivatives and the antiderivatives of the unknown functions. For functions of one variable, such an equation differs from integral and DE through a similar change of variable.

  - *functional differential equation of delay differential equation* is a function equation involving derivatives of the unknown functions, evaluated at multiple points, such as `f′(x) = f(x − 2)`.

  - *difference equation*: unknown is a fn `f` that occurs in the equation through `f(x), f(x − 1), …, f(x − k)`, for some whole integer `k` called the order of the equation. If `x` is restricted to be an integer, a DE is the same as a recurrence relation.

  - *stochastic differential equation*: DE with terms as stochastic processes

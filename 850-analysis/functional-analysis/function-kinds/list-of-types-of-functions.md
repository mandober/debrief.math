# List of types of functions

https://en.wikipedia.org/wiki/List_of_types_of_functions

In mathematics, functions can be identified according to the properties they have. These properties describe the functions' behaviour under certain conditions. A parabola is a specific type of function.

## Contents

- 1. Relative to set theory
- 2. Relative to an operator
- 3. Relative to a topology
- 4. Relative to an ordering
- 5. Relative to the real/complex/hypercomplex/p-adic numbers
- 6. Relative to measurability
- 7. Relative to measure
- 8. Ways of defining functions/relation to type theory
- 9. Higher order functions
- 10. Relation to category theory
- 11. Other functions
- 12. More general objects still called functions
- 13. Relative to dimension of domain and codomain
- 14. See also
- 15. References


## Relative to set theory

These properties concern the domain, the codomain and the image of functions.

- Injective function, aka injection or one-to-one function
- Surjective function, aka surjection or onto function
- Bijective function: is invertible
- Identity function
- Constant function
- Empty function: whose domain equals the empty set
- Set function: whose input is a set
- Choice function (selector, uniformizing function): assigns to each set one of its elements

## Relative to an operator

Relative to an operator (c.q. a group or other structure)

These properties concern how the function is affected by arithmetic operations on its argument.

The following are special examples of a homomorphism on a binary operation:
- Additive function: preserves the addition operation: f (x + y) = f (x) + f (y).
- Multiplicative function: preserves the multiplication operation: f (xy) = f (x)f (y).

Relative to negation:
- Even function: is symmetric with respect to the Y-axis. Formally, for each x: f (x) = f (−x).
- Odd function: is symmetric with respect to the origin. Formally, for each x: f (−x) = −f (x).

Relative to a binary operation and an order:
- Subadditive function: for which the value of f (x + y) is less than or equal to f (x) + f (y).
- Superadditive function: for which the value of f (x + y) is greater than or equal to f (x) + f (y).

## Relative to a topology

- Continuous function: in which preimages of open sets are open.
Nowhere continuous function: is not continuous at any point of its domain; for example, the Dirichlet function.
Homeomorphism: is a bijective function that is also continuous, and whose inverse is continuous.
Open function: maps open sets to open sets.
Closed function: maps closed sets to closed sets.
Compactly supported function: vanishes outside a compact set.
Càdlàg function, called also RCLL function, corlol function, etc.: right-continuous, with left limits.
Quasi-continuous function: roughly, close to f (x) for some but not all y near x (rather technical).
Relative to topology and order:

Semicontinuous function: upper or lower semicontinuous.
Right-continuous function: no jump when the limit point is approached from the right. Left-continuous function: defined similarly.
Locally bounded function: bounded around every point.
Relative to an ordering
Monotonic function: does not reverse the ordering of any pair of inputs.
Strict monotonic function: preserves the given order.
Relative to the real/complex/hypercomplex/p-adic numbers
Real function: a function whose domain is real.
Complex function: a function whose domain is complex.
Holomorphic function: complex-valued function of a complex variable which is differentiable at every point in its domain.
Meromorphic function: complex-valued function that is holomorphic everywhere, apart from at isolated points where there are poles.
Entire function: A holomorphic function whose domain is the entire complex plane.
Quaternionic function: a function whose domain is quaternionic.
Hypercomplex function: a function whose domain is hypercomplex (e.g. quaternions, octonions, sedenions, trigintaduonions etc.)
p-adic function: a function whose domain is p-adic.
Linear function; also affine function.
Convex function: line segment between any two points on the graph lies above the graph. Also concave function.
Arithmetic function: A function from the positive integers into the complex numbers.
Analytic function: Can be defined locally by a convergent power series.
Quasi-analytic function: not analytic, but still locally determined by its derivatives at a point.
Differentiable function: Has a derivative.
Continuously differentiable function: differentiable, with continuous derivative.
Smooth function: Has derivatives of all orders.
Lipschitz function, Holder function: somewhat more than uniformly continuous function.
Harmonic function: its value at the center of a ball is equal to the average value on the surface of the ball (mean value property). Also subharmonic function and superharmonic function.
Elementary function: composition of arithmetic operations, exponentials, logarithms, constants, and solutions of algebraic equations.
Special functions: non-elementary functions that have established names and notations due to their importance.
Trigonometric functions: relate the angles of a triangle to the lengths of its sides.
Nowhere differentiable function called also Weierstrass function: continuous everywhere but not differentiable even at a single point.
Fast-growing (or rapidly increasing) function; in particular, Ackermann function.
Simple function: a real-valued function over a subset of the real line, similar to a step function.
Relative to measurability
Measurable function: the preimage of each measurable set is measurable.
Borel function: the preimage of each Borel set is a Borel set.
Baire function called also Baire measurable function: obtained from continuous functions by transfinite iteration of the operation of forming pointwise limits of sequences of functions.
Singular function: continuous, with zero derivative almost everywhere, but non-constant.
Relative to measure
Integrable function: has an integral (finite).
Square-integrable function: the square of its absolute value is integrable.
Relative to measure and topology:

Locally integrable function: integrable around every point.
Ways of defining functions/relation to type theory
Polynomial function: defined by evaluating a polynomial.
Rational function: ratio of two polynomial functions. In particular, Möbius transformation called also linear fractional function.
Algebraic function: defined as the root of a polynomial equation.
Transcendental function: analytic but not algebraic. Also hypertranscendental function.
Composite function: is formed by the composition of two functions f and g, by mapping x to f (g(x)).
Inverse function: is declared by "doing the reverse" of a given function (e.g. arcsine is the inverse of sine).
Implicit function: defined implicitly by a relation between the argument(s) and the value.
Piecewise function: is defined by different expressions on different intervals.
Computable function: an algorithm can do the job of the function. Also semicomputable function; primitive recursive function; partial recursive function.
In general, functions are often defined by specifying the name of a dependent variable, and a way of calculating what it should map to. For this purpose, the 
↦
↦ symbol or Church's 
λ
λ is often used. Also, sometimes mathematicians notate a function's domain and codomain by writing e.g. 
f
:
A
→
B
f:A→B. These notions extend directly to lambda calculus and type theory, respectively.

Higher order functions
These are functions that operate on functions or produce other functions; see Higher order function. Examples are:

Function composition.
Integral and differential operators.
Fourier transforms.
Fold and Map operations.
Currying
Relation to category theory
Category theory is a branch of mathematics that formalizes the notion of a special function via arrows or morphisms. A category is an algebraic object that (abstractly) consists of a class of objects, and for every pair of objects, a set of morphisms. A partial (equiv. dependently typed) binary operation called composition is provided on morphisms, every object has one special morphism from it to itself called the identity on that object, and composition and identities are required to obey certain relations.

In a so-called concrete category, the objects are associated with mathematical structures like sets, magmas, groups, rings, topological spaces, vector spaces, metric spaces, partial orders, differentiable manifolds, uniform spaces, etc., and morphisms between two objects are associated with structure-preserving functions between them. In the examples above, these would be functions, magma homomorphisms, group homomorphisms, ring homomorphisms, continuous functions, linear transformations (or matrices), metric maps, monotonic functions, differentiable functions, and uniformly continuous functions, respectively.

As an algebraic theory, one of the advantages of category theory is to enable one to prove many general results with a minimum of assumptions. Many common notions from mathematics (e.g. surjective, injective, free object, basis, finite representation, isomorphism) are definable purely in category theoretic terms (cf. monomorphism, epimorphism).

Category theory has been suggested as a foundation for mathematics on par with set theory and type theory (cf. topos).

Allegory theory[1] provides a generalization comparable to category theory for relations instead of functions.

## Other functions

Symmetric function: value is independent of the order of its arguments
More general objects still called functions
Generalized function: a wide generalization of Dirac delta function, able to describe white noise etc.
Dirac delta function: useful to describe physical phenomena such as point charges.
Multivalued function: one-to-many relation.
Random function: Random element of a set of functions.
Relative to dimension of domain and codomain
Scalar-valued function
Multivariate function
Vector-valued function

## See also
List of mathematical functions
List of types of sets

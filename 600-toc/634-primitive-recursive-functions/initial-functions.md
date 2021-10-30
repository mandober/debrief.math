# Initial functions

The set of all primitive recursive functions consists exclusively of the functions that are guaranteed to terminate.


is derived from the three initial primitive recursive functions.

Initial primitive recursive functions:
- Zero, ζ
- SUcc, σ
- Proj, π

## Initial functions

**Zero**
- `Zeroⁿ`, `ζ`, `ζⁿ(x₀, x₁,...,xₙ) = 0`
- zero may take any n-tuple as as arg, always returning 0
- becasue it is an n-ary function it may be consider as a family of functions, each with a fixed arity, e.g. ζ⁰, ζ¹, ζ², ζ³, ...
- `ζ³(1,4,2)=0`, `ζ⁰()=0`

**Successor**
- `Succ¹`, `σ`, `σ¹(x) = x + 1`
- successor is a unary function that a single number as an arg and returns the successor of that number
- `σ(4) = 5`

**Projection**
- `Projⁿᵢ`, `π`, `πⁿᵢ(x₀, x₁,...,xₙ) = xᵢ`
- projection is an n-ary function that takes an n-tuple as the arg and returns the ith component of the tupler, for 1 ≤ i ≤ n
- `π³₁(1,2,3) = 1` (not that π is here 1-based, but it may be 0-based as well)

## Initial functions

Recursive function theory supposes a set of simple, self-evidently computable functions, called *initial functions*, and some computable mechanisms for building more complex functions from the initial ones.

* The initial functions are: zero, successor, projection

* the zero function, ζ, maps the zero-tuple () to 0, `ζ() = 0`. It corresponds to writing a 0 on a blank piece of paper, or initialising a tape cell or a memory location to 0.

* the successor function, σ, gives the successor of the given integer n, `σ(n) = n + 1`.

* the projection functions πⁿₘ. The collection of projection functions map m-tuples onto the n-th component of the m-tuple. e.g. π³₂(7, 11, 4) returns the 2nd element of the 3-tuple (7, 11, 4), i.e. 11.

* By convention 𝑿 will stand for an n-tuple of x's, `𝑿 = (x₀,x₁,...,xₙ)`

## Combinators

The 3 basic techniques for constructing complex functions from the initial functions are: combination, composition and primitive recursion.

Functions constructed from the initial functions by a finite number of applications of combination, composition and primitive recursion are called primitive recursive functions.


PRFs can be of 4 types:
1. Number-theoretic functions,  `Nat -> Nat`
2. Predicates,                  `Nat -> Bool`
3. Propositional connectives,   `Bool -> Bool`
4. Representing functions,      `Bool -> Nat`

# Properties of primitive recursive functions

1. number-theoretical functions over ℕ
1. total functions
1. terminating functions
1. computable functions
1. infallible (well-behaved) functions (especially initial)
1. PRFs are a recursively enumerable subset of the set of all total recursive functions (which is not itself recursively enumerable).
1. PRFs are those functions that are computed strictly with bounded loops
   (GRFs are computable by unrestricted, unbounded, loops)

## Properties of primitive recursive functions

- PRFs are total functions.
- PRFs are provably guarateed to terminate.
- PRFs are number-theoretical functions over ℕ.
- PRFs are a proper subset of general recursive functions.
- PRFs are those general recursive functions that are total.
- Not all TRFs are PRFs, for example the Ackermann function.

- The initial set of PRFs are the 3 initial functions and 2 combinators.
- More PRFs are build starting with the 3 initial functions and (a finite number of applications) of primitive combinators.

Building the PRF set in stages
- Stage 0:
  just the 3 initial functions
- Stage 1:
  functions obtained by combining:
  stage 0 functions with one application of the two combinators
- Stage 2:
  functions obtained by combining:
  stage 0 and stage 1 functions with two applications of combinators

## PRFs

>Recursive function theory supposes a set of simple, self-evidently computable functions, called *initial functions*, and some computable mechanisms for building more complex functions from the initial ones.

The basic techniques for constructing complex functions from the initial functions involve composition and primitive recursion.

>Functions constructed from the initial functions by a finite number of applications of composition and primitive recursion are called primitive recursive functions.

PRFs can be of 4 types:
1. Number-theoretic functions,  `Nat -> Nat`
2. Predicates,                  `Nat -> Bool`
3. Propositional connectives,   `Bool -> Bool`
4. Representing functions,      `Bool -> Nat`

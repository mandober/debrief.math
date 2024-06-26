# Primitive Recursive Functions

## Contents

- 1. PRF History
  - 1.1 Early history of recursive definitions
  - 1.2 Origins of primitive recursion
  - 1.3 Arithmetical representability
  - 1.4 Gödel's First Incompleteness theorem
  - 1.5 Ackermann-Péter function
  - 1.6 General Recursive functions
  - 1.7 Church's Thesis
  - 1.8 Entscheidungsproblem and Undecidability
  - 1.9 Origins of recursive function theory
  - 1.10 Computability theory

- 2. PRF Components
  - 2.1 PRF components
    - 2.1 Initial functions
      - 2.1.1 Successor
      - 2.1.2 Constant
        - 2.1.2.1 Zero
      - 2.1.3 Projection
        - 2.1.3.1 Identity
        - 2.1.3.2 First projection, fst
        - 2.1.3.3 Second projection, snd
    - 2.2 Functionals (operators)
      - 2.2.1 Composition
      - 2.2.2 Combination
      - 2.2.3 Primitive recursion

- 3. PRF Definition
  - 3.1 The `PR` class
    - 3.1.1 Defining the `PR` class
    - 3.1.2 Building the `PR` class in stages
  - 3.2 PRF Properties
    - About Primitive Recursive Functions
    - Properties of initial functions
    - Properties of functionals
    - Properties of primitive recursive functions
  - 3.3 Kinds of PRFs
    - functions on naturals
    - expressing predicates
    - expressing primitive recursive relations
  - 3.4 PRF Variants
    - 3.3.1 PRF Variants
    - 3.3.2 Primitive recursion
      - 3.3.2.1 Primitive recursion: concrete args
      - 3.3.2.2 Primitive recursion: order of args
    - 3.3.3 Weakening the Primitive Recursion operator
      - 3.3.3.1 Weak Primitive recursion
      - 3.3.3.2 Weaker Primitive recursion - *iteration*
  - 3.4 Implementation of PRFs in a PL
    - Fallibility of initial functions
    - Fallibility of functionals
    - other concerns
      - const acts as both value and function
      - replacing tuples with lists

- 4. Deriving common functions in PR context
  - 4.1 Deriving arithemtic functions
    - add
    - mul
    - pred
    - monus
    - exp
  - 4.1 Representing predicates
    - isZero
    - LE
    - GE
    - if-then-else
  - 4.2 Representing junctors (connectives)
  - 4.3 Representing equality
  - 4.4 Representing relations
  - 4.5. Extending PR to ℤ and ℝ
    - Gödel numberings
    - Using Gödel numberings to repr integers as naturals
    - Functions to map tuples to naturals reversably
    - Reversably mapping pairs (tuples) to naturals, `(a,b) ⟼ n`

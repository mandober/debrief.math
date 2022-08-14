# Lambda calculus :: Summary

* The syntax of λ-calculus consist of 3 types of expressions:
  1. Var: variables,   `x`
  2. Abs: abstraction, `λx.M`
  3. App: application, `M N`
* Expressions
  - variables: usually single letter identifiers
  - λ-terms: `M`, `N` stand for any λ expression
  - parentheses used for enforcing precedence
* Fixity
  - Precedence
    - App has precedence over Abs: `λx.M N` is `λx.(M N)` not `(λx.M)N`
  - Associativity
    - App is left-associative: `M N O` = `(M N) O`
    - Abs is right-associative: `λx.λy.λz.M` = `λx.(λy.(λz.M))`
    - Abs extends as far to the right as possible (minding parens)
* Lambdas (lambda abstractions) are functions:
  - anonymous (no top-level name binding)
  - unary (multi-args via currying)
  - closures
  - higher-order: inputs and outputs are always functions
  - non-recursive: recursion is introduced via combinators like the Y,
    `Y := λf.(λx.f(xx))(λx.f(xx))`
* As a proglang
  - only functions: functions applyied to functions produce functions, always!
  - no primitives, no stdlib, nothing predefined (only rules)
  - the only given things are the rules for Abs and App
  - even that is generally arbitrary (but once it's fixed it must be followed)
  - everything needs to be defined in terms of functions, as functions
  - these are called encodings
  - With only functions at our disposal, some kind of run-time system must be present to handle the conversion of computations' results (functions as values) into the values representable by the computer; and to handle the I/O system for presenting the values to the users by printing them on the screen. The RTS will probably need some kind of a lookup table to figure out what a given function represents when interpreted as a constant (static value). This makes LC a tricky system because the same lambda may act as a function (just waiting to pray on the unsuspecting args) or as a static value (e.g. the number 1 and the Boolean "True" are at the same time both constants and functions).
* Encoding schemes
  - Church encoding
    - Church naturals
      - Church successor
      - Church predecessor
      - Church addition
      - Church mul
      - Church sub
      - Church exp
    - Church Booleans
    - Church pair
    - Church list
    - Church data types
    - Church integers (negative numbers)

# Encoding data types in λ-calculus

The approach to the encoding of data types in λ-calculus is, one the one hand, affected by the type of calculus itself, i.e. whether it is an untyped or typed variant of λ-calculus, and, on the other hand, by the properties of data types, the most important being whether a data type is recursive, followed by whether it is an algebraic data type (ADT), which are further qualified as unit, sum, product, exponential, and other ADT types. Untyped λ-calculi can express recursion using combinators, such as the self-application combinator small omega, `ω := λf.ff`, which is untypable in a typed λ-calculus.

In lambda calculus, lambda abstractions correspond to function declarations in a programming language (using Haskell as the typical programming language from now on). Formally, lambda abstractions are always unary functions, which provides a balance of having a single input and output value. This is of no particular concern, and even the established notational system further blurs the issue with the shorthand form, e.g. `λabc.acb` vs `λa.λb.λc.acb`. Anyway, lambda abstractions are discussed using terms like binary or ternary function, although, strictly, all functions are unary.


The general idea of (ab)using functions to implement various data types and data structures is based on the concept of partial application.

In lambda calculus, data can be stored as parameters to a partially applied function - a function that doesn't have all the parameters (required for application) available.

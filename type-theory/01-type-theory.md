# Type Theory

https://en.wikipedia.org/wiki/Type_theory

A type theory is a class of formal systems, where every *term* has a *type* and operations are restricted to terms of a certain type.

Type theory was created to avoid paradoxes in a variety of formal logics and rewrite systems.

Type theory is closely related to (and overlaps with) *type systems*, which are a programming language feature used to reduce bugs.

Two well-known type theories that can serve as mathematical foundations are Alonzo Church's *typed λ-calculus* and Per Martin-Löf's *intuitionistic type theory*.


## Concepts

In a system of type theory, each term has a type and operations are restricted to terms of a certain type.

An assertion `v: T` describes that the term `v` has type `T`.

For example, `uint` may be a type representing positive integers and `0, 1, ...` may be members of that type. The assertion that 42 has a type `uint` is written as `42: uint`.

A function in type theory is denoted with an arrow, `->`.

For example, the function `add` has the assertion `add: int -> int`, meaning that it takes an integer and returns an integer.

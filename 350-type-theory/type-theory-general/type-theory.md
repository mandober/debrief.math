# Type Theory

https://en.wikipedia.org/wiki/Type_theory

> The fundamental idea behind type theory is to gain the ability to distinguish between different types of objects.



In mathematics, logic, and computer science, a type system is a formal system in which every term has a "type" which defines its meaning and the operations that may be performed on it. Type theory is the academic study of type systems.

Some type theories serve as alternatives to set theory as a foundation of mathematics. Two well-known such theories are Alonzo Church's typed λ-calculus and Per Martin-Löf's intuitionistic type theory.

Type theory was created to avoid paradoxes in previous foundations such as naive set theory, formal logics and rewrite systems.

Type theory is closely related to, and in some cases overlaps with, computational type systems, which are a programming language feature used to reduce bugs.


## History

Main article: History of type theory
https://en.wikipedia.org/wiki/History_of_type_theory

Between 1902 and 1908 Bertrand Russell proposed various "theories of type" in response to a paradox, later named after him, that he discovered in Gottlob Frege's treatment of set theory.

By 1908 Russell arrived at a *Ramified Theory of Types* together with an *axiom of reducibility* both of which featured prominently in his Whitehead coauthored `Principia Mathematica` published between 1910 and 1913.

In order to prevent *Russell's paradox*, they defined a *hierarchy of types*, before proceeding to assign types to each concrete mathematical object. And to assure that an entity cannot be assigned to itself, they have introduced an axiom to force the rule that a given type can only be inhabited by objects of a lower ranking type (and we'll die in the class we were born).


In the 1920s, Leon Chwistek and Frank P. Ramsey proposed an unramified type theory, now known as the "theory of simple types" or simple type theory, which collapsed the hierarchy of the types in the earlier ramified theory and as such did not require the axiom of reducibility.

The common usage of "type theory" is when those types are used with a term rewrite system. The most famous early example is Alonzo Church's simply typed lambda calculus. Church's theory of types helped the formal system avoid the Kleene–Rosser paradox that afflicted the original untyped lambda calculus. Church demonstrated that it could serve as a foundation of mathematics and it was referred to as a higher-order logic.

Some other type theories include Per Martin-Löf's intuitionistic type theory, which has been the foundation used in some areas of constructive mathematics. Thierry Coquand's calculus of constructions and its derivatives are the foundation used by Coq, Lean, and others. The field is an area of active research, as demonstrated by homotopy type theory.

## Concepts

A type theory is a class of formal systems, where every *term* has a *type* and operations are restricted to terms of a certain type.

Type theory was created to avoid paradoxes in a variety of formal logics and rewrite systems.

Type theory is closely related to (and overlaps with) *type systems*, which are a programming language feature used to reduce bugs.

Two well-known type theories that can serve as mathematical foundations are Alonzo Church's *typed λ-calculus* and Per Martin-Löf's *intuitionistic type theory*.



In a system of type theory, each term has a type and operations are restricted to terms of a certain type.

An assertion `v: T` describes that the term `v` has type `T`.

For example, `uint` may be a type representing positive integers and `0, 1, ...` may be members of that type. The assertion that 42 has a type `uint` is written as `42: uint`.

A function in type theory is denoted with an arrow, `->`.

For example, the function `add` has the assertion `add: int -> int`, meaning that it takes an integer and returns an integer.

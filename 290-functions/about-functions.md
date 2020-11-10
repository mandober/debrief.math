# About functions

In math, there is only one concept of a function, which was abused and used for many inappropriate programming language constructs that cannot be called functions. A proper, mathematical, function is pure and side-effects free. The later does not originates from math as there are no side effects in math anyway, but it complements what is intended by the former.

A function is an abstract model of computation. It takes an input and produces a result. The essential aspect of a function is that the result is completely determined by the input: if the same function is repeatedly applied to the same argument, it will always produce the same result.

Functions are an important tool in math, even more so in computing because they provide the principal mechanism of code abstraction; parts of related code can be extracted and grouped under the same name, becoming a new named unit in a PL, similar to the predefined primitives.

There are many ways to formalize a function. A function can be regrded as a special type of relation. A function can be completely determined by its graph or by a formula (a rule for how to produce the results). A function can also be considered opaque, i.e. a "black box" whose implementation (internal details) need not be known; to use it a programmer just needs to know the API (its interface).

## Graph of a function

A function is a relation that is functional (left-total) and serial (right- unique). Like any relation, a function is determined by a set of ordered pairs, where the first component of an ordered pair comes from the function's domain set, and the second component comes from the the function's codoamin set.

If we have a function from set A to set B, `f: A -> B`, where `a ∈ A ∧ b ∈ B`, then the function is a set of ordered pairs, formally denoted by:

f = { (a,b) | ∀a ∈ A. ∃!b ∈ B. f(a) = b }

This set of ordered pairs may be interpreted as the set of Carthesian coorinates and plotted on the 2D plane, rendering the graph of the function.

This representation of a function is called a *function graph*, and it is similar to the digraph used to represent relations.

This is the intentional definition of a function.

A function `f` with type `A -> B` is a relation with domain `A` and codomain `B`, such that

∀x∀x' ∈ A. ∃y ∈ B. [(x,y) ∈ f ∧ (x',y) ∈ f] -> (x = x')

A is called the argument type and B is called the result type of the function.

Stating that a function `f` is not defined at `x` is denoted by `f x = ⊥` (e.g. the reciprocal function `f(x) = 1/x` is not defined at `x=0`).

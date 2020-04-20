# Dependent type

A dependent type (or pi type) is a type that depends on a term or on another type.

In Haskell, a pair of a Boolean and an integer is `(Bool, Int)` and it is a different type then a pair `(Int, Bool)` or a triple `(Bool, Int, Int)`. The type is determined by both, the number of components and the type of each individual component. This creates the demand for dependent types.

Two common examples of dependent types are *dependent functions* and *dependent pairs*. A pair of integers where the second is greater than the first, is a dependent type because the *type of output* depends on the *input value*. 

The return value of a function depends on the input value, which is the usual situation, but with a dependent function, the output type may depend on input type or input value, or both. An example would be a function that takes a positive integer `n` and returns an array of length `n` (full of `n`s). This is because arrays (usually) have fixed size so their type depends both on the number of elements and their type (unlike tuples, arrays are homogenous). Using Rust's notation, a type `[i32; 6]` is different then `[i32; 3]`.


Dependent types generalize the normal function space to model functions whose output type varies on their input.




---

https://plato.stanford.edu/entries/type-theory/
https://plato.stanford.edu/entries/type-theory-church/
https://en.wikipedia.org/wiki/Type_theory

# Dependent type

https://en.wikipedia.org/wiki/Dependent_type
https://ncatlab.org/nlab/show/dependent+type


A **dependent type** is a type whose definition depends on a value of a term


- dependent types are a feature found in *type theory* and *type systems*
- in intuitionistic type theory, dependent types encode quantifiers

In FPL like Agda, ATS, Coq, F*, Epigram, and Idris, dependent types may help reduce bugs by enabling the programmer to assign types that further restrain the set of possible implementations.

Two common examples of dependent types are dependent functions and dependent pairs. The return type of a dependent function may depend on the value (not just type) of one of its arguments. For instance, a function that takes a positive integer n may return an array of length n, where the array length is part of the type of the array. (Note that this is different from polymorphism and generic programming, both of which include the type as an argument.) A dependent pair may have a second value of which the type depends on the first value. Sticking with the array example, a dependent pair may be used to pair an array with its length in a type-safe way.

Dependent types add complexity to a type system. Deciding the equality of dependent types in a program may require computations. If arbitrary values are allowed in dependent types, then deciding type equality may involve deciding whether two arbitrary programs produce the same result; hence type checking may become undecidable.



A dependent type (or pi type) is a type that depends on a term or on another type.

In Haskell, a pair of a Boolean and an integer is `(Bool, Int)` and it is a different type then a pair `(Int, Bool)` or a triple `(Bool, Int, Int)`. The type is determined by both, the number of components and the type of each individual component. This creates the demand for dependent types.

Two common examples of dependent types are *dependent functions* and *dependent pairs*. A pair of integers where the second is greater than the first, is a dependent type because the *type of output* depends on the *input value*. 

The return value of a function depends on the input value, which is the usual situation, but with a dependent function, the output type may depend on input type or input value, or both. An example would be a function that takes a positive integer `n` and returns an array of length `n` (full of `n`s). This is because arrays (usually) have fixed size so their type depends both on the number of elements and their type (unlike tuples, arrays are homogenous). Using Rust's notation, a type `[i32; 6]` is different then `[i32; 3]`.


Dependent types generalize the normal function space to model functions whose output type varies on their input.




---

https://en.wikipedia.org/wiki/Dependent_type
https://en.wikipedia.org/wiki/Type_theory

https://plato.stanford.edu/entries/type-theory/
https://plato.stanford.edu/entries/type-theory-church/

https://ncatlab.org/nlab/show/dependent+type
https://ncatlab.org/nlab/show/Martin-L%C3%B6f+dependent+type+theory

[Agda](https://en.wikipedia.org/wiki/Agda_(theorem_prover))
[ATS](https://en.wikipedia.org/wiki/ATS_(programming_language))
[Coq](https://en.wikipedia.org/wiki/Coq)
[F*](https://en.wikipedia.org/wiki/F*_(programming_language))
[Epigram](https://en.wikipedia.org/wiki/Epigram_(programming_language))
[Idris](https://en.wikipedia.org/wiki/Idris_(programming_language))

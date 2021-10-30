# Dependent type

(from `Dependent Types at Work` by Ana Bove, Peter Dybjer, 2008)

> A dependent type is a type that depends on elements of other type(s). A dependent type is a *family of types indexed by the __terms__ of another type*. On the other hand, a *parametrised type* is a family of types *indexed by another type*.

The canonical example of a dependent type is the type `Aⁿ` of vectors of length `n` with components of type `A`. We say that the type `Aⁿ` depends on the number `n`, or that `Aⁿ` is a family of types indexed by the number `n`.

Parametrised types, such as the list type `[A]` with elements of type `A`, are usually not called dependent types. They are families of types indexed by other types, not families of types indexed by elements of another type. However, in dependent type theories there is a type of small types (universe), so that we might have a type `[A]` of lists of elements of a given small type `A`.

The strong type system and the support for dependent types in Agda (an extension of Martin-Lof type theory) permit us to express, more or less, any conceivable dependent property. We have to say "more or less" because Godel's incompleteness theorem sets a limit for the expressiveness of logical languages.

The simply typed lambda calculus and the Hindley-Milner type system, on which typed functional programming languages such as ML and Haskell are based, do not include dependent types, only parametrised types. Similarly, the polymorphic lambda calculus `System F` has types like `∀X.A` where `X` ranges over all types, but no quantification over elements of other types.

The modern development of dependently typed programming languages has its origins in the CHI between propositions and types. There is a one-to-one correspondence between combinatory terms and proofs in implicational logic. In a similar way, product types correspond to conjunctions, and sum types (disjoint unions) to disjunctions.

To extend this correspondence to predicate logic, Howard and de Bruijn introduced dependent types `A(x)` corresponding to predicates `P(x)`. 
They formed indexed products `Πx : D.A(x)` and indexed sums `Σx : D.A(x)` corresponding, respectively, to universal quantifications `∀x : D.P(x)` and existential quantifications `∃x : D.P(x)`.

`Πx : D.A(x)` ~ `∀x : D.P(x)`    
`Σx : D.A(x)` ~ `∃x : D.P(x)`

What we obtain here is a Curry-Howard interpretation of intuitionistic predicate logic (IPL). There is a one-to-one correspondence between propositions and types in a type system with dependent types. There is also a one-to-one correspondence between proofs of a certain proposition in constructive predicate logic and terms of the corresponding type. Furthermore, to accommodate equality in predicate logic, we introduce the type `a == b` of proofs that `a` and `b` are equal. In this way, we get a Curry-Howard interpretation of predicate logic with equality. We can go even further and add the type of natural numbers with addition and multiplication, and get a Curry-Howard version of Heyting (intuitionistic) arithmetic.

The CHI was the basis for *Martin-Lof's intuitionistic type theory*, where the propositions and types are actually identified. Although Martin-Lof's theory was primarily intended to be a foundational system for constructive mathematics, it can also be used as a programming language.

From the early 1980's and onwards, a number of computer systems implementing variants of Martin-Lof type theory were built. The most well-known are the `NuPRL` system from Cornell, implementing an *extensional version* of the theory, and the `Coq` system from INRIA in France, implementing an *intensional impredicative version*. The `Agda` system implements an *intensional predicative extension of Martin-Lof type theory*. It is the latest in a sequence of systems developed in Goteborg.

Systems implementing dependent type theories are often referred to as either *proof assistants* or *dependently typed PL*, depending on whether the emphasis is on proving or on programming. `Agda` is primarily designed to be a PL, although it can be used as a proof assistant as well. It extends Martin Lof type theory with a number of features, such as flexible mechanisms for defining new inductive data types and for defining functions by pattern matching.

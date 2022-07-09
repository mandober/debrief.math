# Dependent type

https://en.wikipedia.org/wiki/Dependent_type

In computer science and logic, a dependent type is a type whose definition depends on a value.

Dependent types are an overlapping feature of type theory and type systems. In intuitionistic type theory, dependent types are used to encode logical quantification. In FPL (`Agda`, `ATS`, `Coq`, `F*`, `Epigram`, `Idris`) dependent types help reduce bugs by enabling the programmer to assign types that further restrain the set of possible implementations.

Two common examples of dependent types are dependent functions and dependent pairs.

The return type of a *dependent function* may depend on the value (not just type) of one of its arguments. For instance, a function that takes a positive integer `n` may return an array of length `n`, where the array length is part of the type of the array.

A *dependent pair* may have the type of the second component depend on the value of the first component. In the array example, a dependent pair may be used to pair an array with its length in a type-safe way.

Dependent types add complexity to a type system. Deciding the equality of dependent types in a program may require computations. If arbitrary values are allowed in dependent types, then deciding type equality may involve deciding whether two arbitrary programs produce the same result; hence *type checking is undecidable*.

## Contents

- 1. History
- 2. Formal definition
  - 2.1. Π type
  - 2.2. Σ type
    - 2.2.1. Example as existential quantification
- 3. Systems of the lambda cube
  - 3.1. First order dependent type theory
  - 3.2. Second order dependent type theory
  - 3.3. Higher order dependently typed polymorphic lambda calculus
- 4. Simultaneous programming language and logic
- 5. Comparison of languages with dependent types

## History

In 1934, Haskell Curry noticed that the types used in typed lambda calculus, and in its combinatory logic counterpart, followed the same pattern as axioms in propositional logic. Going further, for every proof in the logic, there was a matching function (term) in the programming language. One of Curry's examples was the correspondence between simply typed lambda calculus and intuitionistic logic.

Predicate logic extends propositional logic by adding quantifiers. Howard and de Bruijn extended lambda calculus to match this more powerful logic by creating types for dependent functions (correspond to universal quantification) and dependent pairs (correspond to existential quantification).

Because of this and other work by Howard, propositions-as-types is known as the Curry-Howard correspondence.

## Formal definition

### Π type

Loosely speaking, dependent types are similar to the type of an indexed family of sets. More formally, given a type `A : 𝓤` in a universe of types `𝓤`, one may have a family of types `B : A -> 𝓤`, which assigns to each term `a : A` a type `B(a) : 𝓤`. We say that the type `B(a)` varies with `a`.

A function whose type of return value varies with its argument (i.e. there is no fixed codomain) is a dependent function and the type of this function is called **dependent function type**, dependent product type oρ pi-type.

From a family of types `B : A -> 𝓤`, we may construct the type of dependent functions `Π {x:A} B(x)`, whose terms are functions which take a term `a : A` and return a term in `B(a)`.

For this example, the dependent function type is typically written as:    
`Π (x:A) B(x)` or `Π {x:A} B(x)`.

If `B : A → 𝓤` is a constant function, the corresponding dependent product type is equivalent to an ordinary function type. That is, `Π {x:A} B` is judgmentally equal to `A → B` when `B` does not depend on `x`.

The name "pi-type" comes from the idea that these may be viewed as a Cartesian product of types. Pi-types can also be understood as models of universal quantifiers.



### Σ type




### Example as existential quantification

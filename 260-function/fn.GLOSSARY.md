# Function Theory :: GLOSSARY

<!-- TOC -->

- [Boolean function](#boolean-function)
- [Boolean-valued function](#boolean-valued-function)
- [Brouwer's fixpoint theorem](#brouwers-fixpoint-theorem)
- [Combination](#combination)
- [Domain of definition](#domain-of-definition)
- [General recursive function](#general-recursive-function)
- [Knaster-Tarski theorem](#knaster-tarski-theorem)
- [μ-recursive function](#μ-recursive-function)
- [Total recursive function](#total-recursive-function)
- [Partial function](#partial-function)
- [Partial recursive function](#partial-recursive-function)
- [Permutation](#permutation)

<!-- /TOC -->

## Boolean function
A function whose both domain and codomain are the Boolean set, 𝔹. In logic, such functions are called truth or logical functions. In its most general form, a Boolean function's signature is `f : 𝔹ⁿ → 𝔹ᵐ`, which allows for mutliple input and output values.

## Boolean-valued function
A function with a Boolean codomain, `f : a → 𝔹` (where `a` is a type variable, i.e. any type).

## Brouwer's fixpoint theorem
Brouwer's fixpoint theorem says that any continuous function from a closed ball into itself in Euclidean space must have a fixpoint.

## Combination
A combination is a selection of items from a set that has distinct members, such that the order of selection does not matter (unlike permutations).

## Domain of definition
For a total function, the domain is equal to its domain of definition, but these two differ for partial functions. A partial function `f : A -> B` is not defined over its whole domain `A`; if a subset `S ⊆ A` collects all the elements of `A` for which `f` is defined, then the subset `S` induces a total function, `f' : S -> B`. And the subset `S` is then called *the domain of definition* of the original, partial, function `f`.

## General recursive function
A general recursive function (aka partial recursive function or μ-recursive function) is a number-theoretic partial function computable in the Church-Turing sense and in a formal sense.

## Knaster-Tarski theorem
The Knaster-Tarski theorem says that any order-preserving function on a complete lattice has a complete lattice of fixpoints.

## μ-recursive function
(see General Recursive Function)

## Total recursive function
A total recursive function (often just "recursive function") is a general recursive function that is total.

## Partial function
A function that is undefined (not defined) for some domain elements. For example, the division function on ℝ is not defined when the devisor is 0.

## Partial recursive function
(see General Recursive Function)

## Permutation
A permutation of a set is an arrangement of its elements into a sequence, or if the set is already ordered, a rearrangement of its elements. A permutation is also the process of changing the linear order of an ordered set.

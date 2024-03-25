# Math :: Functions Theory :: GLOSSARY

<!-- TOC -->

- [Algebra of functions](#algebra-of-functions)
- [Boolean function](#boolean-function)
- [Boolean-valued function](#boolean-valued-function)
- [Brouwer's fixpoint theorem](#brouwers-fixpoint-theorem)
- [Combination](#combination)
- [Domain of definition](#domain-of-definition)
- [General recursive function](#general-recursive-function)
- [Fixpoint](#fixpoint)
- [Function](#function)
- [Function value](#function-value)
- [Function signature](#function-signature)
- [Knaster-Tarski theorem](#knaster-tarski-theorem)
- [μ-recursive function](#μ-recursive-function)
- [Total recursive function](#total-recursive-function)
- [Partial function](#partial-function)
- [Partial recursive function](#partial-recursive-function)
- [Permutation](#permutation)

<!-- /TOC -->

## Algebra of functions
Algebra of functions deals with the arithmetic operations of the functions. For doing any arithmetic operation of two functions, their domains must be the same. Algebra of functions mainly deals with the following four arithmetic operations of functions: addition of functions, subtraction of functions, multiplication of functions, division of functions.

## Boolean function
A function whose both domain and codomain is the Boolean set. In logic, such functions are called truth or logical functions. In its general form, an n-ary Boolean function's signature is `f : 𝔹ⁿ → 𝔹`.

## Boolean-valued function
A function with a Boolean codomain, `f : A → 𝔹` (where `A` is ant set). More generally, an X-valued function is intended to rely the fact that the codomain of the function is X (e.g. real-valued function, integer-valued function).

## Brouwer's fixpoint theorem
States that any continuous function from a closed ball into itself in Euclidean space must have a fixpoint.

## Combination
A combination is a selection of items from a set that has distinct members, such that the order of selection does not matter (unlike permutations).

## Domain of definition
For a total function, the domain is equal to its domain of definition, but these two differ for partial functions. A partial function `f : A -> B` is not defined over its whole domain `A`; if a subset `S ⊆ A` collects all the elements of `A` for which `f` is defined, then the subset `S` induces a total function, `f' : S -> B`. And the subset `S` is then called *the domain of definition* of the original, partial, function `f`.

## General recursive function
General recursive functions (GRF), aka partial recursive functions or μ-recursive functions, are number-theoretic (domain ℕ) partial function computable in the Church-Turing sense and in a formal sense. GRFs are PRFs (which are total) extended with the minimization operator μ (which makes them partial).

## Fixpoint
Fixpoint or fix point of a function `f : A → A` is an input `x₀ ∈ A` such that `f(x₀) = x₀`. Some functions have no fixpoints (successor on ℕ), some have one (square on ℕ), some have few (fibonacci), and some have many (identity). Iterating some functions on an input converges to a fixpoint (cos).

## Function
A function is a functional relation, meaning that a relation to qualify as a function it has to possess two properties. The first property is absolutely essential: an element of the domain cannot be associated with two distinct elements of the codomain, or such relation is not a function. Relations that have this property (right-unique relations) are *partial functions*. Of relations that are partial functions, *total functions* are those that have the second property (left-total relations): all elements in the domain of a relation must participate in the relation (must be associated with some element of the codomain).

## Function value
Unapplied functions do not have a simple (flat, base) value (although sometimes functions themselves are considered as values, but this is a special case). When a function `f : A → B` is applied to an appropriate input - which must be an element in the domain set `A`, we get the expression `f(x)`, where `x ∈ A`. This expression denotes the function application - it means the function `f` is applied to an input `x` - and it evaluates to a value (fingers crossed), which is usually denoted by `y`, which is an element of the codomain `B`, such that `f(x) = y`. Here, the variable `y` has the same value as the expression `f(x)` - they both denote the same element (value) in `B` - that element is the value of `f` at `x`.

## Function signature
The signature of a function includes
- the name of the function, `f`
- the domain of the function, `A`
- the codomain of the function, `B`
- the number of inputs, i.e. function's arity
- the number of output values (if allowed, which is unusual)

A signature may be denoted by `f: Aⁿ → Bᵐ`, where `n` specifies the function's arity, and `m` the number of output values (although it is rare that functions return more than one output). However, this signature is not the most general one because it restricts all inputs to the same domain `A`.

For example, a ternary function with the same domains (all 3 inputs come form the same set `A`) has the signature `f: A³ → B`, i.e. `f: A×A×A → B`. The product of the domains means the function takes 3 inputs - all 3 from the same set `A` - in the form a triple, `(a₀, a₁, a₂)`. On the other hand, if it had distinct domains, the signature would change to `f: A×B×C → D` to denote such a quaternary function. This suggests it is impossible to come up with a most general (generic) signature when domains are heterogeneous.

Although it is rare that functions return more than one output, that single input can sometimes be a compund value. However, in such cases, the signature also has to change to reflect it. Functions that return a collection of elements do not have a standard or even uniform notation. Some authors annotate a function that returns a list of Booleans as `f : 𝔹 → 𝔹*`, while others would use `f : 𝔹 → [𝔹]`. Functions that return a set are sporadically denoted as `f : ℕ → 𝒫(ℕ)`, `f : ℕ → ℤ ∖ {0}` and similar, using braces in the codomain to suggest set-valued functions.

## Knaster-Tarski theorem
The Knaster-Tarski theorem says that any order-preserving function on a complete lattice has a complete lattice of fixpoints.

## μ-recursive function
(see General Recursive Function)

## Total recursive function
A total recursive function (often just "recursive function") is a general recursive function that is total.

## Partial function
A function that is undefined (not defined) for some domain elements. A famous example is the division function, `(÷) : ℝ² → ℝ`, which is undefined when the second input (devisor) is 0.

Generally, all functions are partial functions. Total functions are a subset of partial functions, which, in turn, are a subset of relations. Partial functions show that the most important property of functions is right-uniqueness (univalence, functional relation), i.e. that the same element of the domain cannot be associated to more than one codomain element: if `f : A → B`, then `∀xxʹ ∈ A. f x = f xʹ ⇔ x = xʹ`. Partial functions may not have all domain elements participating, but those that are must obey this rule. In other words, total functions are partial partials where all domain elements participate in the functional relation.

## Partial recursive function
(see General Recursive Function)

## Permutation
A permutation of a set is an arrangement of its elements into a sequence, or if the set is already ordered, a rearrangement of its elements. A permutation is also the process of changing the linear order of an ordered set.

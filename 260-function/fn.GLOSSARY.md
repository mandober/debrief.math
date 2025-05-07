# Math :: Functions Theory :: GLOSSARY

<!-- TOC -->

- [Algebra of functions](#algebra-of-functions)
- [Boolean function](#boolean-function)
- [Boolean-valued function](#boolean-valued-function)
- [Brouwer's fixpoint theorem](#brouwers-fixpoint-theorem)
- [Combination](#combination)
- [Domain of definition](#domain-of-definition)
- [Empty function](#empty-function)
- [General recursive function](#general-recursive-function)
- [Fixpoint](#fixpoint)
- [Function](#function)
- [Functions-as-values](#functions-as-values)
- [Function value](#function-value)
- [Function signature](#function-signature)
- [Knaster-Tarski theorem](#knaster-tarski-theorem)
- [μ-recursive function](#μ-recursive-function)
- [Total recursive function](#total-recursive-function)
- [Partial function](#partial-function)
- [Partial recursive function](#partial-recursive-function)
- [Permutation](#permutation)
- [Primitive recursive functions](#primitive-recursive-functions)
- [Total function](#total-function)

<!-- /TOC -->

## Algebra of functions
Algebra of functions deals with the arithmetic operations of the functions. For doing any arithmetic operation of two functions, their domains must be the same. Algebra of functions mainly deals with the following four arithmetic operations of functions: addition of functions, subtraction of functions, multiplication of functions, division of functions.

## Boolean function
A function whose both domain and codomain is the Boolean set. In logic, such functions are called truth or logical functions. In its general form, an n-ary Boolean function's signature is `f : 𝔹ⁿ → 𝔹`.

A Boolean function is a function whose arguments and result assume values from the Boolean domain, i.e. a two-element set, usually, `{T,F}` or `{0,1}`. Unary `f: 𝔹 → 𝔹`, binary `g: 𝔹 ⨯ 𝔹 → 𝔹` or `g: 𝔹² → 𝔹` or `g: 𝔹 → 𝔹 → 𝔹`, and in general `h: 𝔹ⁿ → 𝔹`.

## Boolean-valued function
A function with a Boolean codomain, `f : A → 𝔹` (where `A` is ant set). More generally, an X-valued function is intended to rely the fact that the codomain of the function is X (e.g. real-valued function, integer-valued function).

## Brouwer's fixpoint theorem
States that any continuous function from a closed ball into itself in Euclidean space must have a fixpoint.

## Combination
A combination is a selection of items from a set that has distinct members, such that the order of selection does not matter (unlike permutations).

## Domain of definition
For a total function, the domain is equal to its domain of definition, but these two differ for partial functions. A partial function `f : A -> B` is not defined over its whole domain `A`; if a subset `S ⊆ A` collects all the elements of `A` for which `f` is defined, then the subset `S` induces a total function, `f' : S -> B`. And the subset `S` is then called *the domain of definition* of the original, partial, function `f`.

## Empty function
The empty function arises from partiality which allows some domain elements not to participate in the relation. If all domain elements fail to participate we get an empty function. Under the view of functions as sets, the graph of function is what defines a function and therefore there is only one empty function. But under the stricter definition of a function where a function is determined not only by its graph but by the domain and codomain set as well, there are many empty functions.

The empty function also arises from enumerability, where the empty set is considered to be denumerable - its members are enumerated exactly by the empty function.

## General recursive function
General recursive functions (GRFs) (partial recursive functions, μ-recursive functions) are number-theoretic (with the domain ℕ) partial function computable in the Church-Turing sense and in a formal sense. Endowing the primitive recursive functions with an additional operator called minimization or `μ` yields the set of general (partial) recursive functions.

## Fixpoint
Fixpoint or fix point of a function `f : A → A` is an input `x₀ ∈ A` such that `f(x₀) = x₀`. Some functions have no fixpoints (successor on ℕ), some have one (square on ℕ), some have few (fibonacci), and some have many (identity). Iterating some functions on an input converges to a fixpoint (cos).

## Function
A function is a functional relation, meaning that a relation to qualify as a function it has to possess two properties. The first property is absolutely essential: an element of the domain cannot be associated with two distinct elements of the codomain, or such relation is not a function. Relations that have this property (right-unique relations) are *partial functions*. Of relations that are partial functions, *total functions* are those that have the second property (left-total relations): all elements in the domain of a relation must participate in the relation (must be associated with some element of the codomain).

## Functions-as-values
Functions-as-values means treating *function definitions* (lambda abstractions) as bona-fide values: allowing to pass a function as an argument into another function, and/or to return a function (function definition) from another function. Functions-as-values is a crucial property of lambda calculus, but is not otherwise much used in math in general.

The concept of function-as-a-value is a very different kind of value compared to a *function value*: the latter just means the value that the function returned (returns), but the former means treating functions (function definitions) as first-class values, so they may be 

## Function value
Function value is a value that a function will eventually return when it is applied to an argument of appropriate type. We cannot which concrete value will that be, only the type of the return value, read off from the function's type signature. The phrase "function value" is often paraphrased as, e.g. "Boolean-valued function", which means a function that takes some unknown type but returns a Boolean value. On the other hand, "Boolean function" means a function that both takes and returns a Boolean. There is no generally accepted phrase that is used to signify just the input type of a function while leaving the return type open ("Boolean-taking function" seems fine, but it's not lore).


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
A function that is not defined for some domain elements. A well-known example is the division function, `(÷) : ℝ² → ℝ`, which is undefined when the second argument (the devisor) is 0. Generally, all functions can be considered partial functions as partiality makes for a bigger set then totality. However, when the term "function" appears unqualified, it normally denotes a total function; more often then not, we have to qualify partial functions explicitly. So, total functions are a subset of partial functions, which, in turn, are a subset of relations, TF ⊆ PF ⊆ Rel. In other words, total functions are partial functions whose all domain elements participate in the relation.

Partial functions show that the most important property of being a function is right-uniqueness (aka univalence, functional relation), i.e. that an element of the domain (which participates in the relation) is associated to exactly one element on the codomain; if it would be associated to more then one codomain element that would be a relation, not a function; and, due to partiality, a domain element may not be associated at all. So, if any domain element is associated exactly once, that is a total function; if it is associated more then once, that is a relation; if it is associated zero times or once, that is a partial function.

If `f : A → B`, then `∀x ∈ A. ∃yz ∈ B. f x = y ∧ f x = z ⇒ y = z`, i.e. if `x` is mapped by `f` to `y` and `x` is mapped by `f` to `z`, then `y` and `z` better be the same element or this is not a function (total or partial).

But just how many domain elements are allowed to skip participation in the relation for that relation to be called a partial function? What if all domain element fail to participate? Curiously, that is allowed! The empty function is an example of a partial function where no elements participate in the relation.

 primitive recursive functions

## Partial recursive function
(see General Recursive Function)

## Permutation
A permutation of a set is an arrangement of its elements into a sequence, or if the set is already ordered, a rearrangement of its elements. A permutation is also the process of changing the linear order of an ordered set.

## Primitive recursive functions
Primitive recursive functions (PRFs) are total functions constructed from the 3 basic primitive functions: zero (ζ), succ (σ) and projection (π), which are combined using the 2 primitive operations: composition (∘) and primitive recursion (ρ). PRFs are total functions guaranteed to terminate.

## Total function
A function defined on its entire domain (on all elements in the domain) is a total function. That is, a function that always produces an answer (value) on any input (argument) is total. Total functions always terminate. Being undefined on some input value or not terminating on some inputs makes for a partial function. Primitive recursive functions are a set of total functions guaranteed to terminate.

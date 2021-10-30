# Primitive Recursive Function

https://en.wikipedia.org/wiki/Primitive_recursive_function
https://planetmath.org/recursivefunction
https://planetmath.org/alternativecharacterizationsofrecursivefunctions

## PRF set

In computability theory, a *primitive recursive function* is a function computable by a program that can only use bouned loops (e.g. for-loop); that is, the upper bound on the number of iterations through the loop can be determined in advance (before entering the loop).

Primitive recursive functions form a strict subset of general recursive functions that are also *total functions*, `PRF ⊂ GRF ⊆ TF`.

*General recursive functions* are functions that can be computed by a program free to use unbounded loops (such functions may diverge). Therefore, a GRF can compute everything a TM can.

The set of primitive recursive functions is very important because such functions are guarateed to terminate (it was so proven). This wouldn't be interesting in itself, was it not for the fact that most number-theoretical functions from arithmetics are primitive recursive; that is, they can be defined under the constraints of primitive recursion.

In fact, to show that a *computable function* is primitive recursive, it suffices to show that its time complexity is bounded from above by a primitive recursive function on its input size. It is difficult to devise a computable function that is not primitive recursive, although some have been discovered, including Sudan and Ackermann functions.

The set of primitive recursive functions is known as __PR__ in computational complexity theory.

## PRF properties

PRFs are number-theoretic functions, operating excludively over the set ℕ. In general their signature is `ℕⁿ -> ℕᵐ`, meaning they are `n`-ary functions, taking `n` args, and returning `m` values (where `n,m ∈ ℕ`).




Most computable functions definable using recursion on one variable are PRF (addition, multiplication, exponentiation, truncated subtraction, division, factorial, etc.).

PRFs are built from the 3 initial PRFs
- zero (ζ)
- successor (σ)
- projection (π)

using these primitive operators:
- composition (∘)
- primitive recursion (ρ)
+ combination (⨯)

Some authors leave out the combination operator (×), since it's definable in terms of projection and composition.



*Minimization*, aka the `μ`-operator or unbounded search operator, is a very different operator in that it can use unbounded loops.

The μ-operator searches for the least n ∈ ℕ with a given property.

Adding it to the 5 primitive recursive operators makes it possible to define all computable functions. The 5 PR operators extended with the μ-operator makes this model of computation equivalent to a TM (and with that, to λ-calculus, SK calculus, etc.).


## Primitive recursive operators

The PR operators are not recursive functions themselves; they're the building blocks of functions that are recursive; therefore the ρ-operator is always employed. Recursion is "primitive" in "primitive recursion" because it is expressed in terms of the primitive functions that are themselves obviously computable; they massage the terms into appropriate forms mostly by overusing the projection function.

The biggest problem with translating PRFs theory into a PL is that they are functions which take only a single arg which is a tuple. Now, if it is an 1-tuple a function apllication is denoted f(x), but if the tuple has more components, it is not f((x,y)) as it should be for a fn applied to a tuple, but just f(x,y). Also, tuples can have any arity with functions (like zero, or proj) adopting to the fluctuating arity on the fly, by picking a function's instance with approapriate arity (π² then π³).



## Primitive combinators

More complex primitive recursive functions can be obtained from the 3 basic functions and these 2 combinators: composition and primitive recursion (sometimes a combination operatoe, `combo f g x = f x + g x`, is also included).

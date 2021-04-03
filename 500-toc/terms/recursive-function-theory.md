# Recursion Theory <=> Computability Theory

## Ref

https://en.wikipedia.org/wiki/Primitive_recursive_function
https://legacy.earlham.edu/~peters/courses/logsys/recursiv.htm
https://en.wikipedia.org/wiki/Church%E2%80%93Turing_thesis
https://en.wikipedia.org/wiki/Effective_method
https://en.wikipedia.org/wiki/Computable_function
https://en.wikipedia.org/wiki/Model_of_computation
https://en.wikipedia.org/wiki/Turing-computable_function

μ recursive function: https://en.wikipedia.org/wiki/General_recursive_function
μ operator: https://en.wikipedia.org/wiki/%CE%9C_operator

https://en.wikipedia.org/wiki/Elementary_function
https://en.wikipedia.org/wiki/Constant_function
https://en.wikipedia.org/wiki/Monomial
https://en.wikipedia.org/wiki/Error_function

[Grzegorczyk hierarchy](https://en.wikipedia.org/wiki/Grzegorczyk_hierarchy)
[Recursion (computer science)](https://en.wikipedia.org/wiki/Recursion_(computer_science))
[Primitive recursive functional](https://en.wikipedia.org/wiki/Primitive_recursive_functional)
[Double recursion](https://en.wikipedia.org/wiki/Double_recursion)
[Primitive recursive set function](https://en.wikipedia.org/wiki/Primitive_recursive_set_function)
[Primitive recursive ordinal function](https://en.wikipedia.org/wiki/Primitive_recursive_ordinal_function)


https://en.wikipedia.org/wiki/Primitive_recursive_function
https://en.wikipedia.org/wiki/General_recursive_function
https://en.wikipedia.org/wiki/Corecursion
https://en.wikipedia.org/wiki/Anamorphism
https://en.wikipedia.org/wiki/Fold_(higher-order_function)

https://jtobin.io/practical-recursion-schemes

https://www.youtube.com/watch?v=yaDQrOUK-KY&list=PLC-8dKj3F0NUnR8LeBGH3utAI9aQjFbi5


## Primitive Recursive Functions


* The fields of feasible computability and computational complexity study functions that can be computed efficiently.

* In computational complexity theory, the problem of determining the complexity of a computable function is known as a *function problem*.

* Computability of a function is an informal notion. One way to describe it is to say that a function is computable if its value can be obtained by an effective procedure. With more rigor, a function `f: ℕᵏ -> ℕ` is computable iff there is an effective procedure that, given any `k`-tuple, `𝑿 := (x₀,...,xₖ)`, of natural numbers, will produce the value `f(𝑿)`.

* According to the *Church-Turing thesis*, computable functions are exactly the functions that can be calculated using a mechanical calculation device given unlimited amounts of time and storage space. Equivalently, this thesis states that a function is computable if and only if it has an algorithm. Note that an algorithm in this sense is understood to be a sequence of steps a person with unlimited time and an unlimited supply of pen and paper could follow.

* *Church-Turing thesis* is a hypothesis about the nature of computable functions which states that a function on the natural numbers can be calculated by an effective method iff it is computable by a Turing machine.

A method is considered effective for a class of problems, when it satisfies the following criteria:
- it consists of a finite number of exact, finite instructions.
- when applied to a problem from its class: it always terminates after a finite number of steps, and it always produces a correct answer.
- it can be done by an average person, using nothing but pen and paper.
- its instructions need only to be followed rigorously to succeed (i.e. ingenuity is not required in order to calculate a solution).

* An effective method for calculating the values of a function is an *algorithm*. Functions for which an effective method exists are sometimes called *effectively calculable*.

* Several independent efforts to give a formal characterization of effective calculability led to a variety of proposed definitions (general recursion, Turing machines, λ-calculus, SKI calculi) that were later shown to be equivalent. The notion captured by these definitions is known as *recursive or effective computability*. The Church-Turing thesis states that the two notions coincide: any number-theoretic function that is effectively calculable is recursively computable. As this is not a mathematical statement, it cannot be proven by a mathematical proof.

## Introduction to Recursive Function Theory

* Rather than designing an abstract machine to serve as a model of computation, recursive function theory (RFT) is based on a few simple primitive recursive combinators whose computability is self-evident. RFT explores how large a class of computable functions can be built using only the basic primitives and the derivations obtained from combining them.

## Partial vs Total Functions

Any computable function may be considered as a function on the natural numbers because any data can be represented as a binary string (of 0's and 1's, and 0,1 ∈ ℕ).

However, not every computable function has the form: `f: Nᵐ → Nⁿ where n,m ∈ ℕ` since some functions are not defined for every m-tuple; e.g. division x/y is not defined for y = 0.

* **Partial functions** are functions which are defined only for a subset of their domains. dom(f) ⊆ ℕ

* **Strictly partial functions** are functions which are only defined for a
proper subset of their domains. dom(f) ⊂ ℕ

* **Total functions** are functions which are defined for every value in their domains. dom(f) = ℕ

So, e.g. division is a strictly partial function on ℕ and addition is a total function on ℕ. Both division and addition are partial functions on ℕ.

## Initial functions

Recursive function theory supposes a set of simple, self-evidently computable functions, called *initial functions*, and some computable mechanisms for building more complex functions from the initial ones.

* The initial functions are: zero, successor, projection

* the zero function, ζ, maps the zero-tuple () to 0, `ζ() = 0`. It corresponds to writing a 0 on a blank piece of paper, or initialising a tape cell or a memory location to 0.

* the successor function, σ, gives the successor of the given integer n, `σ(n) = n + 1`.

* the projection functions πⁿₘ. The collection of projection functions map m-tuples onto the n-th component of the m-tuple. e.g. π³₂(7, 11, 4) returns the 2nd element of the 3-tuple (7, 11, 4), i.e. 11.

* By convention 𝑿 will stand for an n-tuple of x's, `𝑿 = (x₀,x₁,...,xₙ)`

## Combinators

The 3 basic techniques for constructing complex functions from the initial functions are: combination, composition and primitive recursion.

Functions constructed from the initial functions by a finite number of applications of combination, composition and primitive recursion are called primitive recursive functions.




---

PRFs can be of 4 types:
1. Number-theoretic functions,  `Nat -> Nat`
2. Predicates,                  `Nat -> Bool`
3. Propositional connectives,   `Bool -> Bool`
4. Representing functions,      `Bool -> Nat`

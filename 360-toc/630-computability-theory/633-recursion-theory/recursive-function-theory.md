# Recursion Function Theory


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

Primitive RF ⊆ Partial RF ⊆ General RF

* Rather than designing an abstract machine to serve as a model of computation, recursive function theory (RFT) is based on a few simple primitive recursive combinators whose computability is self-evident. RFT explores how large a class of computable functions can be built using only the basic primitives and the derivations obtained from combining them.

## Partial vs Total Functions

Any computable function may be considered as a function on the natural numbers because any data can be represented as a binary string (of 0's and 1's, and 0,1 ∈ ℕ).

However, not every computable function has the form: `f: Nᵐ → Nⁿ where n,m ∈ ℕ` since some functions are not defined for every m-tuple; e.g. division x/y is not defined for y = 0.

* **Partial functions** are functions which are defined only for a subset of their domains. dom(f) ⊆ ℕ

* **Strictly partial functions** are functions which are only defined for a
proper subset of their domains. dom(f) ⊂ ℕ

* **Total functions** are functions which are defined for every value in their domains. dom(f) = ℕ

So, e.g. division is a strictly partial function on ℕ and addition is a total function on ℕ. Both division and addition are partial functions on ℕ.




## Ref

* https://jtobin.io/practical-recursion-schemes

* Recursive Function Theory
https://legacy.earlham.edu/~peters/courses/logsys/recursiv.htm

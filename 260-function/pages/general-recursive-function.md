# General recursive function

https://en.wikipedia.org/wiki/General_recursive_function

A **general recursive function** (GRF, *partial recursive function*, *μ-recursive function*) is a partial function from natural numbers to natural numbers that is "computable" in an intuitive sense - as well as in a formal one. If the function is total, it is also called a *total recursive function* (sometimes shortened to recursive function).

A significant result of computability theory is that the μ-recursive functions are exactly those functions computable by a Turing machine or equivalent models of computation (lambda calculus, Markov algorithm, etc.), which is a fact put forward by the *Church-Turing thesis*.

Primitive recursive functions (PRFs) are a set of rigorously constructed functions that are guaranteed to terminate. They are build exclusively using the set of 5 elementary PRFs: the 3 base primitive functions, `ζⁿ : ℕ -> ℕ` (zero), `σ¹ : ℕ -> ℕ` (successor), `πⁿᵢ : ℕ -> ℕ` (projection), and the 2 combinators, `∘ⁿ : ℕ -> ℕ` (composition) and `ρ² : ℕ -> ℕ` (primitive recursion). All primitive recursive functions are functions on ℕ with specified arities.

GRFs are closely related to PRFs in that the set of GRFs is obtained by extending the PRF set with an additional operator called `μ`, whose introduction voids the termination guarantee as it introduces the means to do general recursion.

However, not every total recursive function is a primitive recursive function (the most famous counterexample being the Ackermann function).

The subset of all total recursive functions with values in `{0,1}` is known in computational complexity theory as the *complexity class R*.


function
- partial function
  - general recursive function, partial recursive function, μ-recursive function
  - total function
    - total recursive function, recursive function
    - primitive recursive function
    - terminating function


- partial function
- total function
- recursive function
- terminating function

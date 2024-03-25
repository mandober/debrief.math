# Primitive recursive functions :: Summary

Recursive function theory (Recursion theory, now Computability theory) seeks to formalize the notion of computable functions. The interest in the recursive functions has to do with the fact that they are a model of computation that is equivalent to the universal models of computation such as lambda calculus and Turing Machine.

General recursive functions are computable functions. General recursive functions include partial recursive functions that actually make potentially diverging functions, but also make GRF a TM-equivalent model of computation (TM and LC can also produce diverging computations).

Partiality is bad because such functions are not well-defined (they don't cover their entire domain), and are thus more likely to induce non-termination. However, the GRF class also includes total recursive functions. It may be said that GRFs are recursive functions that include partial and total recursive functions; or (because partial recursive functions are more general) that total recursive functions are a proper subset of partial recursive functions, `TRF ⊂ PaRF ⊆ GRF`.

Termination is a much desired property of functions, with the active research community, that e.g. seeks to implement a total functional programming language. Totality is a major prerequisite to have well-defined functions whose termination is then more easily ensured. One approach to ensure termination is to use *well-founded recursion* that demands that the recursive argument gets somehow "smaller" with each step. Another approach is to build a set of such functions in stages, starting with functions that already have the desired properties.

The primitive recursive functions are build with the latter approach: starting with a few obviously simple, self-evidently terminating, total functions, called *initial functions*, and computable mechanisms for building more complex functions from the initial ones. These computable mechanisms are actually just two combinators that have been verified to behave correctly when combining PRFs to produce more PRFs.

The PRF set of functions is a proper subset of GRFs, even a proper subset of TRFs. However, not all total recursive functions are primitive recursive functions. It took sometime to prove this, until the discovery of the Ackermann or Sudan function. In fact, the Ackermann function rquires recursion for its computation, it cannot be defined using imperative constructs (e.g. iteration).

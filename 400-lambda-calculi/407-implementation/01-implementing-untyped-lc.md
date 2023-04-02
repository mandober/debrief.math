# Implementing untyped lambda calculus in Haskell



However, `subst` is an auxillary function to 

Evaluation functions
- step
- whnf
- nf

The `step` is one of the evaluation functions that performs only a single step of reduction.

The `whnf` is one of the evaluation functions that reduces an expression only down to the Weak Head Normal Form (WHNF). The `whnf` *does not reduce the redexes under abstractions*.

The `nf` is one of the evaluation functions that reduces an expression down to the Normal Form (NF). This means it reduces the redexes like `whnf` but also *reduces the redexes under abstractions*.

The `whnf` and `nf` are big step evaluation functions that reduce an expression down to a *value*.

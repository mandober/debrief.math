# Reduction strategy

https://en.wikipedia.org/wiki/Reduction_strategy#Lambda_calculus

In rewriting, a *rewriting or reduction strategy* is a relation specifying a rewrite for each object or term, compatible with a given *reduction relation*. Some authors use this term to refer to an evaluation strategy. *Rewriting* covers a wide range of, potentially non-deterministic, methods of replacing subterms of a formula with other terms. In their most basic form, *rewriting systems* (aka rewrite systems, rewrite engines, reduction systems) consist of a set of objects, along with relations on how to transform those objects.

- call-by-value
- call-by-value linear lambda calculus
- call-by-need λ-calculus
- Ariola and Felleisen's call-by-need λ-calculus
- leftmost-outermost
- call-by-need λ calculus, the de Bruijn version
- call-by-need evaluation strategy
- call-by-name strategy
- call-by-sharing


## Reduction strategies

Main article: Reduction strategy § Lambda calculus
https://en.wikipedia.org/wiki/Reduction_strategy#Lambda_calculus

Whether a term is *normalising* or not, and how much work needs to be done to normalize it, depends to a large extent on the reduction strategy used.

Common reduction strategies:
* Normal order
The *leftmost outermost redex* is reduced first; whenever possible, the args are substituted into the body of an abstraction before they are reduced.
* Applicative order
The *leftmost innermost redex* is reduced first; args are reduced before the function. Applicative order attempts to apply functions to *normal forms*, even when this is not possible.
* Full β-reductions
Any redex can be reduced at any time; free reduction strategy.

Weak reduction strategies do not reduce under lambda abstractions:
* Call-by-value
A redex is reduced only when its RHS has been reduced to a value (variable or abstraction); only the *outermost redexes* are reduced.
* Call-by-name
As normal order, but *no reductions inside abstractions*; e.g. `λx.(λx.x)x` is in normal form according to this strategy, although it has the redex `(λx.x)x`.

Strategies with sharing reduce computations that are "the same" in parallel:
* Optimal reduction
As normal order, but computations that have the same label are reduced simultaneously.
* Call-by-need
As call-by-name (hence weak), but function applications that would duplicate terms instead name the arg, which is then reduced only "when needed".

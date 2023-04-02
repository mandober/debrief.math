# Lambda Calculus :: Implementation of untyped lambda calculus

Implementation of an untyped lambda calculus in Haskell.

An untyped lambda calculus, like all lambda calculi has the simple grammar comprised of the 3 basic lambda term: Var, App, Abs. The indefinite article "an" is used because there are many factors that influence an implementation, of which a more important one is the choice of the *reduction strategy*.

## Reduction strategy

LC is, basically, just a grammar, a notation system around function definition and application, that doesn't come with any semantic rules. We have to come up with the rules of reduction ourselves, that is, we need to choose which rules we'll use.

β-reduction is the fundamental rule that describes the application of one expression to another. β-reduction is triggered when two lambda expressions are juxtaposed - a *left operand* and a *right operand* with applcation as the operation. Since only an abstraction can be applied to an expression, we first need to make sure that the left operand is indeed an abstraction. If it's not, than we emit an error, otherwise we perform the β-reduction.

β-reduction rule says that in an application `M N`, when we reveal that `M` is actually an abstraction, and thus `(λx.B) N`, we perform the substitution: we substitute all the *free occurrences* of the variable `x` in the lambda body `B` with the argument expression `N`. The substitution is exactly the tricky part of implementing a LC because it is easy to accidently let a free variable get captured by the wrong binding. For example,

```hs
(λa.λb.a)(λb.b) --> λb.λb.b -- (1) name capture, but ok
(λa.λb.a)(λx.b) --> λb.λx.b -- (2) name capture
```

Most importantly, in a lambda abstraction `λx.B`, the variable `x` is bound with the lambda binder `λx`, and this is its *binding occurrence*; `x` is neither free nor bound here - it is its binding occurrence. If `x` also appears in the lambda's body `B`, one of more times, these are then its *applied occurrences* (as opposed to its free or binding occurrences).

For example, in the expression `λx.λy.x`, the variable `x` has the binding occurrence at `λx` and then it has a single applied occurrence in that abstraction's body. That is, in `λx.λy.x`, the body is the parenthesized subexpression, `λx.(λy.x)`, in which `x` has one applied occurrence. Moreover, despite being *bound* when the entire expression is considered, if we only consider the body of the abstraction that binds the `x`, i.e. only the `(λy.x)` part, then `x` occurrs *free* in that subexpression.



λx.(λy.x)



In (1) the 





then the expression on the left (the left operand) 

there is an applcation of 



When we consider a lambda expression, it can be reduced



to consider in an implementation.


To implement an untyped lambda calculus 



## Moving parts

- reduction strategy
  - normal order
  - application order
- evaluation strategy
- canonical forms
  - NF (normal form)
  - HNF
  - WHNF
  - β normal form
  - β-η normal form
- redex
  - β-redex
  - β-reductions
  - η-redex
  - η-reductions

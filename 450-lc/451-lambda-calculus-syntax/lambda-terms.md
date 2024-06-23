# Lambda terms

Lambda calculus has 3 core terms:
1. variable (x,y,z,…)
2. lambda abstraction, (λx.B)
3. lambda application, (M N)

## Lambda term

A *lambda term* is one of the 3 forms, and a *lambda expression* is build by recursively composing these 3 forms. But then there is no difference between a lambda term and lambda expression at all, so they are used interchangibly.

## Canonical representation of lambda terms

Usually, lambda terms are discussed as forms that include some *metavariables*. For example, while `x` alone is bona fide lambda term (and lambda expression) that may represent variables in a canonical way, it is the only one that can. In fact, even `x` is not such a good choice for representing all variables as it doesn't represent all the different names a variable may have, names which are optionally decorated with subscripts and primes. Still, we usually do allow `x` to stand for all variables, hoping the context makes that clear.

The other two lambda terms have no such luck, so we use metavariables to represent them. The form `λx.M` stands for an arbitrary abstraction, and `M N` for an arbitrary application. `M` and `N` are metavariables that stand for arbitrary lambda expressions.

Lambda terms
- x
- λx.M
- M N

Operations on lambda expressions will almost always be defined using *structural induction* on these 3 forms.

For example, a quasi operations that reveals the top constructor (data ctor) of a lambda expression can be defined like below, as a multi-part equation that has one equation per each lambda term:

```
root(x)    = "var"
root(λx.B) = "abs"
root(M N)  = "app"
```

The function `root` takes a lambda expression `e` and returns its root constructor (a string).

Many operations will have this form; the kind (or type) of the argument can usually be determined by the surrounding context.

As a real example, here's a proper function that finds all the free variables in the given lambda expression:

```
FV(x)    = {x}
FV(λx.M) = FV(M) ∖ {x}
FV(M N)  = FV(M) ∪ FV(N)
```

## Variables

Although variables are lambda terms (and thus lambda expressions), it is not very sensible to have a single variable as the entire expression.

Variables are terminating nodes (leaves) in a expression tree.

Abs and App as roots can be composed indefinitely with other lambda expressions, but not Var.

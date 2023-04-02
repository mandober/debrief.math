# Application

The first basic operation of the λ-calculus is application. A lambda expression `F · A` or `FA` denotes the term `F`, considered as algorithm, applied to the term `A`, considered as an argument (input).

This can be viewed in two ways: either as the process of computation `FA`, or as the output of this process. The first view is captured by the notion of conversion and even better of reduction; the second by the notion of models (semantics).

The theory is type-free: it is allowed to consider expressions like `FF`, that is `F` applied to itself. This will be useful to simulate recursion.


## Abstraction

The other basic operation is abstraction. If `M ≡ M[x]` is an expression containing (depending on) `x`, then `λx.M[x]` denotes the anonymous function `x ⟼ M[x]`.

Application and abstraction work together in the following intuitive formula.

`(λx. 2 * x + 1) 3` = `2 * 3 + 1` = `7`

That is, `(λx. 2*x+1)3` denotes the function `x ⟼ 2*x+1` applied to the arg `3`, giving the result `2*3+1`, which is `7`.

In general we have `(λx.M[x])N` = `M[N]`.

This last equation is preferably written as 

```js
(λx.M)N = M[x:=N]         (β)
```

where `[x:=N]` denotes substitution of `N` for `x` within `M`. It is remarkable that although *β-reduction* is the only essential axiom of the λ-calculus, the resulting theory is rather involved.

## Free and bound variables

Abstraction is said to bind the *free variable* `x` in `M`. For example, we say that `λx.yx` has `x` as bound var and `y` as a free variable. 

Substitution [x:=N] is only performed in the free occurrences of `x`:

`yx(λx.x)[x:=N] ----> yN(λx.x)`

For reasons of hygiene it will always be assumed that the bound variables that occur in a certain expression are different from the free ones. This can be fulfilled by renaming bound variables. E.g. `λx.x` becomes `λy.y`. Indeed, these
expressions act the same way:

`(λx.x)a` = `a` = `(λy.y)a`

and in fact they denote the same algorithm. Therefore, expressions that differ only in the names of bound variables are identified.

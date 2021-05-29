# Combinatory logic

Combinatory logic is a notation to eliminate the need for *quantified variables* in mathematical logic. CL was introduced by *Moses Schönfinkel* in *1920*, and later reintroduced by *Haskell Curry*. CL was used as a theoretical model of computation in CS, and as the foundation for the design of FP languages.

CL is based on combinators, introduced by Schönfinkel, which provide a way to build functions without mentioning any variables. *Combinators* are higher-order functions that use only function application, with previously defined combinators, to define a result from its arguments.

It is perhaps surprising that *lambda calculus* can represent any conceivable computation using only the simple notions of function abstraction and application based on simple textual substitution of terms for variables. But even more remarkable is that abstraction is not even required: *combinatory logic* is a model of computation equivalent to lambda calculus, but without abstraction.

The advantage of this is that evaluating expressions in lambda calculus is quite complicated because the semantics of substitution must be specified with great care to avoid variable capture problems. In contrast, evaluating expressions in combinatory logic is much simpler, because there is no notion of substitution.

## Combinatory calculi
Since abstraction is the only way to manufacture functions in the lambda calculus, something must replace it in the combinatory calculus. Instead of abstraction, combinatory calculus provides a *limited set of primitive functions* out of which other functions may be built.

## Combinatory terms
A combinatory term has one of the following forms: x, P, MN. Here, x is a variable, P is one of the primitive functions, and MN is the application of combinatory terms M and N. Application is left-associative, like in LC.

The *primitive functions* themselves are combinators, or functions that, when seen as lambda terms, contain no free variables.

## Reduction in combinatory logic
In combinatory logic, each primitive combinator comes with a reduction rule of the form `(P x1 ... xn) = E`, where E is a term mentioning only variables from the set `{x1,...,xn}`. It is in this way that primitive combinators behave as functions.


## Combinators
* I, the identity, defined by `(Ix)=x` for all terms x
* K, constant fn factory (*True* in LC): `(Kx)`; e.g. `((Kx)y)=x`
* S, the successor, for generalized application: `(Sxyz)=(xz(yz))`


The simplest combinator is `I`, the identity combinator, defined by 
`(I x) = x` for all terms x.

Another simple combinator is `K`, which manufactures constant functions: `(K x)` is the function which takes 2 args and returns the first one. It "locks in" the first argument, and after the second arg is supplied (whatever it may be), it just returns the first one i.e. x. In LC, this function is usually called `true` or `first`. We say `((K x) y) = x` for all terms x and y. Or, following the convention for multiple application, `(K x y) = x`.

The third combinator is S, which is a generalized version of application: 
`(S x y z) = (x z (y z))`.

`S` applies `x` to `y` after first substituting `z` into each of them; i.e. `x` is applied to `y` inside the environment `z`).

In pseudo LC (with S instead of λ):
```
(λfgx.fx(gx))a b z    [a/f]fx(gx)
 (λgx.ax(gx))b z      [b/g]ax(gx)
  (λx.ax(bx))z        [z/x]ax(bx)
      az(bz)
```

It's like having a fn `λfg.fg`, but before applying f to g, you want to apply both to x, `λfgx.fx(gx)`.

Given `S` and `K`, we can build `I`:

```
CL:         vs  LC    /S: λfga.fa(ga)/, /K: λab.a/
((S K K) x  |   SKKx = (S     ) K    ) K    ) x
(S K K x)   |   (((λfgh.fh(gh)) λab.a) λmn.m) x
(K x K x)   |   (λh.Kh(Kh))x
(K x)       |   Kx(Kx) == K (x) (Kx)  /with (x) being the 1st arg/
x           |   x
```




## Reference

https://en.wikipedia.org/wiki/Combinatory_logic

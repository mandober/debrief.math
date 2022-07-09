# Lambda Calculus: Expressions

* In an application, if the abstraction's formal parameter is the same as its body, then the result is always the argument, `(λp.p) A == A`.

* In an application, if the abstraction's formal parameter, its body and the argument are all different terms, then the result of the reduction is always the body, `(λp.B) A == B`. That is, if the formal parameter is not referenced in the abstraction's body, it will be dropped, and such redex will reduce to the expression that makes the abstraction's body.

* It is possible to shadow a variable with an eponymous local parameter, like in the term `λx. (λx. x x)` in which there is no way to refer to the outer `x`.



```js
(λp.p) A == A
(λp.B) A == B

// free var
x
// introduce the binding for it, obtaining an abs
λx. x
// call the abs with any arg value
(λv. x) (λa. a) == x
```

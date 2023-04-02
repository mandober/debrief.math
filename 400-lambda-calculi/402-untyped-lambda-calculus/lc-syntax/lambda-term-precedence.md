# Fixity of lambda-terms

* Fixity (precedence and associativity) of lambda-terms.
* Associativity of lambda-terms
  - lambda abstraction is right-associative
  - lambda application is left-associative
* Precedence of lambda-terms
  - lambda application has higher precedence than abstraction
* Shorthand notation for lambda abstraction:
  - λabc.E = λa.λb.λc.E
* Top-level lambda term
  - only a single lambda term can be at the top-level
  - thus, all variables within it are bound


## Named bindings

* Considering LC as a programming language, a program always consist of a single lambda term at the top-level (at the topmost scope). Even though the topmost lambda term may be a lambda abstraction (in which case the program is as-is given, i.e. abstraction is not reducable), it is more convenient to put a redex (lambda application) in this position. This redex is then the "main" function (lambda abstraction), and the arguments (which should be lambda encoded values needed for the program).

* A named binding is not possible at the top level because there can only be a single within the body of the top-level lambda term.

* A named binding is possible within the body of the top-level lambda term.

* It's not possible to have a top-level name binding, e.g. `let some_name = λM.N` because only anonymous functions exist in LC. There are no keywords (e.g. `let`) or top-level bindings. However, a lambda abstraction still has the elements common to functions from FPLs, most importantly, it has formal (dummy) paramaters which have arbitrary names. The names given to each formal parameter is the name the corresponding arg will be referred as in a lambda's body, thus offering a way to have a named binding.

`(λZERO. …)(λab.b)`

* Name the first formal parameter `ZERO`, then apply the enclosing lambda abstraction to an argument representing zero, i.e.` λab.b`, and you'll get to refer to zero using the name `ZERO` in the lambda's body.

```js
(λabc.abc)xyz =
(λa. λb. λc. abc) x y z =
(λa. (λb. (λc. abc))) x y z =
{{(λa. (λb. (λc. abc))) x} y} z =
(λsz.s(s(sz)))(λnfx.f(nfx))(λab.b) 
(λabc.abc)xyz = (((λabc.abc)x)y)z
λabc.abc = λa.(λb.(λc.abc))
```

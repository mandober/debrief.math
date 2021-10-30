# Fixed-point combinator

https://en.wikipedia.org/wiki/Fixed-point_combinator


> Y := λf. (λx. f (x x)) (λx. f (x x))


* In math, a *fixed point* of a function is a value that is mapped to itself by the function, `f(x) = x`. In general, f(x) = y so a fixed point is when x = y.

* Some functions have none, some have one, some have more fixed points, but the identity function is an extreme since any input is a fixed point, `id(x) = x`.

* An example of a function with a single fixed point is `sq(x) = x²` whose domain is ℕ; its only fixed point is at x = 1 such that `sq(1) = 1`.

* In combinatory logic, a **fixpoint combinator**, is a HOF called `fix` that finds a fixed point of the input argument function.

* In fact, H. Curry has shown that, in LC, every functions has a fixed point.

```
f x = y     in general
f ω = ω     then ω is a fixed point of f, such that
ω = f ω = f (f ω) = f (f (f ω)) = f (f ... (f ω) ...)

fix takes a function and returns its fixed point:
fix f = ω such that f ω = ω
fix f = f (fix f) = f (f ...f (fix f)...))

in λ-calculus that is the role of Y combinator:
Y f = ω
f ω = ω
-------
ω = f ω  = f (f ω)  = f (f (f ω))  = f (f ... (f ω) ...)
ω = Y f  = f (Y f)  = f (f (Y f))  = f (f ... (Y f) ...)
```


## TOC
  - Y combinator
  - Fixed-point combinator
    - Values and domains
    - Function versus implementation
    - Combinators
  - Y in programming
    - factorial
  - Fixed-point combinators in LC
    - Equivalent definition of a fixed-point combinator
    - Derivation of the Y combinator
    - Other fixed-point combinators
    - Strict fixed-point combinator
    - Non-standard fixed-point combinators
  - Implementation in other languages
    - Lazy functional implementation
    - Strict functional implementation
    - Imperative language implementation
  - Typing
    - Type for the Y combinator


## Y combinator

* In the untyped lambda calculus, every function has a fixed point

* Curry's paradoxical combinator Y := `λf. (λx. f (x x)) (λx. f (x x))`

* In PL with 1st class fns, Y can be used to implement recursion if lacking

* Y may be used in implementing Curry's paradox. The heart of Curry's paradox is that untyped LC is unsound as a deductive system, and the Y combinator demonstrates that by allowing an anonymous expression to represent zero, or even many values. This is inconsistent in mathematical logic.

Applied to a unary function, Y combinator diverges. To curb the execution and emulate loops, another (the second, or usually the last) parameter is used as the counter. Used this way, Y combinator implements simple recursion. Since, in LC, it's not possible to define a function in terms of itself, Y is used for recursion which is possible due to function self-application.

* The starting point is the little omega function which is an example of self-application, but it diverges, forever reproducing itself, `ω := λf.ff`.

* The most general recursive function is `fix f = f (fix f)`, in term of which all recursive functions can be encoded. `fix` returns the fixpoint of the supplied function; however, it doesn't really find any particular fixpoint, it more represents or "encodes" the solution - as the LHS expression itself. It's like, for any function `f`, its fixpoint is `f (fix f)`, which when expanded produces `f (f (fix f))`, `f (f (f (fix f)))`, ..., `f (f ...f (fix f)...))`. In FPL, this "forward expansion", when the fix function is implemented as a datatype, like `Fix f = f (Fix f)`, can be considered as addition of layers (of `f`), while the "backward reduction" is like peeling off these layers.

* The key to curbing the recursion is to have at least a binary function whose second argument acts as the control counter, so it is checked before entering the body which "pulls the recursion further" by adding another recursive layer.


```
Fix f = f (Fix f)

(Y)(f) = f (Y f)

ω := λg.gg
Ω := λg.λf.f(gg)
Ω := λf.λg.f(gg)

Y := (λg.λf.gg) (λx.f(xx))
Y := λf. (λx.f(xx)) (λx.f(xx))

fac := λf. λn. ISZERO n 1 (...)
                          (MUL n (f (PRED n)))
```

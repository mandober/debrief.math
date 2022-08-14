# Components of lambda abstraction

Lambda abstraction has a very straightforward correspondence to anonymous functions, actually closures, particularly in functional programming languages like Haskell.

Namely, lambda abstraction corresponds to a function declaration.

Both, lambda abstraction in λ-calculus and function declaration in Haskell, are static, inert entities on its own. In fact, GHC (Haskell's de facto compiler) won't even bother to compile the declaration for a function that's never called. In this passive role, lambda abstractions are often found as arguments to a function. Since functions are the only language entity in λ-calculus, it means functions have to play different syntactic roles, of which the primary two are the active role of a "function" and the passive role of an "argument". Lambda abstractions are both functions applied to function arguments, and function arguments being applied to functions.





B := λa. λb. λc. a c b
Y := λf. (λx. f (x x)) (λx. f (x x))

Lambda abstraction, `λx.M`, consists of
- lambda head, `λx`
- the head-body separator, i.e. `.` aka the dot
- lambda body, `M`, which is a lambda expression

Lambda head, `λx`, consists of
- the binder, i.e. the lambda `λ`
- a single formal parameter, e.g. `x`

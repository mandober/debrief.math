# Combinators

**Combinators** are closed lambda terms.

Combinators usually don't encode data types, but constitute a collection of useful, actual functions.

The challenge to determine the minimal set of combinators in that collection which are sufficient to recreate all the others combinators has been resolved to just two, K and S (and even these two can be combined into just one `ι`).

The SKI combinators
- S
  - S = λ a b c. a c (b c)
  - S a b c = a c (b c)
  - S = \ a b c -> a c (b c)
- K
  - K = λx y. x
  - K a b = a
  - K = \ x y -> x
- I
  - I = λx. x
  - I a = a
  - I = \ x -> x

They make the "active parts" of SKI combinator calculus of combinatory logic, a field that is closely related to lambda calculus. In fact, it is like the lambda calculus without abstraction, with all the terms being the applications of K and S combinators to variables. All *closed* terms of lambda calculus and combinatory logic are interconvertable.

The SKI combinators
- `S := λf g x. f x (g x)`
- `K := λx y. x`
- `I := λx. x` just for convenience since I := SKK


`K` takes two args, returns the first, dropping the second.

`S` is sometimes described as being short for substitution: before applying two lamda terms `M N`, we might want to substitute free var `a` with `x` in both terms, denoted as `[a:=x]M [a:=x]N`, which `S` sets up as `λM N x. M x (N x)`.

```
S := λ M N x. M x (N x)
S M N x = M x (N x)
M x ~~> [a:=x]M
N x ~~> [a:=x]N
[a:=x]M [a:=x]N
```

`S` is sometimes described as being short for substitution: if you have an application `A B`, then `S` allows you to substitute a term `T` for a free variable `v` in both `A` and `B` prior to the application:

S A B T = A[v/T] B[v/T]


Schönfinkel chose to abbreviate *Verschmelzungsfunktion* with `S` for its root *schmelzen* (fusion). But why is `S` the "melting" or "fusion" combinator? It's because Schönfinkel was interested in reducing abitrary mathematical expressions to combinators. He will sometimes have an application `(f x) (g x)` and he wants to 'fuse' the two occurrences of `x`. He can do this by rewriting the expression as `S f g x`.

>Clearly, the practical use of the function S will be to enable us *to reduce the number of occurrences of a variable* - and to some extent also of a particular function - from several to a single one. -- Schönfinkel

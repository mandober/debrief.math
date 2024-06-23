# Lambda calculus :: Eta conversion

The η-conversion consists of two opposite rules:
- η-contraction of a lambda term `λx. f x` results in the lambda term `f`.
- η-expansion expands a lambda term `f` into `λx. f x`.
- η-expansion supposes that every object (term) is a function

`λx. f x` <=> `f`

* Two functions are extensionally equal when their graphs are the same set.
* Two functions are extensionally equal when they produce the same results for the same arguments, considering the entire domain.

* Two functions are intensionally equal when their implementations are the same.

* η-conversion is a stronger version of extensionality (extensional equality of functions)


* η-reduction expresses the idea of extensionality, which in this context means that two functions are the same iff they give the same result for all arguments. η-reduction converts between `λx.f x` and `f`, provided `x ∉ FV(f)` (`x` is not free in `f`).

* η-reduction may be considered the same concept as that of *local completeness* in natural deduction, via the Curry-Howard isomorphism.
* β-reduction can be seen to be the same as the concept of *local reducibility* in natural deduction, via the Curry-Howard isomorphism.


## η-conversion

The η-conversion rule is about the equality of `λx.Tx` <=> `T`. A term `λx.Tx` means that a lambda term `T` will be applied to the arg `x` as soon as it is supplied. But `T` can very well await for the arg on its own - there's no need to scaffold an entire lambda abstraction around it, just to serve it the arg. The η-rule highlights the fact that every object is a function in LC. A FP style, heavy in η-reductions, is called the *point-free style*, obtained by η-contracting the expressions as much as possible. By η-expanding the expressions as much as possible we obtain the *point-full style*. The η-rule is a conversion rule because this process is reversable in both directions, as η-expansion and η-contraction.

```hs
add :: a -> a -> a
add x y = x + y

plus :: a -> a -> a
plus x y = add x y  -- point-full
plus x   = add x    -- point-less
plus     = add      -- point-free
```

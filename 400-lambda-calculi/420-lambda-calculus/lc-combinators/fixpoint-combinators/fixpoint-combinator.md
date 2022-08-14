# Fixpoint combinator

**Fixpoint combinator**: A fixpoint combinator in lambda calculus is a term `n` such that `n e ~~>* e (n e)` for any lambda term `e`.

**Turing's Fixpoint**: let `A = λx.λy.y (x x y)`, then `A A` is a fixpoint combinator, and `e` is any lambda term.

```
A := λx.λy.y (x x y)
A A e = (λx.λy.y (x x y)) A e ~~>* e (A A e)

A A e
= (λx.λy.y (x x y)) A e
= (λx.λy.y (x x y)) (λx.λy.y (x x y)) e
= e (A A e))
```

We usually write `fix` to means a fixpoint combinator, and compuationally it behaves as `fix f ~~>* f (fix f)`.

Fixpoint combinator allows us to represent recursive definition such as `a = G a`, where `G` is a lambda term, by a lambda term `a = fix G`.

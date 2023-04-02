# Turing fixpoint

**Turing's Fixpoint**: 
let `A = λx. λy. y (x x y)` 
then `A A` is a fixpoint combinator, 
for any lambda term `e`.

`A A e` ~~>ᵦ⃰ `e (A A e)`



```hs
A := λx.λy.y (x x y)

A A e
= (λx. λy. y (x x y)) A e
= (λy. y (A A y)) e
= e (A A e)
```


Usually `fix` denotes a fixpoint combinator, and compuationally it behaves as

`fix f` ~~>ᵦ⃰ `f (fix f)`

Fixpoint combinator allows us to represent recursive definition like `a = G a`, where `G` is a lambda term, by a lambda term `a = fix G`.

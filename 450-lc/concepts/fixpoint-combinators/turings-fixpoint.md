# Turing fixpoint

The Y fixpoint combinator is not the only possible lambda term that satisfies the formula which states that `F` is a fixpoint combinator iff
>F e = e (F e)

Alan Turing has also came up with a lambda term we now call *Turing fixpoint*, usually denoted by `A` or `U` or:

Let `A := λx. λy. y (x x y)`   
then `A A` is a fixpoint combinator, 
for any lambda term `e` since    
`A A e` ~~>ᵦ⃰ `e (A A e)`

_~~>ᵦ⃰_ means that the left-hand side lambda term reduces in some number of steps into the right-hand side lambda term.

Verification:

```hs
A := λx. λy. y (x x y)

A A e
= A                   A e
= (λx. λy. y (x x y)) A e
=     (λy. y (A A y))   e
=          e (A A e)
```

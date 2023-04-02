# Free variables

The set of free variables of a lambda expression, `M`, is denoted as `FV(M)` and is defined by recursion on the structure of the terms:
- FV(x)    = {x}
- FV(λx.M) = FV(M) ∖ {x}
- FV(M N)  = FV(M) ∪ FV(N)


```hs
type Name = String

fv :: Exp -> Set Name
fv exp = case exp of
  Var s   -> [s]
  Lam s e -> fv e ∖ [s]
  App m n -> fv m ⋃ fv n
```

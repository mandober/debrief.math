# de Bruijn indices :: Substitution 

The cutoff `c` keeps track of the vars bound in the orginal exp - the vars which should not be shifted.

The *cutoff*  `c` is number one higher then the index of the *higheest bound var*.

Function to shift the indices of free variables above a cutoff `c` up by `i`:

```
ᶜ↑ⁱ (n)     = { n<c ? n : n+i }
ᶜ↑ⁱ (λ.e)   = λ.(ᶜᐩ¹↑ⁱ e)
ᶜ↑ⁱ (e₁ e₂) = (ᶜ↑ⁱ e₁) (ᶜ↑ⁱ e₂)
```




```hs
shift :: Int -> Int -> Term -> Term
shift index cutoff exp = case exp of
  -- Var n, e.g. Var 0
  Var n     -> Var (if n < cutoff then Var n else Var (n + 1))
  -- Abs λ e, e.g. λ 0 or λ λ 1
  Abs b     -> Abs (shift index (cutoff + 1) b)
  App e1 e2 -> App (shift index cutoff e1) (shift index cutoff e2)
```

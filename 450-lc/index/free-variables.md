# Free variables

The set of free variables, commonly named `FV`, contains the free vars found in a lambda expression `M`, denoted by `FV(M)`. Mathematically, the `FV` set is defined by recursion on the structure of the lambda terms:

```
FV(x)    = {x}
FV(λx.M) = FV(M) ∖ {x}
FV(M N)  = FV(M) ∪ FV(N)
```

In Haskell, the `FV` set is defined by casing the lambda exp (`M`) to reveal its data ctor:

```hs
fv :: Exp -> Set Name
fv exp = case exp of
  Var x   -> S.singlton x
  Lam x b -> fv b `S.difference` S.singlton x
  App m n -> fv m `S.union` fv n
```

However, the trouble starts now: the result of `FV(x λx.x)` is `{x}`, signifying that the lambda exp contains a free var `x`, despite the fact that `x` occurs both bound and free in the subject exp!

On the other hand, does this issue matter at all? It would seem it does, but it's hard to come up with an example reduction that gets screwed because of this.

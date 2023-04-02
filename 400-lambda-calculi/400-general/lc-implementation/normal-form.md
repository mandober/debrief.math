# Normal form

Normal form is computed by repeatedly performing substitution (β-reduction) on the leftmost redex, i.e. by repeatedly calling `nf` function.

Var and Abs are easy, but in the case of `App f a`, we must compute the left operand `f` to see if it is an Abs. It cannot be computed with the `nf` function because it could perform non-leftmost reductions - instead we use the `whnf` function.

```hs
nf :: Exp -> Exp
nf e@(Var _) = e
nf (Abs x e) = Abs x (nf e)
nf (App f a) = case whnf f of
  Abs x b -> nf (subst x a b)
  f' -> App (nf f') (nf a)
```

Normal form, `nf`, function - in case of
* `Var x`  : return `Var x`, i.e. do nothing, just return the var
* `Abs x e`: return `Abs x (nf e)`, i.e. normalize the `Abs`'s body `e`.
* `App f a`: first do the weak-normalization of the left operand `f` to check if it is really an Abs (like it should be), by casing `whnf f`. If it is an `Abs x b`, then first substitute `x` with the arg `a` in the body `b`, by calling `subst x a b`, i.e. do [x:=a]b. Then normalize the result by calling `nf` on it, i.e. `nf (subst x a b)`. If the case analysis reveals any other term but Abs, bind that term to `f'`, then reconstruct the `App` by applying the normalization of `f'`, as `nf f'`, to the term obtained by normalizing the argument, `a`, i.e. as `nf a`; all in all, do `App (nf f') (nf a)`.


## Weak head normal form

Computing the weak head normal form is similar to computing the normal form, but it doesn't reduce under a λ, nor does it touch an App that is not a β-redex.

```hs
whnf :: Exp -> Exp
whnf e@(EVar _)   = e
whnf e@(EAbs _ _) = e
whnf (EApp f a)   = case whnf f of
  EAbs x b -> whnf (subst x a b)
  f'       -> EApp f' a
```

This is very similar to `nf`: in case of
- `Var x`  : return `Var x`
- `Abs f x`: rerurn `Abs f x`
- `App f a`: case `whnf f` to see if we get an `Abs x b`. If we do, first substitute `x` for `a` in `b`, [x:=a]b, then call `whnf` on the result. If we don't get an Abs, bind that term to `f'` and reconstruct the `App f' a`.

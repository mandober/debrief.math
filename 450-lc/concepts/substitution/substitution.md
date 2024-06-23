# Substitution

## Substitution with traditional representation

The "traditional" representation of lambda terms means variable names are strings and substitution is direct.

Upon encountering an application `M N`, we evaluate the arg `N` in the call-by-value strategy to get the argument expression `A`. We also make sure `M` is an abstraction, `λx.B`. So the application we actually have is `(λx.B)A`. This is a redex and thus we can β-reduce it. β-reduction proceeds by substitution: `(λx.B)A ⟶ᵦ [x:=A]B`.

The substitution `[x:=A]B` means replacing all bound occurrences of the binding variable `x` with arg `A` in the lambda body `B`. To do this, we need to find out what `B` actually is (Var, App or Abs), so we case `B`.

How the substitution proceeds depends on which lambda term the body `B` is, but in each case, *the same lambda term is returned*, usually modified, so:
- Var returns Var
- App returns App
- Abs returns Abs

### Var

If the body `B` is a var `y`, that means the app was `(λx.y)A` ⟶ᵦ `[x:=A]y`.

In the implementation language, we need to check whether `x = y`, i.e. if they are the same variable or not, by doing string comparison.

(1.1) If `x = y`
means the app was `(λx.x)A` ⟶ᵦ `[x:=A]x` ≡ᵦ `A`   
so it results in the arg `A`.

(1.2) If `x ≠ y` 
means the app was `(λx.y)A` ⟶ᵦ `[x:=A]y` ≡ᵦ `y`   
so it results in the body exp `y` 
because the arg `A` was 
discarded being unused in the body `B`.


In summary, substitution when body `B` is a variable:
- (λx.B)A ~~> `(λx.x)A` ⟶ᵦ `[x:=A]x` ≡ᵦ `A`
- (λx.B)A ~~> `(λx.y)A` ⟶ᵦ `[x:=A]y` ≡ᵦ `y`

If body `B` is a variable:
- the same var `x` as the binding var `x`, then the result is the arg `A`
  `(λx.x)A = A`

- distinct var `y` from the binding var `x`, then the result is the body `y` 
  `(λx.y)A = y`

```hs
-- [x:=A]B ᵦ⟵ (λx.B)A
   [x:=A]y = A   if x = y
   [x:=A]y = y   if x ≠ y

-- in Haskell
subst x a b = case b of
  Var y | x == y -> A
        | x /= y -> y
```

### App

If the body `B` is an application `M N`, that means the original expression was

    (λx.(M N))A ⟶ᵦ ([x:=A]M) ([x:=A]N)

This is the easiest case since the substitution is just distributed to each operand, with their App returned.


```hs
-- [x:=(M N)]B ᵦ⟵ (λx.(M N))A
   [x:=A](M N) = ([x:=A]M) ([x:=A]N)

-- in Haskell
subst x a b = case b of
  App m n -> App (subst x a m)
                 (subst x a n)
```


### Abs

If the body `B` is an abstraction `λy.E`, that means the original exp was an application of an abs with a nested abs for its body, `λx.λy.B`, to an arg `A`:

    (λx. B  )A ⟶ᵦ [x:=A]B
    (λx.λy.E)A ⟶ᵦ [x:=A](λy.E)

This is the most complicated case because there are a lot opportunities for things to tits up. This is where the concept of free and bound variables comes into play, especially if don't respect the Berendregt convention and keep all the binding variables distinct. Performing naive substitution is guaranteed to result in name capture, so we'll need to rename some variables. Whatever we do, renaming always renames the binding variable and all of its bound occurrences (i.e. the binding/bound occurrences), never a free var. A free var is never renamed we cannot rename the occurrences of some var if we cannot also rename its binding occurrence - and we don't "see" the binder of a free var (it probably exists but is unreachable from the currently focused subexp).

We need to check, first, whether the occurrences of the binding var in the main abs (`x`) is the same var as the binding var of the nested abs (`y`), i.e. whether `x = y` in `λx.λy.E`.

(3.1) if `x = y` 
then we actually have `(λx.λx.E)A` 
which result in the nested abs `λx.E`.

Henceforth we know that `x ≠ y`, so we actually have   
`(λx.λy.E)A` ⟶ [x:=A](λy.E)

(3.2) if `y ∉ FV(A)` (and we also know x ≠ y)
then we have 
`(λx.λy.E)A` ⟶ [x:=A](λy.E)



Next, we need to check whether `y ∉ FV(A)`. If `y` does not occur free in the arg `A`, we're golden, and since at this point we also know that `x ≠ y`, 




In the implementation language, we first need to check whether the original binding var `x` is the same var as the binding var `y` in the `B` (since body turned out to be another abs `λy.E`). This is the same as in the case of Var - we do string comparison `x == y`?

1. If `x = y`, we're in luck. It means we have the exp 

   (λx.(λy.E))A
   (λx.(λx.E))A   since x = y
   (λx.λx.E)A     i.e. which is just a special case of (1.1)
   [x:=A](λy.E)
   λy.E

In short, (λx.λx.E)A  ⟶ᵦ  [x:=A](λy.E)  ≡ᵦ  λy.E

In `(λx.λx.E)A`, we don't care that we have two identical binders that both bound var `x` - which are nevertheless distinct. Normally (in other situations), we'd rename one of the binding variable (along with all its bound occurrences), i.e. `(λx.λx.E)A` to `(λx.λx′.E)A`, but  in this case it doesn't matter: 

- if the body `E` does not mention `x`, all the better - the arg `A` is then discarded, so we return `λx.E` (i.e. the original body). This is a similar case like the case for Var when `x = y`, and the body `y` is returned.

(λx.λx.E)A ⟶ [x:=A](λx.E) ≡ λx.E

(λx.λx.E)A ⟶ 



1. If `x ≠ y`, we're fucked as we have further subcases.



`x = y`, i.e. if they are the same variable or not, by doing string comparison.

However, 


```hs
-- (λxy.E)A ⟶ (λx.λy.E)A ⟶ [x:=A](λy.E)

-- (1.1) x = y
--   (λxx.E)A ⟶ (λx.λx.E)A ⟶ [x:=A](λx.E) = λx.E

-- (1.2) x ≠ y
--   (λxy.E)A ⟶ (λx.λy.E)A ⟶ [x:=A](λy.E)

-- y ∉ FV(A)

-- [x:=(λy.E)]B ᵦ⟵ (λx.(λy.E))A


   [x:=A](λy.E) = λx.E   if x = y
   [x:=A](λy.E) = ...    if x ≠ y


-- in Haskell
subst x a b = case b of
  Abs y e | x == y    -> Abs y e
          | y ∉ FV(a) -> Abs y (subst x a e)


```





### Summary of substitutions

```hs
--     [x:=A]B ⟵ (λx.B)A
--     [x:=A]B = case B of ...
-- Var
       [x:=A]y = A   if x = y
       [x:=A]y = y   if x ≠ y
-- App
       [x:=A](M N) = ([x:=A]M) ([x:=A]N)
-- Abs
       [x:=A](λy.E) = λx.E   if x = y
       [x:=A](λy.E) = ...    if x ≠ y



[x:=A]x      = if x = y then A
[x:=A]y      = if x ≠ y then y

[x:=A](M N)  = ([x:=A]M) ([x:=A]N)

[x:=A](λx.E) = if x = y then λy.E
[x:=A](λy.E) = if x ≠ y then


-- in Haskell
subst x a b = case b of
  Var y   | x == y    -> A
          | x /= y    -> y

  App m n             -> App (subst x a m) 
                             (subst x a n)

  Abs y e | x == y    -> Abs y e
          | y ∉ FV(a) -> Abs y (subst x a e)

          | x ∉ FV(b) ->


```

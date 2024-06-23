# Recursive types

## TOC

<!-- TOC -->

- [TOC](#toc)
- [Recursor notation](#recursor-notation)
- [Primitive recursion](#primitive-recursion)
  - [Recursor examples](#recursor-examples)
    - [Addition](#addition)
    - [Multiplication](#multiplication)
    - [Predecessor](#predecessor)
  - [Recursor semantics](#recursor-semantics)
  - [Recursor dynamic](#recursor-dynamic)
  - [Recursor laws](#recursor-laws)
- [General recursion](#general-recursion)
  - [Untyped recursion](#untyped-recursion)
  - [Recursive Types](#recursive-types)
  - [Syntax of recursive types](#syntax-of-recursive-types)
  - [Laws of recursive types](#laws-of-recursive-types)
  - [Encodings of recursive types](#encodings-of-recursive-types)
  - [Typed recursion](#typed-recursion)

<!-- /TOC -->

## Recursor notation

```hs
-- tight syntax
rec(e; e₀; x,y.e₁)

-- friendlier syntax
rec e as 
  { Z          ⇒ e₀
  | S x with y ⇒ e₁
  }

-- R. Harper syntax
rec { Z ⇒ e₀ | S(x) with y ⇒ e₁ } (e)

-- R. Harper syntax (after adding product types)
iter { Z ⇒ e₀ | S(x) ⇒ e₁ } (e)

-- R. Harper syntax (rec in terms of iter)
rec  { Z ⇒ e₀ | S(x) with y ⇒ e₁ } e ≜
iter { Z ⇒ (Z, e₀) | (S(x₁ · l), [x₁ · l, x₁ · r / x, y]e₁) } g(e) · r
```


## Primitive recursion

```hs
exp := …
     | Z
     | S(e)
     | rec(e; e₀; x,y.e₁)
     | rec e as 
         { Z          ⇒ e₀
         | S x with y ⇒ e₁
         } -- same as above, friendlier syntax
```

`rec (e; e₀; x,y.e₁)` is the fucked up notation for primrec. `e` is the input nat, `e₀` is what we return in case it is 0 (base case). However, if the input number has the form `s(n)`, then `x` binds `n` and `y` binds the result of the recursive call (like IH), and exp `e₁` is what is returned in this (recursive) case.

Usually when we do an inductive proof or write recursive programs - what two things do we learn in the suc case? That input has the form `suc x` for some `x`, so `x` in the `rec` operator represents that; so we are told in the suc case that input is `x` plus one. The other thing we are told is the inductive hypothesis: what is the result if you had already done it in the case of `x` (huh?!). You tell me what the result is on `x` and then I'll tell you how to turn that into the result for `suc x`. That's the idea here, so it's just like proving induction in math.

    rec(e; e₀; x, y.e₁)
               |  |
               |  ↓
               |  result of the (next) recursive call
               ↓
               x in the 'suc(x)'


So `x` binds the body of the `suc`, i.e. `x` in `suc(x)`; while `y` binds the result of the recursive call.

This sorta corresponds to the second example below in Haskell:

```hs
-- primrec (1)
primrec 0     = f
primrec (S x) = g x (primrec x)

-- primrec (2)
primrec e = case e of     -- this is like the input 'e' in rec(e; …)
  Z   → e₀                -- this is like 'e₀' in rec(e; e₀; …)
  S x → let y = primrec x -- this is like the var 'y' in rec(…; x, y.e₁)
        in  g x y         -- this is like 'x,y.e₁' in rec(…; x,y.e₁)
```

where, instead of recursing immediately (like in the example 1) we first bind the result of the recursive call to `y` and then recurse.

Since `rec(e; e₀; x,y.e₁)` is hard to read, there is a friendlier syntax:

       rec e as
        { Z          ⇒ e₀
        | S x with y ⇒ e₁
        }

with exactly the same meaning. It resambles the case analysis (`case e of …`), but the weirdness of `with y` is unfathomable. Actually, the weirness with `with y` is because we cannot have the defining identifier on both lhs and rhs; for example, in the definition of addition below, we'd have `add` appearing on both sides of equlas sign. To prevent that, the rhs has `y` binding the recursive call (although it means the same). Little acrobatics to please the syntactical restrictions.

### Recursor examples

#### Addition

Defining addition by recursing on the first argument.

```hs
-- in Haskell, as normal
add :: Nat → Nat → Nat
add  Z     n = n
add (S m') n = S (add m' n)

-- in Haskell, weirdly
add m n = case m of
  Z    → n
  S m' → let r = add m' n
         in  S r

-- in TT, weirdly
add = λ(m : nat).
       λ(n : nat).
         rec m as
            Z           ⇒ n
            S m' with r ⇒ S r
```

In the `with r` above, `r` binds the result of the recursive call that uses the smaller number `m'` (and the fixed arg `n`); it is as if `r = add m' n`. So we return the exp `S r` form that branch. `S r` expands into `S (add m' n)`, just like in the rec case of the Haskell's example.

#### Multiplication

```hs
-- in Haskell, as normal
mul :: Nat → Nat → Nat
mul  Z     n = Z
mul (S m') n = add n (mul m' n)

-- in Haskell, weirdly
mul m n = case m of
  Z    → Z
  S m' → let r = mul m' n
         in add n r

-- in TT, weirdly
add = λ(m : nat).
       λ(n : nat).
         rec m as
            Z           ⇒ Z
            S m' with r ⇒ add n r
```

#### Predecessor

```hs
-- in Haskell, as normal
pred :: Nat → Nat
pred    Z  = Z
pred (S n) = n

-- in Haskell, weirdly
pred n = case n of
  Z    → Z
  S n' → let _ = n'
         in  n'

-- in TT, weirdly
pred = λ(n : nat).
         rec n as
            Z           ⇒ Z
            S n' with r ⇒ n'
```

### Recursor semantics

```hs
Γ                 ⊢ e : nat
Γ                 ⊢ e₀ : τ
Γ, x : nat, y : τ ⊢ e₁ : τ
----------------------------------------------- E-nat
Γ ⊢ rec e as { Z ⇒ e₀ | S x with y ⇒ e₁ } : τ
```

### Recursor dynamic

```hs
Ctx := …
     | rec E as { Z ⇒ e₀ | S x with y ⇒ e₁ }


-- reduction for Z case
rec Z as
  Z          ⇒ e₀      ⟶ e₀
  S x with y ⇒ e₁

-- reduction for S case
rec S e as                     ⎡           ⎛ rec e as           ⎞ ⎤
  Z          ⇒ e₀      ⟶ e₁ ⎥ x:=e, y:= ⎢   Z          ⇒ e₀ ⎢ ⎥
  S x with y ⇒ e₁            ⎣           ⎝   S x with y ⇒ e₁ ⎠ ⎦
```


### Recursor laws

```hs
-- (α)
rec e as              =α=     rec e as
  Z          ⇒ e₀               Z            ⇒ e₀
  S x with y ⇒ e₁               S x₀ with y₀ ⇒ (e₁ [x:=x₀, y:=y₀])

-- (β)
rec Z as
  Z          ⇒ e₀     =β=     e₀
  S x with y ⇒ e₁

-- (β)
rec S e as                         ⎡           ⎛ rec e as           ⎞ ⎤
  Z          ⇒ e₀     =β=     e₁ ⎥ x:=e, y:= ⎢   Z          ⇒ e₀ ⎢ ⎥
  S x with y ⇒ e₁                ⎣           ⎝   S x with y ⇒ e₁ ⎠ ⎦

-- (η)
rec e as
  Z          ⇒ Z      =η=    e : nat
  S x with y ⇒ S x

-- (η)
rec e as
  Z          ⇒ Z      =η=    e : nat
  S x with y ⇒ S y
```

## General recursion

### Untyped recursion

From self-application to the Y combinator:

    ω = λx.xx
    Ω = ωω = (λx.xx)(λx.(x x))
    Y = λf.(λx.f(xx))(λx.f(xx))

Recursion operators with some syntactic sugar:

    rec x = e = Y (λx.e)

    let rec x = e
    in  e₀ = (λx.e₀) (Y (λx.e))

But recall that the Y combinator is not well-typed in the simply typed lambda calculus. Solution to restore recursion in STLC is to add a recursive operator explicitly as part of the language.

```hs
exp := …
     | rec x = e          -- rec operator

-- α-equivalence
(rec x = e)  =α=  (rec y = e[x:=y])      y ∉ FV(e)

-- β*reduction
(rec x = e)  ⟶β  e[x:=(rec x = e)]


Γ, x : τ ⊢ e : τ
------------------ rec-form
Γ ⊢ rec x = e : τ
```

### Recursive Types

```hs
type := …
      | µα.τ


-- Equi-recursive: note that this is equality (=)
µα.τ = τ[α:=µα.τ]

-- Iso-recursive: note that this is equivalence (≈)
µα.τ ≈ τ[α:=µα.τ]


Γ ⊢ e : τ[α:=µα.τ]
----------------------------- µ-intro
Γ ⊢ Fold e : µα.τ


Γ ⊢ e : µα.τ
----------------------------- µ-elim
Γ ⊢ Unfold e : τ[α:=µα.τ]
```

### Syntax of recursive types

```hs
exp := …
     | Fold e
     | Unfold e

-- bound variables
BV(Fold e) = BV(e) = BV(Unfold e)

-- free variables
FV(Fold e) = FV(e) = FV(Unfold e)

(Fold e₀)[x:=e] = Fold (e₀[x:=e])
(Unfold e₀)[x:=e] = Unfold (e₀[x:=e])
```

### Laws of recursive types

```hs
-- (β)
Unfold (Fold e)  ⟶β  e

-- (η)
Fold (Unfold e)  =η=  e : µα.τ
```

### Encodings of recursive types

```hs
nat ≈ unit + nat
nat = µα. unit + α
Z   = Fold(left ⟨⟩)
S e = Fold(right e)

list τ ≈ unit + (τ × list τ)
list τ = µα. unit + (τ × α)
nil       = Fold(left ⟨⟩)
cons e e₀ = Fold(right(e, e₀))

tree τ ≈ τ + (tree τ × tree τ)
tree τ = µα.τ + (α × α)
leaf e = Fold(left e)
branch e1 e2 = Fold(right(e1, e2))
```

### Typed recursion

```hs
ω : (µα.(α → τ)) → τ
ω = λx.(Unfold x) x

Ω : τ
Ω = ω (Fold ω)
```

Example derivation

```hs
--------------------------- Var
x : µα.α → A ⊢ x : µα.α → A
-----------------------------------------μ-elim --------------------------- Var
x : µα.α → A ⊢ Unfold x : (µα.α → A) → A        x : µα.α → A ⊢ x : µα.α → A
------------------------------------- ⇒-elim
x : µα.α → A ⊢ (Unfold x) x : A
------------------------------------- ⇒-intro
∙ ⊢ λx.(Unfold x) x : (µα.α → A) → A



                                       ⫶
                               ω : (µα.α → A) → A
            ⫶                ----------------------- μ-intro
∙ ⊢ ω : (µα.α → A) → A      ∙ ⊢ fold ω : µα.α → A
-------------------------------------------------- ⇒-elim
∙ ⊢ ω (fold ω) : A



Y : (τ → τ) → τ
Y = λf.(λx.f (unfold x x)) (fold (λx.f (unfold x x)))


Γ        ⊢ e : τ
Γ, x : τ ⊢ e′ : τ′
-------------------------------------------- Let
Γ ⊢ let x = e in e′ : τ′


Γ, x : τ ⊢ e  : τ
Γ, x : τ ⊢ e′ : τ′
-------------------------------------------- LetRec
Γ ⊢ let rec x = e in e′ : τ′



Γ, x : τ ⊢ e′ : τ′
------------------- ⇒I ----------
Γ ⊢ λx.e′ : τ → τ′      Γ ⊢ e : τ
--------------------------------- ⇒E
Γ ⊢ (λx.e′) e : τ′


                                                 Γ, x : τ ⊢ e : τ
                                    ⫶            ----------------- ⇒I
Γ, x : τ ⊢ e′ : τ′       Γ ⊢ Y : (τ → τ) → τ     Γ ⊢ λx.e : τ → τ
------------------- ⇒I  ----------------------------------------- ⇒E
Γ ⊢ λx.e′ : τ → τ′       Γ ⊢ Y (λx.e) : τ
------------------------------------------- ⇒E
Γ ⊢ (λx.e′) (Y (λx.e)) : τ′
```

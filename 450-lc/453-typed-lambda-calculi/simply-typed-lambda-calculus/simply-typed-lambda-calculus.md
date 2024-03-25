# Simply-typed lambda calculus

https://users.cs.northwestern.edu/~jesse/course/type-systems-wi18/type-notes/sec_stlc.html

## Syntax

The λ-st language has types `τ` and terms `e` defined as follows:

```
τ := nat
   | (→ τ τ)
e := x
   | Z
   | (S e)
   | (λ x τ e)
   | (App e e)
x, y := var-not-otherwise-mentioned
```

* Types include
  - the natural numbers `nat`
  - function types `τ₁ → τ₂`
* Terms include
  - variables, `x`, `y`
  - Peano naturals: `Z` for zero, `Z : nat`, `S` for successor, `S : nat → nat`
  - lambda abstractions, `λx:τ.e`
  - applications, `e₁ e₂`

## Dynamic semantics

To define the dynamic semantics of λ-st, we give syntax for values and evaluation contexts:

```
v := Z
   | (S v)
   | (λ x τ e)
E := []
   | (S E)
   | (App E e)
   | (App v E)
```

Values include natural numbers and lambda abstractions. We evaluate under `S`, and we evaluate both the operator and operand in an application.

Then the reduction relation consists of one rule:   
>E[(App (λ x τ e) v)] -->> E[e[x:=v]] [β-val]

The dynamic semantics of λ-st is given by the evaluation function `eval`:   
>eval (e) = v  if e -->>* v  (e ⮡ v)

As defined, `eval` could be partial, but we will prove it total on well typed terms, first by proving that well typed terms don't go wrong, and then by proving that well typed terms don't diverge.

## Static semantics

To type λ-st, we define:

* The typing context `Γ` maps variables to types.

```
Γ := ∙
   | Γ, x:τ
```

* There are two constructors for the naturals. `Z` is a natural, and for any term `e` of type `nat`, `S e` has type `nat` as well.

```
----------------- zero
Γ |- Z : nat


Γ |-    e  : nat
----------------- succ
Γ |- (S e) : nat
```

* Variables type by looking them up in the typing context:

```
----------------- var
Γ |- x : Γ(x)
```

* Lambda abstractions type by extending the typing context with the bound variable and checking the body:

```
Γ, x : τ |- e : τ₂
-------------------------- abs
Γ |- (λ x t e) : (→ τ τ₂)
```

* Applications require the domain of the operator to match the type of the operand:

```
Γ |- e₁ : (→ τ₂ τ)    Γ |- e₂ : τ₂
--------------------------------- app
Γ |- (App e₁ e₂) : τ
```

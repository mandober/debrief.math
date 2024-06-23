# Substructural type systems

Normally, variables can be used multiple times.

`Γ` is a context mapping variables to their types. We treat `Γ` as a (possibly empty) unordered list of the form `x1 : τ1, …, xn : τn`.

Now think of elements of Γ as being "used up" whenever they are referenced.


```hs
Γ, x : τ, x : τ ⊢ x : τ
------------------------- Contraction
Γ, x : τ ⊢ x : τ


```

## Affine type system

Variables can be used at most once.

Rust has affine types.

Consider this program without affine types: `fun f x = []`.
>Can x be garbage collected at the end of `f`?
Not necessarily - `f`'s caller may continue to reference `x`.

What about with affine types?
`fun f x = []`
>Can x be garbage collected at the end of `f`?
Yes! `f`'s caller can no longer refer to `x` after passing it to `f`.

Rust has no global garbage collector at runtime - it needs to statically know when to dispose of values.

## Concurrency

```ml
val t = create_thread ()
val x = ref 0

(* Send x to another thread *)
val () = send t x

(* Possible race *)
val () = x := 1
```

Concurrency with affine types

```ml
val t = create_thread ()
val x = ref 0

(* Send x to another thread *)
val () = send t x

(* Compiler error *)
val () = x := 1

(* Instead do *)
val x = recv t
val () = x := 1
```

## Linear Type System

>Variables must be used exactly once.

Great for managing resources like FS items (opening/closing files).

```hs
Γ ⊢ e : τ
------------------- Weakening
Γ, x : σ ⊢ e : τ
```

## Ordered Type System

substructural logic: relevance logic.

>Variables must be used exactly once, in the order they were introduced.


```hs
Γ, x : τ, x : τ, ∆ ⊢ x : τ
----------------------------- Contraction
Γ, x : τ,        ∆ ⊢ x : τ


Γ,        ∆ ⊢ e : τ
--------------------- Weakening
Γ, x : σ, ∆ ⊢ e : τ


Γ, x : σ, y : σʹ, ∆ ⊢ e : τ
----------------------------- Exchange
Γ, y : σʹ, x : σ, ∆ ⊢ e : τ
```



>A **substructural type system** is one which omits one or more of contraction, weakening, and exchange.


Type System | Exchange | Weakening | Contraction
------------|----------|-----------|------------
Normal      | ✓        | ✓         | ✓
Relevant    | ✓        | 🗴         | ✓
Affine      | ✓        | ✓         | 🗴
Linear      | ✓        | 🗴         | 🗴
Ordered     | 🗴        | 🗴         | 🗴

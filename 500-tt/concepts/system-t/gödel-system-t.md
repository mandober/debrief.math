# Gödel's System T of primitive recursive functionals

Gödel's System T is precisely the propositional part of intuitionistic logic.

Unverified Trivia according to R. Harper: Girard name his formalism System F (for 'false') [as opposite to] Gödel's System T (for 'true').

## TOC

<!-- TOC -->

- [TOC](#toc)
- [Summary](#summary)
- [Gödel's System T](#gödels-system-t)
- [Syntax](#syntax)
  - [Mathematical definition of primitive recursion](#mathematical-definition-of-primitive-recursion)
- [Abs and app](#abs-and-app)
  - [Abs and app statics](#abs-and-app-statics)
  - [Abs and app dynamics](#abs-and-app-dynamics)
    - [Abs and app eager dynamics](#abs-and-app-eager-dynamics)
    - [Abs and app lazy dynamics](#abs-and-app-lazy-dynamics)
- [Nat](#nat)
  - [Nat statics](#nat-statics)
  - [Nat dynamics](#nat-dynamics)
    - [Nat eager dynamics](#nat-eager-dynamics)
    - [Nat lazy dynamics](#nat-lazy-dynamics)
- [Recursion](#recursion)
  - [Recursion statics](#recursion-statics)
  - [Recursion dynamics](#recursion-dynamics)
  - [Examples of recursion](#examples-of-recursion)
    - [Doubling](#doubling)
    - [Addition](#addition)
    - [Ackermann](#ackermann)
- [Products and sums](#products-and-sums)
- [Products](#products)
  - [Product statics](#product-statics)
  - [Product dynamics](#product-dynamics)
- [Sums](#sums)
  - [Sum statics](#sum-statics)
  - [Sum dynamics](#sum-dynamics)
- [Recursor](#recursor)
- [Refs](#refs)

<!-- /TOC -->

## Summary

Add the type ℕ (to LC)
- ℕ introduction
- ℕ elimination
- ℕ equality

```hs
                            Γ ⊢ a : ℕ
---------- ℕ intro-zero     ------------ ℕ intro-suc
Γ ⊢ 0 : ℕ                   Γ ⊢ S a : ℕ


Γ ⊢ n : ℕ
Γ ⊢ d : C
Γ, y : ℕ, z : C ⊢ e : C
--------------------------- ℕ-elim
Γ ⊢ R(n, d, yz.e) : C


-- ℕ equality:
R(0,   d, yz.e) = 0
R(S n, d, yz.e) = e[y:=a,z:=R(n, d, yz.e)]
```

## Gödel's System T

Recitation 3: Gödel's System T, from the course:
*15-312: Foundations of Programming Languages*
Jeanne Luning Prak, Charles Yuan. January 31, 2018. @CMU
https://www.andrew.cmu.edu/course/15-312/

## Syntax

We now define and explore a language called System T. `System T` extends `System E` with function types and replaces System E's primitive arithmetic operations with a more general operation on the natural numbers - *primitive recursion*. The syntax of System T is given by the following grammar:

```hs
Types
  τ := nat                                        natural numbers
     | τ₁ → τ₂                                    functions

Expressions
  e := x                                          variable
     | e₁ e₂                                      application
     | λ(x : τ) e                                 abstraction
     | z                                          zero
     | s(e)                                       successor
 --  | rec { z ↪ e₀ | s(x) with y ↪ e₁ } e₂      primitive recursion
     | rec { z           ↪ e₀                    primitive recursion
           | s(x) with y ↪ e₁
           } e₂
```

Surprisingly, despite the loss of the arithmetic operations, System T is capable of expressing every numeric computation in System E and much more.

The syntax suggest that System T extends λ calculus with naturals (`nat` type with terms zero as `z` and `s(exp)`), and the `rec` operator for recursion.

### Mathematical definition of primitive recursion

Mathematical definition of primitive recursion on 2 parameters with recursion over the first parameter:

```hs
ρ(f¹, g³) = h²

h    0  x = f x
h (S y) x = g y x (h y x)
```

However, in the syntax for System T here, it seems the `rec` operator is over a single paramter. Recall mathematical definition of primitive recursion on 1 parameter:

```hs
ρ(f⁰, g²) = h¹

h    0  = f
h (S y) = g y (h y)
```


~~So, here, the `rec` operator seems to be some kind of casing operator with the arrow symbol `↪` seemingly acting as Haskell's case matching arrows, innit? The `rec` operator could scrutinize the input exp `e₂` and return either exp `e₀` or exp `e₁` depending on the case match. Like, the `rec` operator's first case, `0 ↪ e₀`, means the input matches 0 so exp `e₀` is returned. Then `s(x) with y ↪ e₁` should mean the second branch is executed if the input has the form `suc x`, for some `x`, in which case the returned exp is `e₁`. The only question is then what does `with y` mean? Perhaps `y` is a fresh var that binds the input exp? Like, if the input has the shape `suc x`, then `y = suc x`? Which should imply that we have both `y` and `x` available on the rhs. Perhaps, it is similar to Haskell's as-pattern (as@) where `y@(S x)` means `y` binds the whole exp `S x` (successor of `x`), but `x` binds the matching part of it, so on the rhs we have both bindings. Anyway, the returned exp of the second case-branch is `e₁`. Finally, the exp `e₂` then surely is the exp we are casing on? Although, that would be the input number.~~


## Abs and app

Abstraction and application behave much as we would intuitively expect. An abstraction binds a variable of type `τ` in `e1`, and an application substitutes an expression `e2 : τ` for that bound variable.

Abstractions are first-class expressions: they have a type and can be passed to and returned from other abstractions. Because of this, System T is a language with higher-order functions.

The statics and dynamics for abstraction and application are given below.

### Abs and app statics

```hs
Γ, x : τ₁ ⊢ e₂ : τ₂                 Γ ⊢ e₁ : τ₁ → τ₂     Γ ⊢ e₂ : τ₁
--------------------------- Abs     -------------------------------- App
Γ ⊢ λ(x : τ₁).e₂ : τ₁ → τ₂                  Γ ⊢ e₁ e₂ : τ₂
```

### Abs and app dynamics

The dynamics rules specify how the evaluation proceeds.

#### Abs and app eager dynamics

These rules are for the *eager dynamics* form of System T where all arguments are evaluated before being substituted into the body of a function.

The first rule says that functions are values: `e Val` mean exp `e` is a value.

```hs
-- EAGER EVALUATION

---------------- e-abs-val
λ(x : τ).e Val


e₁    ⟶ e₁′
----------------- e-app-1
e₁ e₂ ⟶ e₁′ e₂


e₁ Val     e₂ ⟶    e₂′
------------------------- e-app-2
        e₁ e₂ ⟶ e₁ e₂′

e₂ Val
------------------------------- e-beta
(λ(x : τ).e) e₂ ⟶ [x:=e₂]e
```

#### Abs and app lazy dynamics

For a *lazy dynamics*, the `e₂ ⟶ e₂′` rule above would be left out, along with the requirement on the last rule above that `e₂` be a value. That is, these are the rules for lazy evaluation:

```hs
-- LAZY EVALUATION

---------------- E-ABS-VAL
λ(x : τ).e Val

   e₁ ⟶ e₁′
---------------- E-APP
e₁ e₂ ⟶ e₁′ e₂

------------------------------- E-BETA
(λ(x : τ).e₁) e₂ ⟶ [x:=e₂]e₁
```

- E-ABS-VAL rule still says that abstractions are values
- E-APP rule means only left operand (abs) of application is evaluated
- E-BETA rule is substitution as part of β reduction: applying abs to arg e₂


## Nat

In System T, the natural numbers are defined as usual: a natural is either zero, or the successor of a natural number.

In addition to this definition, we also now have a single operation that works on naturals - recursion.

The statics and dynamics of naturals is given below, while recursion is discussed later.

### Nat statics

```hs
                          Γ ⊢   e : nat
------------ ℕ-zero      ---------------- ℕ-suc
Γ ⊢ z : nat               Γ ⊢ s(e) : nat
```

### Nat dynamics

#### Nat eager dynamics

```hs
                  e Val
--------       ----------
z Val           s(e) Val
```

Expression `z` is a value. If expression `e` is value, then so is `s(e)`.

#### Nat lazy dynamics

For lazy evaluation of System T, the requirement `e val` is dropped.

```hs
--------       ----------
z Val           s e Val
```

Expression `z` is a value. Expression `s e` is value.

## Recursion

Now let's consider the recursion operation for System T:

    rec { z ↪ e₀ | s(x) with y ↪ e₁ } e

This operation cases on the value of `e`, which is either `z` or `s(e′)`:

    rec { z           ↪ e₀
        | s(x) with y ↪ e₁
        } e

If `e` is `z` then the expression evaluates to `e₀`, the base case.


>If `e` is `s(e′)` for some natural number `e′`, then it recurs on `e′`, *binding the result of recursion to `y`*, and `e′` to `x` (since `e′ = x`), for use in `e₁`.

```hs
-- addition (normal)
add :: Nat → Nat → Nat
add m n = case m of
  0    → n
  S m' → S (add m' n)

-- addition (modeled as rec)
add :: Nat → Nat → Nat
add m n = case m of
  Z    → Z
  S m' → let y = add m' n
         in S y
```

### Recursion statics

```hs
Γ                 ⊢ e : nat
Γ                 ⊢ e₀ : τ
Γ, x : nat, y : τ ⊢ e₁ : τ
--------------------------------------------------------------- RECURSOR
Γ                 ⊢ rec { z ↪ e₀ | s(x) with y ↪ e₁ } e : τ
```


Statics for another variation of the recursor (on naturals only):

https://www.youtube.com/watch?v=66wjhulfmfI&list=PL0DsGHMPLUWXiPzmP9Ti2NVPcapIZETzQ&index=5

```hs
Γ        ⊢ e : nat
Γ        ⊢ e₀ : τ                          -- base case
Γ, x : τ ⊢ e₁ : τ                          -- iterator
-------------------------------- RECURSOR
Γ        ⊢ rec(e, e₀, x.e₁) : τ
--                     ↑
--          basically λx.e₁ but since `rec` is the binder no `λ`. Oh, Kurt!
```

### Recursion dynamics

```hs
                                 e ⟶ e′
------------------------------------------------------------------------ E-ARG
rec{ z ↪ e₀ | s(x) with y ↪ e₁ }e ⟶ rec{ z ↪ e₀ | s(x) with y ↪ e₁ }e′


------------------------------------------ E-ZERO
rec { z ↪ e₀ | s(x) with y ↪ e₁ } z ⟶ e₀


s(e) Val
--------------------------------------------------------------- E-REC
rec { e₀ ↪ e₀ | s(x) with y ↪ e₁ } s(e) 
⟶ [e, y:=rec{e₀ ↪ e₀|s(x) with y ↪ e₁}(e)}]e₁
```

E-rec in case of `Z` just return `e₀`:

    rec { Z ⇒ e₀ | s(x) with y ⇒ e₁ } Z   ⟶   e₀

In case `S x`, we need to make substitutions in `e₁` for `x` and `y`:

    rec { Z ⇒ e₀ | S x with y ⇒ e₁ } S x
    ⟶
    e₁[x:=x, y:=rec{Z ⇒ e₀ | S x with y ⇒ e₁} x]

`x` needs to be replaced by `x` from `S x` that matched this case.
`y` needs to be replaced by the result of the next recursive call with `x` as input (instead of `S x` which is the current input).



Dynamics for the other variation of the recursor (on naturals only):

```hs
-------------------------------- β-nat-z
Γ ⊢ rec(z, e₀, x.e₁) ⟶ e₀ : τ

------------------------------------------------------- β-nat-s
Γ ⊢ rec(s(e), e₀, x.e₁) ⟶ [x:=rec(e, e₀, x.e₁)]e₁ : τ
```

The strange piece of synax, `x.e₁`, seems to be similar to a lambda abstraction `λx.e₁`, but somehow λ is missing, probably becasue this is recursive `μ` binding - but then he should've used `μ` or even `λ` cos `x.e₁` by itself just looks weird (Oh, Kurt! What's that? Well, nevermind you that lambda calculus wasn't a thing at the time - stop looking for excuses; no wonder they've poisoned your cookies, mr. Disagreeable. Hail to the chief!).

So if we run the **recursor** on a natural number that turns out to be zero, we get back the base case, which is exp `e₀ : τ`.

If we run it on `e + 1`, then we are going to run `e₁` (the body) but the recursive call `x` is replaced by the recursive call on the predecessor. That is, if the input natural has the form `s(e)`, then we are recursing on `e`, so that we can run the the same computation on the predecessor number `e` (which is the predecessor of `s(e)`). So, all occurrences of `x` in `e₁` (the body) are replaced by `rec(e, e₀, x.e₁)`.

### Examples of recursion

#### Doubling

Understanding the recursor can be tricky, so let's go through an example. We'll write a function that doubles a number using the recursor. To do this, let's consider how we would implement doubling in SML given the following datatype for natural numbers:

```ml hs
datatype nat = z | s of nat

data Nat = Z | S Nat
```

We can double a number by doubling its predecessor and then taking the successor of that number twice:

```ml hs
-- straightforward way

-- In SML
fun double    z  = z
  | double (s x) = s (s (double x))

-- in Haskell
double :: Nat -> Nat
double n = case n of
  Z   -> Z
  S x -> S S (double x)
```

Let's rewrite this so that it matches the **format of the recursor**, with the predecessor of `e` bound to `x`, and the result of the recursion bound to `y`:

```ml hs
-- in SML
fun double e = 
  case e of
    z   => z
  | s x => let val y = double x
           in  s (s y)      end

-- in Haskell
double :: Nat -> Nat
double n = case n of
  Z   -> Z
  S x -> let y = double x
         in  S (S y)
```

This makes it easier to now implement this **using the recursor**:

```sml hs
-- double
λ(e : nat). rec { z           ↪ z
                | s(x) with y ↪ s(s(y))
                } (e)
```

#### Addition

```ml hs
-- straightforward way in Haskell (1)
(+) :: Nat -> Nat
m +   Z = m
m + S n = S (m + n)

-- straightforward way in Haskell (2)
add :: Nat -> Nat
add m n = case n of
  Z    -> m
  S n' -> S (add m n')

-- recursor format in Haskell
add :: Nat -> Nat
add m n = case n of
  Z    -> m
  S n' -> let y = add m n'
           in S y
```

This makes it easier to now implement this **using the recursor**:

```sml hs
-- addition
λ(m : nat).
  λ(n : nat).
    rec { z            ↪ m
        | s(n') with y ↪ s(m, y)
        } (n)
```

#### Ackermann

System T is notable for its only explicit recursion operator being primitive recursion. However, its higher-order functions means that it is capable of computing non-primitive-recursive functions, like the well-known Ackermann function A(m; n), defined as follows:

```hs
A(0, n)         = n + 1
A(m + 1, 0)     = A(m, 1)
A(m + 1, n + 1) = A(m, A(m + 1, n))
```

Ackermann is not primitive recursive since with a given recursive call, it is possible for n to increase. This is incompatible with the recursor construct, which requires its argument be deconstructed at every step. However, consider currying A(m; n):

```hs
A 0     n     = S n
A (S m) 0     = A m 1
A (S m) (S n) = A m (A (S m) n)
```

If we treat `A (S m)` as the function in question, we observe that whenever it is called recursively, its argument `n` decreases in value. We arrive at an insight: `A (S m)` is a primitive recursive function in and out of itself, and we should try writing it as a recursor.

However, there is one hiccup in computing `A (S m)`: the intermediate value we are collecting is not a number, but a function which applies `A m` every step. Fortunately, System T allows us to write this. Consider the definitions:

```hs
id : nat → nat
id = λ(x : nat). x

comp : (nat → nat) → (nat → nat) → nat → nat
comp = λ(f : nat → nat). λ(g : nat → nat). λ(x : nat). f (g x)

iter : (nat → nat) → nat → nat → nat
iter = λ(f : nat → nat).
        λ(n : nat).
          rec { z ↪ id | s(x) with y ↪ comp f y } n
```

What does iter do? Given a function f and a number n, it computes the n-th iterate of f, fn. That's exactly what we need→ Rearranging, we have:

```hs
A 0     n = S n
A (S m) n = iter (A m) n (A m 1)
```

Now we can move up one level to express `A` as a recursor, and write the Ackermann function in System T (using the succ function that takes the successor of a nat):

```hs
succ : nat → nat
succ = λ(n : nat). s(n)

ack : nat → nat → nat
ack = λ(m : nat).
       rec { z ↪ succ | s(x) with y ↪ λ(n : nat). iter y n (y (s z)) } m
```

This is a constructive proof that despite not being primitive recursive, *Ackermann is higher-order primitive recursive*.

System T allows us to compute a large set of functions like Ackermann, though *all expressions in System T provably terminate* (cannot diverge). What does that mean from a computability theory perspective?

## Products and sums

```hs
Types
  τ := nat                                        (nat) nat type,      ℕ
     | τ₁ → τ₂                                    (λc) function type,  →
     | unit                                       (prod) unit type,    1
     | τ₁ × τ₂                                    (prod) product type, ×
     | void                                       (sum) empty type,    0
     | τ₁ + τ₂                                    (sum) type,          +

Exp
  e := x                                          (λc) var
     | e₁ e₂                                      (λc) app
     | λ(x : τ) e                                 (λc) abs
     | z                                          (nat) zero
     | s(e)                                       (nat) successor
     | ()                                         (prod) empty pair
     | (e₁, e₂)                                   (prod) pair
     | e · l                                      (prod) left projection
     | e · r                                      (prod) right projection
     | l { τ₁; τ₂ } · e                           (sum) left injection
     | r { τ₁; τ₂ } · e                           (sum) right injection
     | case e { l · x₁ ↪ e₁ | r · x₂ ↪ e₂ }       (sum) casing construct
     | iter { z ↪ e₀ | s(x) ↪ e₁ } e              recursor
 --  | rec  { z ↪ e₀ | s(x) with y ↪ e₁ } e       (previous recursor)
```


System T only has naturals and the recusor operator - products and sums are extensions to it.

Products are called negative types, comparable to arrow (`->`) types. 
Sums are called positive types, comparable to `nat` type.

Types are *positive* if their *introduction form* is primary. 
Types are *negative* if their *elimination form* is primary.

*Positive types* (values) are characterized by what goes into them. For example, natural numbers, zero and successors, are what we care about; then the recursor is parasitic on that fact. With *negative types*, we don't care what the thing actually is, we only care that we know how to run it (or call it, or apply it). If we think in terms of a negative type, what it means is that we don't cares what a function really is - all we care about is it obeys a common return sequence. This builds on the idea of a foreign function interface (FFI). The whole idea with FFI is actually built into the semantics of type theory. (It is inherently open-ended and accommodates FFI bits; if you're ever studying computability theory, that's where oracles come in...blah⁴...typester...blah⁷).

Finite data structures in a programming language are created from the amalgamation of smaller structures, starting from the base types. Most useful structures can be constructed using two language features: product and sum types.

## Products

The product of types `τ1` and `τ2`, `τ1 × τ2`, is the type of tuples `(e1, e2)` where `e1 : τ1` and `e2 : τ2`.

Products are familiar to functional programmers as a way of passing multiple arguments to functions and obtaining multiple results from them. They also represent a coupling of several independent typed fields, since to have a value of product type, one must have a value of each of the product's fields.

Consider the following extension of `System T`, where we augment it with product types. Note the slightly *different recursor, which now only binds one predecessor*.

```hs
Types
  τ := nat                                        (nat) nat type,      ℕ
     | τ₁ → τ₂                                    (λc) function type,  →
     | unit                                       (prod) unit type,    1
     | τ₁ × τ₂                                    (prod) product type, ×

Exp
  e := x                                          (λc) var
     | e₁ e₂                                      (λc) app
     | λ(x : τ) e                                 (λc) abs
     | z                                          (nat) zero
     | s(e)                                       (nat) successor
     | ()                                         (prod) empty pair
     | (e₁, e₂)                                   (prod) pair
     | e · l                                      (prod) left projection
     | e · r                                      (prod) right projection
     | iter { z ↪ e₀ | s(x) ↪ e₁ } e              recursor
 --  | rec  { z ↪ e₀ | s(x) with y ↪ e₁ } e       (previous recursor)
```

This is a language with binary products. The values of product type are created by the pair and empty pair constructors, their introduction forms, and they are converted back into their constituent types by the left and right projections, which are their elimination forms.

Despite only having binary products, we may encode n-ary products by nesting binary products in arbitrary order.

The unit type is the type of the empty product, with no fields. It has one value, the empty pair. While it may seem somewhat useless, seasoned ML programmers recognize it as the return type of functions with side-effects, the parameter type of suspended computations, etc. Though unit conveys no real data, it has its use in programming languages. Mainstream programming languages often conflate unit with 'void', a different concept altogether, often speaking of functions of "void return type." In programming language theory we use the proper terminology - unit.

Examples of products:
```
() : unit

(z, z) : nat × nat

(z, (s(z), s(z))) : nat × (nat × nat)

(λ(x : nat).x, λ(x : nat → nat).x) : (nat → nat) × ((nat → nat) → nat → nat)
```

Products are associative, so we often leave off the parentheses when the nesting order is arbitrary: `nat × nat × nat` instead of `nat × (nat × nat)`.

Alternative notations for product types: a tupled form `(τ1, τ2, τ3)`, and various labeled forms (usually called records): `(left ↪ τ1, right ↪ τ2)`.

These notations typically mean exactly what they look like, and we use them to simplify our reasoning. In particular, labels are helpful to give names to the fields in a tuple. The projections retrieve the left and right branches of a tuple in the natural way.

### Product statics

```hs
-------------- T-unit
Γ ⊢ () : unit


Γ ⊢ e1 : τ1    Γ ⊢ e2 : τ2
--------------------------- T-app
Γ ⊢ (e1, e2) : τ1 × τ2


Γ ⊢ e : τ1 × τ2
---------------- T-proj-1
Γ ⊢ e · l : τ1


Γ ⊢ e : τ1 × τ2
---------------- T-proj-2
Γ ⊢ e · r : τ2
```

### Product dynamics

This is an eager dynamics for products.

```hs
-------
() Val


e1 Val e2 Val
---------------
(e1, e2) Val


      e1 ⟶ e1′
----------------------
(e1, e2) ⟶ (e1′, e2)


      e2 ⟶ e2′
----------------------
(e1, e2) ⟶ (e1, e2′)


e1 Val      e2 Val
-------------------
(e1, e2) · l ⟶ e1


e1 Val      e2 Val
-------------------
(e1, e2) · r ⟶ e2
```


## Sums

Sum types, denoted `τ1 + τ2`, are a tagged disjoint union of the types `τ1` and `τ2`. That is, a value of type `τ1 + τ2` contains either a value of type `τ1` or a value of type `τ2`, along with the machinery to determine which.

The most common appearance of sum types is in ML, with algebraic datatypes:

```sml hs
datatype token = Number of int | Identifier of string | Semicolon
```

Here, a value of type `token` contains a number, an identifier, or a semicolon. Each possible branch contains a label and an internal type: int, string, or in the case of semicolon, unit. We may represent the above type, without labels, as a sum: `int + string + unit`. Note how sums are different from products: instead of containing one field of each of the types, it contains exactly one of the types.

Sums are not the same as the crude "unions" in the C family of PLs, in that a value of a sum type also stores which branch was taken (called a tag), and attempting to view the value from any other branch is prohibited by the type system. They are not the same as enumerations in C, Java, Python, etc., which are largely incapable of storing internal data (and usually not typesafe either). And finally, they are also not the same as class hierarchies in OOP, though classes are often used to emulate sum types to varying degrees of success. Instead, sums are a typesafe manner of representing choice, giving the language flexibility without introducing unsafe type coercions or runtime checks.

We can extend System T with sums:

```hs
Types
  τ := nat                                        (nat) nat type,      ℕ
     | τ₁ → τ₂                                    (λc) function type,  →
     | unit                                       (prod) unit type,    1
     | τ₁ × τ₂                                    (prod) product type, ×
     | void                                       (sum) empty type,    0
     | τ₁ + τ₂                                    (sum) type,          +

Exp
  e := x                                          (λc) var
     | e₁ e₂                                      (λc) app
     | λ(x : τ) e                                 (λc) abs
     | z                                          (nat) zero
     | s(e)                                       (nat) successor
     | ()                                         (prod) empty pair
     | (e₁, e₂)                                   (prod) pair
     | e · l                                      (prod) left projection
     | e · r                                      (prod) right projection
     | l { τ₁; τ₂ } · e                           (sum) left injection
     | r { τ₁; τ₂ } · e                           (sum) right injection
     | case e { l · x₁ ↪ e₁ | r · x₂ ↪ e₂ }       (sum) casing construct
     | iter { z ↪ e₀ | s(x) ↪ e₁ } e              recursor
 --  | rec  { z ↪ e₀ | s(x) with y ↪ e₁ } e       (previous recursor)
```

This language contains binary sums, whose values are introduced by the left and right injections, and eliminated by the case expression. It also contains the type `void`, which is the empty sum. A type with no branches can have no values, so `void` is not inhabited by any values - it is truly empty. This is why it does not make sense for a function to return void; since there are no values of this type, if anything it would mean that the function does not return at all.

The injections correspond to the two branches of a binary sum. An injection attaches a "label" to its operand, signifying that the result takes either the left or the right branch of the sum.

Since the type of the branch that was not taken is not given by `e`, we explicitly provide the types (as `τ₁; τ₂`) of both branches to the injections:
- `l { τ₁; τ₂ } · e` left injection
- `r { τ₁; τ₂ } · e` right injection

When the types are clear, we may omit them with a shorthand:
- `l · e` left injection
- `r · e` right injection

The case expression decomposes a value of sum type, and depending on whether the contained value is left or right branch, binds it into either `e1` or `e2`.

Examples of sum values (and their types)
- l · z                  : nat + τ
- r · s(z)               : τ + nat
- l · r · λ(x : nat).x   : (τ1 + (nat → nat)) + τ2

In the first example, we write the unknown type on the right as `nat + τ`, signifying that any type can be in that branch.

We wrote that the types on the right contain the type `τ`, signifying that any type can be in that branch, depending on the type parameter we gave to the injection.

In, e.g. Haskell, the "missing" type is still polymorphic:

```hs
data Either a b where
  Left  :: a -> Either a b
  Right :: b -> Either a b

-- | The either function maps out of an Either type to another type `c`. This is the usual use case for sum types - we get a value we know is a sum, but we don't know which variant, so we case it. However, we need to cover both cases by providing a function that handles the value in each case:
either :: forall a b c. (a -> c) -> (b -> c) -> Either a b -> c
either f g e = case e of
  Left  a -> f a
  Right b -> g b

-- | A value tagged with Left...
left :: forall a b. a -> Either a b
left = Left

-- | ...but its "Right" type param is still polymorphic
or1 :: forall b. Either Nat b
or1 = Left 0

-- | A value tagged with Right...
right :: forall a b. b -> Either a b
right = Right

-- | ...but its "Left" type param is still polymorphic
or2 :: forall a. Either a String
or2 = Right "right"

-- but the "missing" types may be specialized as well:

-- | A value tagged with Left, but the Right type param is now fixed to String
or1 :: Either Nat String
or1 = Left 0

-- | A value tagged with Right, but the Left type param is now fixed to Nat
or2 :: Either Nat String
or2 = Right "right"
```



The `case` expression:

    case
      l { nat → nat; nat } · λ(x : nat). x
        { l · x1 ↪ x1(z)
        | r · x2 ↪ x2
        }

This `case` expression examines its operand

    l { nat → nat; nat } · λ(x : nat). x

in the left case it binds its wrapped value to `x1` in `x1(z)`. 
In the right case it binds the wrapped value to `x2` in `x2`.


There is a special variety of case, one with no branches, which works on values of type `void`:

    case e {} [where e : void]

But wait! We just said there were no values of type `void`, so why do we even need this? Well, even though there are no such values, we can still write functions that take in arguments of type `void`:

    λ(x : void). case x {}

For us to be able to construct this function and have it satisfy type safety, we need a construct that eliminates the void type even if nothing introduces it.

Note: The current editions of PFPL have another construct, `abort(e)`, which serves the same purpose as this empty case expression. According to the author of the textbook, that notation was a historical choice that mischaracterizes the construct, since it does not actually "abort" any computation.

One useful flavor of sum types is Booleans, defined as:

```
bool  = unit + unit
true  = l · ()
false = r · ()
```

### Sum statics

```hs
Γ ⊢ e : void
------------------
Γ ⊢ case e {} : τ


Γ ⊢ e : τ1
----------------------------
Γ ⊢ l{τ1; τ2} · e : τ1 + τ2


Γ ⊢ e : τ2
----------------------------
Γ ⊢ r{τ1; τ2} · e : τ1 + τ2


Γ          ⊢ e : τ1 + τ2
Γ, x1 : τ1 ⊢ e1 : τ
Γ, x2 : τ2 ⊢ e2 : τ
-------------------------------------------------------
Γ          ⊢ case e {l · x1 ↪ e1 | r · x2 ↪ e2} : τ
```

### Sum dynamics

This is eager dynamics.

```hs
        e ⟶ e′
------------------------
case e {} ⟶ case e′ {}

    e Val
----------
l · e Val

    e Val
----------
r · e Val

    e ⟶ e′
-----------------
l · e ⟶ l · e′

    e ⟶ e′
-----------------
r · e ⟶ r · e′

                                  e ⟶ e′
----------------------------------------------------------------------------
case e {l · x1 ↪ e1 | r · x2 ↪ e2} ⟶ case e′ {l · x1 ↪ e1 | r · x2 ↪ e2}


         e Val
-----------------------------------------------------
case l · e {l · x1 ↪ e1 | r · x2 ↪ e2} ⟶ [x1:=e]e1


         e Val
-----------------------------------------------------
case r · e {l · x1 ↪ e1 | r · x2 ↪ e2} ⟶ [x2:=e]e2
```


## Recursor

When we were first introduced to System T, we questioned why it was necessary to have two binding sites in the primitive recursor. Now that we have product types, we can roll both fields into one product, which we do with the new recursor:

    iter { z ↪ e₀ | s(x) ↪ e₁ } e

We do not lose any expressive power with this construction, as we now only need to accumulate a pair whose first element is the predecessor (a number), and whose second element is the accumulated computation. In fact, we can build the old recursor directly:

```hs
rec  { z ↪ e₀ | s(x) with y ↪ e₁ } e ===
iter { z ↪ (z, e₀) | (s(x1 · l), [x1 · l, x1 · r / x, y]e1) } g(e) · r

-- (oh, Göd…el)
```








## Refs

- OPLSS 2021: Principles of Programming Languages - Robert Harper
https://www.cs.uoregon.edu/research/summerschool/summer21/

- CMU 15-312 Principles of Programming Languages
https://www.andrew.cmu.edu/course/15-312/

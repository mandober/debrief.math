# Induction principle

## Intro

Each type has formation, introduction, elimination and computation rules. Introduction rule defines how "to get into the type", and elimination rules how "to get outta the type". The dependent elimination rule is usually given as the induction principle, and the non-dependent elimination can be defined in terms of it.

This lists the elimination rules for the three simple types, `𝟘`, `𝟙` and `𝟚`, each with the respective number of terms, and then the natural number type, `ℕ`, which has an infinite number of terms, as a way to easily compare the induction principles.

In this overview, we are comparing the induction principles of these 4 types: `𝟘`, `𝟙`, `𝟚`, and `ℕ`. In discussion, we use `τ` as a placeholder for any of these types. That is, `τ` may be considered a meta-variable that ranges exactly over these 4 types. In fact, `τ` is more of a macro abbreviation. If `τ` was a true type variable, then we would have to first state the its type, e.g. `τ : Type`, then 


introduce a type for it, e.g. `τ : Type`, then we'd have to declare `τ` as its to be of that type, and only then we could give the type of the type familiy, i.e. `{A : Type} {τ : A} {B : τ → Type}`. 

Compare that with this overview version that treats `τ` as a syntactic abbreviation (for one of the 4 types), `{A : τ → Type}`.



For each type `τ`, which is exactly one of these 4 types `τ ={𝟘,𝟙,𝟚,ℕ}`, we are giving the elimination rule for a type family indexed by each of `τ` types, `A : τ → Type`. That is, `A` is a type depending on the `τ`.


the signature for induction starts with the same type-expression, `{A : τ → Type}`, where `τ → Type` is a family of types we are eliminating, dependent on the type in question, i.e. `τ = {𝟘, 𝟙, 𝟚, ℕ}`.


## General shape of the signature

```hs
-- (0-a) declare the index type if not already known ("named")
τ = {𝟘, 𝟙, 𝟚, ℕ}
-- (0-b) if the index type is a type param, declare it first
{A : Type} {τ : A → Type}

-- (1) declare the type family A
{A : τ → Type}

-- (2) give all <term>s of the index type as dep types A <term>

-- (3) We look at the return type as a function, so we consider
--     the last two items as being parenthesized, → ((t : τ) → A t)
-- (3-a) bind a term var to the index type, → (t : τ) →
-- (3-b) return the type family index by the type τ and a value t:τ, A t

τ-elim : {A : τ → Type}
       → A t1-of-τ             -- base case, term#1 of τ, e.g. A true
       → A t2-of-τ             -- base case, term#2 of τ, e.g. A false
       → A tN-of-τ             -- induction, term#N of τ, e.g.
       → ((k : ℕ)               → A k  → A (succ k))   -- ind case for ℕ
       → ((x : X) (xs : List X) → A xs → A (x :: xs))  -- ind case for List
       ------------------------------
       → (t : τ)               -- t is a term var ranging over the type τ
       → A t                   -- we return the type family index by value t
τ-elim f g t = f
τ-elim f g t = g t (τ-elim f g t')
```

In the implementation, we bind the functions `f` and `g`, where 
`f : A t1-of-τ` and 
`g : A t2-of-τ` and 
`t : τ`. 
So it looks sorta like
```
τ-elim f g t = f
τ-elim f g t = g t (τ-elim f g t')
```


## Overview of induction principles

```hs
data 𝟘 : Type where

𝟘-elim : {R : 𝟘 → Type}
       ----------------
       → (x : 𝟘) → R x
𝟘-elim ()

-- ----------------------------------------------------------------------------
data 𝟙 : Type where
  ★ : 𝟙

𝟙-elim : {R : 𝟙 → Type}
       → R ★
       ----------------
       → (x : 𝟙) → R x
𝟙-elim a ★ = a

-- ----------------------------------------------------------------------------
data 𝟚 : Type where
  tt ff : 𝟚

𝟚-elim : {R : 𝟚 → Type}
       → R tt
       → R ff
       ---------------
       → (b : 𝟚) → R b
𝟚-elim f g tt = f
𝟚-elim f g ff = g

-- ----------------------------------------------------------------------------
data ℕ : Set where
  zero : ℕ
  succ : ℕ → ℕ

ℕ-elim : {R : ℕ → Type}
       →                  R zero
       → ((k : ℕ) → R k → R (succ k))
       ------------------------------
       → (n : ℕ) → R n
ℕ-elim f g zero     = f
ℕ-elim f g (succ n) = g n (ℕ-elim f g n)

-- ----------------------------------------------------------------------------
data List (A : Type) : Type where
  []   : List A
  _::_ : A → List A → List A

List-elim : {X : Type
            {R : List X → Type}
          →                                 R []
          → ((x : X) (xs : List X) → R xs → R (x :: xs))
          -----------------------------------------------
          → (xs : List X) → R xs
List-elim f g []        = f
List-elim f g (x :: xs) = g x xs (List-elim f g xs)

-- ----------------------------------------------------------------------------
-- Σ-intro as GADT
data Σ {A : Type} (B : A → Type) : Type where
  _,_ : (x : A) (y : B x) → Σ {A} B

π₁ : {A : Type} {B : A → Type} → Σ B → A
π₁ (x , y) = x

π₂ : {A : Type} {B : A → Type} → (z : Σ B) → B (π₁ z)
π₂ (x , y) = y

Σ-elim : {A : Type }
         {B : A → Type}
         {R : (Σ {A} (λ x → B x)) → Type }
       → ((x : A) (y : B x) → R (x , y))
         ---------------------------------
       → (z : (Σ {A} (λ x → B x)))
       → R z
Σ-elim f (x , y) = f x y

-- ----------------------------------------------------------------------------
-- Σ-intro as a record
record Σ {A : Type } (B : A → Type) : Type where
  constructor
    _,_
  field
    π₁ : A
    π₂ : B π₁

-- Σ-sugar
Sigma : (A : Type) (B : A → Type) → Type
Sigma A B = Σ {A} B

syntax Sigma A (λ x → b) = Σ x ⦂ A , b

-- Σ-induction principle
Σ-elim : {A : Type }
         {B : A → Type}
         {R : (Σ x ⦂ A , B x) → Type}
       → ((x : A) (y : B x) → R (x , y))
         --------------------------------
       → (z : Σ x ⦂ A , B x)
       → R z
Σ-elim f (x , y) = f x y
```


## Details of induction principles for finite types

The induction principle for finite types like `𝟘`, `𝟙`, `𝟚` follows the same pattern. The signature folows this pattern:
1. Implicitly declare a type family indexed by the index type
  - `{A : 𝟘 → Type}`
  - `{A : 𝟙 → Type}`
  - `{A : 𝟚 → Type}`
2. List all cases, which are all base cases for finite types:
  - `𝟘` has no cases
  - `𝟙` has one case, `A ★`
  - `𝟚` has two cases, `A true` and `A false`
3. The conclusion (return type) is made of two items:
  A value of the index type and the type family indexed by the index type
    - `(x : 𝟘) → A x`
    - `(x : 𝟙) → A x`
    - `(x : 𝟚) → A x`

The implementation folows the pattern that is the degenerate case of primitive recursion: we bind all functions involving the terms of the type (e.g. `f` handles `A true` and `g` handles `A false`) and then we split on the term of the index type. In case the term is `true` we return `f`, otherwise `g`.

```hs
𝟚-elim : {A : 𝟚 → Type}   𝟙-elim : {A : 𝟙 → Type}  𝟘-elim : {A : 𝟘 → Type}
       → A tt                    → A ★
       → A ff
       ---------------           ---------------          ----------------
       → (b : 𝟚) → A b           → (x : 𝟙) → A x          → (x : 𝟘) → A x

𝟚-elim f g tt = f         𝟙-elim f ★ = f          𝟘-elim ()
𝟚-elim f g ff = g
```

## Details of induction principles for infinite types

For infinite types the induction principles is more complex but it basically still follows the same pattern, bith for the signature and implementation.

```agda hs
ℕ-elim : {A : ℕ → Type}
       → (A zero)
       → ((k : ℕ) → A k → A (succ k))
       ------------------------------
       → (n : ℕ) → A n
ℕ-elim f g zero     = f
ℕ-elim f g (succ n) = g n (ℕ-elim f g n)


List-elim : {X : Type} {A : List X → Type}
          → A []
          → ((x : X) (xs : List X) → A xs → A (x :: xs))
          -----------------------------------------------
          → (xs : List X) → A xs
List-elim f g []        = f
List-elim f g (x :: xs) = g x xs (List-elim f g xs)
```

### Interleaved overview

```agda hs
ℕ-elim    :            {A : ℕ      → Type}
List-elim : {X : Type} {A : List X → Type}
          →                                 A 0            -- base case ℕ
          →                                 A []           -- base case List
          → ((m : ℕ)                 → A m  → A (succ m))  -- ind case ℕ
          → ((x : X) → (xs : List X) → A xs → A (x :: xs)) -- ind case List
          ----------------------------------------------
          → (n  : ℕ)      → A n                            -- return type ℕ
          → (xs : List X) → A xs                           -- return type List

-- handle base case:
ℕ-elim    f g 0         = f
List-elim f g []        = f

-- handle recursive case:
ℕ-elim    f g (succ n)  = g n    (ℕ-elim    f g n)
List-elim f g (x :: xs) = g x xs (List-elim f g xs)
```

The `g` function in `ℕ-elim` is binary, it takes
- a value (a natural number), `m : ℕ`
- a value of the type family, `A m`, i.e. of the return type
a term of which it returns.

The `g` in `List-elim` is a ternary function that takes
- a value, `x : A`
- a list, `xs : List X`
- a term of the type family, `A xs`, i.e. of the return type
a term of which it returns.


## Induction principles for sigma type

```hs
Σ-elim : {A : Type }
       → {B : A → Type}
       → {S : (Σ x ⦂ A , B x) → Type}
       → ((x : A) (y : B x) → S (x , y))
       ---------------------------------
       → (z : Σ x ⦂ A , B x)
       → S z
Σ-elim f (x , y) = f x y
```

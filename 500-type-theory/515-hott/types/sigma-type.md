# Sigma type

## TOC
<!-- TOC -->

- [TOC](#toc)
- [Introduction](#introduction)
- [Sigma type in Agda](#sigma-type-in-agda)
- [Sigma type as GADT](#sigma-type-as-gadt)
- [Sigma type as a record](#sigma-type-as-a-record)
- [Sigma type syntax sugar](#sigma-type-syntax-sugar)
- [Sigma type elimination](#sigma-type-elimination)
- [Sigma type examples](#sigma-type-examples)

<!-- /TOC -->

## Introduction

If `A` and `B` are two sets, then we get a Cartesian product `A ⨯ B`, which is a set of all ordered pairs, `(a, b)`, with `a ∈ A` and `b ∈ B`.

In computing, sets correspond to types, and we can also get a compound type called product that corresponds to the set-theoretical Cartesian product, whose terms are ordered pairs. So, if `A` and `B` are types, then `A⨯B` is their product consisting of pairs `(a,b)`, with `a : A` and `b : B`.

The product type, however, is a particular case of a more general type, whose elements have the same form, `(a, b)`, but with the difference that `a : A` and `b : B(a)`, where `A : Type` and `B : A → Type`. The difference lies in the fact that the type of the second component, `b`, depends on the *value* of the first component, `a`. This type is called the *sigma type*, and it generalizes the product type. Simga type is also called a dependent product, and, set theoretically, it is the disjoint union of the type family `B : A → Type`.

## Sigma type in Agda

## Sigma type as GADT

In TT, sigma types are denoted by `Σ (a:A) B(a)`, and in a dependently-typed programming language like Agda, sigma types can be defined as a GADT:

```agda hs
-- record Σ {A : Type} (B : A → Type) : Type  where   -- compare with record
data      Σ {A : Type} (B : A → Type) : Type  where
  _,_ : (x : A) (y : B x) → Σ {A} B
```

In Agda, the default notation for sigma type is `Σ {A} B`, where `{A}` means that the type `A` is implicit as we expect it to be inferrable from the context; in fact, in that case the type can be simply `Σ B`.

## Sigma type as a record

It is more convenient to define the sigma type as a record because the record definition encompasses the definitions of the eliminators and comes the η-rule which states `p = (π₁ p, π₂ p)`.

```agda hs
-- data Σ {A : Type} (B : A → Type) : Type where  -- compare with GADT
record  Σ {A : Type} (B : A → Type) : Type where
  constructor
    _,_
  field
    π₁ : A
    π₂ : B π₁
```

## Sigma type syntax sugar

We can define the more familiar notation for sigma types, `Σ x ꞉ A , B x`, as a syntax sugar. First we define a type alias (as a function), and then add the new syntax (kinda like a macro) that turns type expressions `Sigma A (λ x → b)` into type expressions `Σ x ꞉ A , b`.

```agda hs
-- Sigma type defined as a dependent function:
Sigma : (A : Type) (B : A → Type) → Type
Sigma A B = Σ {A} B

-- syntax-sugaring `Sigma` function to get
-- the more familiar, type-theoretic syntax:
syntax Sigma A (λ x → b) = Σ x ꞉ A , b

infix -1 Sigma
```

Now we can write a sigma type in several ways:
- Σ {A : Type} (B : A → Type) : Type
- Σ {A : Type} (B : A → Type) : Type
- Sigma : (A : Type) (B : A → Type) → Type
- Σ {x : A} → (B x)
- Sigma A (λ x → b)
- Σ x ꞉ A , b

## Sigma type elimination

The sigma type has two elimination rules, called the first projection, `π₁`, and second projection, `π₂`.

```agda hs
π₁ : {A : Type} {B : A → Type} → Σ B → A
π₁ (a , b) = a

π₂ : {A : Type} {B : A → Type} → (z : Σ B) → B (π₁ z)
π₂ (a , b) = b
```

Note that the type of the first projection is the same as for the first projection of non-dependent pairs, `π₁(a , b) = a : A`, but type of the second projection depends on the value of the first component, `π₂(a , b) = b : B(π₁ a)`.

Sigma type generalizes the plain old non-dependent pair type, which, in set theory, is the Cartesian product, `A ⨯ B`, which is a set of elements `(a, b)`. There, the involved types are straightforward:

```agda hs
a : A, b : B a ⊢ (a, b) : A ⨯ B

p = (a, b) : A ⨯ B
p = (a : A, b : B) : A ⨯ B

π₁ : A ⨯ B → A
π₁ (a, b) = a
-- or
π₂ p = let (a, b) = p in a

π₂ : A ⨯ B → B
π₂ (a, b) = b
-- or
π₂ p = let (a, b) = p in b

p = (π₁ p, π₂ p) : A ⨯ B
```

With sigma type this is not so clear cut.

```hs
-- π₁ : A ⨯ B → A
π₁ : {A : Type} {B : A → Type} →      Σ {A} B  → A
-- π₂ : A ⨯ B → B
π₂ : {A : Type} {B : A → Type} → (p       : Σ {A} B) → B (π₁ p)
π₂ : {A : Type} {B : A → Type} → ((x , _) : Σ {A} B) → B x
-- when Sigma is def as a record, ↑↑↑↑↑↑↑ this syntax can be used
-- this is thanx to the availability of the η rule in record definitions.
```

The domain type of `π₁` is not just `A ⨯ B` anymore, but a more general type `Σ {A} B` (the type of `A` is stated as being implicit, `{A}`, since Agda can infer it). The codomain (return) type of `π₁` remains the same, viz. `A`.

The type of `π₂` is more complicated as both domain and codoman types are different compared to the non-dependent version. The domain type of `π₂`, i.e. `Σ {A} B` (in fact, `Σ (a : A) B a`), is the sigma pair. The codomain type of `π₂` basically takes the sigma type `p` in order to extract the dependent second component (which dependes on the value of the first), so its type is `π₂ : (p : Σ {A} B) → B (π₁ p)`. In the return type, `B (π₁ p)`, the type of `B` dependens, or, is indexed by the term, of the type `π₁ p` (which applies the first projection to the sigma pair `p`, the result of which lands somewhere in `B`).


Projections
- `π₁ : A ⨯ B → A`
- `π₂ : A ⨯ B → B`
vs
- `π₁ :      Σ {A} B  → A`
- `π₂ : (p : Σ {A} B) → B (π₁ p)`

```hs
a : A, b : B a ⊢ (a, b) : Σ (a : A) B a

p : (A : Type) → (B : A → Type) → Σ (a : A) B a
p a b = (a , b)

π₁ :      Σ (a : A) B a  → A
π₂ : (p : Σ (a : A) B a) → B (π₁ p)


π₁ : {A : Type} {B : A → Type} →      Σ {A} B  → A
π₁ (a , b) = a

π₂ : {A : Type} {B : A → Type} → (p : Σ {A} B) → B (π₁ p)
π₂ (a , b) = b
```


## Sigma type examples

* An example of a sigma type is the type

`Σ xs ꞉ List X , Vector X (length xs)` where `{X : Type}`

An element of this type is a pair `(xs , ys)`, where `xs` is a list, and `ys` is a vector of the same length as `xs`.

* Another example that iterates the `Σ` type construction is the type

`Σ x : ℕ , Σ y : ℕ , Σ z : ℕ , x ≡ y * z`

An element of this type is now a quadruple `(x , (y , (z , p)))`, 
where `x y z : ℕ` and `p : x ≡ y * z`. 

That is, the 4th component ensures that `x y z : ℕ` are allowed in the tuple iff `x ≡ y * z`.

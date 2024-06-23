# Subtyping

Basic theory of a subsumptive subtyping semantics over a STLC.

*Subtyping relation*, `τ₁ <: τ₂` (τ₁ extends τ₂), is a judgment claiming that a value of type `τ₁` is equivalent to a value of type `τ₂`, with some more specific information attached. This leads to the following typing rule:

```hs
Γ ⊢ e : τ₁    τ₁ <: τ₂
----------------------- subsumption
Γ ⊢ e : τ₂
```

This is known as the **subsumption rule**, where we allow terms to automatically "upcast" from a subtype to a supertype. If `τ₁` is a `τ₂` with some extra information, then we should be able to recover the `τ₂` by discarding that extra specificity.

Another important property to maintain with this relation is *transitivity*. In fact, if we are only concerned with typing specific expressions, then this property is irrelevant, as we can already show that 

    (e : τ₁, τ₁ <: τ₂) ∧ (τ₂ <: τ₃) ⇒ (e : τ₃)

When discussing the types themselves, however, it is often convenient to add a rule stating this directly:

```hs
τ₁ <: τ₂    τ₂ <: τ₃
--------------------- transitivity
     τ₁ <: τ₃
```

## Structural subtyping and row-polymorphism

We examine what properties might be derived structurally, examining only the form of the types themselves.

```hs
-- T2 <: T1
data T1 = T1 a b c
data T2 = T2 a b
```

The subtyping relation for products goes in the direction such that `T2 <: T1`, and the extra info is ignored.

In keeping with our intuition that a subtype is the same as a supertype but with more information, we notice that any value of type `T2` has all the fields of `T1` with the same types, but also has an extra field.

Records are just labeled products - we add the **row-polymorphism** (record width-subtyping) rule:

```hs
                           ρ₁ <: ρ₂
------------------------------------------------------ Row-Poly
{ ℓ₁ : τ₁, ℓ₂ : τ₂, ℓ₃ : τ₃ } <: { ℓ₁ : τ₁, ℓ₂ : τ₂ }


                       ρ₁ <: ρ₂
---------------------------------------------------- Row-Poly
{ ℓ₁ : τ₁, …, ℓₙ : τₙ, … } <: { ℓ₁ : τ₁, …, ℓₙ : τₙ }
--                    ↑
-- ρ₁ has extra fieds absent from ρ₂
-- ρ₁ <: ρ₂
```

which says that `ρ₁ <: ρ₂` when a record `ρ₁` contains all the same fields with the same types, as a record `ρ₂`.

## Sum types subtyping

```hs
data T1
  = L1 a
  | L2 b
  | L3 c

data T2
  = L1 a
  | L2 b
```

The subtyping relation goes in the direction such that `T1 <: T2`. That is, the sum type `T1` which has an extra variant is more specific then `T2`. A case exp can account for all 3 variants, except the last pattern will never match for the `T2` type.

Another way to view this is that, in many ways, sum types are "flipped around" compared to product types. Categorically speaking, we claim that sums and products are dual to each other. It makes sense, then, that a larger sum type is related to a smaller sum type in the way opposite to the way that a larger and smaller products relate.

- Products: `T2 <: T1` extra fields are ignored
- Sums:     `T1 <: T2` missing variants never pattern-match anyway


## Variance

>When is `T τ₁ <: T τ₂` for a particular type constructor `T`?

To answer this question, we typically must examine not only the internals of the constructor `T`, but also the relationship between `τ₁` and `τ₂`. The way that the relationship between `τ₁` and `τ₂` affects the relationship between `T τ₁` and `T τ₂` is known as **variance**.


(Theorem) **Covariance of sources**.   
If there exists a function of most general type `∀a. T a → a` that returns a value for at least one input, then `T τ₁ <: T τ₂` implies `τ₁ <: τ₂`.


```hs
    τ₂ <: τ₁
------------------- Fn-variance
τ₁ → τ <: τ₂ → τ
```


(Proposition) **Contravariance of sinks**.   
If there exists a type `c` such that there exists a function of type `f` such that `f : ∀a. (a → T a → c)`, then `T τ₁ <: T τ₂` implies `τ₂ <: τ₁`.

## Mutable References

It turns out that mutable state interacts in an interesting way with subtyping variance. Consider the types `τ1 ref` and `τ2 ref`, referring to the types of mutable reference cells.

Notice that the dereference function ,`!`, has type `∀a.(a ref → a)`, so by covariance of sources, we have that `τ1 ref <: τ2 ref` implies `τ1 <: τ2`.

However, `τ1 <: τ2` is not sufficient to conclude that `τ1 ref <: τ2 ref`.

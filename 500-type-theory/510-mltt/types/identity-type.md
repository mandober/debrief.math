# Identity type

https://en.wikipedia.org/wiki/Intuitionistic_type_theory#=_type_constructor

https://ncatlab.org/nlab/show/equality
https://ncatlab.org/nlab/show/identity+type#EtaConversion
https://ncatlab.org/nlab/show/Martin-L%C3%B6f+dependent+type+theory


Identity type is usually denoted by the symbol `≡`.

```agda hs
-- Identity type in MLTT
-- https://ncatlab.org/nlab/show/identity+type

-- type formation

          Γ ⊢ A : Type
---------------------------------
Γ, x : A, y : A ⊢ Idᴀ(x, y) : Type

-- term introduction

          Γ ⊢ A : Type
---------------------------------
  Γ, x : A ⊢ r(x) : Idᴀ(x, y)

-- term elimination

Γ, x : A, y : A, p : Idᴀ(x, y), Δ(x, y, p)    ⊢     C(x, y, p) : Type
Γ, x : A,                       Δ(x, x, r(x)) ⊢ t : C(x, x, r(x))
---------------------------------------------------------------------------
Γ, x : A, y : A, p : Idᴀ(x, y), Δ(x, y, p)    ⊢ J(t; x, y, p) : C(x, y, p)

-- Ignore the presence of the additional context Δ for now;
-- it is unnecessary if we also have dependent product types.


-- computation rule for strict identity types (β-reduction)

Γ, x : A, y : A, p : Idᴀ(x, y), Δ(x, y, p)    ⊢     C(x, y, p) : Type
Γ, x : A,                       Δ(x, x, r(x)) ⊢ t : C(x, x, r(x))
----------------------------------------------------------------------
Γ, x : A,                       Δ(x, x, r(x)) ⊢ J(t; x, x, r(x)) = t

-- computation rule for weak identity types (β-reduction)

Γ, x : A, y : A, p : Idᴀ(x, y), Δ(x, y, p)    ⊢     C(x, y, p) : Type
Γ, x : A,                       Δ(x, x, r(x)) ⊢ t : C(x, x, r(x))
----------------------------------------------------------------------
Γ, x : A, Δ(x, x, r(x)) ⊢ q(x) : Idᴄ ₓ ₓ ₍ᵣ ₓ₎ (J(t; x, x, r(x)), t)
```

## η-conversion and the reflection rule

https://ncatlab.org/nlab/show/identity+type#EtaConversion

Almost all types in type theory can be given both β-reduction and η-reduction rules. β-reduction specifies what happens when we apply an eliminator to a term obtained by a constructor; η-reduction specifies the reverse. Above we have formulated only the β-reduction rule for identity types. The η-reduction rule would be the following:

```agda hs
-- η-reduction rule

Γ, x : A, y : A, p : Idᴀ(x, y), Δ(x, y, p)    ⊢     C(x, y, p) : Type
Γ, x : A, y : A, p : Idᴀ(x, y), Δ(x, x, r(x)) ⊢ t : C(x, x, r(x))
---------------------------------------------------------------------------
Γ, x : A, y : A, p : Idᴀ(x, y), Δ(x, y, p) ⊢ J(t[x/y, r(x)/p]; x, y, p) = t
```

This says that if `C` is a type which we can use the eliminator `J` to construct a term of, but we already have a term `t` of that type, then if we restrict `t` to reflexivity inputs and then apply `J` to construct a term of type `C`, the result is the same as the term `t` we started with.

As in the β-reduction rule, the `=` in the conclusion refers to judgmental equality.

This η-conversion rule has some very strong consequences.

(...)

...in other words, if `Idᴀ(x,y)` is inhabited (that is, `x` and `y` are typally equal) then in fact `x` and `y`  are judgmentally equal.

(...)

Thus, the judgmental η-conversion rule for identity types implies the "reflection rule" for identity types, which in turn implies that the type theory is set-level. In particular, in homotopy type theory we cannot assume the η-conversion rule for identity types.

However, the reflection rule for identity types is also problematic for non-homotopical reasons: since type-checking in dependent type theory depends on judgmental equality, but the above rule implies that judgmental equality depends on inhabitation of identity types, this makes judgmental equality and hence type-checking undecidable in the formal computational sense. Thus, *η-conversion for identity types is often omitted even in set-level type theories like Coq and Agda*.

On the other hand, it is possible to prove a typal version of η-conversion using only the identity types as defined above without judgmental η-conversion.

(...)



## Identity type in terms of inductive types

Two ways to define identity type depending on whether the first argument is a parameter or an index.

```agda coq hs
-- in Coq notation:
Inductive id {A} : A -> A -> Type := idpath : forall x, id x x
-- essentially equivalent definition due to Paulin-Mohring:
Inductive id {A} (x:A) : A -> Type := idpath : id x x

-- in Agda:
data _≡_ {A : Set} : A → A → Set where
  refl : (x : A) → x ≡ x
-- essentially equivalent definition due to Paulin-Mohring:
data _≡_ {A : Set} (x : A) : A → Set where
  refl : x ≡ x
```

The difference between these two definitions of identity type is that in the second definition, `x` is a parameter of the inductive definition rather than an index. The first definition has 2 indices. Note, however, that `refl` is a function that takes an `x : A` in the first definition, while it is a constant in the second.


In other words, the first definition says:   
for each type `A`, 
we have a type `Idᴀ` dependent on `A × A`, 
inductively defined by a constructor `idpath` 
which takes an element `x : A` as input 
and yields output in `Idᴀ(x,x)`.

The second definition says:    
for each type `A`, 
and each element `x : A`, 
we have a type `Idᴀ(x)` 
dependent on `A`, 
inductively defined by a constructor `idpath` 
which takes no input 
and yields output in `Idᴀ(x)(x)`.

The two formulations can be proven equivalent, but sometimes one is more convenient than the other.



## Forming identy types

Identity type is created from two terms of some (the same) type. 

For example, given two terms of ℕ, `1` and `1`, 
or, to make it less trivial, two expressions 
computing to the same ℕ like `2 + 4` and `2 * 3`, 
we can create a new type `2 + 4 ≡ 2 * 3`.

IMPORTANT: `2 + 4 ≡ 2 * 3`, or generally, `x ≡ x`, **is a type**.

The terms of this new type, `2 + 4 ≡ 2 * 3`, represent 
**proofs** that both sides reduce to the **same canonical term**.

Thus, since both sides, `2 + 4` and `2 * 3`, 
of the type `2 + 4 ≡ 2 * 3` 
reduce to the same canonical term, `6`, 
the type `6 ≡ 6` **will be inhabited** 
since 6 is equal to 6 
i.e. there will be a term of the type `6 ≡ 6`.

This term that inhabits the identity type `6 ≡ 6` is usually called `refl` since the equality is defind in terms of reflexivity: any term is equal to itself, `x ≡ x`.

On the other hand, given two terms of ℕ, e.g. 0 and 1, we can also form the type `0 ≡ 1`, but since these two are not equal, the type `0 ≡ 1` **will be empty**.


## Identity type in MLTT

>In MLTT, the only way to get a term of an identity type 
is if the type relates terms that are actually equal 
in which case the data constructor `refl` is obtained.

The type of `refl`, expresed as a pi-type 

`refl : Π (x : A) (x ≡ x)`

$$ \Large {\text{refl} : \prod_{a:A} (a ≡ a)} $$


In MLTT, it is possible to create an identity type like `1 ≡ 2`, 
where the terms don't reduce to the same canonical term, 
but we are unable to create terms of that type. 
For if we were able to, 
creating a term of the type `1 ≡ 2` is the same 
thing as creating a term of the empty type (`⊥`), 
which would unlock the superpower to proof 
anything we want because ex falsum quidlibet.

In ITT, negation is defined as an abbreviation, i.e. as a function returning the empty type, `¬P := P → ⊥`.

Using negation, we can express the type `¬ (1 ≡ 2)`, which desugars to the function type `(1 ≡ 2) → ⊥`.

And since `1 ≢ 2`, the type `(1 ≡ 2) → ⊥` would be inhabited.

# Sequent Calculus :: Rules of inference

A sequent has the form

`Γ ⊢ Δ`

where `Γ` represents the premises, and `Δ` conclusions. Both `Γ` and `Δ` are what is usually called a context, and they denote arbitrary collections of zero or more formulas. However, the important difference is that the formulas in `Γ` are interpreted conjunctively, while those in `Δ` disjunctivelly. In fact, the usual interpretation of the sequent is this:

>If all premises are true, then at least one conclusion (formula) is true.

The contexts `Γ` and `Δ` are collections of formulas. The term "collection" is used instead of some concrete container type, because the choice of a data structure to hold the formulae is flexible as long as the compatibility with the calculus in question and its structural rules is maintened.

For example, the structural rule of weakening allows for duplication of formulas, but the set data structure cannot represent it. A multiset can, but a multiset, like set, has no notion of order, which may be significant. In fact, the substructural rule of exchange allows two formulas in the same cedant to be swapped. But if a set or multiset is used, the rule of exchange becomes impotent.


```hs
                Γ ⊢ Δ
        A₁, …, Aₙ ⊢ B₁, …, Bₘ
    (A₁ ∧ … ∧ Aₙ) ⊢ (B₁ ∨ … ∨ Bₘ)
  ⊢ (A₁ ∧ … ∧ Aₙ) → (B₁ ∨ … ∨ Bₘ)

-- in a classical context:
A ∧ B ⊢ C ∨ D
A , B ⊢ C , D
A ⊢ ¬B, C, D
⊢ ¬A, ¬B, C, D
⊢ ¬A ∨ ¬B ∨ C ∨ D
⊢ (A ∧ B) → (C ∨ D)


-- in a classical context:
         A₁, …, Aₙ ⊢ B₁, …, Bₘ
    (A₁ ∧ … ∧  Aₙ) ⊢ (B₁ ∨ … ∨ Bₘ)
⊢  ((A₁ ∧ … ∧  Aₙ) → (B₁ ∨ … ∨ Bₘ))
⊢ (¬(A₁ ∧ … ∧  Aₙ) ∨ (B₁ ∨ … ∨ Bₘ))
⊢  (¬A₁ ∨ … ∨ ¬Aₙ) → (B₁ ∧ … ∧ Bₘ)
⊢   ¬A₁ ∨ … ∨ ¬Aₙ  ∨  B₁ ∨ … ∨ Bₘ
⊢ ¬( A₁ ∧ … ∧  Aₙ  ∧  B₁ ∧ … ∧ Bₘ )
```


## Sequent Calculus LCP = Axioms + Logical rules + Structural rules

### I Axiom

The items to the left of the turnstile are understood to be connected by conjunction, and those to the right by disjunction. Therefore, when both consist only of atomic symbols, the sequent is accepted axiomatically (and always true) *iff at least one of the symbols on the right also appears on the left*. `Γ` and `Δ` can be other arbitrary formulas.

```hs

------------- Ax (ASS, assumption, I axiom, initial sequent)
Γ, A ⊢ A, Δ



EXAMPLES:

---------- Ax
p ⊢ p

---------- Ax
p ⊢ p,q

---------- Ax
p,q,r ⊢ r

-------------- Ax
p,q,r ⊢ r,s,t

-------------- Ax
p,q,r ⊢ p,q,s
```

### The cut rule

https://en.wikipedia.org/wiki/Cut-elimination_theorem


```hs
Γ ⊢ A, Δ    Γ', A ⊢ Δ'
----------------------- (Cut)
   Γ, Γ' ⊢ Δ, Δ'



Γ     ⊢ A, Δ
--------------
Γ', A ⊢    Δ'
-------------- (Cut)
Γ, Γ' ⊢ Δ, Δ'


Γ, A ⊢ Δ    Γ, B ⊢ Δ
--------------------- ∨L
    Γ, A ∨ B ⊢ Δ
```



∃y. ∀x. P(xy) ⊢ ∀x. ∃y. P(xy)
(exists y, forall x, P(x,y)) ⊢ (forall x, exists y, P(x,y))

# Sequent Calculus :: Logical rules

## Conjunction and disjunction

```hs
-- LEFT LOGICAL RULES                 RIGHT LOGICAL RULES


Γ, A     ⊢ Δ                           Γ ⊢ A,     Δ
------------- ∧L₁                     -------------- ∧R₁
Γ, A ∧ B ⊢ Δ                           Γ ⊢ A ∨ B, Δ


Γ,     B ⊢ Δ                           Γ ⊢     B, Δ
------------- ∧L₂                     -------------- ∧R₂
Γ, A ∧ B ⊢ Δ                           Γ ⊢ A ∨ B, Δ


Γ, A ⊢ Δ    Γ', B ⊢ Δ'                 Γ ⊢ A, Δ    Γ' ⊢ B, Δ'
----------------------- (∨L)           ----------------------- (∧R)
Γ, Γ', A ∨ B  ⊢  Δ, Δ'                 Γ, Γ'  ⊢  A ∧ B, Δ, Δ'


-- similarly

Γ, A ⊢ Δ    Γ, B ⊢ Δ                 Γ ⊢ A, Δ    Γ ⊢ B, Δ
--------------------- (∨L)           ----------------------- (∧R)
    Γ, A ∨ B ⊢ Δ                        Γ ⊢ A ∧ B, Δ



-- alternatively

Γ ,    A     ⊢ Δ
   Γ',     B ⊢    Δ'
--------------------- (∨L)
Γ, Γ', A ∨ B ⊢ Δ, Δ'


Γ     ⊢ A,     Δ
   Γ' ⊢     B,    Δ'
----------------------- (∧R)
Γ, Γ' ⊢ A ∧ B, Δ, Δ'
```



## Implication

```hs
-- LEFT LOGICAL RULES                 RIGHT LOGICAL RULES

Γ ⊢ A, Δ    Γ', B ⊢ Δ'                 Γ, A ⊢ B, Δ
----------------------- (→L)           -------------- (→R)
Γ, Γ', A → B  ⊢  Δ, Δ'                 Γ ⊢ A → B, Δ


-- basically

⊢ A     B ⊢                              A ⊢ B
------------- (→L)                    ---------- (→R)
A → B ⊢                                ⊢ A → B


         B ⊢ A
---------------
     ¬A, B ⊢
---------------
    ¬A ∧ B ⊢
---------------
     
---------------
     A → B ⊢

---------------
    ¬A ∧ B ⊢
---------------
  (¬A ∨ B) ⊢
---------------
  (A ∧ ¬B) ⊢
---------------





Γ            ⊢ A, Δ
Γ', B        ⊢    Δ'
----------------------- (→L)
Γ, Γ', A → B ⊢ Δ, Δ'


Γ, A  ⊢      B, Δ
------------------- (→R)
Γ     ⊢  A → B, Δ
```

## Negation

The rules for negation follow from the intrpertation of the lhs conjunctivelly, and rhs disjunctivelly.

```hs
-- LEFT LOGICAL RULES                 RIGHT LOGICAL RULES

Γ    ⊢ A, Δ                              Γ, A ⊢     Δ
------------- (¬L)                       -------------- (¬R)
Γ,¬A ⊢ Δ                                 Γ    ⊢ ¬A, Δ
```

# Logic :: Index :: Formulae

```hs
p = p                       In logic with identity
p → p                       Any prop implies itself (In CL same as LEM,LNC)

p ∨ ¬p                      LEM

¬(p ∧ ¬p)                   LNC
¬(¬p → p)                   Aristotle's thesis
(p → q) → ¬(p → ¬q)         Boethius' thesis

⊥ ⊢ p                       EFQ
⊥ → p                       EFQ
p → ¬p ⊢ q                  EFQ

((p → q) → p) → p           Pierces' law

(p ∧ q) → r ≡ p → (q → r)   Currying
p → (q → r) ≡ (p ∧ q) → r   Uncurrying

p → (q → p)                 ?

p → ⊥ ⊢ ¬p                  Proof by contradiction
¬p → ⊥ ⊢ p                  Proof by contradiction

 p ∧  q ≡ ¬( p̅ ∨ q̅)          De Morgan's law ∧
 p ∨  q ≡ ¬( p̅ ∧ q̅)          De Morgan's law ∨
¬p ∨ ¬q ≡ ¬( p ∧ q)          De Morgan's law (distribution of ¬ over ∨)
¬p ∧ ¬q ≡ ¬( p ∨ q)          De Morgan's law (distribution of ¬ over ∧)
 p ∧  q ≡ ¬(¬p ∨¬q)          De Morgan's law ∧
 p ∨  q ≡ ¬(¬p ∧¬q)          De Morgan's law ∨

```


- Law of Identity (LID)
  `p = p` in logic with identity
  `p → p` as conditional
    which is classically
    `¬p ∨ p`    i.e. same as LEM
    `¬(p ∧ ¬p)` i.e. same as LNC
- LEM, `p ∨ ¬p`
- `¬(p ∧ ¬p)` LNC
- POB, truth values = `𝔹 = {0,1}`
- EFQ, `⊥ → p` or `p → ¬p ⊢ q`
- RAA, `p → ⊥ ⊢ ¬p` proof by contradiction
- `¬(¬p → p)` Aristotle's thesis
- `(p → q) → ¬(p → ¬q)` Boethius' thesis
- `((p → q) → p) → p` Pierces' law

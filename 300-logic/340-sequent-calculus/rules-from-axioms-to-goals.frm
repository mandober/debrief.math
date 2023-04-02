# Ax2Th

- Rules for top-down deduction, from axioms to the goal (theorem), `Ax2Th`
- Rules that **unite** two sequents into one: `Cut`, `∧R`, `∨L`, `→L`
- This means that given two sequents, there is always a way to unite them

```hs

------ Ax
A ⊢ A


Γ ⊢ A, Δ    Γ', A ⊢ Δ'
----------------------- (Cut)
   Γ, Γ' ⊢ Δ, Δ'


-- LEFT LOGICAL RULES                 RIGHT LOGICAL RULES

Γ    ⊢ A, Δ                            Γ, A ⊢     Δ
------------- ¬L                       ------------- ¬R
Γ,¬A ⊢ Δ                               Γ    ⊢ ¬A, Δ


Γ, A     ⊢ Δ                           Γ ⊢ A,     Δ
------------- ∧L₁                      ------------- ∨R₁
Γ, A ∧ B ⊢ Δ                           Γ ⊢ A ∨ B, Δ

Γ,     B ⊢ Δ                           Γ ⊢     B, Δ
------------- ∧L₂                     -------------- ∨R₂
Γ, A ∧ B ⊢ Δ                           Γ ⊢ A ∨ B, Δ


Γ, A ⊢ Δ    Γ', B ⊢ Δ'                 Γ ⊢ A, Δ    Γ' ⊢ B, Δ'
----------------------- ∨L             ----------------------- ∧R
Γ, Γ', A ∨ B  ⊢  Δ, Δ'                 Γ, Γ'  ⊢  A ∧ B, Δ, Δ'



Γ ⊢ A, Δ    Γ', B ⊢ Δ'                 Γ, A ⊢ B, Δ
----------------------- →L             -------------- →R
Γ, Γ', A → B  ⊢  Δ, Δ'                 Γ ⊢ A → B, Δ




-- LEFT STRUCTURAL RULES           RIGHT STRUCTURAL RULES

Γ    ⊢ Δ                           Γ ⊢    Δ
---------- Wl                      ---------- Weakening-right
Γ, A ⊢ Δ                           Γ ⊢ A, Δ


Γ, A, A ⊢ Δ                        Γ ⊢ A, A, Δ
------------- Cl                   ------------- Contraction-right
Γ, A    ⊢ Δ                        Γ ⊢    A, Δ


Γ₁, A, B, Γ₂ ⊢ Δ                   Γ ⊢ Δ₁, A, B, Δ₂
----------------- Pl               ----------------- Permutation-right
Γ₂, B, A, Γ₂ ⊢ Δ                   Γ ⊢ Δ₁, B, A, Δ₂

```


Rules that **unite** two sequents into one: `∧R`, `∨L`, `→L` and `Cut`. 
This means that given two sequents, there is always a way to unite them. 

If we have two sequents one with A, the other with B, then if
1. `⊢ A` and `⊢ B` gives `⊢ A ∧ B` - both right¹     yields `∧R`
2. `A ⊢` and `B ⊢` gives `A ∨ B ⊢` - both left¹      yields `∨L`
3. `⊢ A` and `B ⊢` gives `A → B ⊢` - A right, B left yields `→L`
4. `B ⊢` and `⊢ A` gives `A → B ⊢` - B left, A right yields `→L`
5. `⊢ A` and `A ⊢` gives `⊢`       - A right, A left yields `CUT`
6. `A ⊢` and `⊢ A` gives `⊢`       - A left, A right yields `CUT`

¹ in their respective sequent

- (3) and (4) are the same, only src sequents flipped
- (5) and (6) are the same, only src sequents flipped
- (5) and (6) are special cases when `A = B`, yielding the cut rule.


The rule `∧R` unites two sequents 
that both have the active formula 
(`A` in the first, `B` in the second sequent) on the LEFT
`Γ     ⊢ A, Δ`  and 
`Γ'    ⊢ B, Δ'` into one sequent 
`Γ, Γ' ⊢ A ∧ B, Δ, Δ'` 
with conjunction, `A ∧ B`, on the LEFT.


## Problem

Check this out: 
the rule, e.g. `∧R` (other rules are also affected) says:

```hs
Γ ⊢ A, Δ    Γ' ⊢ B, Δ'
----------------------- ∧R
Γ, Γ'  ⊢  A ∧ B, Δ, Δ'
```

`A` is on the RIGHT side of `⊢` in the first sequent, and 
`B` is on the RIGHT side of `⊢` in the second sequent, 
producing `⊢ A ∧ B` on the RIGHT side in the conclusion. 
However, their same-side contexts are united in the conclusion: 
`Γ` unites with `Γ'` and `Δ` unites with `Δ'`. 
But uniting two contexts produces a list! So, 
`Γ ⋃ Γ'` gives a list on the LEFT, while 
`Δ ⋃ Δ'` gives a list on the RIGHT!!
So any formulas in `Δ` are just united 
with any formulas in `Δ'` on the RIGHT side. 
But `A` is just one of these formulas in `Δ`, 
just how `B` is one of the formulas in `Δ'`. 
However, these two specific formulas (A and B) 
are conjoined on the right, as `A ∧ B`, 
while all other formulas in `Δ` and `Δ'` 
are only united (comma-separated) on the RIGHT! 


```hs
  ↓         ↓
⊢ a, p    ⊢ b, q
----------------- (∧r)
⊢ (a ∧ b), p, q

     ↓         ↓
⊢ a, p    ⊢ b, q
----------------- (∧r)
⊢ (p ∧ q), a, b

-- (a ∧ b) ∨ p ∨ q  <=/=>  a ∨ b ∨ (p ∧ q)


  ↓         ↓
⊢ p       ⊢ q, r
----------------- (∧r)
⊢ (p ∧ q), r

  ↓            ↓
⊢ p       ⊢ q, r
----------------- (∧r)
⊢ (p ∧ r), q

-- ((p ∧ q) ∨ r)  <=/=>  ((p ∧ r) ∨ q)
```


See? In one case two variables (`a` and `b`) are AND-ed and the two from the context (`p` and `q`) are OR-ed, but it could've been the other way around as well... *WTF? This can't be right!* Depending on which var you choose to enact the `∧R` rule you end up with incompatible conclusions!

In one case: `(p ∧ q) ∨ r`
In another:  `(p ∧ r) ∨ q)`
but `(p ∧ q) ∨ r` <=/=> `(p ∧ r) ∨ q`
so WTF?!

# Sequent Calculus :: Rules of inference

## Direction: From goals to axioms


```hs
-- LEFT LOGICAL RULES                  RIGHT LOGICAL RULES

Γ, A ∧ B ⊢ Δ                           Γ ⊢ A ∧ B, Δ
-------------- L∧                      --------------------- R∧
Γ, A, B ⊢ Δ                            Γ ⊢ A, Δ    Γ ⊢ B, Δ


Γ, A ∨ B ⊢ Δ                           Γ ⊢ A ∨ B, Δ
--------------------- L∨               -------------- R∨
Γ, A ⊢ Δ    Γ, B ⊢ Δ                   Γ ⊢ A, B, Δ


Γ, A → B ⊢ Δ                           Γ ⊢ A → B, Δ
--------------------- L→               -------------- R→
Γ ⊢ A, Δ    Γ, B ⊢ Δ                   Γ, A ⊢ B, Δ


Γ,¬A ⊢ Δ                               Γ ⊢ ¬A, Δ
--------- L¬                           ----------- R¬
Γ ⊢ A, Δ                               Γ, A ⊢ Δ


------------ Ax
Γ, A ⊢ A, Δ
```


## Direction: From axioms to goals

- `A` and `B` are wffs of FOQL (FOL + QL) (one may also restrict this to PL)
- `Γ`, `Γ'`, `Δ`, `Δ'` are finite (possibly empty) sequences of formulae, called contexts; when on the left of the `⊢`, the sequence of formulas is considered conjunctively (all assumed to hold at the same time), while on the right of the `⊢`, the sequence of formulas is considered disjunctively (at least one of the formulas must hold for any assignment of variables)

Contrary to the rules for proceeding along the *reduction tree* above, *from goals to axioms*, the following rules are for moving in the opposite directions, *from axioms to theorems*. Thus they are exact mirror-images of the rules above, except that here symmetry is not implicitly assumed, and rules regarding quantification are added.

### The system LK

These are the rules of the sequent calculus `LK` (standing for `Logistische Kalkül`) as introduced by Gentzen in 1934. A (formal) proof in this calculus is a sequence of sequents, where each of the sequents is derivable from sequents appearing earlier in the sequence by using one of the rules below.


```hs

------ AX
A ⊢ A


Γ ⊢ A, Δ    Γ', A ⊢ Δ'
---------------------- CUT
Γ, Γ' ⊢ Δ, Δ'



-- LEFT LOGICAL RULES                  RIGHT LOGICAL RULES


A    , Γ ⊢ Δ                           Γ ⊢ Δ, A
--------------- ∧L₁                    ------------- ∨R₁
A ∧ B, Γ ⊢ Δ                           Γ ⊢ Δ, A ∨ B
- - - - - - - - L∧
A , B, Γ ⊢ Δ



    B, Γ ⊢ Δ                           Γ ⊢ Δ,     B
------------- ∧L₂                      --------------- ∨R₂
A ∧ B, Γ ⊢ Δ                           Γ ⊢ Δ, A ∨ B
                                       - - - - - - - - L∧
                                       Γ ⊢ Δ, A , B


Γ, A ⊢ Δ    Γ', B ⊢ Δ'                 Γ ⊢ A, Δ    Γ' ⊢ B, Δ'
---------------------- ∨L              ----------------------- ∧R
Γ, A ∨ B ⊢ Δ                           Γ, Γ' ⊢ A ∧ B, Δ, Δ'



Γ ⊢ A, Δ    Γ', B ⊢ Δ'                 Γ, A ⊢ B, Δ
---------------------- →L              ------------- →R
Γ, Γ', A → B ⊢ Δ, Δ'                   Γ ⊢ A → B, Δ



Γ ⊢ A, Δ                               Γ, A ⊢ Δ
--------- ¬L                           --------- ¬R
Γ,¬A ⊢ Δ                               Γ ⊢ ¬A, Δ




Γ, A[x:=t] ⊢ Δ                         Γ ⊢ A[x:=y'], Δ
--------------- ∀L                     --------------- ∀R
Γ, ∀x.A ⊢ Δ                            Γ ⊢ ∀x.A, Δ


Γ, A[x:=y'] ⊢ Δ                        Γ ⊢ A[x:=t], Δ
--------------- ∃L                     --------------- ∃R
Γ, ∃x.A ⊢ Δ                            Γ ⊢ ∃x.A, Δ

```

Restriction: In the rules `∀R` and `∃L`, the variable `y'` must not occur free anywhere in the respective lower sequents. A var occurs free within a formula if it is not bound by the quantifiers.

- `t` denotes an arbitrary term
- `x` and `y'` denote variables
- A[x:=y'] denotes the formula that is obtained by substituting the var `x` for a new var `y'` in formula `A`, such that `y'` does not occur anywhere else, i.e. `y'` must be a fresh variable.
- A[x:=t] denotes the formula that is obtained by substituting the term `t` for every free occurrence of var `x` in formula `A`, with the restriction that the term `t` must be free for the variable `x` in `A` (i.e. no occurrence of any variable in `t` becomes bound in A[x:=t]). We get to choose which term `t` is instantiated with.
- The order of substitution matters, so generally, it is preferred to first instantiate existentially quantintified variables (the new name must be fresh), and then universally quantintified variables (we get to choose the new name and it can be an already existing name).

## Structural Rules

`WL`, `WR`, `CL`, `CR`, `PL`, `PR`: these 6 rules stand for the two versions of each of 3 structural rules (one for use on the left of a `⊢`, and the other on the right). The rules are abbreviations for Weakening, Contraction and Permutation.


```hs
-- LEFT STRUCTURAL RULES           RIGHT STRUCTURAL RULES


   Γ ⊢ Δ                           Γ ⊢ Δ
---------- WL                      ---------- WR (Weakening)
A, Γ ⊢ Δ                           Γ ⊢ Δ, A


A, A, Γ ⊢ Δ                        Γ ⊢ Δ, A, A
------------- CL                   ------------- CR (Contraction)
   A, Γ ⊢ Δ                        Γ ⊢ Δ, A


A, B, Γ ⊢ Δ                        Γ ⊢ Δ, A, B
------------ PL                    ------------ PR (Permutation)
B, A, Γ ⊢ Δ                        Γ ⊢ Δ, B, A
```



## Quantifier rules (simplified presentation)

```hs
Γ,    P(c) ⊢ Δ                         Γ ⊢    P(x), Δ
---------------- (∀l)                  ---------------- (∀r)
Γ, ∀x.P(x) ⊢ Δ                         Γ ⊢ ∀x.P(x), Δ

Γ,    P(x) ⊢ Δ                         Γ ⊢    P(c), Δ
---------------- (∃l)                  ---------------- (∃r)
Γ, ∃x.P(x) ⊢ Δ                         Γ ⊢ ∃x.P(x), Δ
```


## Quantifier rules (individualy)

```hs
Γ, A[x:=t] ⊢ Δ
--------------- ∀L
Γ, ∀x.A ⊢ Δ

Γ ⊢ A[x:=y'], Δ
--------------- ∀R
Γ ⊢ ∀x.A, Δ

Γ, A[x:=y'] ⊢ Δ
--------------- ∃L
Γ, ∃x.A ⊢ Δ

Γ ⊢ A[x:=t], Δ
--------------- ∃R
Γ ⊢ ∃x.A, Δ
```





## misc

∃y. ∀x. P(xy) ⊢ ∀x. ∃y. P(xy)
(exists y, forall x, P(x,y)) ⊢ (forall x, exists y, P(x,y))

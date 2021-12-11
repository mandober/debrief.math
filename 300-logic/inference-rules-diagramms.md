# Enumeration: Rules of Inference for Intuitionistic Natural Deduction

Rules of Inference for Intuitionistic Natural Deduction

* Conjunction
  - introduction, ∧I
  - elimination
    - left,  ∧E₁
    - right, ∧E₂
* Disjunction
  - introduction
    - left,  ∨I₁
    - right, ∨I₂
  - elimination, ∨E
* Implication
  - introduction, →I
  - elimination, →E (MP)
* Negation
  - introduction, ¬I
  - elimination, ¬E
* Truth
  - introduction, TI
* Falsum
  - elimination, ⟘E
* Universal quantification
  - introduction, ∀I
  - elimination, ∀E
* Existential quantification
  - introduction, ∃I
  - elimination, ∃E



```js
CONJUNCTION

A true   B true             A ∧ B true       A ∧ B true
--------------- ∧I          ---------- ∧E₁   ---------- ∧E₂
   A ∧ B true                 A true           B true

 Introduction                        Elimination
```



```js
DISJUNCTION
                                                  [A]ⁱ true  [B]ʲ true
                                                   ⫶           ⫶
  A true           B true             A ∨ B true   C true     C true
---------- ∨I₁   ---------- ∨I₂       ---------------------------------- ∨Eᵢⱼ
A ∨ B true       A ∨ B true                       C true

          Introduction                             Elimination
```



```js
IMPLICATION

 [A]¹ true
  ⫶
  B true                           A true   A → B true
----------- →I¹                   --------------------- →E (MP)
A → B true                               B true

Introduction                           Elimination
```


```js
NEGATION

 [A]¹ true
  ⫶
  p true                          A true    ¬A true
----------- ¬I¹                   ------------------ ¬E (EFQ)
 ¬A true                                C true


Introduction                          Elimination
```



```js
TRUTH                                 FALSE
                                            
                                      ⟘ true
-------- ⟙I                          ------- ⟘E
⟙ true                                C true
                                     
TRUTH Introduction               FALSE Elimination
```



```js
UNIVERSAL QUANTIFICATION

[a/x]A true                           ∀x. A true
------------ ∀Iᵃ                      ------------ ∀E
  ∀x.A true                           [t/x]A true

Introduction                          Elimination
```



```js
EXISTENTIAL QUANTIFICATION


                                       [[a/x]A true]
                                             ⫶
[t/x]A true              ∃x.A true        C true
------------ ∃I          ----------------------------- ∃Eᵃ
  ∃x.A true                        C true

Introduction                    Elimination
```

------------

# Enumeration: Rules of Inference

Rules of Inference for
* Conjunction
  - ∧I
  - ∧EL
  - ∧ER
* Disjunction
  - ∨I
  - ∨E
  - ∨E
* Implication
  - →I
  - →E (MP)


## Conjunction

p   q             p ∧ q        p ∧ q
----- ∧I          ----- ∧E₁    ----- ∧E₂
p ∧ q               p            q


## Conditional

 [p]¹
  ⫶
  q               p   p → q
------ →I¹       ----------- →E or MP
p → q                 q


## Disjunction

                                      [p]ⁱ   [q]ⁱ
                                      ⫶        ⫶
  p           q               p ∧ q   r       r
----- ∨I₁   ----- ∨I₂         ------------------- ∨Eᵢ where i = [1..2]
p ∨ q       p ∨ q                     r


## Negation

 [p]¹
  ⫶
  ⊥               p  ¬p
------ ¬I¹       ------- ¬E
 ¬p                 ⊥


## Absurdity

  ⊥
----- ⊥I
  p


## ID, RAA, Contradiction

  p            ⊥              ¬p -> ⊥
----- ID     ----- CTR       --------- RAA
  p            p                p


## Cut rule


Γ  ⊢ A, Δ
Π, A ⊢  Λ
---------- cut-elim
Γ,Π ⊢ Δ,Λ


For sequent calculi that have only one formula on the RHS:

Γ ⊢ A
Π, A ⊢ B
---------- cut-elim
Γ,Π ⊢ B

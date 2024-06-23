# Rules of inference
(Type Theory and Functional Programming - Simon Thompson, 1999)

Deduction rules
- Assumption rule, ASS
- ∧ Introduction, `∧I`
- ∧ Elimination, `∧E₁`, `∧E₂`
- ⇒ Introduction, `⇒I`
- ⇒ Elimination, `⇒E`


## Basic deduction rules

```hs
-- Assumption rule:
-- The proof `A` is a proof of the formula `A` from the assumption `A`.

----- ASS
  A


-- ∧ Introduction

A   B
----- (∧I)
A ∧ B


-- ∧ Elimination

A   B               A   B
----- (∧E₁)         ----- (∧E₂)
  A                   B


-- ⇒ Introduction

  [A]
   ⋮
   B
------ (⇒I)
A -> B


-- ⇒ Elimination

A  A ⇒ B
--------- (⇒E)
    B
```


## Some extra rules of classical logic only

```hs
------- (LEM)
A ∨ ¬A


¬¬A
------ (DN)
  A


[¬A]   [¬A]
  ⋮       ⋮
  B     ¬B
------------ (CC) proof by contradiction
     A
```


## Quantifiers

### Universal quantifier

```hs
-- Formation Rule for ∀

                [x:A]
                  ⋮
A formula     P formula
------------------------- (∀F)
    (∀x:A).P formula


-- Introduction Rule for ∀

       [x:A]
         ⋮
       p : P
---------------------- (∀I)
(λx:A).p : (∀x:A).P


-- Elimination Rule for ∀

a : A    f : (∀x:A).P
---------------------- (∀E)
  f a : P[x:=a]

-- Computation Rule for ∀

((λx:A).p) a --> p[x:=a]
```

### Existential quantifier

```hs
-- Formation Rule for ∃

               [x : A]
                  ⋮
A formula     P formula
------------------------- (∃F)
    (∃ x : A) . P formula

-- Introduction Rule for ∃

a : A    p : P[x:=a]
---------------------- (∃I)
(a, p) : (∃ x : A) . P

-- Eliminations Rule for ∃

p : (∃ x : A) . P
---------------- (∃E₁)
Fst p : A

p : (∃ x : A) . P
--------------------- (∃E₂)
Snd p : P[x:=Fst p]


-- Computation Rule for ∃

Fst (p, q) ---> p

Snd (p, q) ---> q
```

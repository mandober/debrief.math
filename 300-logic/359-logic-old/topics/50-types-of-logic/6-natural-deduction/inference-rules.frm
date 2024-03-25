# The rules of inference for natural deduction in predicate logic

Formation, introduction and elimination inference rules in FOL for logical connectives (∧, ∨, ⇒, ¬), truth values (⊤, ⊥) and quantifiers (∀, ∃).

The missing inference rules are
- `R`   for reiteration (restatement)
- `AS`  for assumption, possibly labelled, e.g. `AS¹`
- `DP`  for direct proof
- `IP`  for indirect proof
- `RAA` for Reductio ad absurduum
- `↯` or `→←` (or `⊥`) are symbols for contradiction
- `EFQ` for Ex falsum quidlibet or the principle of explosion
- `LEM` for the Law of Excluded Middle
- `LNC` for the Law of Non-contradiction
- `LID` for the Law of Identity


Connective  | Formation | Introduction | Elimination
------------|-----------|--------------|-------------
Conjunction | ∧F        | ∧I           | ∧E₁, ∧E₂
Disjunction | ∨F        | ∨I₁, ∨I₂     | ∨E
Implication | ⇒F        | ⇒I          | ⇒E (MP, MT)
Negation    | ¬F        | ¬I           | ¬E
True        | ⊤F        | ⊤I           | -
False       | ⊥F        |  -           | ⊥E
Forall      | ∀F        | ∀I           | ∀E
Exists      | ∃F        | ∃I           | ∃E


# TOC

<!-- TOC -->

- [Formation rules](#formation-rules)
  - [Conjunction](#conjunction)
  - [Disjunction](#disjunction)
  - [Implication](#implication)
  - [Negation](#negation)
  - [Truth](#truth)
  - [Falsum](#falsum)
  - [Universal](#universal)
  - [Existential](#existential)
- [Introduction rules](#introduction-rules)
  - [Conjunction](#conjunction-1)
  - [Disjunction](#disjunction-1)
  - [Implication](#implication-1)
  - [Negation](#negation-1)
  - [Truth](#truth-1)
  - [Falsum](#falsum-1)
  - [Universal](#universal-1)
  - [Existential](#existential-1)
- [Elimination rules](#elimination-rules)
  - [Conjunction](#conjunction-2)
  - [Disjunction](#disjunction-2)
  - [Implication](#implication-2)
  - [Negation](#negation-2)
  - [Truth](#truth-2)
  - [Falsum](#falsum-2)
  - [Universal](#universal-2)
  - [Existential](#existential-2)

<!-- /TOC -->

## Formation rules

Formation rules, "prop rules" (proposition rules), or F-rules

### Conjunction

A prop   B prop
---------------- ∧F                             (AND-formation)
  A ⋀ B prop


### Disjunction

A prop   B prop
---------------- ∨F                             (OR-formation)
  A ⋁ B prop


### Implication

A prop   B prop
---------------- →F                             (IMPLY-formation)
  A ⟶ B prop


### Negation

 A prop
--------- ¬F                                    (NOT-formation)
¬A prop


### Truth

------- ⊤F                                      (TRUTH-formation)
⟙ prop


### Falsum

------- ⊥F                                      (FALSUM-formation)
⟘ prop


### Universal

Σ, x |- A prop
---------------- ∀F                             (FORALL-formation)
Σ |- ∀x.A prop


### Existential

Σ, x |- A prop
---------------- ∃F                             (EXISTS-formation)
Σ |- ∃x.A prop



## Introduction rules

Introduction rules, or "true rules" or I-rules

### Conjunction

A true   B true
---------------- ∧𝓘                              (AND-introduction)
    A ⋀ B true


### Disjunction

  A true                   B true
----------- ∨𝓘ʟ        ------------ ∨𝓘ʀ          (OR-introductions)
A ⋁ B true               A ⋁ B true


### Implication

 [A]¹ true
  ⫶
  B true
------------ →𝓘¹                                (IMPLY-introduction)
A ⟶ B true


### Negation

 [A]¹ true
  ⫶
  ⟘ true
----------- ¬𝓘¹                                 (NOT-introduction)
 ¬A true


### Truth

------- ⊤𝓘                                      (TRUTH-introduction)
⟙ true


### Falsum

(falsehood has no introduction rule)    ✘       (NO-FALSUM-introduction)



### Universal

[a ↦ x]A true
--------------- ∀𝓘                              (FORALL-introduction)
∀x.A(x) true


### Existential

[t ↦ x]A true
--------------- ∃𝓘                              (EXISTS-introduction)
∃x.A(x) true



## Elimination rules

Elimination rules, or "true rules" or E-rules

### Conjunction

A ⋀ B true               A ⋀ B true
----------- ∧𝓔ʟ         ------------ ∧𝓔ʀ        (AND-eliminations)
  A true                   B true


### Disjunction

            [A]ⁱ true  [B]ʲ true
             ⫶           ⫶
A ⋁ B true   C true     C true
---------------------------------- ∨𝓔(i,j)      (OR-elimination)
             C true


### Implication

A true   A ⟶ B true
--------------------- →𝓔 (MP)                   (IMPLY-elimination)
        B true


### Negation

A true   ¬A true
----------------- ¬𝓔 (RAA)                      (NOT-elimination)
    C true


### Truth

(truth has no elimination rule)       ✘        (NO-TRUTH-elimination)


### Falsum

⟘ true
------- ⊥𝓔 (EFQ, ex falso quidlibet)             (FALSUM-elimination)
C true


### Universal

∀x.A(x) true
-------------- ∀𝓔                              (FORALL-elimination)
[t ↦ x]A true


### Existential

             [a ↦ x]A true
                  ⫶
∃x.A true     C true
----------------------------- ∃𝓔(a,u,v)             (EXISTS-elimination)
              C true


(or)

            ------ u  -------------- v
            a term    [a ↦ x]A true
                    ⫶
∃x.A true       C true
------------------------------------- ∃𝓔(a,u,v)     (EXISTS-elimination)
                C true

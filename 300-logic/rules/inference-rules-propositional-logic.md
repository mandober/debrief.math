# Inference rules of propositional logic

## TOC

- Inference rules
- Classical logic
- Reiteration
- Assumption
- Conjuction
  - Introduction (1)
  - Elimination (2)
- Disjuction
  - Introduction (2)
  - Elimination (1)
- Implication
  - Introduction
  - Elimination
- Negation
  - Introduction
  - Elimination
- Predicate logic
- Universal quantification
  - Universal instantiation
  - Universal generalization
- Existential quantification
  - Existential instantiation
  - Existential generalization

## Inference rules

```
P₁ P₂ … Pₙ
-----------
     C
```

P₁ ∧ P₂ ∧ … ∧ Pₙ ⇒ C

P₁, P₂, …, Pₙ ⊢ C




## Classical logic

Classical logic admits the 3 laws of thought: ID, LEM, LNC

- ID (identity): `A ⇒ A`
- LEM (law of excluded middle): `A ∨ ¬A`
- LNC (law of noncontradiction): `¬(A ∧ ¬A)`

These 3 laws are equivalent: `A ⇒ A` ≡ `¬A ∨ A` ≡ `¬(A ∧ ¬A)`

```
     ¬A ∨  A      deMorgan
= ¬(¬¬A ∧ ¬A)     double negation: ¬¬A = A
=   ¬(A ∧ ¬A)
```

Classical logic also admits the DNE and DNI inference rules:
- `¬¬A ⇒ A`  (DNE)
- `A ⇒ ¬¬A`  (DNI)
- `¬¬A ⇔ A`  thus


### Derivation

If assuming a proposition `A` (AS¹), we conclude the proposition `B`, then we can discharge the assumpotion (AS¹) and conclude `A ⇒ B`.

```
 [A]¹
  ⁝
  B
------ ⇒I
A ⇒ B
```

## Reiteration

If we have a proposition `A`, we can always restate it in a subproof.

1 …
2  A
3    A


### Assumption

```
 [A]
  ⁝
  A
------ AS       ------ AS
A ⇒ A             A
```

Assuming A, we can conclude A, A ⇒ A

### Conjuction

- If we have A and we have B, then we have A ∧ B
- If we have A ∧ B then we have A
- If we have A ∧ B then we have B

```
A   B            A ∧ B                  A ∧ B
----- ∧I         ----- ∧E₁              ----- ∧E₂
A ∧ B              A                      B




Local soundness

A ∧ B  A ∧ B
-----  -----
  A      B
------------
   A ∧ B
```

### Disjunction

- If we have A then we have A ∨ B for any B. That is, if A holds, then A disjuncted with another proposition B does not make A hold any less.
- If we have A ∨ B and we have A ⇒ C and B ⇒ C, then we can conclude C.
- `(A ∨ B ⇒ C) ⇒ (A ⇒ C) ∧ (B ⇒ C)`



```
                                     [A]  [B]
                                      ⁝     ⁝
  A              B            A ∨ B   C    C
----- ∨I₁      ----- ∨I₂      --------------- ∨E
A ∨ B          A ∨ B                 C


         [A]     [B]
          ⁝        ⁝
          C       C
A ∨ B   A ⇒ C   B ⇒ C
---------------------- ∨E
          C
```

## Implication

```
 [A]
  ⁝ 
  B              A ⇒ B    A
------ ⇒I       ----------- ⇒E
A ⇒ B                B


Local soundness

 [A]
  ⁝ 
  B
------ ⇒I ----- AS
A ⇒ B       A
--------------
        B
```

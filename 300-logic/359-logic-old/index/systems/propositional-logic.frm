# Propositional logic

Inference rules
- Conjunction
  - Conjunction introduction
  - Conjunction elimination
- Disjunction
  - Disjunction introduction
  - Disjunction elimination
- Implication
  - Implication introduction
  - Implication elimination


## Conjunction

### Conjunction introduction

```hs
A   B
----- ∧I
A ∧ B
```

### Conjunction elimination

```hs
A ∧ B
----- ∧E₁
  A

A ∧ B
----- ∧E₂
  B
```

## Disjunction

### Disjunction introduction

```hs
A
----- ∨I₁
A ∨ B

    B
----- ∨I₂
A ∨ B
```

### Disjunction elimination

```hs
        [A]¹  [B]¹
         ⫶      ⫶
A ∨ B    C     C
------------------- →I¹
        C
```

## Implication

### Implication introduction

```hs
 [A]¹
  ⫶
  B
-------- →I¹
A ⟶ B
```

### Implication elimination

```hs
A → B   A
---------- MP
    B
```

## EFQ

```hs
  [A]
   ⫶
   ⊥
-------- RAA (proof by contradiction)
  ¬A
```

For example

```hs
1 assume A ∧ ¬B
2   assume B
3     A                       ∧₁ 1
4    ¬B                       ∧₂ 1
5     B                       reiterate 2
6    ¬A                       EFQ 4,5
7   thus B → ¬A               →I 2-6
8 thus (A ∧ ¬B) → (B → ¬A)    →I 1-7



---------------------- Ax
      B ⊢ B
---------------------- WL
   A, B ⊢ B
---------------------- Cl↑
A, A, B ⊢ B
---------------------- ¬R
   A, B ⊢ B, ¬A
---------------------- →R
A ⊢ B, B → ¬A
---------------------- ¬L
A, ¬B ⊢ B → ¬A
---------------------- ∧L
A ∧ ¬B ⊢ B → ¬A
---------------------- →R
⊢ (A ∧ ¬B) → (B → ¬A)


  p → ¬q
= q → ¬p
= ¬q ∨ ¬p
= ¬(q ∧ p)
= ¬(p ∧ q)
= ¬p ∨ ¬q
= p → ¬q

  p → ¬q
= ¬p ∨ ¬q
= ¬   (p ∧  q)
= ¬(¬(¬p ∨ ¬q))
= ¬(¬(p → ¬q))
= ¬( ¬(p → ¬q) )
= ¬(   p ∧ ¬q )


     p ∧ ¬q
= ¬(¬p ∨  q)
= ¬( p →  q)
= ¬(¬p ∨  q)
= ¬( q ∨ ¬p)
= ¬(¬q → ¬p)
= ¬( p →  q)


```


## EFQ

```hs
  [A]
   ⫶
  ¬A
-------- EFQ
   C
```

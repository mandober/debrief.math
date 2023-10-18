# Excluded middle

goal: `p → q ⇔ ¬p ∨ q`
- goal1: `(p → q) → (¬p ∨ q)`
- goal2: `(¬p ∨ q) → (p → q)`

```hs
 1 assume p → q                  assumption 1
 2   assume ¬(¬p ∨ q)            assumption 2
 3     assume ¬p                 assumption 3
 4       ¬p ∨ q                  ∨I 3
 5       ⊥                       ⊥ 2,4
 6     thus ¬¬p                  ¬I 3,5
 7     p                         DNE 6
 8     q                         MP 1,7
 9     ¬p ∨ q                    ∨I 8
10     ⊥                         ⊥ 2,9
11   thus ¬¬(¬p ∨ q)             ¬I 2,10
12   ¬p ∨ q                      DNE 11
13 thus (p → q) → (¬p ∨ q)       →1,12
```

Alternativelly,

```hs
 1 assume p → q                  assumption 1
 2   assume ¬(¬p ∨ q)            assumption 2
 3     assume ¬p                 assumption 3
 4       ¬p ∨ q                  ∨I 3
 5     thus ¬p → (¬p ∨ q)        →I 3,4
 6     assume ¬p                 assumption 4
 7       ¬(¬p ∨ q)               R 2
 8     thus ¬p → ¬(¬p ∨ q)       →I 6,7
 9     ¬¬p                       ¬I 5,8
10     p                         DNE 9
11     q                         MP 1,10
12     ¬p ∨ q                    ∨I 11
13   thus ¬(¬p ∨ q) → (¬p ∨ q)   →I 2,12
14   assume ¬(¬p ∨ q)            assumption 5
15     ¬(¬p ∨ q)                 R 14
16   thus ¬(¬p ∨ q) → ¬(¬p ∨ q)  →I 14,15
17   ¬¬(¬p ∨ q)                  ¬I 13,16
18   ¬p ∨ q                      ¬E 17
19 thus (p → q) → (¬p ∨ q)       →I 1,18
```


## Negation introduction from contradiction

If you assume `P`, and then in the subproof derive a contradiction (e.g. `¬P`), you are allowed to discharge the latest assumption (assuming `P`) and derive `¬P` in the outer level of proof.

```
 [p]
  ⫶
  ⊥
----- ⊥I
 ¬p
```

Or, in Fitch-style notation:

```hs
ᵢ assume p
ⱼ   ⊥          ⊥I i,j
ₖ thus ¬p      ¬I i
```

## Negation introduction from contradiction followed by DNE

If you assume `¬P`, and then in the subproof derive a contradiction (e.g. `P`), you are allowed to discharge the latest assumption (assuming `¬P`) and derive `¬¬P` in the outer level of proof. This is usually followed by double negation elimination, leaving you with `P`.


```
 [¬p]
   ⫶
   ⊥
------ ⊥I
 ¬¬p
------ DNE
  p
```

Or, in Fitch-style notation:

```hs
ᵢ assume ¬p
ⱼ   ⊥          ⊥I i,j
ₖ thus ¬¬p     ¬I i
ₗ p            DNE k
```

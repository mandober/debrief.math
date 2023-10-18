# Logic :: Index :: Theorems :: Currying and uncurrying

- Currying: `(p ∧ q) → r ⊢ p → (q → r)`
- Uncurrying: `p → (q → r) ⊢ (p ∧ q) → r`

```hs
goal 1 ((p ∧ q) → r) ⇔ (p → (q → r))
  goal 2 ((p ∧ q) → r) -> (p → (q → r))
  goal 3 ((p ∧ q) → r) <- (p → (q → r))

goal 2 ((p ∧ q) → r) -> (p → (q → r))

1 assume (p ∧ q) → r                      assumption 1
2   assume p                              assumption 2
3     assume q                            assumption 3
4       p ∧ q                             ∧I 2,3
5       r                                 MP 1,2
6     thus q → r                          →I 3,5
7   thus p → (q → r)                      →I 2,6
8 thus ((p ∧ q) → r) → (p → (q → r))      →I 1,7

goal 3 (p → (q → r)) -> ((p ∧ q) → r)

1 assume p → (q → r)                      assumption 1
2   assume p ∧ q                          assumption 2
3      p                                  ∧E₁ 2
4      q                                  ∧E₂ 2
5      q → r                              MP 1,3
6      r                                  MP 5,4
7   thus (p ∧ q) → r                      →I 2,6
8 thus (p → (q → r)) -> ((p ∧ q) → r)     →I 1,7
```



goal: `p → ¬q, ¬q ∧ p → r, p ⊢ r`

```hs
goal: (((p → ¬q) ∧ ((¬q ∧ p) → r)) ∧ p) → r

1 assume ((p → ¬q) ∧ ((¬q ∧ p) → r)) ∧ p
2   p → ¬q
3   (¬q ∧ p) → r
4   p
5   ¬q
6   ¬q ∧ p
7   r
8 thus (((p → ¬q) ∧ ((¬q ∧ p) → r)) ∧ p) → r
```

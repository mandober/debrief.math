# Mathematical formulas :: Arithmetic :: Peano arithmetic

## Peano axioms (a)

Domain of discorse is a set `N`.

1.     0 ∈ N
6.     x ∈ N ⟶ S x ∈ N
8.     x ∈ N ⟶ S x ≠ 0
2.     x ∈ N ⟶ x = x
5.     x ∈ N ⟶ (x = m ⟶ m ∈ N)
7.   x,y ∈ N (x = y ⟺ S x = S y)
3.   x,y ∈ N (x = y ⟺ y = x)
4. x,m,n ∈ N (x = m ⋀ m = n ⟶ x = n)
9.  ∃N(0 ∈ N ⋀ ∀x (x ∈ N ⟶ S x ∈ N)) ⟶ N = ℕ

## Peano axioms (b)

1.         0 ∈ N
6.      ∀x(x ∈ N ⟶ S x ∈ N)
8.      ∀x(x ∈ N ⟶ S x ≠ 0)
2.      ∀x(x ∈ N ⟶ x = x)
5.      ∀x(x ∈ N ⟶ (x = m ⟶ m ∈ N))
7.   ∀x∀y((x ∈ N ⋀ y ∈ N) ⟶ (x = y ⟺ S x = S y))
3.   ∀x∀y((x ∈ N ⋀ y ∈ N) ⟶ (x = y ⟺ y = x))
4. ∀x∀a∀b((x ∈ N ⋀ a ∈ N ⋀ b ∈ N) ⟶ (x = a ⋀ a = b ⟶ x = b))
9. (∃N(N ⊆ ℕ ⋀ 0 ∈ N ⋀ ∀n (n ∈ N ⟶ S n ∈ N))) ⟶ N = ℕ



1. Successor

```js
S : ℕ -> ℕ
S 0 = 1
S n = S n
```

2. Addition

```js
(+) : ℕ² -> ℕ
(+) : ℕ ⨉ ℕ -> ℕ
(+) : ℕ -> (ℕ -> ℕ)

// 'Def_ADD1'
0   + m   = m                         ADD_1.A / add_0_m
S n + m   = S (n + m)                 ADD_1.B / add_Sn_m

// 'Def_ADD2'
n   + 0   = n                         ADD_2.A / add_n_0
n   + S m = S (n + m)                 ADD_2.B / add_n_Sm

// 'Def_ADD3'
0   +   m = m                         (ADD_1.A / add_0_m)
n   +   0 = n                         (ADD_2.A / add_n_0)
S n + S m = S (S (m + n))              ADD_3.X / add_Sn_Sm
```


3. Multiplication

```js
(*) : ℕ² -> ℕ
(*) : ℕ ⨉ ℕ -> ℕ
(*) : ℕ -> (ℕ -> ℕ)

// 'Def_MUL1'
0   * n   = 0                         MUL_1.A:0_n
1   * n   = n                         MUL_1.B:1_n
S m * n   = n + n * m                 MUL_1.C:Sm_n

// 'Def_MUL2'
m   *   0 = 0                         MUL_2.A:m_0
m   *   1 = m                         MUL_2.B:m_1
m   * S n = m + m * n                 MUL_2.C:m_Sn

// 'Def_MUL3'
0   *   n = 0                         (MUL_1.A:0_n)
m   *   0 = 0                         (MUL_2.A:m_0)
m   *   1 = m                         (MUL_2.B:m_1)
1   *   n = n                         (MUL_1.B:1_n)
S m * S n = S (m + n + (m * n))        MUL_3.X:Sm_sn
```

4. Exponentiation

```js
(^) : ℕ² -> ℕ
(^) : ℕ ⨉ ℕ -> ℕ
(^) : ℕ -> (ℕ -> ℕ)

(^) : right_associative: a^b^c = a^(b^c)

// 'Def_POW'
0 ^ 0    = 1                         POW.1:0_0
m ^ 0    = 1                         POW.2:m_0
m ^ 1    = m                         POW.3:m_1
0 ^ n    = 0                         POW.4:0_n
m ^ S(n) = m * (m ^ n)               POW.5:m_Sn
```

# Successor function

https://en.wikipedia.org/wiki/Successor_function

The successor function is variously denoted by `S`, `σ`, `succ`, `Suc`, etc. It produces the subsequent (succeeding) element given an element of a set that has some sort of ordering relation.

The number-theoretic successor function is defined over the sets ℕ and ℤ in the same way,

```hs
succ : ℕ -> ℕ
succ n = n + 1

succ : ℤ -> ℤ
succ z = z + 1
```

The set-theoretic successor function is defined as

```js
S(n) = n ⋃ { n }
```

## Props and classification

The succ is also one of the primitive functions used in the characterization of computability by recursive functions.

- application term: succession
- primitive recursive function (PRF)
- Succ is a primitive recursive function
- Hyperoperation
  - hyperoperation name: zeration
  - hyperoperation number: 0th (zeroth)
  - χ₀(m, n) = 1 + n
- Succ is used in Peano axioms 6-9
  - Ax.6 `∀n. n ∈ ℕ -> S n ∈ ℕ` (closure of S)
  - Ax.7 `∀nm ∈ ℕ. n = m <=> S n = S m` (injectivity of S)
  - Ax.8 `∀n ∈ ℕ. S n ≠ 0` (S wrt 0)
  - Ax.9 `N ⊆ ℕ. [0 ∈ N ⋀ (∀n. n ∈ N -> S n ∈ N)] -> N = ℕ` (induction)
- Addition is defined in terms of the successor
  - `m + 0	= m`
  - `m + S(n) = S(m) + n`



## Defining the set of the natural numbers

A common approach to define ℕ in terms of set theory:

```js
0 ∈ ℕ

0 = {} = ∅

n ∈ ℕ -> S(n) ∈ ℕ

S(n) = n ⋃ {n}
```

1. define zero as the empty set
2. define successor of `n` as the union of `n` with itself in a set, `{n}`
3. The axiom of infinity then guarantees the existence of a set ℕ
4. The set ℕ contains 0 and is closed under S
5. The members of ℕ are then called natural numbers

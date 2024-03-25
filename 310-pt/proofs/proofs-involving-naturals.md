# Proofs involving natural numbers

<!-- TOC -->

- [1. Def: Natural numbers](#1-def-natural-numbers)
- [2. Def: Addition over ℕ](#2-def-addition-over-ℕ)
- [3. Addition over ℕ: Left ID](#3-addition-over-ℕ-left-id)
- [4. Addition over ℕ: Right ID](#4-addition-over-ℕ-right-id)
- [5. Addition with S on right](#5-addition-with-s-on-right)
- [6. Addition with S on left](#6-addition-with-s-on-left)
- [7. Commutativity of addition](#7-commutativity-of-addition)

<!-- /TOC -->

## 1. Def: Natural numbers

```hs
{- DEF: Nat -}
data ℕ : Set where
  Z : ℕ
  S : ℕ → ℕ
```

## 2. Def: Addition over ℕ

```hs
{- DEF: ADD -}
m +   0 = m                                               ADD.1
m + S n = S (m + n)                                       ADD.2
```

## 3. Addition over ℕ: Left ID

- Prove by directly referring to `ADD.1`
- Prove by induction on `m` (below)

```hs
{- Prove left identity of addition -}
PROOF. m + 0 = m                                          ADD.m+0
  {- Proof by induction on 'm'     -}
  base case
      0 + 0 = 0
        {- rw <- ADD.1 -}
      0 = 0
        {- refl -}
  inductive case
      {- assume IH --> to prove   -}
      m + 0 = m    --> S m + 0 = S m
    begin.
      S m + 0   = S m
        {- rewrite <- ADD.2 -}
      S (m + 0) = S m
        {- rewrite <- ADD.1 -}
      S m       = S m
        {- refl             -}
    end.
QED.
```

## 4. Addition over ℕ: Right ID

```hs
{- Prove right identity of addition -}
PROOF. 0 + n = n                                          ADD.0+n
  {- Proof by induction on 'n'      -}
  base case
      0 + 0 = 0
        {- by ADD.1: (m + 0 = m) so (0 + 0 = 0) -}
  inductive case
        {- assume IH          to prove -}
      0 + n = n       -->     0 + S n = S n
    begin.
      0 + S n   = S n
        {- rewrite <- ADD.2 -}
      S (0 + n) = S n
        {- rewrite <- ADD.1 -}
      S n       = S n
        {- refl             -}
    end.
QED.
```

## 5. Addition with S on right
- Prove by directly referring to `ADD.2`
- Prove by induction on `m` (below)

```hs
{- Prove addition with S on right -}
PROOF. m + S n = S (m + n)                                  ADD.m+Sn
  {- Proof by induction on 'm'      -}
  base case
      0 + S n = S (0 + n)
        {- rw <- ADD.2  -}
      S (0 + n) = S (0 + n)
        {- rw <-> ADD.1 -}
      S n = S n
        {- refl         -}
  inductive case
      {- assume IH            to prove             -}
      m + S n = S (m + n) --> S m + S n = S (S m + n)
    begin.
      S m + S n = S (S m + n)
        {- rewrite <- ADD.2 -}
      S (m + S n) = S (S m + n)
        {- rewrite <- IH    -}
      S (S (m + n)) = S (S m + n)
        {- rewrite -> ADD.2 -}
      S (S (m + n)) = S (S (m + n))
        {- refl             -}
    end.
QED.
```

## 6. Addition with S on left

```hs
{- Prove addition with S on left -}
PROOF. S m + n = S (m + n)                                  ADD.Sm+n
  {- Proof by induction on 'n'      -}
  base case
      S m + 0 = S (m + 0)
        {- rw <- ADD.2 -}
      S (m + 0) = S (m + 0)
        {- rw <-> ADD.1 -}
      S m = S m
        {- refl -}
  inductive case
      {- assume IH            to prove             -}
      S m + n = S (m + n) --> S m + S n = S (m + S n)
    begin.
      S m + S n = S (m + S n)
        {- rewrite <- ADD.2 -}
      S (S m + n) = S (m + S n)
        {- rewrite <- IH    -}
      S (S (m + n)) = S (m + S n)
        {- rewrite -> ADD.2 -}
      S (S (m + n)) = S (S (m + n))
        {- refl             -}
    end.
QED.
```


## 7. Commutativity of addition

```hs
{- Prove commutativity of addition -}
PROOF. m + n = n + m                                        ADD.COMM
  {- Proof by induction on 'm'     -}
  base case
      0 + n = n + 0
        {- rw -> ADD.1   -}
      0 + n = n
        {- rw <- ADD.0+n -}
      n = n
        {- refl          -}
  inductive case
      {- assume IH      to prove        -}
      m + n = n + m --> S m + n = n + S m
    begin.
      S m + n = n + S m
        {- rewrite <- ADD.Sm+n -}
      S (m + n) = n + S m
        {- rewrite -> ADD.2    -}
      S (m + n) = S (n + m)
        {- rewrite <- IH       -}
      S (n + m) = S (n + m)
        {- refl                -}
    end.
QED.
```

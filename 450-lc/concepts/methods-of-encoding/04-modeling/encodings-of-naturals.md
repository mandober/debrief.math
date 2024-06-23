# Encodings of naturals numbers

## Peano naturals

```hs
Z ∈ ℕ
n ∈ ℕ -> S n ∈ ℕ
```

## Haskell naturals as ADT

```hs
data Nat = Z | S Nat

data Nat where
  Z :: Nat
  S :: Nat -> Nat

0 =         Z
1 =       S Z
2 =    S (S Z)
3 = S (S (S Z))
```

## Church numerals

```hs
0 := λs z.         z
1 := λs z.       s z
2 := λs z.    s (s z)
3 := λs z. s (s (s z))

n   = sⁿ   z =      n s z
S n = sⁿᐩ¹ z =   s (n s z)
S n = s¹ᐩⁿ z = n s (  s z)

S := λn s z. s (n s z)
S := λn s z. n s (s z)
```

## Scott numerals

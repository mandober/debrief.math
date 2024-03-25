# Recursion and iteration

```hs
-- primitive recursion
h    0  = d
h (S x) = g x (h x)

-- iteration
h    0  = d
h (S x) = g (h x)
```

## Iteration scheme

The iteration property for natural numbers states that 
if `d : N` and `g : N → N` 
then there is a total function `h : N → N` such that
- `h    0  = d`
- `h (S x) = g (h x)`

Provably, such `h` exists and is computable if `d` and `g` are. The equations give an algorithm for computing `h`, given algorithms for computing `d` and `g` (`d` is a constant here, though).

Given a data-type for natural numbers `Nat`, with constructors `Z` and `S` we have the following iteration scheme for defining functions over ℕ:

```hs
d : Nat    g : Nat -> Nat
------------------------- iteration
iter d g : Nat -> Nat

-- | with reduction rules
iter :: Nat -> (Nat -> Nat) -> (Nat -> Nat)
iter d g    Z  = d
iter d g (S x) = g (iter d g x)


-- (2)  x      d      f
iter :: Nat -> (Nat -> Nat) -> Nat -> Nat
iter    Z  g d = d
iter (S x) g d = g (iter x g d)

-- (3)  g               d      x
iter :: (Nat -> Nat) -> Nat -> Nat -> Nat
iter g d    Z  = d
iter g d (S x) = g (iter g d x)
```


## Iteration scheme
















## rem

```hs
-- primitive recursion (2)
prf    0  = z
prf (S n) = g n (prf n)
-- primitive recursion (3)
prf 0 = z
prf n = g n (prf (n - 1))


-- iterate
iterate :: (a -> a) -> a -> [a]
iterate f x = x : iterate f x

-- iterateN
iterateN :: Int -> (a -> a) -> a -> [a]
iterateN 0 f x = x
iterateN n f x = x : iterateN (n - 1) f x


-- iteration
h    0  = z
h (S n) = g (h n)

recp :: Int -> Int -> Int
recp 0 = z
recp n = g n (recp n)

iter :: Int -> Int
iter 0 = z
iter n = g (iter n)

--      n      x      f
recp :: Int -> Int -> (Int -> Int -> Int) -> Int
recp 0 x f = x
recp n x f = f x (recp (n - 1) x f)

--      n      x      f
iter :: Int -> Int -> (Int -> Int) -> Int
iter 0 x f = x
iter n x f = f (iter x)
```

# The recursion theorem

https://en.wikipedia.org/wiki/Recursion#The_recursion_theorem

In set theory, **The Recursion Theorem** guarantees that recursively defined functions exist.

Given a set `X`, 
an element `a ∈ X` and 
a function `f : X → X`, 
the theorem states that 
there is a *unique function* 
  `F : ℕ → X` 
such that 
  `F    0  = a` 
  `F (S n) = f (F n)` 
for any natural number `n`.

```hs
forall n ∈ ℕ

g :: ℕ -> a
g    0  = a
g (S n) = f (g n)
```


## Proof of uniqueness

Take two functions
`F : ℕ → X` and
`G : ℕ → X` 
such that 
  `F 0 = a` 
  `G 0 = a` 
  `F (S n) = f (F n)` 
  `G (S n) = f (G n)` 
where `a ∈ X` 
then it can be proved 
by mathematical induction that 
`F(n) = G(n)` 
for all natural numbers `n`:
- Base case:
  `F 0 = a = G 0` 
  so the equality holds for `n = 0`
- Inductive step:
  suppose
    `F k = G k` for some `k ∈ ℕ`
    then
      `F (S k)` = `f (F k)` = `f (G k)` = `G (S k)`
- hence
  `F k = G k` implies `F (S k) = G (S k)`

By induction, `F n = G n` for all `n ∈ ℕ`.

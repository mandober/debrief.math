# Axioms for real numbers

The set of the real numbers is a set of numbers that comes later in the hierarchy of number sets which are all based on the set of the natural numbers. So we first express the Peano axioms that establish the set ℕ.

Before proceding with higher numbers sets, it pays to relieve the notation by establishing a bijection between the unary system of numbers thus obtained and the more convenient Hindu-Arabic numerals, along with a decimal (base 10) positional number system. Then the set ℕ becomes the familiar `{0, 1, 2, …}`, rather then the cumbersome `{Z, S(Z), S(S(Z)), …}`. That is, the former becomes the surface syntax or the syntax sugar that gets "desugared" into the latter in the formal language. The advantage of lower-level syntax is the possibility of pattern matching on numbers, stripping or adding `S` constructors as wanted. This allows for pleasent definition of arithmetic operations (although they may be defined using the sugared syntax as well).

```hs
data ℕ = Z | S ℕ

(+) :: ℕ → ℕ
m + Z = m
m + S n = S (m + n)

(*) :: ℕ → ℕ
m * Z = Z
m * S n = m + (m * n)

(^) :: ℕ → ℕ
m ^ Z = S Z
m ^ S n = m * (m ^ n)

pred :: ℕ → ℕ
pred Z = undefined
pred S n = n
```

After defining ℕ, we extend it to `ℤ` to cover negative numbers. At low level, integers are classified in two groups: positive and negative and zero. Integers may be expressed as ordered pairs such that positive integers have 0 as the second component, `(n, 0)` denotes an integer (and a natural number) `n`. This is then the canononical representation of positive integers, with other representations being any two number such that the first is larger - these forms can then be normalized to the canononical form (similarly to fractions). The negative integers are canonically represented by pairs `(0, m)` such that the first component is zero. In fact, whatever form an integer as a pair has `(n, m)` represents `n - m`. At the surface syntax level, this representation is sugared into the more conveninent form that uses the unary minus sign in front of a natural number in Hindu-Arabic notation, e.g. -1.

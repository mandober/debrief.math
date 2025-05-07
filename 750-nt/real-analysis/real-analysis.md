# Real Analysis

If a number `x` can be expressed in the form of `p/q`, where
- nominator `p ∈ ℤ` and
- denominator `q ∈ ℕᐩ` (q ≠ 0)
then `x` is a *rational number*. ℚ is a field.

Field postulates
- A1 closure under addition
- A2 associativity of addition
- A3 additive identity, 0 ∈ ℚ because 0 = 0/1
- A4 inverses: given p/q ∈ ℚ, then -(p/q) = (-p)/q ∈ ℚ
- A5 commutativity of addition
- M1 closure under multiplication
- M2 associativity of multiplication
- M3 multiplicative identity, 1 ∈ ℚ because 1 = 1/1
- M4 inverses: if p/q ≠ 0, then p≠0, so (p/q)⁻¹ = q/p ∈ ℚ
- M5 commutativity of multiplication
- AM1 distributivity of multiplication over addition

Thus ℚ forms an ordered field. And the order relation `<`, given for all real numbers, applies in particular to the rational numbers.

**The Archimedean property**. Let `M` and `ε` be any two positive real numbers. Then there is a positive integer `n` such that `nε > M`. An ordered field which satisfies this condition is called *Archimedean field*. Henceforth, we shall assume that ℝ forms an *Archimedean ordered field*.

An ordered field is called a *Euclidean field* if it satisfies the following condition: **The Euclidean Completeness property**: every positive number has a positive square root.

Theorem 1. ∀a ∈ ℝ. ∃mn ∈ ℤ. m < a < n

Theorem 2. **Rationals are dense in the reals**. This means that between any two real numbers there is a rational number, `∀xy ∈ ℝ. ∃r ∈ ℚ. x < r < y`.

Proof. Given two reals `x,y ∈ ℝ` with `x < y`. If there is `r ∈ ℚ`, such that `x + n < r < y + n`, then there is a rational number `r' = r - n` between `x` and `y`. We may therefore suppose that `1 < x < y`.

```js
x < y, 1 < x < y

n+x < r   < y+n
  x < r-n < y         s = r-n
  x <  s  < y
```

## Axiom of completeness

>Axiom of completeness states that every nonempty subset of reals with an upper bound has a *least upper bound*.

Initial definition to ℝ
- ℝ contains ℚ, ℚ ⊆ ℝ
- ℝ is a field
- ordering properties of ℚ extend to ℝ (a < b ∧ 0 < c ⇒ ac < bc)


## Supremum and infimum

- upper bound
- least upper bound (lub), *supremum*, `sup A`, join
- lower bound
- greatest lower bound (glb), *infimum*, `inf A`, meet

```
    abc
  /  |  \
ab   ac  bc
 |\ / \ /|
 a   b   c
  \  |  /
     ∅
```

- set A ⊆ ℝ is *bounded from above* if ∃b ∈ ℝ. ∀a ∈ A. a ≤ b
- then b is called *an* upper bound for A
- `s` is the LUB if for all `b` that are upper bounds for A, `s ≤ b`
- LUB or supremum
- GLB or infimum
- UBs or LBs may or may not be in the bounded set
- m ∈ ℝ is *a maximum* of set A if `m` is an upper bound and m ∈ A
- m ∈ ℝ is *a minimum* of set A if `m` is a lower bound and m ∈ A

Examples
- interval A = (0, 3), sup A = 3, inf A = 0 (although 0,3 ∉ A)
- set A = {1/n | n ∈ ℕ}, sup A = 1, inf A = 0 (1 ∈ A, 0 ∉ A)

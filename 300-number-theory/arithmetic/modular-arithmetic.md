# Modular arithmetic

https://en.wikipedia.org/wiki/Modular_arithmetic

**Modular arithmetic** is a system of arithmetic for ℤ, where numbers "wrap around" when reaching a certain value, called the **modulus**.

15 ≡ 3 (mod 12) read as: 15 is congruent to 3 modulo 12

> a ≡ b (mod n)    for a,b ∈ ℤ ∧ n ∈ ℕᐩ

## Formulae

```
a ≡ b (mod n)

a ≡ b (mod n) -> n ∣ a−b
that is, a − b = kn (for some integer k) such that a = kn + b

Euclidean division: n/m = (q, r) that is n = mq + r
```

## Congruence

Given a modulus n > 1, two ℤs are said to be *congruent modulo n*, if `n` is a divisor of their difference, i.e. if there's a `k` such that `a − b = kn`.

9 ≡ 21 ≡ 33 (mod 12) so k = (...,-1,0,1,...) i.e. abnk ∈ ℤ

<!-- #region Calc -->
<details>
<summary>Rendering details...</summary>

-------------------
(mod 12)
-------------------
-60 -48 -36 -24 -12
-------------------
  0  12  24  36  48 * Σ = 0+12+48+24+36       = 60+ 60      = 120
 60  72  84  96 108   Σ = 60+72+108+84+96     = 60+180+180  = 420
120 132 144 156 168 * Σ = 120+132+168+144+156 = 120+300+300 = 720
180 192 204 216 228   Σ = 180+192+228+204+216 = 180+2*420   = 1060
-------------------
240 252 264 276 288 *
300 312 324 336 348
360 372 384 396 408 *
420 432 444 456 468
-------------------
480 492 504 516 528 *
540 552 564 576 588
600 612 624 636 648 *
660 672 684 696 708
-------------------
720 732 744 756 768 *
780 792 804 816 828
840 852 864 876 888 *
900 912 924 936 948
-------------------
960 972 984 9961008 *
-------------------
 ↓   ↓   ↓   ↓   ↓
-------------------
 0   1   2   3   4
 6   7   8   9   0
 2   3   4   5   6
 8   9   0   1   2
 4   5   6   7   8
-------------------
 ↑   ↑   ↑   ↑   ↑
 ↓   ↓   ↓   ↓   ↓
-------------------
 8   5   8   5   8
 4   1   4   1   4
 0   7   0   7   0
 6   3   6   3   6
 2   9   2   9   2
-------------------


0  ≡ 12 (mod 12)
1  ≡ 13 (mod 12)
2  ≡ 14 (mod 12)
3  ≡ 15 (mod 12)
4  ≡ 16 (mod 12)
5  ≡ 17 (mod 12)
6  ≡ 18 (mod 12)
7  ≡ 19 (mod 12)
8  ≡ 20 (mod 12)
9  ≡ 21 (mod 12)
10 ≡ 22 (mod 12)
11 ≡ 23 (mod 12)
12 ≡ 24 (mod 12)

</details>

<!-- #endregion -->

Congruence modulo n is a *congruence relation*, meaning that it is an equivalence relation that is compatible with the operations of addition, subtraction, and multiplication.

Congruence modulo n is denoted: a ≡ b (mod n)

The parentheses mean that (mod n) applies to the entire equation, not just to the RHS (here b). This notation is not to be confused with `b mod n` (without parentheses), which refers to the *modulo operation*.

`a = b mod n` denotes the unique integer `a` so `0 <= a < n` and `a ≡ b (mod n)`, that is, the remainder of `b` when divided by `n`.

By the way, Euclidean division is `n = mq + r` such that 
`m != 0` and `n,m,q ∈ ℤ` and `r ∈ ℕ` and `0 <= r < q` 
where `m` is a divisor, `q` a quotient (multiplier), `r` a remainder 
of dividing `n` with `m`.

`n/m = (q, r)` i.e. `n = mq + r`


## Properties of congruence relation

The congruence relation satisfies all the conditions of an equivalence relation:
- Reflexivity  :       a ≡ a (mod n)
- Symmetry     : ∀abn. b ≡ a (mod n) --> a ≡ b (mod n) 
- Transitivity :       a ≡ b (mod n)  ∧  b ≡ c (mod n) --> a ≡ c (mod n)

a ≡ b (mod n) ->
- compatibility with *translation*    : ∀k ∈ ℤ. a+k ≡ b+k (mod n)
- compatibility with *scaling*        : ∀k ∈ ℤ.  ak ≡ bk  (mod n)
- compatibility with *exponentiation* : ∀k ∈ ℕᐩ. aᵏ  ≡ bᵏ (mod n)
- compatibility with polynomial evaluation:  p(a) ≡ p(b) (mod n)
  for any polynomial p(x) with integer coefficients

a₁ ≡ b₁ (mod n) ∧ a₂ ≡ b₂ (mod n) -->
- compatibility with *addition*       : a₁+a₂ ≡ b₁+b₂ (mod n)
- compatibility with *subtraction*    : a₁-a₂ ≡ b₁-b₂ (mod n)
- compatibility with *multiplication* : a₁a₂  ≡ b₁b₂  (mod n)

[TBC...]


## Congruence classes

Like any congruence relation, congruence modulo 𝓷 is an equivalence relation, and the equivalence class of the integer 𝓪, denoted by $$\bar{a_n}$$, is the set {… , 𝓪 − 2𝓷, 𝓪 − 𝓷, 𝓪, 𝓪 + 𝓷, 𝓪 + 2𝓷, …}

This set, consisting of all the integers congruent to 𝓪 modulo 𝓷, is called the *congruence class* (also residue or residue class) of the integer 𝓪 modulo 𝓷. When the modulus 𝓷 is known from the context, that residue may also be denoted [𝓪].

## Residue systems

Each residue class modulo 𝓷 may be represented by any one of its members, although we usually represent each residue class by the smallest nonnegative integer which belongs to that class (since this is the proper remainder which results from division).

Any two members of different residue classes modulo 𝓷 are *incongruent* modulo 𝓷. Furthermore, every integer belongs to exactly one residue class modulo 𝓷.

The set of integers {0, 1, 2, …, 𝓷 − 1} is called the **least residue system modulo 𝓷**. Any set of 𝓷 integers, no two of which are congruent modulo 𝓷, is called a complete residue system modulo 𝓷.

(...)


## Modulo operation

https://en.wikipedia.org/wiki/Modulo_operation

**Modulo operation** returns the signed remainder of a division, called the *modulus of the operation*, after one number is divided by another.

Given two positive numbers a and n, a mod n is the remainder of the Euclidean division of a by n, where a is the dividend and n is the divisor.

The modulo operation is to be distinguished from the symbol `mod`, which refers to the modulus (or divisor) one is operating from, as in 9 ≡ 21 (mod 12).

For example, 5 mod 2 = 1 since 5/2 = (q:2, r:1)

Although typically performed with a and n both being integers, many computing systems now allow other types of numeric operands. The range of numbers for an integer modulo of n is 0 to n−1 inclusive (a mod 1 is always 0; a mod 0 is undefined).

When either a or n is negative, the naive definition breaks down, and PL differ in how these values are defined.

```
a mod 1 = 0
a mod 0 = ⊥ (undefined, division by zero)
```

In math, the result of the modulo operation is an *equivalence class* and the smallest non-negative integer that belongs to that class is chosen as the class representative, being referred to as the **least positive residue**.

Almost everywhere, the quotient q and the remainder r of a divided by n satisfy the following conditions: q ∈ ℤ, n = mq + r, |r| < |n|


```
-------------------
n   m    q  r
-------------------
n / m = (q, r)
8 / 3 = (2, 3)      ɹ == ɯ :ɹoɹɹǝ
8 / 3 = (2, 2)


-------------------
n = m x  q + r
7 = 3 x  5 + 2   ✔
-------------------
|n| > |r|
|7| > |2|        ✔
-------------------

a dividend
n divisor

a/n = (q, r)
a mod n = r
a  %  n = r

```




(...)


## Modular exponentiation

https://en.wikipedia.org/wiki/Modular_exponentiation

Modular exponentiation is a type of exponentiation performed over a modulus. 

The operation of modular exponentiation calculates the remainder when an integer 𝓫 (the base) raised to the 𝓮ᵗʰ power (the exponent), 𝓫ᵉ, is divided by a positive integer 𝓶 (the modulus).

In symbols, given base 𝓫, exponent e, and modulus 𝓶, the modular exponentiation 𝓬 is: 𝓬 = 𝓫ᵉ mod 𝓶. From the definition of 𝓬, it follows that 0 ≤ 𝓬 < 𝓶.

(...)

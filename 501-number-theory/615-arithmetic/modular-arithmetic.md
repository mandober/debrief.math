# Modular arithmetic

https://en.wikipedia.org/wiki/Modular_arithmetic

## Terms

modular arithmetic
modulus
wrap-around operation, wrap-around addition
congruence relation


## Modular arithmetic

Modular Arithmetic (MA) is a special system of integer arithmetic, where integers exhibit the wrap-around behavior after reaching a certain value, called *modulus*.

The modern approach to MA was developed by Carl Friedrich Gauss in his book "Disquisitiones Arithmeticae" from 1801.

An example of MA, familiar to everone is the 24-hour clock, where the hours wrap around after reaching 23. Addition in this system also wraps around, such that if it's 19 o'clock, then 8 hours later is 3 o'clock, for 27 ≡ 3 (mod 12).

The essence of modular arithmetic is the *congruence relation*, which is an *equivalence relation*, that relates two integers with the same property: they have the same remainder when divided by the same modulus.

The congruence relation is denoted by `a ≡ b (mod m)` 
meaning that `a` is congruent to `b` modulo `m`.


```
all vars are integers, ∀_ ∈ ℤ
=============
a ≡ b (mod m)
=============
if m > 1 => m | (a - b)
         => ∃k. km = a - b
a = bk + m
b = ak + m

a - m = bk
b - m = ak

r = a / m = b / m

km = a - b
k = (a - b) / m
```

`a ≡ b (mod m)`, where `∀_ ∈ ℤ`, means:
* `a / m = r = b / m`
  a and b have the same remainder, r, when divided by m
* a = kb + m
  a - m = kb
* b = ka + m
  b - m = ab
* a = km + b
* km = a - b
* a ≡ b (mod m) => m|(a − b)


- (∀m ∈ ℤ. m > 1). (∀ab ∈ ℤ). `a ≡ b (mod m) => m|(a − b)`
- (∀m ∈ ℤ. m > 1). (∀ab ∈ ℤ). (∃k ∈ ℤ). `k * m = a - b`
- congruence relation: `a ≡ b (mod n)`"a is congruent to b modulo m"
- congruence relation: `a = kn + b` alt notation for congruence relation
- a (mod n)
- 5 (mod 7) ≠ 5 (mod 6) [...aren't-they-different-types?]


## Modular arithmetic

Given a modulus `m`, where `m ∈ ℤ ∧ m > 1`, two integers `a` and `b` are said to be **congruent modulo m** if `m` is a divisor of their difference, i.e. if there exists an integer `k` such that `a − b = kn`, denoted:

> (∀m ∈ ℤ. m > 1). (∀ab ∈ ℤ). (∃k ∈ ℤ). k * m = a - b

> (∀m ∈ ℤ. m > 1). (∀ab ∈ ℤ). a ≡ b (mod m) => m|(a − b)


Two distinct moduli form incompatible classes of integers, for example `5 (mod 7)` ≠ `5 (mod 6)` ! Therefore, a modulus enforces a certain type constraint. Before, there were ℤ, now there are ℤ/m ℤ.

- a ≡ b (mod n) -> n ∣ a−b
- that is, a − b = kn (for some integer k) such that a = kn + b
- Euclidean division: n/m = (q, r) that is n = mq + r

## Congruence

**Congruence modulo `n`** is a congruence relation, a sort of *equivalence relation*, compatible with addition, subtraction and multiplication. Congruence modulo `n` is denoted `a ≡ b (mod n)`.

The parentheses in the notation mean that the `(mod n)` part applies to the entire equation, not just to the RHS. This notation is not to be confused with `b mod n`, i.e. parentheses-less, which is the **modulo operation**.

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

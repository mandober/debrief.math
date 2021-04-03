# Axioms for the Real Numbers and Integers


We assume that the following statements are true:

1. **Existence** There exists a set R consisting of all real numbers. It contains a subset Z ⊆ R consisting of all integers.
2. **Closure** of Z: If a and b are integers, then so are a + b and ab.
3. **Closure** of R: If a and b are real numbers, then so are a + b and ab.
4. **Commutativity**: a + b = b + a and ab = ba for all real numbers a and b.
5. **Associativity**: (a + b) + c = a + (b + c) and (ab)c = a(bc) for all real numbers a, b, and c.
6. **Distributivity**: $$\forall xyz\in \mathbb{R}$$
  - left: a⋆(b ⁜ c) = a⋆b ⁜ a⋆c
  - right: (a ⁜ b) ⋆ c = a⋆c ⁜ b⋆c
7. **Zero**: 0 is an integer that satisfies a + 0 = a = 0 + a for every real number a.
8. **One**: 1 is an integer that is not equal to zero and satisfies a · 1 = a = 1 · a for every real number a.
9. **Additive inverses**: If a is any real number, there is a unique real number −a such that a + (−a) = 0. If a is an integer, then so is −a.
10. **Multiplicative inverses**: If a is any nonzero real number, there is a unique real number a−1 such that a · a−1 = 1.
11. **Trichotomy**: If a and b are real numbers, then one and only one of the following 3 statements is true: a < b, a = b, or a > b.
12. **Closure** of R+: If a and b are positive real numbers, then so are a + b and ab
13. **Addition law for inequalities**: If a, b, and c are real numbers and a < b, then a + c < b + c
14. **The well ordering axiom**: Every nonempty set of positive integers contains a smallest integer.
315. **The least upper bound axiom**: Every nonempty set of real numbers that has an upper bound has a least upper bound.



## Properties of Operations

These theorems can be proved from the axioms in the order listed below.

1. Properties of zero
  - a) a − a = 0
  - b) 0 − a = −a
  - c) 0 · a = 0
  - d) If ab = 0, then a = 0 or b = 0

2. Properties of signs
  - a) −0 = 0
  - b) −(−a) = a
  - c) (−a)b = −(ab) = a(−b)
  - d) (−a)(−b) = ab
  - e) −a = (−1)a

3. More distributive properties
  - a) −(a + b) = (−a) + (−b) = −a − b
  - b) −(a − b) = b − a
  - c) −(−a − b) = a + b
  - d) a + a = 2a
  - e) a(b − c) = ab − ac = (b − c)a
  - f) (a + b)(c + d) = ac + ad + bc + bd
  - g) (a + b)(c − d) = ac − ad + bc − bd = (c − d)(a + b)
  - h) (a − b)(c − d) = ac − ad − bc + bd

4. Properties of inverses
(a) If a is nonzero, then so is a−1
(b) 1−1 = 1
(c) (a−1)−1 = a if a is nonzero
(d) (−a)−1 = −(a−1) if a is nonzero
(e) (ab)−1 = a−1b−1 if a and b are nonzero
(f) (a/b)−1 = b/a if a and b are nonzero

5. Properties of quotients
(a) a/1 = a.
(b) 1/a = a−1 if a is nonzero.
(c) a/a = 1 if a is nonzero.
(d) (a/b)(c/d) = (ac)/(bd) if b and d are nonzero.
(e) (a/b)/(c/d) = (ad)/(bc) if b, c, and d are nonzero.
(f) (ac)/(bc) = a/b if b and c are nonzero.
(g) a(b/c) = (ab)/c if c is nonzero.
(h) (ab)/b = a if b is nonzero.
(i) (−a)/b = −(a/b) = a/(−b) if b is nonzero.
(j) (−a)/(−b) = a/b if b is nonzero.
(k) a/b + c/d = (ad + bc)/(bd) if b and d are nonzero.
(l) a/b − c/d = (ad − bc)/(bd) if b and d are nonzero

46. Transitivity of inequalities
(a) If a < b and b < c, then a < c
(b) If a ≤ b and b < c, then a < c
(c) If a < b and b ≤ c, then a < c
(d) If a ≤ b and b ≤ c, then a ≤ c

7. Other Properties of inequalities
(a) If a ≤ b and b ≤ a, then a = b
(b) If a < b, then −a > −b
(c) 0 < 1
(d) If a > 0, then a−1 > 0
(e) If a < 0, then a−1 < 0
(f) If a < b and a and b are both positive, then a−1 > b−1.
(g) If a < b and c < d, then a + c < b + d.
(h) If a ≤ b and c < d, then a + c < b + d.
(i) If a ≤ b and c ≤ d, then a + c ≤ b + d.
(j) If a < b and c > 0, then ac < bc.
(k) If a < b and c < 0, then ac > bc.
(l) If a ≤ b and c > 0, then ac ≤ bc.
(m) If a ≤ b and c < 0, then ac ≥ bc.
(n) If a < b and c < d, and a, b, c, d are nonnegative, then ac < bd.
(o) If a ≤ b and c ≤ d, and a, b, c, d are nonnegative, then ac ≤ bd.
(p) ab > 0 iff a and b are both positive or both negative.
(q) ab < 0 iff one is positive and the other is negative.
(r) There is no smallest positive real number.
(s) (Density) If a and b are two distinct real numbers, then there are infinitely many rational numbers and infinitely many irrational numbers between a and b

8. Properties of squares
(a) For every a, a2 ≥ 0
(b) a2 = 0 iff a = 0
(c) a2 > 0 iff a > 0
(d) (−a)2 = a2
(e) (a−1)2 = 1/a2
(f) If a2 = b2, then a = ±b
(g) If a < b and a and b are both nonnegative, then a2 < b2
(h) If a < b and a and b are both negative, then a2 > b2

9. Properties of Square Roots
  (a) If a is any nonnegative real number, there is a unique nonnegative real number √a such that √a2 = a
  (b) If a = b and a and b are both nonnegative, then √a = √b
  (c) If a < b and a and b are both nonnegative, then √a < √b
  (d) If a2 = b and b is nonnegative, then a = ±√b

10. Properties of Absolute Values
  - a) If a is any real number, then |a| ≥ 0.
  - b) |a| = 0 iff a = 0.
  - c) |a| > 0 iff a 6= 0.
  - d) | − a| = |a|.
  - e) |a| = √a2.
  - f) |a| = max{a, −a}.
  - g) |a−1| = 1/|a| if a 6= 0.
  - h) |ab| = |a| |b|.
  - i) |a/b| = |a|/|b| if b 6= 0.
  - j) |a| = |b| iff a = ±b.
  - k) If a and b are both nonnegative, then |a| ≥ |b| iff a ≥ b.
  - l) If a and b are both negative, then |a| ≥ |b| iff a ≤ b.
  - m) (The triangle inequality) |a + b| ≤ |a| + |b|.
  - n) (The reverse triangle inequality) |a| − |b| ≤ |a − b|

11. Order properties of integers
  - a) 1 is the smallest positive integer.
  - b) If m and n are integers such that m > n, then m ≥ n + 1
  - c) There is no largest or smallest integer

12. Properties of Even and Odd Integers
  - In each of the following statements, m and n are assumed to be integers
  - a) n is even iff n = 2k for some int k, 
       and odd iff n = 2k + 1 for some int k
  - b) m + n is even iff m and n are both odd or both even
  - c) m + n is odd iff one of the summands is even and the other is odd
  - d) mn is even iff m or n is even
  - e) mn is odd iff m and n are both odd
  - f) n2 is even iff n is even, and odd iff n is odd

13. Properties of Exponents
  - In these statements, m and n are positive integers
  - a) anbn = (ab)n
  - b) am+n = ambn
  - c) (am)n = amn
  - d) an/bn = (a/b)n if b is nonzero

# Polynomial

https://en.wikipedia.org/wiki/Polynomial

A polynomial is an expression consisting of variables (indeterminates) and coefficients (constants) that involves only the operations of addition (subtraction), multiplication and exponentiation (with positive integer powers).

For example, a polynomial with 1 variable (x); polynomial with 3 variables (x,y,z):

$$
x^2 − 4x + 7 \\
x^3 + 2xyz^2 − yz + 1  \\
$$

Polynomials appear in many areas: polynomial equations, polynomial functions, elementary word problem, complex scientific problems; they are used in calculus,numerical analysis, algebra, algebraic geometry.


A polynomial in a single indeterminate $$x$$ can always be written in the form:

$$a_{n} x^{n} + a_{n-1} x^{n-1} + \dotsb + a_{2} x^{2} + a_{1} x+a_{0}$$

where $$a_{0},\ldots ,a_{n}$$ are constants and $$x$$ is the indeterminate.

Expressed concisely using summation:

$${\displaystyle \sum _{k=0}^{n}a_{k}x^{k}}$$

That is, a polynomial can either be zero or can be written as the sum of a finite number of non-zero terms. Each term consists of the product of a number, called the coefficient of the term, and a finite number of indeterminates, raised to nonnegative integer powers.

## Quadratic equation

$$
\displaystyle{
\Big(\sum_{i=1}^n a_i\Big)^2 =
\sum_{i=1}^n (a_i)^2 +
2\Big[\sum_{j=i}^{n-1} \Big( a_j \sum_{k=i+1}^n a_{k} \Big) \Big]
}
$$

---

$$
\displaystyle{
\Big(\sum_{i=1}^n a_i\Big)^2 =
(a_1 + a_2 + \dotsb + a_n)^2 = 
q + 2p
}
$$

---
$$
\displaystyle{
q = \sum_{i=1}^n a_i^2 = a_1^2 + a_2^2 + \dotsb + a_n^2
}$$

---
$$
\displaystyle{
p =
a_1(a_2 + \dotsb + a_n) + 
a_2(a_3 + \dotsb + a_n) + 
  \dotsb + 
a_{n-2}(a_{n-1} + a_n) + 
a_{n-1}(a_n)
}
$$

$$
\displaystyle{
p =
  a_1\Big(\sum_{i=2}^n a_i\Big) + 
  a_2\Big(\sum_{i=3}^n a_i\Big) + 
  \dotsb + 
  a_{n-2}\Big(\sum_{i=(n-1)}^n a_i\Big) + 
  a_{n-1}\Big(\sum_{i=n}^n a_i\Big)
}
$$


$$
\displaystyle{
p = \sum_{i=1}^{n-1} 
\Big[
  a_i \Big(\sum a_{i+1}\Big)
\Big]
}
$$

# Polynomial

Polynomial is an algebraic expression of the form

    aₙxⁿ + ... + a₃x³ + a₂x² + a₁x + a₀

It is built from **terms** which are individual expressions connected with addition, starting with the lowest term on the right.

Each term consists of a **constant** and a **variable** raised to a power. These constant are also called **coefficients**.

The lowest term has the constant `a₀` and variable `x` raised to 0, `a₀x⁰`, which is just `a₀`.

Each succeeding term (in right to left direction) must have a variable raised to an ever increasing power, i.e. if the current term's power is `k`, the power of the succeeding term must be `k+1`.

    axᵏ + bxᵏ⁻¹ + … + ix³ + jx² + nx + m

The lowest term collapses to the value of its constant, `a₀`, since its power is 0; the next term is `a₁x`, and from there on, a term may be elided only if its constant is 0 which annihiltes the entire term (0x³ = 0).

Examples:
- `5x² + 3x + 6` = 5x² + 3x¹ + 6x⁰
- `42`           = 42x⁰ = 42 × 1
- `4x⁴ - 4`      = 4x⁴ + 0x³ + 0x² + 0x¹ + 4

The only allowed operation for connecting the terms is addition, but since the terms might be nagative, the addition subsumes subtraction.

**Degree of a polynomial** is determined by the term with the largest power.

# Polynomial

https://en.wikipedia.org/wiki/Polynomial




>General polynomial of one variable:

    cₙ xⁿ + cₙ˗₁ xⁿ⁻¹ + … + c₁ x + c₀

    ax⁴ + bx³ + cx² + dx + e
    ax³ + bx² + cx + d
    ax² + bx + c
    ax + b

If coeff is 0, e.g. b=0 the term is left out, but conceptually it is

    ax³ + 0x² + cx + d  =  ax³ + cx + d

Examples
- polynomial of 1 var:
  - `x − 2y + 5` (linear)
  - `x² − 4x + 7` (quadratic)
- polynomial of 2 vars: `x³ − 3x²y² + 4`
- polynomial of 3 vars: `x³ + 2xyz² − yz + 1`


Polynomials appear in many areas of mathematics and science. For example, they are used to form *polynomial equations*, which encode a wide range of problems, from elementary word problems to complicated scientific problems. They are used to define *polynomial functions*, which appear in settings ranging from basic chemistry and physics to economics and social science. They are used in *calculus* and *numerical analysis* to approximate other functions. In advanced mathematics, polynomials are used to construct *polynomial rings* and *algebraic varieties*, which are central concepts in algebra and algebraic geometry.


```js
exp := const
     | var
     | var ^ ℕ
     | exp binop exp
     | ( exp )

binop := + | ⨯
var   := x, y, z, …
const := ℤ

// ex
3z
3 + z
-7 + zy
2x + zy
x² + 1
x³ - 2x
x² + 4x - 7
```

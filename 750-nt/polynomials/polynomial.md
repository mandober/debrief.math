# Polynomial

https://en.wikipedia.org/wiki/Polynomial

A **polynomial** is an expression consisting of *indeterminates* (also called variables or unknows) and *coefficients* (also called constants), that involves only the operations of addition (subtraction), multiplication and exponentiation (but the power must be a positive integer) of variables.

Componenets of a polynomial: { ℤ, +, ⨯, (∙)ⁿ } where n ∈ ℕ

General polynomial of 1 variable: `cₙ xⁿ + cₙ˗₁ xⁿ⁻¹ + … + c₁ x¹ + c₀ x⁰`

```js
exp := const
     | var
     | var ^ ℕ
     | exp binop exp
     | ( exp )

binop := + | ⨯
var   := x, y, z, …
const := ℤ



// examples
// ========

// constants
7
-3

// vars
x
y
z

// powers
x⁰ = 1
x¹ = x
z²
y⁴

// binary ops
3z
3 + z
-7 + zy
2x + zy
x² + 1
x³ - 2x
x² + 4x - 7
```


An example of a polynomial of 1 indeterminate `x` is `x² − 4x + 7`; an example with 3 indeterminates is `x³ + 2xyz² − yz + 1`.


Polynomials appear in many areas of mathematics and science. For example, they are used to form *polynomial equations*, which encode a wide range of problems, from elementary word problems to complicated scientific problems. They are used to define *polynomial functions*, which appear in settings ranging from basic chemistry and physics to economics and social science. They are used in *calculus* and *numerical analysis* to approximate other functions. In advanced mathematics, polynomials are used to construct *polynomial rings* and *algebraic varieties*, which are central concepts in algebra and algebraic geometry.

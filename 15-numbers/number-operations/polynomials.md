# Polynomial

https://en.wikipedia.org/wiki/Polynomial

A polynomial is an expression consisting of variables (indeterminates) and coefficients (constants) that involves only the operations of addition, subtraction, multiplication and non-negative integer exponents of variables.

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

# Polynomials

(from *"A Programmer's introduction to Mathematics" - Jeremy Kun, 2018*)


## Definition

A **single variable polynomial with real coefficients** is a function $$f$$ that takes a real number as input, produces a real number as output, and has the form:

$$\displaystyle
f(x) = a_n x^n + a_{n-1} x^{n-1} + \cdots + a_2 x^2 + a_1 x^1 + a_0 x^0 \\
\qquad = a_n x^n + a_{n-1} x^{n-1} + \cdots + a_2 x^2 + a_1 x \ + a_0
$$

where $$a_i$$ are real numbers, called the **coefficients** of $$f$$. The **polynomial's degree** of the polynomial is the integer $$n:n \in \mathbb{N}$$.

$$\displaystyle f(x) = \sum_{i=0}^n a_i x^i$$

It is a summation of terms, enumerated with $$i=(0..n)$$, where each $$i^{th}$$ term consisting of a constant $$a_i$$ multiplied with the variable $$x$$ raised to the $$i^{th}$$ power, $$x^i$$.

The definition mentions 3 things:
1. a polynomial with real coefficients, i.e. a function $$f$$
2. coefficients $$a_i$$, i.e. an array of reals $$[a_0,\cdots,a_n]$$
3. a polynomial's degree, i.e. a natural number $$n$$


> The concept of a polynomial is a bit more general: it is any function of a single numeric input that can be expressed using only addition and multiplication and constants.


**Example**     
If $$g$$ is the function name, $$t$$ is the input (variable) name, $$b_i$$ is an array of coefficients defined as $$[2,0,4,−1]$$ and $$n=3$$ is the degree of the polynomial. By definition, the polynomial $$g$$ has the form:

$$\displaystyle g(t) = 2 + 0t + 4t^2 + (−1)t^3 \\
\quad\ \ = 2 + 4t^2 − t^3
$$


A polynomial, like a function, can be represented as a set of ordered pairs, sometimes called *points* - pairing each input with its output we can obtain a set of tuples which we can plot. A polynomial's graph, plotted as a curve in space, will reveal an interesting property: the number of curvey direction-changes depends on a polynomial's degree.

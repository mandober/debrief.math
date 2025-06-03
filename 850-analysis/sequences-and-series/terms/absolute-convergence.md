# Absolute convergence

https://en.wikipedia.org/wiki/Absolute_convergence

An infinite series is absolutely convergent if the sum of the absolute values of the terms (summands) is finite. More precisely, a series `∑ aₙ` is said to absolutely converge if `∑|aₙ| = L`, where `L ∈ ℝ`. A convergent series that is not absolutely convergent is conditionally convergent.

Similarly, an improper integral of a function, `∫ {0..∞} f(x) dx`, is said to converge absolutely if the integral of the absolute value of the integrand is finite, i.e. if `∫ {0..∞} |f(x)| dx = L`, where `L ∈ ℝ`.

Absolute convergence is important for the study of infinite series, because its definition guarantees that a series has some "nice" behaviors of finite sums that not all convergent series possess. For instance, rearrangements do not change the sum, which is not necessarily true for conditionally convergent series.

## Contents

- 1. Background
- 2. Definition for real and complex numbers
- 3. Sums of more general elements
  - 3.1. In topological vector spaces
- 4. Relation to convergence
  - 4.1. Proof that any absolutely convergent complex series is convergent
  - 4.2. Alternative proof using the Cauchy criterion and triangle inequality
  - 4.3. Proof that any Banach space absolutely convergent series is convergent
- 5. Rearrangements and unconditional convergence
  - 5.1. Real and complex numbers
  - 5.2. Series with coefficients in more general space
  - 5.3. Proof of the theorem
- 6. Products of series
- 7. Absolute convergence over sets
- 8. Absolute convergence of integrals
- 9. See also
- 10. Notes
- 11. References


## 1. Background

When adding a finite number of terms, addition is both associative and commutative, meaning that grouping and rearrangment do not alter the result. However, associativity and commutativity do not necessarily hold for infinite sums. One example is the alternating harmonic series:

```js
⎲∞          1
⎳ₙ₌₀ (-1)ⁿ ---- = 1 - 1/2 + 1/3 - 1/4 + 1/5 - 1/6 + ⋯
             n
```

This series is conditionally convergent and can be evaluated using the Maclaurin series for the function `ln(1+x)`, which converges for all `x` satisfying `|x| ≤ 1`.

```js
          ⎲∞          xⁿ         x²     x³     x⁴      x⁵     x⁶
ln(1+x) = ⎳ₙ₌₀ (-1)ⁿ ---- = x - ---- + ---- + ----- + ---- + ---- + …
                       n           2      3      4       5      6
```

Substituting `x=1` reveals that the original sum is equal to `ln(2)`. 
The sum can also be rearranged as follows:

    S = (1 − 1/2) − 1/4 + (1/3 − 1/6) − 1/8 + (1/5 − 1/10) − 1/12 + ⋯

In this rearrangement, the reciprocal of each odd number is grouped with the reciprocal of twice its value, while the reciprocals of every multiple of 4 are evaluated separately. However, evaluating the terms inside the parentheses yields

    S = 1/2 − 1/4 + 1/6 − 1/8 + 1/10 − 1/12 + ⋯

i.e. half the original series.

The violation of the associativity and commutativity of addition reveals that the alternating harmonic series is conditionally convergent.

    violation of assoc + comm of addition ⇒ conditional convergence

Summing up the absolute value of each term (i.e. replacing all minuses with pluses) yields a harmonic series, `1+1/2+1/3+1/4+⋯`, known to diverge.

>According to the *Riemann series theorem*, any conditionally convergent series can be rearranged so that it converges (i.e. so that its sum is a constant), or so that it diverges.

Such series also violate associativity and commutativity of addition.

This does not hold for absolutely convergent series - rearranging the terms of an absolutely convergent series preserves the sum.

## 2. Definition for real and complex numbers

A sum of real (or complex) numbers `∑{n=0..∞} aₙ` is absolutely convergent if the sum of the absolute values of the terms `∑{n=0..∞} |aₙ|` converges.

## 3. Sums of more general elements

### 3.1. In topological vector spaces

## 4. Relation to convergence

If `G` is complete with respect to the metric `d`, then every absolutely convergent series is convergent.

Above, `G` is an abelian group, and the function `d(x,y) = ∥x−y∥` induces the structure of a metric space (a type of topology) on `G`.

The proof is the same as for complex-valued series: use the *completeness* to derive the *Cauchy criterion for convergence* (a series is convergent iff its tails can be made arbitrarily small in *norm*) and apply the triangle inequality.

In particular, for series with values in any Banach space, absolute convergence implies convergence. The converse is also true: if absolute convergence implies convergence in a normed space, then the space is a Banach space.

If a series is convergent but not absolutely convergent, it is called *conditionally convergent*. An example of a conditionally convergent series is the alternating harmonic series. 

Many standard tests for divergence and convergence, most notably including the ratio test and the root test, demonstrate absolute convergence. This is because a power series is absolutely convergent on the interior of its disk of convergence.

### 4.1. Proof that any absolutely convergent complex series is convergent
### 4.2. Alternative proof using the Cauchy criterion and triangle inequality
### 4.3. Proof that any Banach space absolutely convergent series is convergent

## 5. Rearrangements and unconditional convergence

### 5.1. Real and complex numbers

When a series of real or complex numbers is absolutely convergent, any rearrangement or reordering of that series' terms will still converge to the same value.

This fact is one reason absolutely convergent series are useful: 
>showing a series is absolutely convergent allows terms to be paired or rearranged in convenient ways without changing the sum's value.

The *Riemann rearrangement theorem* shows that the converse is also true: every real or complex-valued series whose terms cannot be reordered to give a different value is absolutely convergent.

### 5.2. Series with coefficients in more general space

The term *unconditional convergence* is used to refer to a series where any rearrangement of its terms still converges to the same value.

For any series with values in a normed abelian group G, as long as G is complete, every series which converges absolutely also converges unconditionally.

(Theorem) Let G be a normed abelian group. Suppose 
$\sum _{i=1} ^∞ a_i = A$ and $A \in G$ and 
$\sum _{i=1} ^∞ \| a_i \| < ∞$. 
If $\sigma : \mathbb{N} \to \mathbb{N}$ is any permutation, then 
$\sum _{i=1} ^∞ a_{\sigma (i)} = A$.



### 5.3. Proof of the theorem

## 6. Products of series

## 7. Absolute convergence over sets

A generalization of the absolute convergence of a series, is the absolute convergence of a sum of a function over a set.

We can first consider a countable set `X` and a function `f : X → ℝ`. We will give a definition below of the sum of `f` over `X`, written `∑ {x∈X} f(x)`.

First note that because no particular enumeration (or "indexing") of `X` has yet been specified, the series `∑ {x∈X} f(x)` cannot be understood by the more basic definition of a series. In fact, for certain examples of `X` and `f`, the sum of `f` over `X` may not be defined at all, since some indexing may produce a conditionally convergent series.

Therefore we define `∑ {x∈X} f(x)` only in the case where there exists some bijection



## 8. Absolute convergence of integrals

# Divergent series

https://en.wikipedia.org/wiki/Divergent_series

A **divergent series** is an infinite series that is not convergent, meaning that the infinite sequence of the partial sums of the series does not have a finite limit.

>If a series converges, the individual terms of the series must approach 0.
Thus any series in which the individual terms do not approach zero diverges.

converges ⇒ terms approach zero

However, convergence is a stronger condition: *not all series whose terms approach zero converge*.

An example is the *harmonic series*, `Σ{n=1..∞} 1/n = 1 + 1⁄2 + 1⁄3 + 1⁄4 + …`, divergence of which was proven by the medieval mathematician Nicole Oresme.

In specialized mathematical contexts, values can be objectively assigned to certain series whose sequences of partial sums diverge, in order to make meaning of the divergence of the series.

A *summability method* or *summation method* is a partial function from the set of series to values. For instance, Cesàro summation assigns *Grandi's divergent series* (1-1+1-1+1-1+⋯) the value ⁠1⁄2.

*Cesàro summation* is an averaging method, in that it relies on the arithmetic mean of the sequence of partial sums. Other methods involve analytic continuations of related series. In physics, there are a wide variety of summability methods (discussed in the Regularization article).

## Contents

- 1. History
- 2. Examples
- 3. Theorems on methods for summing divergent series
- 4. Properties of summation methods
- 5. Classical summation methods
  - 5.1. Absolute convergence
  - 5.2. Sum of a series
- 6. Nørlund means
  - 6.1. Cesàro summation
- 7. Abelian means
  - 7.1. Abel summation
  - 7.2. Lindelöf summation
- 8. Analytic continuation
  - 8.1. Analytic continuation of power series
  - 8.2. Euler summation
  - 8.3. Analytic continuation of Dirichlet series
  - 8.4. Zeta function regularization
- 9. Integral function means
  - 9.1. Borel summation
  - 9.2. Valiron's method
- 10. Moment methods
  - 10.1. Borel summation
- 11. Miscellaneous methods
  - 11.1. BGN hyperreal summation
  - 11.2. Hausdorff transformations
  - 11.3. Hölder summation
  - 11.4. Hutton's method
  - 11.5. Ingham summability
  - 11.6. Lambert summability
  - 11.7. Le Roy summation
  - 11.8. Mittag-Leffler summation
  - 11.9. Ramanujan summation
  - 11.10. Riemann summability
  - 11.11. Riesz means
  - 11.12. Vallée-Poussin summability
  - 11.13. Zeldovich summability
- 12. See also
- 13. Notes
- 14. References

## 1. History

Before the 19th century, divergent series were widely used by Leonhard Euler and others, but often led to confusing and contradictory results. A major problem was Euler's idea that any divergent series should have a natural sum, without first defining what is meant by the sum of a divergent series.

Augustin-Louis Cauchy eventually gave a rigorous definition of the sum of a (convergent) series, and for some time after this, divergent series were mostly excluded from mathematics.

They reappeared in 1886 with Henri Poincaré's work on *asymptotic series*. In 1890, Ernesto Cesàro realized that one could give a rigorous definition of the sum of some divergent series, and defined *Cesàro summation*.

This was not the first use of Cesàro summation, which was used implicitly by Ferdinand Georg Frobenius in 1880; Cesàro's key contribution was not the discovery of this method, but his idea that one should give an explicit definition of the sum of a divergent series.

In the years after Cesàro's paper, several other mathematicians gave other definitions of the sum of a divergent series, although these are not always compatible: different definitions can give different answers for the sum of the same divergent series.

When discussing the sum of a divergent series, it is necessary to specify which summation method is used.

## 2. Examples of divergent series

```js
1⁰ - 1¹ + 1² - 1³ + ⋯ ≟ 1⁄2
1⁰ + 1¹ + 1² + 1³ + ⋯ ≟ -1⁄2

1 − 2 + 3 − 4 + ⋯ ≟ 1⁄4
1 + 2 + 3 + 4 + ⋯ ≟ -1⁄12

2⁰ - 2¹ + 2² - 2³ + ⋯ ≟ 1⁄3
2⁰ + 2¹ + 2² + 2³ + ⋯ ≟ -1

0! − 1! + 2! − 3! + 4! − 5! + ⋯ ≟ ∫ {0..∞} e⁻ˣ/(1+x) dx ≈ 0.596347…
```

## 3. Theorems on methods for summing divergent series

A *summability method* `M` is *regular* if it agrees with the actual limit on all convergent series. Such a result is called an *Abelian theorem for `M`*, from the prototypical *Abel's theorem*.

More subtle, are partial converse results, called *Tauberian theorems*, from a prototype proved by Alfred Tauber.

Here *partial converse* means that if `M` sums the series `Σ`, and some side-condition holds, then `Σ` was convergent in the first place; without any side-condition such a result would say that `M` only summed convergent series (making it useless as a summation method for divergent series).

The function giving the sum of a convergent series is linear, and it follows from the *Hahn-Banach theorem* that it may be extended to a summation method summing any series with bounded partial sums. This is called the *Banach limit*. This fact is not very useful in practice, since there are many such extensions, inconsistent with each other, and also since proving such operators exist requires invoking the axiom of choice or its equivalents, such as Zorn's lemma. They are therefore non-constructive.

The subject of divergent series, as a domain of *mathematical analysis*, is primarily concerned with explicit and natural techniques such as Abel summation, Cesàro summation and Borel summation, and their relationships. 

The advent of *Wiener's tauberian theorem* marked an epoch in the subject, introducing unexpected connections to Banach algebra methods in Fourier analysis.

Summation of divergent series is also related to *extrapolation methods* and *sequence transformations* as numerical techniques. Examples of such techniques are *Padé approximants*, *Levin-type sequence transformations*, and order-dependent mappings related to renormalization techniques for large-order *perturbation theory* in quantum mechanics.

## 4. Properties of summation methods

Summation methods usually concentrate on the sequence of partial sums of the series.

While the sequence of partial sums does not converge, we may often find that when we take an *average* of larger and larger numbers of initial terms of the sequence, the *average converges*.

We can use this average instead of a limit to evaluate the sum of the series.

>A *summation method* can be seen as a (partial) function
>>from a set of sequences of partial sums to values.
`A : {Σ} → ℕ`

If `A` is any *summation method assigning values to a set of sequences*, we may mechanically translate this to a *series-summation method* `AΣ` that assigns the same values to the corresponding series.

There are certain properties it is desirable for these methods to possess if they are to arrive at values corresponding to limits and sums, respectively.
- Regularity
- Linearity
- Stability (least important property); Finite reindexability (weaker property)


* *Regularity*. 
A summation method is regular if, 
whenever the sequence `s` converges to `x`, `A(s) = x`. 
Equivalently, the corresponding 
series-summation method evaluates `AΣ(a) = x`.

* *Linearity*. 
`A` is linear if it is a linear functional 
on the sequences where it is defined, such that 
`A(k r + s) = k A(r) + A(s)` 
for sequences `r`, `s` and 
a real or complex scalar `k`. 
Since the terms `aₙ﹢₁ = sₙ﹢₁ - sₙ` 
of the series `a` are linear functionals 
on the sequence `s`, and vice versa, 
this is equivalent to `AΣ` being 
a linear functional on the terms of the series.

* *Stability*, aka *translativity*: 
If `s` is a sequence 
starting from `s₀` 
and `s′` is the sequence 
obtained by omitting the first value 
and subtracting it from the rest, 
so that `s′ₙ = sₙ﹢₁ − s₀`, 

    s = s₀, s₁, s₂, s₃
    s′ = s₁-s₀, s₂-s₀, s₃-s₀
      s′₀ = s₁ - s₀
      s′₁ = s₂ - s₀
      s′₂ = s₃ - s₀
      s′ₙ = sₙ﹢₁ − s₀

then `A(s)` 
  is defined iff `A(s′)` is defined, 
    and `A(s) = s₀ + A(s′)`. 
Equivalently, whenever `a′ₙ = aₙ﹢₁` for all `n`, 
  then `AΣ(a) = a₀ + AΣ(a′)`. 
Another way of stating this is that 
  the *shift rule* must be valid 
    for the series that are summable by this method.


The third condition is less important, and some significant methods, such as Borel summation, do not possess it.

There is a weaker alternative to the last condition:

* *Finite re-indexability*. If a and a′ are two series such that there exists a bijection `f : ℕ → ℕ` such that `ai = a′f(i)` for all i, and if there exists some `N ∈ ℕ` such that ai = a′i for all i > N, then `AΣ(a) = AΣ(a′)`.

In other words, `a′` is the same series as `a`, with only finitely many terms re-indexed.

This is a weaker condition than stability, because any summation method that exhibits stability also exhibits finite re-indexability, but the converse is not true.

A desirable property for two distinct summation methods A and B to share is consistency: A and B are consistent if for every sequence s to which both assign a value, A(s) = B(s). (Using this language, a summation method A is regular iff it is consistent with the standard sum Σ.) If two methods are consistent, and one sums more series than the other, the one summing more series is stronger.

There are powerful numerical summation methods that are neither regular nor linear, for instance nonlinear sequence transformations like Levin-type sequence transformations and Padé approximants, as well as the order-dependent mappings of perturbative series based on renormalization techniques.

Taking regularity, linearity and stability as axioms, it is possible to sum many divergent series by elementary algebraic manipulations. This partly explains why many different summation methods give the same answer for certain series.

For instance, whenever `r ≠ 1`, the geometric series

```js
         ⎲∞
G(r,c) = ⎳ₖ₌₀ crᵏ

      ⎲∞
= c + ⎳ₖ₌₀ crᵏᐩ¹   // stability

        ⎲∞
= c + r ⎳ₖ₌₀ crᵏ   // linearity

= c + r G(r,c)

// hence
G(r,c) = c/(1-r)
// unless it is infinite
```

can be evaluated regardless of convergence. More rigorously, any summation method that possesses these properties and which assigns a finite value to the geometric series must assign this value.

However, when `r` is a real number larger than 1, `r ∈ ℝ ∧ r > 1`, the partial sums increase without bound, and averaging methods assign a limit of infinity.


## 5. Classical summation methods

The two classical summation methods for series
- ordinary convergence
- absolute convergence

define the sum as a limit of certain partial sums.

These are included only for completeness; strictly speaking, they are not true summation methods for divergent series since, by definition, a series is divergent only if these methods do not work.

Most, but not all, summation methods for divergent series extend these methods to a larger class of sequences.

### 5.1. Absolute convergence

Absolute convergence defines the sum of a sequence (or set) of numbers to be the limit of the net of all partial sums `aₖ₁ + … + aₖₙ`, if it exists.

It does not depend on the order of the elements of the sequence, and a classical theorem says that:
>A sequence is absolutely convergent iff the sequence of absolute values is convergent in the standard sense.

### 5.2. Sum of a series

Cauchy's classical definition of the sum of a series `a₀ + a₁ + …` *defines the sum to be the limit of the sequence of partial sums* `a₀ + a₁ + … + aₙ`. This is the default definition of convergence of a sequence.

## 6. Nørlund means

- 6.1. Cesàro summation

## 7. Abelian means
  - 7.1. Abel summation
  - 7.2. Lindelöf summation

## 8. Analytic continuation
  - 8.1. Analytic continuation of power series
  - 8.2. Euler summation
  - 8.3. Analytic continuation of Dirichlet series
  - 8.4. Zeta function regularization

## 9. Integral function means
  - 9.1. Borel summation
  - 9.2. Valiron's method

## 10. Moment methods
  - 10.1. Borel summation


## 11. Miscellaneous methods
  - 11.1. BGN hyperreal summation
  - 11.2. Hausdorff transformations
  - 11.3. Hölder summation
  - 11.4. Hutton's method
  - 11.5. Ingham summability
  - 11.6. Lambert summability
  - 11.7. Le Roy summation
  - 11.8. Mittag-Leffler summation
  - 11.9. Ramanujan summation
  - 11.10. Riemann summability
  - 11.11. Riesz means
  - 11.12. Vallée-Poussin summability
  - 11.13. Zeldovich summability

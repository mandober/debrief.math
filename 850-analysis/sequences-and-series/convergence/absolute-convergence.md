# Absolute convergence

An infinite series is *absolutely convergent* if the sum of the absolute values of the terms converges (to a constant).

Definition of absolute convergence (choose one):

1. A series `∑aₙ` is absolutely convergent if both the series itself `∑aₙ` and its absolute value `∑|aₙ|` are shown to converge.

2. A convergent series `∑aₙ` can come to be called "absolutely convergent" if its absolute value `∑|aₙ|` is also convergent.

3. A series `∑aₙ`, whose convergence status is unknown, is actually convergent if its absolute value is convergent.






A series `∑aₙ` is absolutely convergent if `∑|aₙ| = L`, where `L ∈ ℝ`.
- `∑aₙ` ∧ `∑|aₙ|` converge ⇒ `∑aₙ` is absolutely convergent

A convergent series that is not absolutely convergent is *conditionally convergent*.

Given a series `∑ aₙ`, the **absolute value of the series** is a related series denoted `∑|aₙ|` where the absolute value is taken of each term (compared to the original series). That is, so that each term represents only its magnitude, yielding a version of the original series with all-positive terms.


The absolute value of a series is particularly relevant to alternating series which have the form `∑ (-1)ⁿ f(n)`. The `(-1)ⁿ` subexpression in there is only intended to control the alternation of the sign of each term - to be used as the *sign control*. It is often desirable to skip it when manipulating the series, and to achieve that, the absolute value of the series is taken.

Given a series `∑ aₙ` defined by the formula `(-1)ⁿ f(n)`, the absolute value of this series, `∑|aₙ|` evaluates to just `f(n)`, skipping the sign control.


Absolute convergence is important for the study of infinite series, because its definition guarantees that a series has some "nice" behaviors of *finite sums* that not all convergent series possess. For instance, one of these nice behaviors includes a property that is desirable in a series - that *rearrangements* do not change the sum - which is not necessarily true for conditionally convergent series. For example, harmonic series (`∑ 1/n`) violate the associativity and commutativity of addition, which implies that alternating harmonic series (`∑ (-1)ⁿ 1/n`) are conditionally convergent.

    Violation of assoc + comm of addition ⇒ conditional convergence

>According to the *Riemann series theorem*, any conditionally convergent series can be rearranged so that its sum is a constant (so it converges) or so that it diverges.

Such a series also violates associativity and commutativity of addition. 

Rearranging an absolutely convergent series preserves the sum.


Alternating Harmonic Series is convergent but not absolutely convergent because its absolute value is divergent; for this reason it is conditionally convergent.

Absolute convergence is stronger then convergence. If a series is absolutely convergent it must be convergent.

Classes of convergence
- Convergence
  - Absolute convergence
  - Conditional convergence
  - Unconditional convergence
- Divergence



When a series is absolutely convergent, any rearrangement or reordering of the terms of that series still converge to the same value. This fact is one reason absolutely convergent series are useful:
>Showing a series is absolutely convergent allows terms to be paired or rearranged in convenient ways without changing the sum's value.

The *Riemann rearrangement theorem* shows that the converse is also true: every series whose terms cannot be reordered to give a different value is absolutely convergent.

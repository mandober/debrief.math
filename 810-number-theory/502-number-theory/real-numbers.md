# Real number

https://en.wikipedia.org/wiki/Real_number
https://en.wikipedia.org/wiki/Construction_of_the_real_numbers
https://en.wikipedia.org/wiki/Tarski%27s_axiomatization_of_the_reals



## The Axioms

http://www-groups.mcs.st-andrews.ac.uk/~john/analysis/Lectures/L5.html

*I The algebraic axioms*
`R` is a field under `+` and `∙`
This means that `(R, +)` and `(R, ∙)` are both abelian groups and the distributive law (distribution of mult over addition) holds.
- left distributivity:  `c (a + b) = ca + cb`
- right distributivity: `(a + b) c = ac + bc`

*II The order axioms*
There is a relation `>` on `R`
(i.e. given any pair of elems `a` and `b`, `a > b` is either true or false)
It satisfies:
- Trichotomy: `∀a(a ∈ R -> a > 0 ⋁ a = 0 ⋁ 0 < a)`
- `∀a∀b((a > 0 ⋀ b > 0) -> a + b > 0 ⋀ ab > 0)`
- `∀a∀b∀c(a > b -> (a + c > b + c))`

Something satisfying axioms I and II is called an *ordered field*.


A real number is a value of a continuous quantity that can represent a distance along a line.

The natural numbers are the basis from which many other number sets may be built by extension - reals by including with the rationals the limits of (converging) Cauchy sequences of rationals.

The real numbers include all rationals (-5, ¾, …) and all irrationals (√2,…) that include all the transcendental numbers (π,e,…). The rational numbers, `ℚ`. The irrational numbers are reals that are not rationals, `𝕀 = ℝ ∖ ℚ`. The reals, `ℝ = ℚ ⋃ (ℝ ∖ ℚ) = ℚ ⋃ 𝕀`.

In addition to measuring distance, real numbers can be used to measure quantities such as time, mass, energy, velocity, and more.



---

The set of real numbers has several standard structures
- *order*: each real is either LT or GT than any other real
- *algebraic structure*: mul and add promote ℝ into a field.
- *measure*: intervals along the real line have a specific length, which can be extended to the Lebesgue measure on many of its subsets.
- *metric*: there is a notion of distance between points.
- *geometry*: it is equipped with a metric and it is flat.
- *topology*: there is a notion of open sets.

There are interfaces among these:
- Its order and, independently, its metric structure induce its topology.
- Its order and algebraic structure make it into an ordered field.
- Its algebraic structure and topology make it into a Lie group, a type of topological group.

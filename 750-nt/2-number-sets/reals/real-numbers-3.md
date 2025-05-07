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

>A real number is a value of a continuous quantity that can represent a distance along a line.

The natural numbers are the basis from which many other number sets may be built by extension - reals by including with the rationals the *limits of (converging) Cauchy sequences of rationals*.

The set of real numbers has several standard structures
- *order*: each real is either LT or GT than any other real
- *algebraic structure*: mul and add promote ℝ into a field.
- *measure*: intervals along the real line have a specific length, which can be extended to the Lebesgue measure on many of its subsets.
- *metric*: there is a notion of distance between points.
- *geometry*: it is equipped with a metric and it is flat.
- *topology*: there is a notion of open sets.

There are interfaces among these:
- its order and, independently, its metric structure induce its topology
- its order and algebraic structure make it into an ordered field
- its algebraic structure and topology make it into a Lie group

The real numbers include all rationals ℚ (-5, ¾) and all irrationals ℝ∖ℚ (√2) that include all the transcendental numbers (π, e).

- real numbers
  - rational numbers
  - irrational numbers
    - transcendental numbers


*Unconstructible Numbers*: the number √2 can easily be constructed using the old geometer's tools of a straight edge (an unmarked ruler) and a compass. It was proven using group theory that there exist unconstructible numbers, lengths which cannot be constructed on paper using a finite amount of steps. These include numbers as simple as ⁵√5.

*Transcendental Numbers*: while ⁵√5 can easily be described as being the root of the equation `x⁵ − 5 = 0`, there also exist numbers that are not the root of any polynomial equation with rational coefficients. They have transcended the need for any reference to rational numbers. These include the popular numbers like `e` and `π`, i.e. named numbers, since naming them is the only way to refer to them because they consist of an infinite sequence of digits that doesn't repeat.

*Uncomputable Numbers*: here be dragons. Monsters start coming out of the woodwork of irrationals. You can use a computer to calculate what you believe to be many reals to any precision you need. Unfortunately, most reals are not computable to arbitrary precision by any finite algorithm! Interestingly enough, this does not affect our ability to do calculus, but it is a part of the study of complexity theory. e and π are computable numbers. One example of an uncomputable number is *Chaitin's constant*.

*Undefinable Numbers*: evil bitch horror… Using the notion of countability, we can prove that nearly all real numbers are not even definable. We only talk about a few uncomputable numbers, like the Chaitin's constant. These reals cannot ever be described or referred to directly.

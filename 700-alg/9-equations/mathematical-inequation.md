# Math :: Commons :: Mathematical inequation

https://en.wikipedia.org/wiki/Inequation

A *mathematical inequation* is a statement that doesn't express equality (that much is certain). So it always includes the inequality relation (aka NE, denoted by `≠`). 

An inequation is usually written in the form of two expressions, with a *relational sign* in between them that indicates the specific *inequality relation*.

Inequations are typically used as additional conditions attached to the main equation. In their standalone use, inequations often signify bounds or limits, especially when graphing curves in a coordinate system.


## Interpretations

In fact, there are several interpretations of what inequation constitutes:
- NE, GT, LT
- NE, GT, GE, LT, LE
- NE only

Some authors use the term "equation" exclusively to refer to expressions with EQ (=), while they reserve the term "inequation" for NE (≠), and use the term "inequality" for relational operators (LE, LT, GE, GT).

Some authors use the term "inequation" in a more restricted manner, only for statements whose inequality relation is not-equal-to (i.e. "distinct").

Although GE `≤` and LE `≥` also include equality, some authors only use them in *inequalties* to signify the inclusion of endpoints; this is contrasted by LT and GT used to exclude the endpoints.


## Relations and relational symbols

Relational symbols (signs)
- `=` (EQ) and `≠` (NE) are loosely called equality signs
  - equality relation is conveyed via equals sign `=` (EQ)
  - inequality relation is conveyed via not-equal sign `≠` (NE)
- `≤, <, >, ≥` (LE, LT, GE, GT) are loosely known as relational signs
  - less-then relation is conveyed via LT sign `<`
  - less-then-or-equal-to relation is conveyed via LE sign `≤`
  - greater-then relation is conveyed via GT sign `>`
  - greater-then-or-equal-to relation is conveyed via GE sign `>`


## Examples of inequations

- `x + y + z ≤ 1`
- `n > 1`
- `n > 1 ∧ n < 6` or `1 < n < 6`
- `x > 0, x ≠ 3`
- `n ∈ ℝ, x ≠ -1`
- `i ≠ j ≠ 0`
- `a < b > c`



## Contents
- 1. Chains of inequations
- 2. Solving inequations
- 3. Combinations of meanings
- 4. See also
- 5. References


## Chain of inequation

A shorthand notation is used for the conjunction of several inequations involving common expressions, by chaining them together.

For example, the chain `0 ≤ a < b ≤ 1` is shorthand `0 ≤ a` and `a < b` and `b ≤ 1`, which also implies that `0 < b` and `a < 1`.

In rare cases, chains are intended to be intransitive. For example, `a < b > c` is shorthand for `a < b` and `b > c` that manages to avoid suggesting an order of `a` and `c`.

## Solving inequations

Similar to equation solving, inequation solving means finding what values (numbers, functions, sets, etc.) fulfill a condition stated in the form of an inequation or a conjunction of several inequations.

These expressions contain one or more unknowns, which are free variables for which values are sought that cause the condition to be fulfilled. 

To be precise, what is sought are often not necessarily actual values, but, more in general, expressions. 

A solution of the inequation is an assignment of expressions to the unknowns that satisfies the inequations; in other words, expressions such that, when they are substituted for the unknowns, make the inequations true propositions.

Often, an additional objective expression (i.e. an optimization equation) is given, that is to be minimized or maximized by an optimal solution.

For example, `0 ≤ y ≤ 690 − 1.5x  ∧  0 ≤ x ≤ 530 − y  ∧  y ≤ 640 − 0.75x` which may be rewritten for clarity as

      0 ≤ y ≤ 690 − 1.5x
    ∧ 0 ≤ x ≤ 530 − y
    ∧     y ≤ 640 − 0.75x

or as

      0 ≤ y
          y ≤ 690 − 1.5x
          y ≤ 640 − 0.75x
      0 ≤ x
          x ≤ 530 − y

is a conjunction of inequations, partly written as chains. The set of its solutions is in some settings called a feasible region.

A **feasible region** (feasible set, solution space) is the set of all possible points (sets of values of the choice variables) of an optimization problem that satisfy the problem's constraints, potentially including inequalities, equalities, and integer constraints. This is the initial set of candidate solutions to the problem, before the set of candidates has been narrowed down.


Computer support in solving inequations is described in *constraint programming*; in particular, the *simplex algorithm* finds optimal solutions of *linear inequations*. The programming language `Prolog III` also supports solving algorithms for particular classes of inequalities (and other relations) as a basic language feature.


## Combinations of meanings

Due to the properties of certain functions (like square roots), some inequations are equivalent to a combination of multiple inequations.

For example, the inequation `√f(x) < g(x)` is logically equivalent to the combination of these 3 inequations:
- f(x) ≥ 0
- g(x) > 0
- f(x) < (g(x))²


## See also

- Equation
  https://en.wikipedia.org/wiki/Equation
- Equals sign
  https://en.wikipedia.org/wiki/Equals_sign
- Inequality (mathematics)
  https://en.wikipedia.org/wiki/Inequality_(mathematics)
- Relational operator
  https://en.wikipedia.org/wiki/Relational_operator
- Apartness relation - a form of inequality in constructive mathematics
  https://en.wikipedia.org/wiki/Apartness_relation

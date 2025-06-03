# Sequences and Series :: TERMS

Sequences
Sequence as a function
as a mapping
as an enumeration
as a transformation
from domain set ℕ to codomain set ℝ, `f : ℕ → ℝ`
it is a functional as it accepts a funarg to apply to each `i`
lower and upper bounds are additional arguments
although they may have defaults, e.g. lb=0 and ub=∞
iterator variable name `i` gets initialized as `let i = lb..ub`
which suggests the usefulness of partial application or currying
or the use of default arguments when implemented in a PL
Terminology And Anatomy Of Sequences
sequence name
sequence definition
sequence bounds
iterator variable name (typically `i`)
sequence lower bound (`i=0`)
sequence upper bound (`∞`)
iterator `i` then iterates through `i=0..∞`
Sequence indexing
sequence index
0-based indexing
1-based indexing
Convergence And Divergence
theorems
test
Types Of Sequences
subsequence
arithmetic
difference between 2 consequtive terms
geometric
ratio between 2 consequtive terms
Fibonacci sequence
alternating sequence
harmonic sequence
Sigma notation
bounds


Series
partial sum
power series
harmonic series
alternating harmonic series
divergent harmonic series
infinite series of real numbers
convergent series
conditionally convergent series
unconditionally convergent series
absolutely convergent series

arranging terms of a series in permutation
series that converges to an arbitrary real number
series that can be rearranged such that it diverges
series of reals is absolutely convergent iff it's unconditionally convergent
Riemann series theorem
Riemann rearrangement theorem

harmonic series
alternating harmonic series
divergent harmonic series
convergent series
conditionally convergent series
unconditionally convergent series
absolutely convergent series
Asymptotic expansion

Absolute Value Theorem
Squeeze theorem
Convergence
Convergence of a sequence
Convergence of a series
Limit of a sequence
Limit of a series
Absolute Value of a Sequence, |aₙ| (WTF?)
Combining sequences, |aₙ - bₙ| → 0 then either both converge or both diverge
Partial sum of a series
Partial sum of a sequence (indirectly, via conversion to a series)
ε as tiny value that restricts the codomain of a sequence
sequence as function, {aₙ} if there is a funciton f(n) = aₙ
arithemtic sequence that starts at 0, `aₙ = a₀ + nd`
arithemtic sequence that starts at 1, `aₙ = a₁ + (n-1)d`
arithemtic sequence, recursive, `aₙ = aₙ₋₁ + d`, first term as base case
geometric sequence, recursive, `aₙ = aₙ₋₁r`, first term as base case
geometric sequence, that starts at 0, `aₙ = a₀rⁿ`
geometric sequence, that starts at 1, `aₙ = a₁rⁿ⁻¹`
geometric seq, sum of infinite, starts at 1, `Sₙ = a₁(1-rⁿ)/(1-r)`
geometric seq, sum of infinite, starts at 1, `S∞ = a₁/(1-r)` iff `|r| < 1`
geometeric sequences converges iff `|r| < 1`


convergent sequences
bounded sequences
bounded from below
bounded from above
monotone sequences
monotonically increasing sequences
monotonically decreasing sequences
convergent seq ⇒ bounded seq
monotone sequence converges iff it is bounded
monotone seq converges ⇔ bounded

Sequence properties:
- finiteness
  - finite sequence
  - infinite sequence
- monotone
  - monotonic sequence: either increases or decreases
  - non-monotonic sequence: neither increases nor decreases
    - e.g. 1, -1, 1, -1, …
    - e.g. 1, 1, 1, 1, …
  - monotonically increasing sequence, `aₙ₋₁ ≤ aₙ`
    - consequtive terms either equal or prev ≤ current
  - monotonically decreasing sequence, `aₙ₋₁ ≥ aₙ`
    - consequtive terms either equal or prev ≥ current
  - monotonically strictly increasing sequence, `aₙ₋₁ < aₙ`
  - monotonically strictly decreasing sequence, `aₙ₋₁ > aₙ`

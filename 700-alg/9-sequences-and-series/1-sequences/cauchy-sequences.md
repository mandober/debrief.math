# Cauchy sequences

https://en.wikipedia.org/wiki/Cauchy_sequence

A **Cauchy sequence** is a sequence whose elements become arbitrarily close to each other as the sequence progresses.

A Cauchy sequence is a sequence whose terms become arbitrarily close together as `n` gets very large.

More precisely, given any small positive distance, all (excluding a finite number of elements of the sequence) are less than that given distance from each other.

Cauchy sequences are named after Augustin-Louis Cauchy; they may occasionally be known as *fundamental sequences*.

It is not sufficient for each term to become arbitrarily close to the preceding term. For instance, in the sequence of square roots of ℕ, `aₙ = √n`, the consecutive terms become arbitrarily close to each other - their differences

aₙ₊₁ - aₙ = √(n-1) - √n = 1/(√(n-1) + √n) < 1/2√n

tend to zero as the index `n` grows. However, with growing values of `n`, the terms `aₙ` become arbitrarily large.

So, for any index `n` and distance `d`, there exists an index `m` big enough such that `aₘ − aₙ > d`. As a result, no matter how far one goes, the remaining terms of the sequence never get close to each other; hence the sequence is not Cauchy.

The utility of Cauchy sequences lies in the fact that in a complete metric space (one where all such sequences are known to converge to a limit), the criterion for convergence depends only on the terms of the sequence itself, as opposed to the definition of convergence, which uses the limit value as well as the terms.

This is often exploited in algorithms, both theoretical and applied, where an iterative process can be shown relatively easily to produce a Cauchy sequence, consisting of the iterates, thus fulfilling a logical condition, such as termination.

Generalizations of Cauchy sequences in more abstract uniform spaces exist in the form of *Cauchy filters* and *Cauchy nets*.

One particularly important result in real analysis is *Cauchy characterization of convergence for sequences*:
>A sequence of reals is convergent (in ℝ) iff it is Cauchy.

In contrast, there are Cauchy sequences of rational numbers that are not convergent in the rationals, e.g. the sequence defined by

x₁ = 1, xₙ₊₁ = (xₙ + 2/xₙ)/2

is Cauchy, but has no rational limit (cf. Cauchy sequence § Non-example: rational numbers).

- xₙ₊₁ = (xₙ + 2/xₙ)/2
- x₁ = 1
- x₂ = (1 + 2/1)/2 = (1+2)/2 = 3/2
- x₃ = (3/2 + 2/3/2)/2 = (3/2 + 4/3)/2 = 17/12
- x₄ = 1/2 [ 17/12 + 2 / 17/12 ] = 1/2 [ 17/12 + 24/17 ] = 577/102


More generally, any sequence of rational numbers that converges to an irrational number is Cauchy, but not convergent when interpreted as a sequence in the set of rational numbers.

Metric spaces that satisfy the Cauchy characterization of convergence for sequences are called complete metric spaces and are particularly nice for analysis.

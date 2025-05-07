# Integers

The set of integers, `ℤ`, is an extension of ℕ where the negative whole numbers are adjoined to the natural numbers. If ℕ is kinda ray with vertex at 0, then ℤ is a true line, the *(integral) number line* with zero in the middle.

Except for 0, each element `n ∈ ℕ` has a corresponding negated counterpart that is its negation obtained by prefixing `n` with the *unary minus sign*, `-`, so as to obtain `-n` which is an element of ℤ (but not of ℕ).

    ∀n(n ∈ ℕ ∧ n ≠ 0) ⇒ ∃!-n ∈ ℤ

(Can we just slap the `-` symbol in front of a variable and call it a negation of `n`?)

The fact that 0 has no negation is a matter of fact, but we can skip sprinkling the formulas with the `n≠0` condition (like above) by establishing the fact that `-0 = 0`, and even `+0 = 0` for a good measure. There's only one, single, unique, number zero.

Can we say that 0 is its own negation? Well, we need to chack the if that will break some formula. In the formuala above, allow this would imply that -0 is an element of ℤ

So even if it happens that a formula suggest something like `-0`, it is just the plain old `0`.

A positive number `n` and its nagation `-n` are related in that they annihilate each other when combined by addition, resulting in 0 (0 is the annihilator and the result of annihilation).

    ∀z,-z ∈ ℤ. z + (-z) = 0 = -z + z


With integers, the inverse of a number `n` is its negation, `-n`, but this is not always the case; e.g. the inverse of a number in ℚ is not its negation. 

The notation to denote inverses in general is `n⁻¹`. In ℤ, `n⁻¹` resolves to `-n`, i.e. inverse is negation, but in ℚ it resolves to a reciprocal, `1/n`.


They are related such that their addition produces the *additive identity*, 0.

    ∃!0 ∈ ℤ. ∀z ∈ ℤ. ∃(-z) ∈ ℤ. z + (-z) = 0 = -z + z

    ∃!0 ∈ ℤ. ∀z ∈ ℤ. ∃(-z) ∈ ℤ. z + (-z) = 0 = -z + z

    ∀n ∈ ℕ. ∃(-n) ∈ ℕ. n + (-n) = 0 = -n + n

Multiplying a number with its negation gives the *multiplicative identity*, 1.

    ∀n ∈ ℕ. ∃(-n) ∈ ℕ. n(-n) = -2n = -nn

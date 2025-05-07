# Axiomatic developments of numbers



## Natural numbers

For the axiomatic development of the set of the natural numbers, `ℕ`, the Peano axioms are used still.

The naturals are the first numbers to be defined so they serve as the base for the higher number sets.

The first two axioms populate the set with the natural numbers as its elements:
- ∃Z(Z ∈ ℕ)
- ∀n. n ∈ ℕ ⇒ S n ∈ ℕ

The other axioms restrict the set and impose some behavior.

We get a unary number system: all numbers are either `Z` (zero), or of the form `S n` where `n` is any natural number. This suggest there will be a long string of `S` symbols making up numbers. Because of that we should move to the Hindu-Arabic numerals as soon as possible by establishing a bijection between the two types of numerals. In fact, we also want a positional number system, so there will be a need for those rules as well.

In the end, we have a familiar set of natural numbers expressed using Hindu-Arabic numberals and a positional decimal number system.

The operation of addition comes naturally as does multiplication and exponentiation. 

The bianry operation of subtraction must be restricted lest not break the closure of the ℕ set. This means we have to constrict the two operands such that the second operand is never bigger then the first - such operation would be undefined. We cannot merely define it to be 0, as that would break things. The resulting operation is similar to subtraction but uses a different sign called monus, `∸`. 5 ∸ 3 = 2, 2 ∸ 2 = 0, but 3 ∸ 5 is undefined.



## Integers

Integral numbers are an extension of the natural numbers that inlude negative numbers. For each natural number `n`, except zero, we get its inverse, `-n`, so represented by using a *unary minus sign* to denote that it is a nagative number. There is an interplay between the unary and binary minus sign with specific rules, e.g. 3 + -4 = 3 - 4. That is, the subtraction can be defined in terms of addition, just like with naturals but with no restrictions.

- (3, 0) is 3
- (0, 3) is -3

## Rational numbers

p/q where p ∈ ℤ, q ∈ ℕᐩ

Nominator is in the canonical representation possibly negative, while denominator is always positive. Denominator can never be zero. In practice, both nominator and denominator may be either positive or negative:
- `-p/q` is canonical
-  p/-q = -p/q
- -p/-q = p/q

There is no need to represent both as pairs since the denominator is always positive, it may be represented as a (single) natural number, while the nominator may be represented as an integer, i.e. as a pair of naturals.

`((z, n), q)` = `p/q`
- ((2, 0), 3) = 2/3
- ((0, 3), 5) = -3/5
I



## Real numbers

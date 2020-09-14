# Peano axioms

https://en.wikipedia.org/wiki/Peano_axioms


## The axioms

Peano's axioms for defining natural numbers.

1. 0 ∈ ℕ
2. n ∈ ℕ -> S(n) ∈ ℕ

counter-example: {0,1}, S(0) = 1, S(1) = 0

3. n ∈ ℕ -> S(n) ≠ 0

counter-example: {0,1,2}, S(0) = 1, S(1) = 2, S(2) = 2

4. ∀n,∀m ∈ ℕ. S(n) = S(m) <=> n = m    
   [n ∈ ℕ -> S(n) ≠ n]


If some subset of numbers contains 0, and every element in it has a successor,
then this subset *is* the set of natural numbers.

5. S ⊆ N. 0 ∈ S ∧ n ∈ S. S(n) ∈ S) -> S = N


## Peano's axioms

In mathematical logic, the Peano axioms are axioms for the natural numbers presented by the 19th century Italian mathematician Giuseppe Peano. These axioms have been used nearly unchanged in a number of metamathematical investigations, including research into fundamental questions of whether number theory is consistent and complete.

The need to formalize arithmetic was not well appreciated until the work of Hermann Grassmann, who showed in the 1860s that many facts in arithmetic could be derived from more basic facts about the successor operation and induction.

In 1881, Charles Sanders Peirce provided an axiomatization of natural-number arithmetic. In 1888, Richard Dedekind proposed another axiomatization of natural-number arithmetic, and in 1889, Peano published a simplified version of axioms.

The Peano axioms contain three types of statements.
- The first axiom asserts the existence of at least one member of the set of natural numbers.
- The next four are general statements about equality; in modern treatments these are often not taken as part of the Peano axioms, but rather as axioms of the "underlying logic".
- The next three axioms are first-order statements about natural numbers expressing the fundamental properties of the successor operation.
- The ninth, final axiom is a second order statement of the principle of mathematical induction over the natural numbers.

A weaker, first-order, system called *Peano arithmetic* is obtained by explicitly adding the addition and multiplication operation symbols and replacing the second-order induction axiom with a first-order axiom schema.

## Peano's original formulation

1. 0 ∈ ℕ
2. n ∈ ℕ -> n = n


The non-logical symbols appearing in the axioms are the constant symbol `0` and the unary function symbol `S`, representing the successor function.

1. The first axiom states that the constant 0 is a natural number:
- 0 is a natural number
- in modern notation: 0 ∈ ℕ

The next four axioms describe the equality relation. Since they are logically valid in first-order logic with equality, they are not considered an essential part of the Peano axioms in modern treatments.

2. Reflexivity
- For every natural number n, n = n
- in modern notation: n ∈ ℕ -> n = n
- IF n is a Nat THEN n is EQ to itself
- that is, equality is reflexive

3. Symmetry
- For all natural numbers n and m, if n = m then m = n
- in modern notation: n ∈ ℕ ∧ m ∈ ℕ -> (n = m <=> m = n)
- IF n is a Nat AND m is a Nat THEN n is EQ to m iff m is EQ to n
- that is, equality is symmetric

4. Transitivity
- For all natural numbers x, y and z, if x = y and y = z, then x = z
- in modern notation: x,y,z ∈ ℕ -> [ (x = y ∧ y = z) -> (x = z) ]
- IF x,y,z are Nat, THEN IF x is EQ to y AND y is EQ to z THEN x is EQ to z
- that is, equality is transitive

5. Totality
- For all a and b, if b is a natural and a = b, then a is also a natural
- in modern notation: b ∈ ℕ -> [a = b -> a ∈ ℕ]
- IF b is a Nat THEN IF a is EQ to b THEN a is a Nat
- that is, closure under equality
- i.e. the naturals numbers are closed under equality relation. This is pretty obvious when the relation is equality, but there are numerous other relations.


6. Axiom VI
- The natural numbers are closed under a unary function S, the successor fn
- in modern notation: n ∈ ℕ -> S(n) ∈ ℕ
- IF n is a Nat THEN the successor of n is a Nat
- that is, the set of natural numbers is closed under successor operation

7. For every natural number n, S(n) is a natural number. That is, the natural numbers are closed under S.
- in modern notation: n ∈ ℕ -> S(n) ∈ ℕ

8. For all natural numbers m and n, m = n if and only if S(m) = S(n). That is, S is an injection.

9. For every natural number n, S(n) = 0 is false. That is, there is no natural number whose successor is 0.


Peano's original formulation of the axioms used 1 instead of 0 as the "first" natural number.

This choice is arbitrary, as axiom 1 does not endow the constant 0 with any additional properties. However, because 0 is the additive identity in arithmetic, most modern formulations of the Peano axioms start from 0.

Axioms 1, 6, 7, 8 define a unary representation of the intuitive notion of natural numbers: the number 1 can be defined as S(0), 2 as S(S(0)), etc. However, considering the notion of natural numbers as being defined by these axioms, axioms 1, 6, 7, 8 do not imply that the successor function generates all the natural numbers different from 0. Put differently, they do not guarantee that every natural number other than zero must succeed some other natural number.

The intuitive notion that each natural number can be obtained by applying successor sufficiently often to zero requires an additional axiom, which is sometimes called the axiom of induction.

If K is a set such that:
0 is in K, and
for every natural number n, n being in K implies that S(n) is in K,
then K contains every natural number.
The induction axiom is sometimes stated in the following form:

If φ is a unary predicate such that:
φ(0) is true, and
for every natural number n, φ(n) being true implies that φ(S(n)) is true,
then φ(n) is true for every natural number n.

In Peano's original formulation, the induction axiom is a second-order axiom. It is now common to replace this second-order principle with a weaker first-order induction scheme. There are important differences between the second-order and first-order formulations, as discussed in the section § Models below.

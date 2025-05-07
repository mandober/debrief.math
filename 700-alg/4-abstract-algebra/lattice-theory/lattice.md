# Lattice

https://en.wikipedia.org/wiki/Lattice_(order)

A lattice is an abstract structure studied in order theory and abstract algebra.

>A **lattice** consists of a partially ordered set in which every pair of elements has a unique supremum (also called a least upper bound or join) and a unique infimum (also called a greatest lower bound or meet).

    ∀xy ∈ L. ∃!j ∈ L. x ∨ y = j
    ∀xy ∈ L. ∃!m ∈ L. x ∧ y = m

An example is given by the power set of a set, partially ordered by inclusion, for which the supremum is the union, and the infimum is the intersection.

Another example is given by the natural numbers, partially ordered by divisibility, for which the supremum is the least common multiple (lcm) and the infimum is the greatest common divisor (gcd).

Lattices can also be characterized as algebraic structures satisfying certain axiomatic identities. Since the two definitions are equivalent, lattice theory draws on both order theory and universal algebra.

Semilattices include lattices, which in turn include Heyting and Boolean algebras. These lattice-like structures all admit order-theoretic as well as algebraic descriptions.

    Heyting and Boolean algebras ⊆ Lattices ⊆ Semilattices

The sub-field of abstract algebra that studies lattices is called *lattice theory*.

## From lattices to Boolean algebras

The goal of lattice theory is to axiomize *set algebra* `(𝒫(X), ∪, ∩)` and *Boolean logic* `({T ,F}, ∨, ∧)`.


## Boolean algebras

A Boolean algebra is a distributive bounded lattice, `(B, ∨, ∧)` that satisfies these 7 axioms:
1. Associativity
2. Commutativity
3. Idempotence
4. Absorption
5. Identity
6. Distributivity
7. Complementation

- Axioms 1-3 define a semilattice
- Axioms 1-4 define a lattice
- Axioms 1-5 define a bounded lattice
- Axioms 1-6 define a bounded distributive lattice
- Axioms 1-7 define a bounded distributive lattice with complements, i.e.
- Axioms 1-7 define a Boolean algebra


## Properties of Boolean algebras

- Uniqueness of identity elements
- Cancellation laws
  - Axy = Axz  ⋀  Ax'y = Ax'z ⇒ Eyz
  - Kxy = Kxz  ⋀  Kx'y = Kx'z ⇒ Eyz
  - Axy = Axz  ⋀  Kxy = Kxz   ⇒ Eyz
- Uniqueness of complement elements
- Double complementation
  - (x')' = x
- Complements of identity elements
  - 0' = 1
  - 1' = 0


We now will collect important properties of Boolean algebras. 
They mimic the properties of groups and rings.

### Uniqueness of identity elements

>The identity elements `O` (0) and `I` (1) in a Boolean algebra are unique
for `∨` and `∧` respectively.

### Cancellation Laws

Let B be a Boolean algebra and ∀xyz ∈ B. Then
- (x ∨ y = x ∨ z  and  x' ∨ y = x' ∨ z) ⇒ y = z
- (x ∧ y = x ∧ z  and  x' ∧ y = x' ∧ z) ⇒ y = z
- (x ∨ y = x ∨ z  and  x  ∧ y = x  ∧ z) ⇒ y = z

In alternative notation
- Axy = Axz  ⋀  Ax'y = Ax'z ⇒ Eyz
- Kxy = Kxz  ⋀  Kx'y = Kx'z ⇒ Eyz
- Axy = Axz  ⋀  Kxy = Kxz   ⇒ Eyz

### Uniqueness of complement elements

The next proposition is similar to statements in groups and rings about uniqueness of inverses, although *complement and inverses are not exactly the same* things because 
>complement concerns identity, while inverses concerns dominant elements.

If `x` is any element in a Boolean algebra `B`, 
then the complement of `x` is *unique*.

Proof:

Let `x',¬x ∈ B` such that
- x ∨ x' = 0
- x ∧ x' = 1
- x ∨ ¬x = 0
- x ∧ ¬x = 1

that is, `x'` and `¬x` are both complements of `x` in `B`.

Then `x ∨ x' = 0 = x ∨ ¬x`   
and  `x ∧ x' = 1 = x ∧ ¬x`

By cancellation, `x' = ¬x`.

### Double complementation

Let `B` be a Boolean algebra, then for any `x ∈ B`, `(x')' = x`.

Proof:

Since complements are unique in Boolean algebras, 
it suffices to show that `x` acts like a complement to `x'`. 
Note that 
`x' ∨ x = x ∨ x' = 0` and 
`x' ∧ x = x ∧ x' = 1`

Therefore, `x` is the complement of `x'`.

### Complements of identity elements

The following proposition follows from the observations

    0 ∨ 1 = 1  and  0 ∧ 1 = 0

and the uniqueness of complements.

Let `B` be a Boolean algebra, then:

    0' = 1  and  1' = 0

Identity elements are complements of (respective) identity elements.

That is, complement of 0 is 1, and complement of 1 is 0.
- ∁(0) = 1
- ∁(1) = 0

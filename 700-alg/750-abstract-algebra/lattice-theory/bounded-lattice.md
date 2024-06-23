# Bounded lattice

https://en.wikipedia.org/wiki/Bounded_lattice

https://www.youtube.com/watch?v=AEe9Bv3Nx4I&list=PLz7t89zv8Lp0bhatsw5J9eHeQhNdY81kK&index=1

## From semilattices to lattices

The lattice theory aims to axiomatize
- Set algebra `(𝒫(X), ∪, ∩)` and 
- Boolean logic `({T ,F}, ∨, ∧)`

It starts with the notion of semilattices,
- meet-semilattices, ∨-semilattices
- join-semilattices, ∧-semilattices

which are sets equipped with a single binop that satisfy these 3 axioms:
1. Associativity
2. Commutativity
3. Idempotence

Adding the fourth axioms of absorption defines a lattice `(B, ∨, ∧)` as a poset that satisfies al 4 axioms:
1. Associativity
2. Commutativity
3. Idempotence
4. Absorption

## Identity

On the way toward Boolean algebra (BA) we have started with semilattices (assoc, comm, idempotence), then defined lattices (assoc, comm, idempotence, absorption), but there is still a concept that is missing to arrive at BA - that of **identity**.

Consider a division lattice, `[n]`, where n = 24.

```
  24
 ⟋  ⟍
8     12
│   ⟋ │
│ ⟋   │
4     6
│   ⟋ │
│ ⟋   │
2     3
  ⟍ ⟋
   1
```

Note that `d ∨ 1 = d` and `d ∧ 24 = d` for all divisors of 24, `d|24`.

In general, for all elements of a division lattice L = [n], we have identities:
- ∀d ∈ L. d ∨ ⊤ = d
- ∀d ∈ L. d ∧ ⊥ = d

That is, these lattices have identity elements.


A lattice `L` is a **bounded lattice** if the following additional axiom is satisfied by the binops (beside the 4 lattice axioms):

5. *Identity*: there exists elements 0,1 ∈ L such that

    ∀x ∈ L. ∃0 ∈ L. x ∨ 0 = x
    ∀x ∈ L. ∃1 ∈ L. x ∧ 1 = x

That is, each binop has its own (unique) identity element.

With lattices, it is customary to think of `∨` as `+`, and `∧` as `×`, like with rings, as there are many analogs between the two. As such, the ∨-identity is 0-like, and the ∧-identity is 1-like, hence the notation above.
- ∧-identity: 1
- ∨-identity: 0

With respect to the partial order associated with a lattice, note that

    0 ∨ x = x  ⇔  0 ≤ x

>Thus, if a lattice has a ∨-identity, then that identity is the *minimum* element of the lattice.

And similarly, since

    1 ∧ x = x  ⇔  x ≥ 1

The __∧-identity is the maximum element__ of the lattice.

The __∨-identity is the minimum element__ of the lattice.

>Conversely, if a minimum or maximum element exists in a lattice, they must necessarily be the respective identities.

Hence, the name bounded lattice.


Let `L` be a bounded lattice. Then for all `∀x ∈ L`

    x ∨ 1 = 1   and
    x ∧ 0 = 0

>The identities of binops are the dominant elements of their dual ops.


Proof:

Note `1 ∨ x = 1 ∨ (1 ∧ x) = 1`, where the first equality follows from 1 being the ∧-identity and the second equality follows from absorption. The second statement is proven by duality.

## Bounded lattices and bounded infinite lattices

Not all lattices are bounded, but *all finite lattices are necessarily bounded*.

For example, consider `(ℤ, max, min)`, which is a lattice which is not bounded as there is no maximum or minimum integer.

Of course, identities can be easily included to extend the lattice to a bounded lattice, that is, `ℤ ∪ {±∞}` is a **bounded infinite lattice** with respect to `max` and `min` ops.

Additionally, `(𝒫 X, ∪, ∩)` is a bounded lattice where `0 = ∅` and `1 = X`, which is infinite iff `X` is infinite.

## Single-identity lattices

Also, there are lattices with a single identity, lacking the second identity.

For example, `(ℤᐩ, lcm, gcd)` is a lattice with join-identity only (1), but no meet-identity.

Note: this is a weird consequence of notation: the join-identity (typically denoted 0), is here `1`, not to be confused with the meet-identity (typically denoted as 1). This motivates alternative notation of `O` for join-identity and `I` for meet-identity.

## Bounded-below and bounded-above

A lattice is **bounded from below** (or bounded-below) if it has a meet-identity but not necessarily a join-identity.

A lattice is **bounded from above** (or bounded-above) if it has a joun-identity but not necessarily a meet-identity.

These two notions are independent of each other.

An e.g. bounded-below lattice may be extended to a bounded lattice by adjoining a meet-identity, such as `(ℕ, lcm, gcd)` (in this lattice, 0=1 and 1=0).

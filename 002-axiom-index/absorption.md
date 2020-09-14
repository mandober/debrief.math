# Absorption

https://en.wikipedia.org/wiki/Absorption_law
https://en.wikipedia.org/wiki/Absorption_(logic)


**AKA:** {absorption,annihilation} {law,identity,axiom,principle}

In algebra, the **absorption law** is an identity linking a pair of binops.

Two binary operations, `⩘` and `⩗`, are said to be connected by the absorption law if: `a ⩘ (a ⩗ b) = a ⩗ (a ⩘ b) = a`

Algebra with annihilator element:
- Boolean algebra
- algebra of sets under union
- algebra of sets under intersection
- algebra of integers under multiplication

* `p ∧ F = F` no matter if `p` is true or false, the result is the same
* `S ∩ ∅ = ∅` intersection of any set with the empty set is the empty set
* `x * 0 = 0` multiplying by 0 annihilates all other integers

When the annihilator participates in a binary operation, the other operand is irrelevant, the result was decided long before we shouldn't've fallen in love with.

The annihilators are elements associated with nothingness, untruth and alchemy (which is probably why poor `false` ended up as the annihilator, while `true` became the mighty absorber).


## Lattice

A set equipped with 2 commutative, associative and idempotent binary operations `⩗` (*join*) and `⩘` (*meet*) that are connected by the absorption law is called a **lattice**.

Lattice:
- 1 carrier set
- 2 binary ops, meet and join, connected by absorption law
- 4 axioms:
  1. Associativity
  2. Commutativity
  3. Idempotence
  4. Absorption


Examples of lattices include
- Boolean algebras
- the set of sets with union and intersection operators
- Heyting algebras
- ordered sets with min and max operations

```
a ∨ (a ∧ b) = a    A ∪ (A ∩ B) = A
a ∧ (a ∨ b) = a    A ∩ (A ∪ B) = A
```

In classical logic, and in particular Boolean algebra, the operations OR and AND, which are also denoted by `∨` and `∧` satisfy the lattice axioms, including the absorption law. The same is true for intuitionistic logic.

The absorption law does not hold in many other algebraic structures, such as commutative rings, e.g. the field of real numbers, relevance logics, linear logics, and substructural logics. In the last case, there is no one-to-one correspondence between the free variables of the defining pair of identities.

**The axiom of absorption** states that there exists an element in the carrier set, called element *zero*, such that when any other element is combined with it, the result is always zero. Unlike the identity/neutral element, commonly called *one*, which leaves the other element intact, "zero" completely annihilates everything it comes in contact with.

The axiom of absorption encountered in Boolean algebra, in algebra of sets under union, algebra of sets under intersection, algebra of integers under multiplication.


```
p ∨ (p ∧ q) = p
p ∧ (p ∨ q) = p

p ∨ T = T
p ∨ F = p  id

p ∧ T = p  id
p ∧ F = F

S ∪ ∅ = S   p ∨ T = T   x * 1 = x
S ∩ ∅ = ∅   p ∧ F = F   x * 0 = 0

x * 1 = x
x * 0 = 0
```

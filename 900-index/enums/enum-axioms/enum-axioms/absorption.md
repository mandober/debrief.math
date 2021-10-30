# Absorption

https://en.wikipedia.org/wiki/Absorption_law
https://en.wikipedia.org/wiki/Absorption_(logic)

> In algebra, the **absorption law** (annihilation principle) is an identity linking a pair of binary operations.

Two binary operations, `⩘` and `⩗`, are said to be connected by the absorption law if: `a ⩘ (a ⩗ b) = a ⩗ (a ⩘ b) = a`

Two binary operations and algebras:
- sets under union and intersection
- Boolean logic under conjunction and disjunction
- integers under `min` and `max` operations

```
R ∩ (R ∪ S) = R
R ∪ (R ∩ S) = R

p ∧ (p ∨ q) = p
p ∨ (p ∧ q) = p

a `max` (a `min` b) = a
a `min` (a `max` b) = a
```

Algebra with annihilator element:
- Boolean algebra
- algebra of sets under union
- algebra of sets under intersection
- algebra of integers under multiplication

* `p ∧ F = F` no matter what `p` is
* `S ∩ ∅ = ∅` intersection of any set with ∅ is ∅
* `x * 0 = 0` multiplying by 0 annihilates all other integers, giving 0

When the annihilator participates in a binary operation, the other operand is irrelevant, the result was decided right then and there.

The annihilators are elements associated with nothingness, untruth and alchemy (which is probably why poor `false` ended up as the annihilator, while `true` became the mighty absorber).



## Lattice

A **lattice** is a set equipped with 2 commutative, associative and idempotent binary operations `⩗` (*join*) and `⩘` (*meet*) that are connected by the *absorption law*.

Lattice:
- 1 carrier set
- 2 binops, meet and join, connected by absorption law
- 4 axioms: Associativity, Commutativity, Idempotence, Absorption

Examples of lattices include:
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

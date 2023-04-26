# Congruence relation

https://en.wikipedia.org/wiki/Congruence_relation

See: [Congruence relation in Abstract Algebra](/400-algebra/410-abstract-algebra/congruence-relation.md)

In abstract algebra, a **congruence relation** is an equivalence relation on an algebraic structure (group, ring, vector space) that is compatible with the structure in the sense that algebraic operations done with equivalent elements will yield equivalent elements.

Every congruence relation has a corresponding *quotient structure*, whose elements are the equivalence classes (or congruence classes) for the relation.

In universal algebra and lattice theory, a **tolerance relation** on an algebraic structure is a *reflexive and symmetric relation* that is *compatible* with all operations of the structure. Thus a **tolerance** is like a **congruence**, except that the assumption of transitivity is dropped.

## Definition

The definition of a congruence depends on the type of algebraic structure under consideration. Particular definitions of congruence can be made for groups, rings, vector spaces, modules, semigroups, lattices, etc.

The common theme is that a congruence is an equivalence relation on an algebraic object that is compatible with the algebraic structure, in the sense that the operations are well-defined on the equivalence classes.

### Groups

For example, a group is an algebraic object consisting of a set together with a single binary operation, satisfying certain axioms. If `G` is a group with operation `∗`, a congruence relation on `G` is an equivalence relation `≡` on the elements of `G` satisfying `g1 ≡ g2` and `h1 ≡ h2 ⟹ g1 ∗ h1 ≡ g2 ∗ h2` for all `g1,g2,h1,h2 ∈ G`.

For a congruence on a group, the equivalence class containing the identity element is always a normal subgroup, and the other equivalence classes are the other cosets of this subgroup. Together, these equivalence classes are the elements of a quotient group.

### Rings

When an algebraic structure includes more than one operation, congruence relations are required to be compatible with each operation.

For example, a ring possesses both addition and multiplication, and a congruence relation on a ring must satisfy `r1+s1 ≡ r2+s2` and `r1s1 ≡ r2s2` whenever `r1 ≡ r2` and `s1 ≡ s2`.

For a congruence on a ring, the equivalence class containing 0 is always a two-sided ideal, and the two operations on the set of equivalence classes define the corresponding quotient ring.

### General

The general notion of a congruence relation can be formally defined in the context of *universal algebra*, a field which studies ideas common to all algebraic structures.

In this setting, a relation `R` on a given algebraic structure is called **compatible** if for each `n` and each n-ary operation `μ` defined on the structure: whenever `a1 R a′1` and `an R a′n`, then `μ(a1,…,an) R μ (a′1,…,a′n)`.

A congruence relation on the structure is then defined as an equivalence relation that is also compatible.

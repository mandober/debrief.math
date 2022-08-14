# Congruence relation

https://en.wikipedia.org/wiki/Congruence_relation

In math sections: 1) Relation theory 2) Abstract algebra


In abstract algebra, 
a **congruence relation** 
is an *equivalence relation* 
on an algebraic structure, 
that is compatible with that structure 
in the sense that algebraic operations 
involving equivalent elements 
yield equivalent elements.

Every congruence relation has 
a corresponding *quotient structure*, 
whose elements are 
the *congruence classes* 
(or equivalence classes) 
for the relation.

## Contents

- Basic example
- Definition
  - Example: Groups
  - Example: Rings
  - General
- Relation with homomorphisms
- Congruences of groups, and normal subgroups and ideals
  - Ideals of rings and the general case
- Universal algebra
- See also
- Explanatory notes
- Notes

## Basic example

The prototypical example of a congruence relation 
is congruence modulo `m` on `ℤ`, denoted `ℤ / m ℤ`. 

For a given integer `m > 1`, 
called the modulus, 
two integers `a` and `b` 
are congruent modulo `m`, 
denoted `a ≡ b (mod m)`, 
if `a - b` is divisible by `m`, 
or, equivalently, 
if `a` and `b` 
have the same remainder `r` 
when divided by `m`.

For example, 37 and 57 are congruent modulo 10, `37 ≡ 57 (mod 10)`. Since `37 - 57 = -20` is a multiple of 10, or equivalently since both 37 and 57 have the remainder of 7 when divided by 10.

Congruence modulo `n` (for a fixed `n`) is compatible with both addition and multiplication on the integers. That is,

if `a₁ = a₂ (mod m)` and `b₁ = b₂ (mod m)` 

then `a₁ + b₁ = a₂ + b₂ (mod n)` and `a₁∙b₁ = a₂∙b₂ (mod n)`

The corresponding addition and multiplication of equivalence classes is known as *modular arithmetic*.

From the point of view of abstract algebra, congruence modulo `n` is a congruence relation on the ring of integers, and arithmetic modulo `n` occurs on the corresponding *quotient ring*.

## Definition

The definition of a congruence depends on the type of algebraic structure under consideration. Particular definitions of congruence can be made for groups, rings, vector spaces, modules, semigroups, lattices, and so forth.

The common theme is that a congruence is an equivalence relation on an algebraic object that is compatible with the algebraic structure, in the sense that the operations are well-defined on the equivalence classes.

### Example: Groups


### Example: Rings


### General

The general notion of a congruence relation can be formally defined in the context of universal algebra, a field which studies ideas common to all algebraic structures.

In this setting, a relation `R` on a given algebraic structure is called *compatible* if

for each `n` and each `n`-ary operation `μ` defined on the structure: 
whenever `a₁ R a₁′` and … and `aₙ R aₙ′` 
then `μ(a₁ … aₙ) R μ(a₁′ … aₙ′)`

A congruence relation on the structure is then defined as an equivalence relation that is also compatible.

## Relation with homomorphisms

If `f : A → B` is a homomorphism between two algebraic structures (homomorphism of groups, linear map between vector spaces), then the relation `R` defined by

`a₁ R a₂ ⇔ (f a₁ = f a₂)`

is a congruence relation on `A`.

By the first isomorphism theorem, the image of `A` under `f` is a substructure of `B` isomorphic to the quotient of `A` by this congruence.

On the other hand, the congruence relation `R` induces a unique homomorphism   

`f : A -> A / R` given by `f x = { y | x R y }`

Thus, there is a natural correspondence between the congruences and the homomorphisms of any given algebraic structure.

## Congruences of groups, and normal subgroups and ideals

In the particular case of groups, congruence relations can be described in elementary terms as follows:

If `G` is a group (with identity element `e` and operation `*`) 
and `~` is a binary relation on `G`, then `~` is a congruence whenever:
1. ∀ a         ∈ G . `(a ~ a)`                             (reflexivity)
2. ∀ a b       ∈ G . `(a ~ b) ⇔ (b ~ a)`                  (symmetry)
3. ∀ a b c     ∈ G . `(a ~ b  ∧ b ~ c)  -> (a ~ c)`       (transitivity)
4. ∀ a a₂ b b₂ ∈ G . `(a ~ a₂ ∧ b ~ b₂) -> (a * b ~ a₂ * b₂)`
5. ∀ a a₂      ∈ G . `(a ~ a₂) -> (a⁻¹ ~ a₂⁻¹)`


Conditions 1-3 say that `~` is an equivalence relation.

A congruence `~` is determined entirely by the set `{a ∈ G : a ~ e}` of those elements of `G` that are congruent to the identity element, and this set is a normal subgroup. Specifically, `a ~ b` if and only if `b⁻¹ * a ~ e`.

So instead of talking about congruences on groups, people usually speak in terms of normal subgroups of them; in fact, every congruence corresponds uniquely to some normal subgroup of `G`.

## Universal algebra

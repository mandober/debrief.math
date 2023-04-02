# Tolerance relation

https://en.wikipedia.org/wiki/Tolerance_relation

In universal algebra and lattice theory, a **tolerance relation** on an algebraic structure is a *reflexive and symmetric relation* that is *compatible* with all operations of the structure.

Thus a tolerance is like a congruence, except that the assumption of transitivity is dropped.

On a set, an algebraic structure with empty family of operations, tolerance relations are simply reflexive symmetric relations. A set that possesses a tolerance relation can be described as a *tolerance space*.

Tolerance relations provide a convenient general tool for studying indiscernibility (indistinguishability) phenomena.

## Definitions

A tolerance relation on an algebraic structure `(A,F)` is usually defined to be a *reflexive and symmetric relation* on `A` that is compatible with every operation in `F`.

A tolerance relation can also be seen as a *cover* of `A` that satisfies certain conditions.

The two definitions are equivalent, since for a fixed algebraic structure, the tolerance relations in the two definitions are in one-to-one correspondence.

The tolerance relations on an algebraic structure `(A,F)` form an algebraic lattice `Tolr(A)` under inclusion. Since every congruence relation is a tolerance relation, the congruence lattice `Cong(A)` is a subset of the tolerance lattice `Tolr(A)`, but `Cong(A)` is not necessarily a sublattice of 
`Tolr(A)`.

## As binary relations

A congruence relation is a tolerance relation that is also transitive.

A tolerance relation on an algebraic structure `(A,F)` is a binary relation `∼` on ``A` that satisfies the following conditions:
- *Reflexivity*: `a ∼ a` for all a ∈ A
- *Symmetry*: `a ∼ b -> b ∼ a` for all a,b ∈ A
- *Compatibility*: 
  for each n-ary operation `f ∈ F` 
  and `a₁ … aₙ, b₁ … bₙ ∈ A`, 
  if `aᵢ ∼ bᵢ` for each `i=1..n` 
  then `f(a₁ … aₙ) ∼ f(b₁ … bₙ)`; 
  i.e. set `{(a,b) | a ∼ b}` is a subalgebra of the direct product `A²`.

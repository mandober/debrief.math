# Atom

https://en.wikipedia.org/wiki/Atom_(order_theory)

In order theory, 
an element `a` of a poset 
with least element 0 
is an **atom** 
if `0 < a` and 
there is no element between them;
i.e. no element `x` such that `0 < x < a`.

Equivalently, one may define an atom to be an element that is *minimal* among the *non-zero elements*; or, alternatively, an element that covers the *least* element 0.

For example, `𝒫{x,y,z}` with the "is subset" ordering is an *atomistic poset*: each member set can be obtained as the union of all singleton sets below it.

## Atomic orderings

Let `<:` denote the *covering relation* in a poset.

A poset with a least element 0 is **atomic** if every element `b > 0` has an atom `a` below it, that is, there is some `a` such that `b ≥ a :> 0`.
>Every finite poset with 0 is atomic,
but the set of ℝᐩ (ordered in the usual way) is not atomic (and in fact has no atoms).

A poset is **relatively atomic** (or **strongly atomic**) if for all `a < b` there is an element `c` such that `a <: c ≤ b` or, equivalently, if every interval `[a, b]` is atomic.
>Every relatively atomic poset with a least element is atomic.
>Every finite poset is relatively atomic.

A poset with least element 0 is called **atomistic** (not to be confused with atomic) if every element is the LUB of a set of atoms. The linear order with three elements is not atomistic.

>Atoms in posets are abstract generalizations of singletons in set theory.

**Atomicity** (the property of being atomic) provides an abstract generalization in the context of order theory of the ability to select an element from a non-empty set.

Example
```
┬ 4
│
├ 2
│
┴ 1
```
The lattice of divisors of 4, with the ordering "is divisor of", is atomic, with 2 being the only atom and coatom. It is not atomistic, since 4 cannot be obtained as lcm of atoms.



## Coatoms

The terms coatom, coatomic, and coatomistic are defined dually.

Thus, in a poset with greatest element 1, one says that
- a **coatom** is an element covered by 1
- the set is **coatomic** if every `b < 1` has a coatom `c` above it
- the set is **coatomistic** if every element is the GLB of a set of coatoms




## Refs
https://planetmath.org/Atom
https://planetmath.org/Poset

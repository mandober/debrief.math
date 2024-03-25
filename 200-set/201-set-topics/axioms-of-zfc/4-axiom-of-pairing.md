# Set Theory :: ZFC Axioms :: Axiom of Pairing

https://en.wikipedia.org/wiki/Axiom_of_pairing

## ID

- name: Axiom of Pairing
- formula:
  - `∀A ∀B ∃P ∀x(x ∈ P ⇔ x=A ⋁ x=B)`
  - `P = { x | x = A ⋁ x = B }`
  - `∀x ∀y ∃p ((x ∈ p ⋀ x ⊆ p) ⋁ (y ∈ p ⋀ y ⊆ p))`
  - `P = { {z} | ∃Y(x ∈ Y ⋀ (Y ∈ A ⋁ Y ∈ B) }`
- introduced by: Zermelo
- introduction year: 1908
- introduced for: Z⁻
- used in: ZFC, ZF, Z⁻
- desc: Axiom of Pairing states that, if `A` and `B` are sets, then there exists a set `P` which contains `A` and `B` as its sole elements.
- example: A={1,2}, B={3}, P={A,B}={{1,2},{3}}


## Statement

Axiom of Pairing was introduced by Zermelo in 1908 as a special case of his *axiom of elementary sets*. It is one of the axioms of ZFC.

**Axiom of Pairing** states that, if `A` and `B` are sets, then there exists a set `P` which contains `A` and `B` as its sole elements.

More precisely, it states that for all `A` and `B`, there is a set that contains only `A` and `B`.

(The subtle difference being that `A` and `B` are not sets, at least not directly, but only variables that range over the domain of discourse. However, since in ZFC all there is in the DOD are sets, we might as well say that `A` and `B` are sets.)


## Example

The axiom of pairing is best understood through an ostensive definition: for any two sets, `A` and `B` there is a set `P = {A, B}`.

```
A = {1,2}
B = {3}
P = {A,B} = {{1,2},{3}}
```

## Formula

In the formal language of the ZF axioms, the axiom reads:

1. `∀A ∀B ∃P ∀x(x ∈ P ⇔ (x=A ⋁ x=B))`

Given any object `A` and any object `B`, there is an object `P` such that, given any object `x`, `x` is a member of `P` iff `x` is equal to `A` or `x` is equal to `B`. Or simply, given two objects, there is an object whose members are exactly those two objects. (In ZF, everything is a set, so we can replace the term 'object' with 'set').

2. `∀x ∀y ∃p ((x ∈ p ⋀ x ⊆ p) ⋁ (y ∈ p ⋀ y ⊆ p))`



## In set-builder notation

The formula (1) can be expressed in set-builder notation as:

`P = { x | x = A ⋁ x = B }`

So, given any two sets A and B, they end up being elements of P, `P = {A, B}`; `x` is first equal to (matches) `A`, then `x` is equal to (matches) `B`.

Alternatively, a longer specification corresponding to the formula (2) says:

`P = { {z} | ∃Y(x ∈ Y ⋀ (Y ∈ A ⋁ Y ∈ B) }`

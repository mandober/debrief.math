# Definition of group

>Definition #1

A group is a carrier set `G` with a binary operation `∘` and 4 group axioms
1. Closure:          `∀ a b ∈ G.  a ∘ b ∈ G`
2. Associativity:  `∀ a b c ∈ G.  a ∘ (b ∘ c) = (a ∘ b) ∘ c`
3. Identity:  `∃ ε ∈ G. ∀ a ∈ G.  ε ∘ a = a = a ∘ ε`
4. Inverse: `∀ a ∈ G. ∃ a⁻¹ ∈ G.  a ∘ a⁻¹ = e = a⁻¹ ∘ a`

The pair `(G, ∘)` is a group.


>Definition #2

A **Group** is an algebraic structure consisting of
- a carrier set, `S`
- a binary operation, `∙`
- that satisfy these 4 axioms (the group axioms):
  1. Closure
  2. Associativity
  3. Identity
  4. Invertability

An *algebraic structure* is a carrier set endowed with a binary operation.

A *carrier set*, `S`, is just a set of elements like 𝔹, ℕ, ℤ, or any other.

A *binary operation* attached to the carrier set combines two elements of the set. This operation may bahave similar to arithmetical addition, in which case it is called the **additive operation**, or to multiplication, in which case it is called the **multiplicative operation**.

*The 4 group axioms*: closure, associativity, identity and ivertability. These are the 3 monoid axioms plus ivertability, since a group is a monoid with the inverse operation.

1. **The axiom of closure** or totality states that the result of the binary operation, `∙`, must be an element of the same, carrier set `S`.

Closure: `∀a,b ∈ G. a ∘ b ∈ G`

2. **The axiom of associativity** states that the order in which two consequtive operations are performed dose not matter.

Associativity: `∀a,b,c ∈ G. a ∘ (b ∘ c) = (a ∘ b) ∘ c`

3. **The axiom of identity** states that the carrier set has a special, unique element, often denoted by `ε`, that behaves as neutral with respect to the binary operation - that is, when combined with any other element, that other element is just returned unchanged. The element `ε` is called the total identity element if it is both *left identity* (`ε ∘ a = a`) and *right identity* (`a ∘ ε = a`), which it must be in a group.

Identity: `!∃ε ∈ G. ∀a ∈ G. ε ∘ a = a = a ∘ ε`

4. **The axiom of ivertability** states that each element in the carrier set has an inverse element, with the identity element being its own inverse. This means when an element `a` is combined with its inverse element, denoted by `a⁻¹`, the result must be the identity element `ε`.

Inverse: `!∃ε ∈ G. ∀a ∈ G. !∃a⁻¹ ∈ G. a ∘ a⁻¹ = e = a⁻¹ ∘ a`

Note that the formula for identity axiom first existentially quantifies the id element `ε` and then universally quantifies all elements, `∃ε ∈ G. ∀a ∈ G …`, while the formula for invertability axiom quantifies the elements in the reverse order, `… ∀a ∈ G. ∃a⁻¹ ∈ G …`. The first formula means that there is one unique identity element across the entire set, but the second formula posits that each element in the set has its own unique inverse element.

>Description

A group is a triple `(S, ∙, ϵ)`, where `S` is a carrier set equipped with an associative binary operation, `∙`, that is closed over the set. The carrier set must have a unique element that behaves as identity with respect to the binary operation. Each element, `a`, in the carrier set must have an inverse, `a⁻¹`, such that when `a` and `a⁻¹` are combined, the identity element `ε` is produced.

## Examples of groups

- (ℤ, +, 0), negation: n + (-n) = 0
- (ℤ, ⨯, 1), reciprocal: n ⨯ 1/n = 1
- (𝔹, ⋀, ⟙)
- (𝔹, ⋁, ⟘)

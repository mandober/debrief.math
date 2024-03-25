# CT :: Prerequisites :: Set theory

aka Set theory for Category theory

Axiomatic foundations

We assume the standard Zermelo-Fraenkel axioms for the set theory and the existence of a set `𝒰` which is the *universe*.

The ZF axioms (on a membership relation `∈`):
- Extensionality: sets with the same elements are equal
- Null set: there exists a set with no elements, `∅`
- Existence of sets of unordered pairs, `{u, v}`, ordered pairs, `(u, v)`, powersets `𝒫u`, unions `⋃x` (for all sets `u`, `v`, `x`)
- Infinity: the axiom of infinity holds
- Choice: the axiom of choice holds
- Regularity: every non-empty set A contains an element B disjoint from A
- Replacement: the image of a set under a function is a set. More precisely, let `a` be a set, and `ϕ(x, y)` a property which is functional for `x` in `a`, in the sense that `ϕ(x, y)` and `ϕ(x, yʹ)` (for `x ∈ a`) implies `y = yʹ`; and for each `x ∈ a`, there exists a `y`, with `ϕ(x, y)`; then, there exists a set consisting of all those `y`, such that `ϕ(x, y)` holds for `x ∈ a`.

Moreover, the universe `𝒰` is defined by the following axiom:
- [x ∈ y ∧ y ∈ 𝒰] ⇒ x ∈ 𝒰                       (transitivity)
- [I ∈ 𝒰 ∧ ∀i ∈ I.xᵢ ∈ 𝒰] ⇒ ⋃{i∈I}xᵢ ∈ 𝒰        (union)
- [x ∈ 𝒰] ⇒ 𝒫(x) ∈ 𝒰                            (powersets)
- [x ∈ 𝒰 ∧ f:x→y surjective function] ⇒ y ∈ 𝒰   (replacement)
- N ∈ 𝒰                                          (natual numbers)

Elements of `𝒰` are called *small sets*.

## Small category and locally small category

- if collection of arrows forms a set, a category is a *locally small category*
- if collection of objects forms a set, a category is a *small category*

A category `C` is called 
**locally small category** 
if each `Hom(A, B)` (set of morphisms; 
thus, the collection of all morphisms in C)
is a *small set*, 
for `A,B ∈ Ob(C)`.

If the collection of objects is a *small set*, then `C` is a **small category**.

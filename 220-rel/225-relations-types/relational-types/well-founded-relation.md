# Well-foundedness

https://en.wikipedia.org/wiki/Well-founded_relation

**Well-foundedness** is a property of a relation where each nonempty subset has a least element, that is, it has an element `x`, such that there is no other element `y` in the subset such that `x > y`.

A binary relation `R` is called well-founded on a class `X` if every non-empty subset `S ≠ ∅ ⋀ S ⊆ X` has a minimal element with respect to `R`, that is, an element `m ∈ S`, such that for any other element `s ∈ S`, `s` is not `R`-related to `m` (e.g. s is not smaller than m, `¬(s < m)`).

∀S((S ≠ ∅ ⋀ S ⊆ X) ->
  ∃m(m ∈ S ⋀
    ∀s(s ∈ S -> (s,m) ∉ R)))

(∀S ⊆ X)(S ≠ ∅ -> (∃m ∈ S)(∀s ∈ S) ¬(sRm))


Some authors include an extra condition that R is *set-like*, i.e. that the elements less than any given element form a set.

Equivalently, assuming the axiom of dependent choice, a relation is well-founded if it contains no countable infinite descending chains: that is, *there is no infinite sequence* `x₀, x₁, x₂, …` of elements of `X` such that 
`(xₙ﹢₁, xₙ) ∈ R` for n ∈ ℕ; i.e. that a succeeding element is related to a preceding element. `(n+1, n) ∉ R` e.g. `(4, 3) ∉ <=`.

In order theory, a partial order is called well-founded if the corresponding strict order is a well-founded relation. If the order is a total order then it is called a **well-order**.

In set theory, a set `x` is called a well-founded set if the set membership relation is well-founded on the transitive closure of x. The axiom of regularity, which is one of the axioms of Zermelo-Fraenkel set theory, asserts that all sets are well-founded.

A relation R is converse well-founded, upwards well-founded or Noetherian on X, if the converse relation Rᵀ is well-founded on X. In this case R is also said to satisfy the ascending chain condition. In the context of rewriting systems, a Noetherian relation is also called terminating.

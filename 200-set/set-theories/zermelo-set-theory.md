# Zermelo set theory

https://en.wikipedia.org/wiki/Zermelo_set_theory

Zermelo set theory (sometimes abbreviated as `Z-`), as put forward by Ernst Zermelo in his seminal 1908 paper, is the ancestor of the modern ZF set theory and its extensions, such as von Neumann-Bernays-Gödel set theory (NBG).

It bears certain differences from its descendants, which are not always understood, and are frequently misquoted.

## The axioms of Zermelo set theory

The axioms of Zermelo set theory refer to objects, some of which are sets and some urelements.

Zermelo used a formal language in which membership relation, equality relation, and a unary predicate that determines whether an object is a set, are all implicit (later set theories assume all is set, so they have no need for such unary predicates and urelements).

1. Axiom of Extensionality

if every element of a set `M` is also an element of `N`, and vice versa, then `M = N`. Every set is determined by its elements.

`∀a ∀b (∀x (x ∈ a ⟺ x ∈ b) ⟺ (a = b))`

2. Axiom of elementary sets

There exists the emppty set `∅` that contains no element at all. If `a` is any object of the domain, there exists a set `{a}` containing only `a` as an element. If `a` and `b` are any two objects of the domain, there always exists a set `{a,b}` containing as elements `a` and `b`, but no object `x` distinct from them both.

`∀x ∀y ∃p ((x ∈ p ⋀ x ⊆ p) ⋁ (y ∈ p ⋀ y ⊆ p))`

3. Axiom of separation

Whenever the propositional function `¬x` is defined for all elements of a set `M`, `M` possesses a subset `M'` containing as elements precisely those elements `x` of `M` for which `¬x` is true.

`∀(w₁ … wₙ) ∀a (∃b (∀x (x ∈ b -> (x ∈ a ⋀ φ(x, w₁, …, wₙ, a)))))`

4. Axiom of the power set

To every set T there corresponds a set T' , the power set of T, that contains as elements precisely all subsets of T.

`∀z ∀x (z ⊆ x -> ∀q (q ∈ z -> q ∈ x))`


5. Axiom of the union

To every set T there corresponds a set ∪T, the union of T, that contains as elements precisely all elements of the elements of T.

`∀𝓕 ∃a ∀y ∀x (x ∈ y ⋀ y ∈ 𝓕 -> x ∈ a)`

6. Axiom of choice

If T is a set whose elements all are sets that are different from ∅ and mutually disjoint, its union ∪T includes at least one subset S1 having one and only one element in common with each element of T.

∀X(∅ ∉ X -> ∃f : X -> ⋃ X : ∀A ∈ X (f(A) ∈ A))

7. Axiom of infinity

There exists in the domain at least one set Z that contains the null set as an element and is so constituted that to each of its elements a there corresponds a further element of the form {a}, in other words, that with each of its elements a it also contains the corresponding set {a} as element.

`∃x ∃e (∀z (z ∉ e) ⋀ (e ∈ x) ⋀ ∀y (y ∈ x -> (Sy ∈ x)))`

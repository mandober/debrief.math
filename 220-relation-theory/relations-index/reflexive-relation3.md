# Reflexive relation

https://en.wikipedia.org/wiki/Reflexive_closure








A relation `R` on a set `A` is a subset of the Cartesian product A⨯A, `R ⊆ A²`.

A heterogeneous relation on a set is a relation from a set to itself

A, S : Set
f, φ : Function
r, ρ : Relation

n = |A|

f ∈ A -> A    |A → A| = nⁿ
φ ⊆ A -> A    |A → A| <= nⁿ
r ⊆ A ⨯ A     |A ⨯ A| = n²


- n cardinality of A
- n² cardinality of A ⨯ A
- 2ⁿ cardinality of 𝓟(A)
- (2ⁿ)² cardinality of 𝓟(A⨯A)



defined by a (source) set, `A`, that is related to itself.

and a set of ordered pairs, `R = {(a,b)}`, that defines the relation itself

i.e. it is a set specifying the elements in A (A as domain) which are associated to elements in A (A as codomain), `𝓡 = (A, R)`.



𝓡 = (A, R)
A : Set (of elements)
A² = A ⨯ A : Set (of ordered pairs)
A² = { (a,b) | ∀ab ∈ A }

∀ab ∈ A. (a,b) ∈ A²
         (a,b) ∈ R


R : Set (of ordered pairs), R = {(a,b)} where a,b ∈ A, R ⊆ A²

∀a ∈ A. (a,a) ∈ R
- reflexive:    ∀a ∈ A. a𝓡a
- irreflexive:  ∀a. ¬(a𝓡a)

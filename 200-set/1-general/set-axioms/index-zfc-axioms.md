# ZFC Axioms

## All ZF axioms

1. Axiom of Extensionality: `∀A ∀B ∀x(x ∈ A ⟺ x ∈ B) ⟺ A = B)`
2. Axiom of Pairing: 
  `∀A ∀B ∃M(A ∈ M ⋀ B ∈ M)` (needs excluding other potential elems?)
  `∀A ∀B ∃M ∀x(x ∈ M ⇔ x = A ⋁ x = B)`
  `∀A ∀B ∃M((A ∈ M ⋀ A ⊆ M) ⋁ (B ∈ M ⋀ B ⊆ M))` here A ∈ M doesn't imply A ⊆ M !
   A = {1, 2}, B = {3}
   M = {A, B} = {{1, 2}, {3}}
   So, A ∈ M and B ∈ M holds ✔
   but A ⊆ M and B ⊆ M does not ✘
   since A ⊆ M ⇒ ∀y(y ∈ A ⇒ y ∈ M)
   and 1 ∈ A but 1 ∉ M
   and 2 ∈ A but 2 ∉ M
   and 3 ∈ B but 2 ∉ M


2. Axiom of Regularity: 
  `∀x (x ≠ ∅ -> ∃y((y ∈ x) ⋀ (y ⋂ x = ∅)))`

3. Axiom Schema of Specification:     
  `∀(w₁ … wₙ) ∀a (∃b (∀x (x ∈ b -> (x ∈ a ⋀ φ(x, w₁, …, wₙ, a)))))`


5. Axiom of Union:    
  `∀𝓕 ∃a ∀y ∀x (x ∈ y ⋀ y ∈ 𝓕 -> x ∈ a)`

6. Axiom Schema of Replacement:   
  `∀a ∀(w₁ … wₙ) ∀x ((x ∈ a -> !∃y.ϕ) -> ∃b ∀x (x ∈ a -> ∃y (y ∈ b ⋀ ϕ)))`

7. Axiom of Infinity:   
  `∃x ∃e (∀z (z ∉ e) ⋀ (e ∈ x) ⋀ ∀y (y ∈ x -> (φ(y) ∈ x)))`

8. Axiom of Powerset:    
  `∀z ∀x (z ⊆ x -> ∀q (q ∈ z -> q ∈ x))`

9. Well-Ordering Theorem:   
  `∀x ∃R (R 𝙬𝙚𝙡𝙡-𝙤𝙧𝙙𝙚𝙧𝙨 x)`

10. Axiom of Choice





- [Axiom of extensionality](https://en.wikipedia.org/wiki/Axiom_of_extensionality)
- [Axiom of empty set](https://en.wikipedia.org/wiki/Axiom_of_empty_set)
- [Axiom of pairing](https://en.wikipedia.org/wiki/Axiom_of_pairing)
- [Axiom of union](https://en.wikipedia.org/wiki/Axiom_of_union)
- [Axiom of infinity](https://en.wikipedia.org/wiki/Axiom_of_infinity)
- [Axiom schema of replacement](https://en.wikipedia.org/wiki/Axiom_schema_of_replacement)
- [Axiom of power set](https://en.wikipedia.org/wiki/Axiom_of_power_set)
- [Axiom of regularity](https://en.wikipedia.org/wiki/Axiom_of_regularity)
- [Axiom schema of specification](https://en.wikipedia.org/wiki/Axiom_schema_of_specification)



## Set Theory (Part 2): ZFC Axioms
https://www.youtube.com/watch?v=op3WZRUKk_k

Intro to the axioms of set theory using the Zermelo-Fraenkel with the axiom of choice (ZFC) formal system.

Showing how the union, the intersection, the empty set and the relative complement are derived or defined under this axiomatic system.


## The axiom of extensionality

https://en.wikipedia.org/wiki/Axiom_of_extensionality


`∀a ∀b (∀x (x ∈ a ⟺ x ∈ b) ⟺ (a = b))`


We can arrive to this axiom if we first consider the subset relation:   
∀a ∀b (∀x (x ∈ a -> x ∈ b) -> (a ⊆ b))

This relates sets `a` and `b` in that `a` is a subset of `b`, `a ⊆ b`, if all the elements of `a` are also the elements of `b`.

But if this relation holds in both directions, i.e. if `a ⊆ b` and `b ⊆ a`, then it signifies the set equality in that `a` and `b` are, in fact, the same set since they have all the same elements in common.



## The Axiom of pairing

For all sets X and Y, there is a set C which contains them as its elements. Since X and Y are sets, it means that, besides each being a member of C, each one is also a subset of C.

$$
X=\{a,b\} \\
Y=\{c,d\} \\
C=\{X,Y\} = \{ \{a,b\}, \{c,d\} \} \\
$$

$$\forall X\ \forall Y\ \exists C\ . (X \in C \land X \subseteq C) \lor (Y\in C \land Y \subseteq C)$$

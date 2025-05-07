# Relation

Relations model associations between objects.

A **binary relation** between two sets `A` and `B` is a subset of their Cartesian product, `R ⊆ A×B`. Equivelently, it is an element in the powerset of their Cartesian product: `R ∈ 𝒫(A×B)`. Therefore, a relation is a set of ordered pairs.

    A×B = { (a, b) | ∀a ∈ A, ∀b ∈ B }
    R ⊆ A×B = { (a, b) | a ∈ A, b ∈ B }

Set `A` is called the *source* set or *domain* of the relation R, and set `B` is called the *target* set or *codomain*.

If element `x ∈ A` and `y ∈ B` are `R`-related then the pair `(x,y) ∈ R`, which is also denoted by `xRy`.

Since a binary relation, between sets `A` and `B`, allows any domain elements to be associated with more then one codomain element, it cannot be represented by a regular function, `f : A → B`, which can only return a single element. However, it may be represented by a special function that returns sets instead of single elements, `f' : A → 𝒫(B)`, where `𝒫(B)` is a set of all subsets of codomain set `B`. So, for each unique input element `x ∈ A`, this function `f'` returns a subset of `B`, namely, the subset of those elements that are associated with `x`.

Normally, a function `f` maps elements to elements: x₀ ⟼ y₀. But this special function *maps elements to sets*:
- x₀ ⟼ {y₁, y₃}
- x₁ ⟼ {y₂, y₄, y₅}


Binary relations
- heterogeneous relation: `R ⊆ A × B`
- homogeneous relation: `R ⊆ A²`
- universal relation: `R = A × B`
- empty relation: `R ⊆ A × B` and `R = ∅`

Homogeneous binary relations, `R ⊆ A²`
- identity relation, I = { (a, a) | a ∈ A }



An equivalence relation that respect the algebraic structure is called a **congruence relation**.



* Relation (mathematics)
https://en.wikipedia.org/wiki/Relation_(mathematics)

* Well-founded relation
https://en.wikipedia.org/wiki/Well-founded_relation

* Total relation
https://en.wikipedia.org/wiki/Total_relation

* Serial relation
https://en.wikipedia.org/wiki/Serial_relation

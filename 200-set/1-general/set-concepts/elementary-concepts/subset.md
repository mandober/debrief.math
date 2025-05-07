# Subset

* The subset or inclusion relation on sets:

`(∀x (x ∈ A -> x ∈ B)) ⟺ A ⊆ B`

Set `A` is a subset of set `B` if all elements in `A` are elements in `B`.

* The proper subset relation on sets.

`(∀x (x ∈ A -> x ∈ B)) ⟺ A ⊆ B ⋀ A = B`

If set `A` is a subset of set `B` AND `A` is not equal to `B` THEN `A` is a proper subset of `B`.

`A ⊂ B -> A ⊆ B`

Properties of subset relation
- reflexivity:  `A ⊆ A`
- transitivity: `(A ⊆ B ⋀ B ⊆ C) -> A ⊆ C`
- antisymmetry: `(A ⊆ B ⋀ B ⊆ A) -> A = B`

The first 3 properties make the inclusion relation a **partial order**.


- symmetry:     `A ⊆ B ⟺ B ⊆ A`
- asymmetry:    `A ⊆ B ⟺ B ⊈ A`
- antisymmetry: `(A ⊆ B ⋀ B ⊆ A) -> A = B`

A ⊆ B ⋀ B ⊆ A -> A = B
A ⊆ B ⋀ A ≠ B -> B ⊈ A

- asymmetry:    `A ⊂ B ⟺ B ⊂ A`

⊅

- ?trichotomy:  `A ⊆ B ⋁ B ⊆ A ⋁ A = B`

- `A ⊆ B ⋀ A ≠ B -> B ⊂ A`


Properties of proper subset relation
- irreflexivity: `A ⊄ A`
- transitivity:  `A ⊂ B ⋀ B ⊂ C -> A ⊂ C`
- trichotomy:    `A ⊂ B ⋁ B ⊂ A ⋁ A = B`



* Superset relation on sets

Superset is just the subset relation from the perspective of the larger set:

`A ⊆ B ⟺ B ⊇ A`

`(∀x (x ∈ A -> x ∈ B)) ⟺ B ⊇ A`


* Proper superset relation on sets

`A ⊂ B ⟺ B ⊃ A`


`B ⊃ A -> B ⊇ A`


`(∀x (x ∈ A -> x ∈ B)) ⟺ B ⊇ A ⋀ A = B -> B ⊃ A`



* Inclusion relation (⊆) is similar to LE (⩽) relation
  - Proper inclusion relation (⊂) is similar to LT (<) relation

# Uniqueness properties of relations

Uniqueness properties:
- injective, left-unique
- functional, right-unique, right-definite, univalent

**Injective** or **left-unique**
- `∀xz ∈ X. ∀y ∈ Y. xRy ⋀ zRy -> x = z`
- for such a relation, `{Y}` is called a *primary key* of `R`

**Functional** or **right-unique** (right-definite or univalent):
- partial function, `∀x ∈ X. ∀y,z ∈ Y. xRy ⋀ xRz -> y = z`
- such a binary relation is called a *partial function*
- for such a relation, `X` is called a *primary key* of `R`

Combinations of properties
-  One-to-one:      functional ⋀     injective
-  One-to-many: not functional ⋀     injective
- Many-to-one:      functional ⋀ not injective
- Many-to-many: not functional ⋀ not injective

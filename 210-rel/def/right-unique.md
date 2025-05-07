# Right-unique

- right-unique, functional, univalent
- every dom elem has at most one img
- 1 outgoing arrow per dom elem
- right-uniqueness is the crucial property of functions
- total functions = right-unique + left-total relations
- partial functions = right-unique relations (no left-totality)
- `∀a ∈ A. ∀b₁b₂ ∈ B. (aRb₁ ∧ aR b₂) ⇒ b₁ = b₂`
- codomain elems have unique images
- `∀a ∈ A. !∃b ∈ B. aRb`


A | B | (u,u)  | (n,u)  | (u,n)  | (n,n)  |
--|---|--------|--------|--------|--------|
a | x | (a, x) | (a, x) | (a, x) | (a, x) |
b | y | (b, y) | (a, y) | (b, x) | (b, x) |
c | z | (c, z) | (b, z) | (c, z) | (a, z) |

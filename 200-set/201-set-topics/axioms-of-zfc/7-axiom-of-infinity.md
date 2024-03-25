# Set Theory :: ZFC Axioms :: Axiom of Infinity


The Axiom of Infinity states that there is a set that contains the empty set, `∅`, and the successor of each of its elements, `n ∪ {n}`.

`∃I ∀x(x ≠ ∅ ⇒ (x ∈ I ⋀ x ⋃ {x} ∈ I))`
i.e.
`∃x ∃e ∀z(z ∉ e ⋀ e ∈ x ⋀ ∀y(y ∈ x ⇒ φ(y) ∈ x))`
i.e.
`∃x ∀z(∅ ∈ x ⋀ ∀y(y ∈ x ⇒ {y} ∈ x))`


In sb notation:

`I = { y | y ≠ ∅ ⋀ y = x ⋃ {x} }`

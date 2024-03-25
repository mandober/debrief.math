# By formulas


R = { (a,b) | a ∈ A, b ∈ B }             a relation
A×B = { (a,b) | ∀a ∈ A, ∀b ∈ B }         total, Cartesian product
∀x∀y((x ∈ A ∧ y ∈ B) ⇒ (x, y) ∈ U)       total, U
∃x∃y((x ∈ A ∧ y ∈ B) ∧ (x, y) ∉ U)        total negated, ¬U
∀x∀y(x ∈ A ∧ y ∈ B ∧ ¬xEy)                empty, E
I = ∀x(x ∈ A ⇒ xIx)                     identity
I = { (x, x) | ∀x ∈ A }                 identity


 ∀x(x ∈ A ⇒ x ~ x)     identity
 ∀x(x ∈ A ⇒ x ~ x)     refl
 ∃x(x ∈ A ⇒ x ≁ x)     non-refl (refl negated)
¬∀x(x ∈ A ⇒ x ~ x)     non-refl (refl negated)
 ∀x(x ∈ A ⇒ x ≁ x)     irrefl
 ∃x(x ∈ A ⇒ x ~ x)     non-irrefl (irrefl negated)
¬∀x(x ∈ A ⇒ x ≁ x)     non-irrefl (irrefl negated)


Q: How to make sure the identity relation only includes the id pairs and nothing else (as opposed to reflexive relation)?

x,y,z,… range over the source set (of relation)
p,q,r,… range over the set of relation (range over ordered pairs)

∀p∀q(p,q ∈ I ⇒ p=(x, x) ∧ p=q)

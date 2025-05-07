# ZFC Axioms

## Primitives
- `=` is a primitive binary relation, called *equality*, x = y
- `∈` is a primitive binary relation, called *set membership*, x ∈ y
- `=` is more primitive than `∈`

## Definitions

- x `=` y  ≝  ∀xyz((z ∈ x ⇔ z ∈ y) ⋀ (x ∈ z ⇔ y ∈ z)) (if = not prim)
- x `⊆` y  ≝  ∀xyz(z ∈ x ⇒ z ∈ y)
- x `⊂` y  ≝  ∀xyz((z ∈ x ⇒ z ∈ y) ⋀ x ≠ y)
- x `=` ∅  ≝  ∀y(y ∉ x)

- x is the empty set:  ∀y(y ∉ x)
- x is the empty set: ¬∃y(y ∈ x)
- x is a nonempty set: ∃y(y ∈ x)

### What does it mean?

- ∃x∃y(x ∈ y)?
  - y exists, x exists. objects x and y exist.
  - y is a nonempty set.
  - y exists and it is a nonempty set.
  - There exists a nonempty set.
  - There exists a set that has at least one element.
  - There exists a set y that has at least one element x.
  - There exists an object that belongs to a set.
  - when x=y, then y={y}, i.e. then there exists a self-containing set.
- ∃x∃y(y ∈ x)?

- ∀x∀y(x ∈ y)?
  - x may or may not exist. y may or may not exist.
  - All objects are in all sets.
  - All objects x (if any) belong to all sets (if any).
  - Everything is in everything.
  - when x=y, then y={y}, i.e. then there are self-containing sets.
- ∀x∀y(y ∈ x)?

- ∀x∃y(x ∈ y)?
  - x may or may not exist. y exist.
  - All sets are in y.
  - There is a set of sets.
  - y is a set of sets.
- ∀x∃y(y ∈ x)?
  - x may or may not exist. y exist.
  - All sets are nonempty.
  - Each set has at least one element.

- ∃x∀y(x ∈ y)?
  - There is an object that is a member of all sets.
- ∃x∀y(y ∈ x)?




## Axioms
1. Axiom of Extensionality: ∀u ∀v ∀x(x ∈ u ⇔ x ∈ v) ⇔ u = v
2. Axiom of Regularity (Foundation): ∀x(x ≠ ∅ ⇒ ∃y(y ∈ x ⋀ y ⋂ x = ∅))
3. Axiom of Separation: ∀z ∃m ∀x(x ∈ m ⇔ x ∈ z ⋀ φ(x))
4. Axiom of Pairing:
  ∀x ∀y ∃m(x ∈ m ⋀ y ∈ m)
  ∀x ∀y ∃p(∀z(z ∈ p ⇔ (z = x ⋁ z = y))
5. Union:
   ∀F ∃M ∀x(x ∈ M ⇔ ∃m(x ∈ m ⋀ m ∈ F))

   ∀F ∃M ∀m ∀x(x ∈ M ⇔ ∃Y(x ∈ Y ⋀ Y ∈ F))

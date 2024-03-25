

* A relation `R` on any nonempty set `A` is reflexive not only if all elements `x ∈ A` participate in the relation `R`, but also only if each element is related to itself under `R`, i.e. if `(x,x) ∈ R` for all `x ∈ A`.

* Unlike reflexivity, symmetry does not require all domain elements to participate in a relation for it to be symmetric.

* Unlike reflexivity, transitivity does not require all domain elements to participate in a relation for it to be transitive.

* Identity relation on a nonempty set is the smallest reflexive relation on it.
* Any relation on the empty set is reflexive, vacuuosly, even the null relation
* Identity relation on any set is the smallest reflexive relation on it.
* Any relation on the empty set is reflexive, sym and trans, vacuuosly.
* The null relation on a nonempty set cannot be reflexive.
* The universal relation on a set is reflexive.
* The universal relation on a set is refl, sym and trans.

* Symmetry may "degenerate" to reflexivity: 
  `a∼b -> b∼a`, but if `a = b` then `a∼a -> a∼a`.
* Transitivity may "degenerate" to symmetry: 
  `a∼b ∧ b∼c -> a∼c`, but if `a = c` then `a∼b ∧ b∼a -> a∼a`.
* Transitivity may "degenerate" to reflexivity: 
  `a∼b ∧ b∼c -> a∼c`, but if `a = b = c` then `a∼a ∧ a∼a -> a∼a`.

* Transitivities (if ∼ symmetric)
  - `a∼b ∧ b∼c -> a∼c`
  - `a∼a ∧ a∼b -> a∼b`
  - `a∼b ∧ b∼b -> a∼b`
  - `a∼a ∧ a∼a -> a∼a`
  - `a∼b ∧ a∼c -> b∼c`
  - `b∼a ∧ a∼c -> b∼c`
  - `a∼c ∧ b∼c -> a∼b`
  - `a∼c ∧ c∼b -> a∼b`


>An equivalence relation is a binary relation that is at the same time reflexive, symmetric and transitive.



A canonical example of an equivalence relation is the equality (EQUAL TO or EQ) denoted by `=`.

Each equivalence relation partitions the underlying set into disjoint **equivalence classes**. Two elements of a given set are equivalent to each other iff they belong to the same equivalence class.

A given binary relation `∼` on a set `X` is said to be an equivalence relation iff it is reflexive, symmetric and transitive. A set `X` together with an equivalence relation `∼` is called a **setoid**.

The equivalence class of `a ∈ X` under an equivalence relation `∼`, denoted [a], is defined as `[a] = { ∀x ∈ X | a ∼ x }`.

For example, if `X` is the set of all cars, and `∼` is the equivalence relation "has the same color as", then one particular equivalence class consists of all green cars.

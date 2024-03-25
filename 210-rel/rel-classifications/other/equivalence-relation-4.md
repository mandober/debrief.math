# Equivalence relation

## Terminology

- equivalence relation
- setoid
- equivalence class
- representative of an equivalence class
- class of representatives
- quotient set


## Definition of an equivalence relation

An equivalence relation on a set `A` is a binary relation `∼` that is
- reflexive,  `∀a ∈ A. a∼a`
- symmetric,  `∀ab ∈ A. a∼b ⇔ b∼a`
- transitive, `∀abc ∈ A. a∼b ∧ b∼c ⇒ a∼c`

>An equivalence relation is a binary relation that is reflexive, symmetric and transitive.

An equivalence relation (2 + 3 conditions)
- binary relation ⟨is this condition strictly necessary?⟩
- endorelation (superfluous since refl -> homogeneous relation)
- reflexive
- symmetric
- transitive

A canonical example of an equivalence relation is equality.

A set `A` together with an equivalence relation `∼` is called a **setoid**, and denoted `A/∼`.



## Implications

* Equivalence relation is a compound relation (refl, sym, trans)
* An equivalence relation is necessarily homogeneous since it must be refl

## Equivalence classes

Any equivalence relation `∼` on a set `A` partitions the set `A` into a family of subsets of `A`, called the **equivalence classes**. Partitioning or being a family (of subsets) both guarantee that each element of `A` is in exactly one equivalence class and the union of all equivalence classes produces the original set `A`.

> An equivalence relation partitions a set into disjoint equivalence classes.

Two elements of a given set are equivalent (to each other) iff they belong to the same equivalence class.

*The equivalence class of an element* `a` in the set `A` under an equivalence relation `∼`, denoted [a], is defined as `[a] = { ∀x ∈ A | a ∼ x }`. The element `a` is called the **representative** of the equivalence class. Any element of the same equivalence class can be chosen as its representative.

NOTE: When an infinite set is partitioned into a family of equivalence classes, *Axiom of Choice* comes in very handy to pick a representative of each class. The AC guarantees that this instantaneously produced set of representatives is indeed a set. Whether this is cheating, considering that choosing a (random) element from each set in an infinite collection of sets should take an infinite amount of time, is exactly the reason why AC is controversal. With AC, you can "obtain" any irrational number (any number like π, in that it consists of an neverending sequence of digits) instantly.

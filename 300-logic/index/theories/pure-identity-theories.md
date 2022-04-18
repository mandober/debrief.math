# Pure identity theories

https://en.wikipedia.org/wiki/Theory_of_pure_equality

* The signature of the pure identity theory is empty 
  (no function, constant, relation symbols)
* Pure identity theory has no non-logical axioms
* Pure identity theory is decidable

One of the few interesting properties that can be stated in the language of pure identity theory is that of being infinite.

This is given by an infinite set of axioms stating that:
- there are at least 2 elements, `∃x₁ ∃x₂. x₁ ≠ x₂`
- there are at least 3 elements, `∃x₁ ∃x₂ ∃x₃. x₁ ≠ x₂ ∧ x₁ ≠ x₃ ∧ x₂ ≠ x₃`
- etc.

These axioms define *the theory of an infinite set*.

The opposite *property of finiteness* cannot be stated in first-order logic for any theory that has arbitrarily large finite models: in fact any such theory has infinite models by the compactness theorem.

In general, if a property can be stated by a finite number of sentences of FOL, then the opposite property can also be stated in FOL. However, if a property needs an infinite number of sentences, then its opposite property cannot be stated in FOL.

Any statement of pure identity theory is equivalent to either `σ(N)` or to `¬σ(N)` for some finite subset `N` of the non-negative integers, where `σ(N)` is the statement that the number of elements is in `N`.

It is even possible to describe all possible theories in this language as follows. Any theory is either the theory of all sets of cardinality in N for some finite subset N of the non-negative integers, or the theory of all sets whose cardinality is not in N, for some finite or infinite subset N of the non-negative integers. (There are no theories whose models are exactly sets of cardinality N if N is an infinite subset of the integers.) The complete theories are the theories of sets of cardinality n for some finite n, and the theory of infinite sets.

One special case of this is the inconsistent theory defined by the axiom ∃x ¬x = x. It is a perfectly good theory with many good properties: it is complete, decidable, finitely axiomatizable, and so on. The only problem is that it has no models at all. By Gödel's completeness theorem, it is the only theory (for any given language) with no models.[1] It is not the same as the theory of the empty set (in versions of first-order logic that allow a model to be empty): the theory of the empty set has exactly one model, which has no elements.

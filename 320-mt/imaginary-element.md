# Imaginary element

https://en.wikipedia.org/wiki/Imaginary_element

In model theory, a branch of mathematics, an **imaginary element** of a structure is roughly a *definable equivalence class*.

Imaginary elements were introduced by Shelah (1990), and elimination of imaginaries was introduced by Poizat (1983).

## Definitions

- `M` is a model of some theory
- `x` and `y` stand for n-tuples of variables, for some natural number `n ∈ ℕ`
- An *equivalence formula* is a formula `φ(x, y)` that is a symmetric and transitive relation. Its domain is the set of elements a of `M n` such that `φ(a, a)`; it is an equivalence relation on its domain.
- An *imaginary element* `a/φ` of `M` is an equivalence formula `φ` together with an equivalence class `a`.
- `M` has *elimination of imaginaries* if for every imaginary element `a/φ` there is a formula `θ(x, y)` such that there is a unique tuple `b` so that the equivalence class of `a` consists of the tuples `x` such that `θ(x, b)`.
- A model has *uniform elimination of imaginaries* if the formula `θ` can be chosen independently of `a`.
- A *theory has elimination of imaginaries* if every model of that theory does (and similarly for uniform elimination).

## Examples

- ZFC set theory has elimination of imaginaries.
- Peano arithmetic has uniform elimination of imaginaries.
- A vector space of dimension at least 2 over a finite field with at least 3 elements does not have elimination of imaginaries.

## References

- 1993 `Model theory`, Wilfrid Hodges. Cambridge University Press, ISBN 978-0-521-30442-9
- 1983 `Une théorie de Galois imaginaire (An imaginary Galois theory)`, Bruno Poizat.
- 1990 Saharon Shelah: `Classification theory and the number of nonisomorphic models`. 1978. Studies in Logic and the Foundations of Mathematics (2nd ed.), Elsevier, ISBN 978-0-444-70260-9
- Category: Model theory
https://en.wikipedia.org/wiki/Category:Model_theory

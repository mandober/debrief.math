# Functions ∷ SUMMARY

* `f : A -> B` is a function signature consisting of the function name (f), the domain (A) and codomain (B). There's no telling what a math function does from the signature alone. However, a function definition is incomplete if it lacks the signature because the codomain is only specified there.

* Strictly, two identical functions that differ only in the codomain are not actually the same, e.g. `f : ℕ -> ℕ, f(x) = x²` ≠ `g : ℕ -> ℤ, g(x) = x²`.

* If a function's definition produces a stable range, then the codomain can shrink (`ran = cod`) or grow (`ran ⊂ cod`) without affecting the range. However, each change of the codomain yields a different function.

* Thus, a function is a fully specified as a triple `𝓕 = (f, A, B)`

* A function `f : A -> B`, with `x₁,x₂ ∈ A` and `y ∈ B`, is a specialized relation, `R ⊆ A ⨯ B`, in that `(x₁R y ⋀ x₂R y) -> (x₁ = x₂)`

* The vertical line test states that a graph represents a function iff all vertical lines intersect the graph at most once.

* Given a graph that represents a function, the horizontal line test states that a graph represents an injective function iff all horizontal lines intersect the graph at most once.

* Surjections have equinumerous range and codomain     |dom| ⩾ `|ran| = |cod|`
* Injections have equinumerous domain and range        `|dom| = |ran|` ⩽ |cod|
* Bijections have equinumerous domain, range, codomain `|dom| = |ran| = |cod|`

# Relations

Relations are used in math to describe how two mathematical objects, most often sets, are related to each other.

- **Heterogeneous relation** is a relation between different sets.
- **Homogeneous relation (endorelation)** is a relation on the same set.
- **Finitary relations** are relations on finite sets.
- **Binary relation** is a 2-place relation.
- **k-ary relations** are relations between any number of objects.

Relations may be finitary when they are between finite sets, but relations may also exists between infinite sets. A relation between two different sets is heterogeneous, while a relation on the same set is homogeneous. Regarding arity, a relation may be nullary, unary, binary, or of any other arity i.e. polyadic (arity > 1). However, we are mostly encounering homogeneous binary relations, such as the relations on the sets of numbers ℕ, ℤ, ℚ, ℝ.

> (Definition). A binary relation R (with type R :: A×B) is a subset of A×B, where A is the domain set and B is the codomain set of R.

xRy i.e. (x,y) ∈ R -> x ∈ A ∧ y ∈ B

It is important to know that a relation is more than just a set of ordered pairs - the domain and codomain must also be specified.

> (Definition). In a binary relation R, a **field** is the union of domain and codomain/range.

Sometimes a diagram provides a good way to visualise a relation. A **digraph** is a convenient way to represent a binary relation. Every element of the domain and codomain in a digraph diagram is represented by a labelled dot (called an element or node) in the graph, and every pair (x, y) in the relation is represented by an arrow going from x to y (which may be called an arrow or arc).

> (Definition). If `R` is a binary relation on set `A`, `R ⊆ A×A`, the digraph `D` of `R` is the ordered pair `D = (A, R)`.

The digraph of the relation `R ⊆ A×A`, where `R = {(1,2),(2,3)}` and `A={1,2,3}`, is `({1,2,3}, {(1,2),(2,3)})`.

The digraph of the relation `S ⊆ A×A`, where `S = {(1,2),(2,3)}` and `A={1,2,3,4,5,6}`, is `({1,2,3,4,5,6}, {(1,2),(2,3)})`.

Note that `S` is a different relation than `R` (from the example above), even though the set of ordered pairs is identical.

> The digraph representation records the entire domain and codomain, giving a precise and complete description of the relation.

This has some interesting implications. For example, two graphs may show an empty relation that contains no arrows (no ordered pairs), but **the relations are not equivalent unless their domains and codomains are equal**.

Many relations have arcs that are connected to each other in a special way. For example, a set of arcs (edges) connected in a sequence is called a (directed) path.

> (Definition). A **directed path** is a set of arcs that can be arranged in a sequence, so that the end point of one arc in the sequence is the start point of the next.

For example, sets `{(1,2), (2,3), (3,4)}` and `{(1,3), (3,1)}` are both paths, but the set `{(1,2), (5,6)}` is not.

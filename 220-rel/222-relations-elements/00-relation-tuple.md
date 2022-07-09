# Relations :: Elements of relations :: Relation tuple

Distinguishing between a relation and its graph is a problem that constantly occurs when discussing relations (and functions).

A binary relation `R` between sets `A` and `B` is properly defined as a triple `(A, G, B)` where the domain of relation is `A`, the graph of relation is `G` (the set of ordered pairs), and the codomain of relation is `B`. Putting the codomain of the relation last is compatible with the proper definition of a relation on a single set, `A`, as a tuple `(A, G)`.

`G` is the graph of the relation and a subset of `G ⊆ A⨯B` or `G ⊆ A⨯A`, respectivelly. However, it is very common to refer to a relation's graph as a relation proper. This is incorrect since a relation cannot be fully specified by its graph alone - some properties of relations depend on the domain set over which a relation is defined. Without knowing what the domain set `A` consists of, it is impossible to tell whether a relation is, e.g. reflexive, irreflexive; given the empty graph, there's no way to infer the domain of that relation.

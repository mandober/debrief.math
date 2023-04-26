# Difunctional relation

https://en.wikipedia.org/wiki/Difunctional_relation

The idea of a difunctional relation is to partition objects by distinguishing attributes, as a generalization of the concept of an equivalence relation.

One way this can be done is with an intervening set `Z={x,y,z,…}` of indicators. The partitioning relation `R = FGᵀ` is a composition of relations using univalent relations F ⊆ A×Z and G ⊆ B×Z.

Jacques Riguet named these relations difunctional since the composition `F Gᵀ` involves univalent relations, commonly called partial functions.

In 1950 Rigeut showed that such relations satisfy the inclusion:

`R Rᵀ R ⊆ R`

In automata theory, the term *rectangular relation* has also been used to denote a difunctional relation. This terminology recalls the fact that, when represented as a logical matrix, the columns and rows of a difunctional relation can be arranged as a block matrix with rectangular blocks of ones on the (asymmetric) main diagonal.

More formally, a relation `R` on `X×Y` is difunctional iff it can be written as the union of Cartesian products `Aᵢ × Bᵢ`, where the `Aᵢ` are a partition of a subset of `X` and the `Bᵢ` likewise a partition of a subset of `Y`.

Using the notation `{y | xRy} = xR`, a difunctional relation can also be characterized as a relation R such that wherever `x₁R` and `x₂R` have a non-empty intersection, then these two sets coincide; formally `x₁ ∩ x₂ ≠ ∅` implies `x₁R = x₂R`.

In 1997 researchers found utility of binary decomposition based on difunctional dependencies in database management. Furthermore, difunctional relations are fundamental in the study of bisimulations.

In the context of homogeneous relations, a *partial equivalence relation is difunctional*.

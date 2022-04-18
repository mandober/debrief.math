# Relations :: Am big ambiguity

> TL/DR: Many texts about relations will introduce a relation and then proceeding to discuss what is actually the graph of that relation.





, which they denote by `R`


, a relation, which is often denoted with a capital letter `R`, actually refe


but also very commonly, `R` is used to denote the graph of a relation and not the "relation proper". A relation and its graph are too often used interchangibly even though that it incorrect (the same problem is inherited by functions).
 


Distinguishing between a relation and its graph is a problem that constantly occurs when discussing relations (and functions).

Strictly, a binary relation `R` between sets `A` and `B` is defined by a triple `R = (A,G,B)` where `G` is the graph of the relation and a subset of `G ⊆ A⨯B`. 

However, it is very common to refer to a relation's graph as a relation proper. A relation proper is a tuple `R = (A,G,B)`, consisting of 3 sets: relation's domain `A`, the set of associations i.e. ordered pairs, aka the graph `G` of a relation, and the codomain `B`. So any relation is fully specified only by the tuple `R = (A,G,B)`.

A relation cannot be fully specified by its graph alone - almost all relation properties depend on the relation's graph, but some properties also require the specification of the relation's domain. For example, there's no way to say whether a relation is reflexive from its graph alone; and if you're given the empty relation, there's no way to infer the relation's domain.

# Disjoint union

Disjoint union: given sets `Aᵢ`, where `i` ranges over some index set `I`, we construct the coproduct as the union of `Aᵢ × {i}`. In the binary case, the disjoint union of sets `A` and `B` is the union of their respective tagged Cartesian products: `A × {0} ⋃ B × {1}`. 

A tag is a singleton set that ensures that all the elements (components) stay distinct. So, `A × {0}` is a set `A = {a,b,c}` tagged by a `0`, producing the set {(a,0),(b,0),(c,0)}



- Disjoint union preserves distinctess of elements despite them being collected under the union operation in a single set.
- Disjoint union is more general than union because there is a function that can convert a disjoint union into a union, but there's no function that can turn union into disjoint union.
- Disjoint union is also called *tagged union* because elements of each set are "tagged" prior to being united in the resulting set.

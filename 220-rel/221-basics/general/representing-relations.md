# Representing relations

Representation:
* graphs
  - symmetric relation: undirected graph
  - digraph: homogeneous relation
  - heterogeneous relations: hypergraph


## With graphs

A relation can be represented using a directed graph. The number of vertices in the graph is equal to the number of elements in the set from which the relation has been defined. For each ordered pair `(x,y)` in the relation `R`, there will be a directed edge from the vertex `x` to the vertex `y`. If there is an ordered pair `(x,x)`, there will be self-loop on the vertex `x`.

If R = {(1,1),(1,2),(3,2)} is a relation on the set S = {1,2,3}, it can be represented by the graph...


* *Visualization of relations* leans on graph theory: For relations on a set (homogeneous relations), a *digraph* illustrates a relation and an *undirected graph* a *symmetric relation*. For heterogeneous relations a *hypergraph* has edges possibly with more than two nodes, and can be illustrated by a bipartite graph. Just as the clique is integral to relations on a set, so *bicliques* are used to describe heterogeneous relations; indeed, they are the "concepts" that generate a lattice associated with a relation.



A relation can be presented
- specified as a set of ordered pairs
- as a table, e.g. domain elems as rows, codomain elems as columns, 1 for the cell (d,c) ∈ R
- as a db table, a record
- as a graph, directed graph

* *divides* relation on the set A = {1,2,3,4} is

`R = { (a,b) | b / a == 0 }`

## As a set of ordered pairs

Presenting a relation as set of ordered pairs:

```
R(A²) = (A, A, G) where 
G = {
  (1,1),(1,2),(1,3),(1,4),
  (2,2),(2,4),
  (3,3),
  (4,4)
}
```

## As a table

Presenting a relation as a row-major table:

G | 1 | 2 | 3 | 4
--|---|---|---|---
1 | T | T | T | T
2 |   | T |   | T
3 |   |   | T |  
4 |   |   |   | T

* This table form is handy for making quick deductions, e.g. that this relation is *reflexive*. Since it contains all the pairs (cells) that make up the primary diagonal, the relation is reflexive (the fact that the relation also contains some extra pairs is immaterial).

* *Reflexive closure* is a minimal set that is reflexive - only the ordered pairs of the form `(a,a)` are included, `(a,a) ∈ R`. The union of any relation and the reflexive closure (wrt to the set A²) makes the result: 1) a relation 2) a reflexive relation


## As a graph

Presenting a relation as a directed graph:

```
 1           2
↻.---------->.↺
 │ \         │
 │    \      │
 │       \   │
 ↓         ↘ ↓
↻.---------->.↺
 3          4
```

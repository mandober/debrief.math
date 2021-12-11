# Path graph

https://en.wikipedia.org/wiki/Path_graph

A **path graph** or **linear graph** is a graph whose vertices can be listed in a linear order, `v₁, v₂, …, vₙ`, such that the edges are `{vᵢ, vᵢ﹢₁}`, where 
`i = 1, 2, …, n−1`.

A path graph on 6 vertices: `o----o----o----o----o----o`

```
v₁          v₂          v₃          v₄
o-----------o-----------o-----------o
      e₁          e₂          e₃
```

Path graph descriptor:
- vertices:         n
- edges:            n−1
- radius:           ⌊n/2⌋
- diameter:         n−1
- automorphisms:    2
- chromatic number: 2
- chromatic index:  2
- notation:         Pₙ
- spectrum:         2 cos(k π / (n+1)); k = 1 … n
- properties:       unit distance, bipartite graph, tree

Equivalently, a path with at least 2 vertices is connected and has two terminal vertices (vertices that have degree 1), while all others (if any) have degree 2.

Paths are often important in their role as subgraphs of other graphs, in which case they are called paths in that graph. A path is a particularly simple example of a tree, and in fact the paths are exactly the trees in which no vertex has degree 3 or more.

A disjoint union of paths is called a linear forest.

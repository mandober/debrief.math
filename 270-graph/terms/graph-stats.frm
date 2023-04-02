# Graph :: Stats

## Total numbers of vertices

Total numbers of vertices for various classes of graphs, where n is the number of vertices.

NON  | graph   | l-graph | l-tree  | p-tree  | r-tree  | tree
----:|--------:|--------:|--------:|--------:|--------:|-------:
   1 |       1 |       1 |       1 |       0 |       1 |       1
   2 |       4 |       4 |       2 |       2 |       2 |       2
   3 |      12 |      24 |       9 |       3 |       6 |       3
   4 |      44 |     256 |      64 |       8 |      16 |       8
   5 |     170 |    5120 |     625 |      20 |      45 |      15
   6 |     936 |  196608 |    7776 |      54 |     120 |      36
   7 |    7308 |       … |  117649 |     140 |     336 |      77
   8 |   98768 |         |         |     384 |     920 |     184
   9 | 2472012 |       … |       … |    1035 |    2574 |       …
  10 |       … |       … |       … |    2860 |       … |       …
OEIS | A055542 | A095340 | A000169 | A095341 | A055545 | A055544


* `NON`     Number of nodes
* `l-graph` Labeled graph
* `l-tree`  Labeled tree
* `r-tree`  Rooted tree
* `p-tree`  Planted tree


Data Structure

A formal structure for the organization of information. Examples of data structures include the list, queue, stack, and tree.

Tree

A tree is a mathematical structure that can be viewed as either a graph or as a data structure. The two views are equivalent, since a tree data structure contains not only a set of elements, but also connections between elements, giving a tree graph.

Trees were first studied by Cayley (1857). McKay maintains a database of trees up to 18 vertices, and Royle maintains one up to 20 vertices.

A tree is a set of straight line segments connected at their ends containing no closed loops (cycles). In other words, it is a simple, undirected, connected, acyclic graph (or, equivalently, a connected forest).

A tree with `n` nodes has `n - 1` graph edges. Conversely, a *connected graph* with `n` nodes and `n - 1` edges is a tree.

All trees are *bipartite graphs* (Skiena 1990, p. 213).

Trees with no particular node singled out are sometimes called *free trees* (or *unrooted tree*), by way of distinguishing them from *rooted trees* (Skiena 1990, Knuth 1997).



Bipartite Graph

A bipartite graph, also called a bigraph, is a set of graph vertices decomposed into two disjoint sets such that no two graph vertices within the same set are adjacent. A bipartite graph is a special case of a k-partite graph with k=2.

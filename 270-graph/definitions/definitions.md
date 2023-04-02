# Graph theory :: Definitions

A **graph** `G` is an ordered pair `(V, E)` consisting of a nonempty set `V` of **vertices**, and a set `E` of **edges** that are two-element subsets of `V`.

A set `V` of vertices, e.g. `V = {a,b,c,d}`.

A set `E` of edges, e.g. `E = {(a,b), (b,c), (c,a), (c,d)}`, provided each edge `{v, v′}` implies that its *endpoints* are `v,v′ ∈ V`. Or, provided that each edge `e ⊆ V` (which it is, since edges are by definition of a graph two-element subsets of `V`).

Two graphs are **equal** if their respective sets of vertices and edges are.

An isomorphism between two graphs `G = (V, E)` and `G′ = (V′, E′)` is a bijection `f : V -> V′` between the vertices of the graphs such that `{a,b}` is an edge in `G` iff `{f(a), f(b)}` is an edge in `G′`. Two graphs are **isomorphic** `G ≅ G′`, if there is an isomorphism between them. An isomorphism is a function which renames the vertices. It must be a bijection so every vertex gets a new name. These newly named vertices must be connected by edges precisely when they were connected by edges with their old names. Intuitively, graphs are isomorphic if they are the same modulo labels.

Graphs with a special name (like `Kₙ` or the Petersen graph) or graphs without labels usually represent all graphs isomorphic to any individual one. Such a collection of isomorphic graphs is called an **isomorphism class**.

**Adjacency** is the relation between two vertices that are connected by an edge. Two *vertices are adjacent* iff there is an edge between them. Two *edges are adjacent* if they share a vertex.

A graph `G′ = (V′, E′)` is a **subgraph** of `G = (V, E)`, written `G′ ⊆ G`, iff `V′ ⊆ V` and `E′ ⊆ E`. A subgraph is the result of deleting some vertices and edges from the graph.

A graph `G′ = (V′, E′)` is an **induced subgraph** of `G = (V, E)` iff `V′ ⊆ V` and every edge in `E` whose vertices are still in `V′` is also an edge in `E′`. Every induced subgraph is a subgraph, but not conversely. For the subgraph to be an induced subgraph, we can delete vertices, but we only delete those edges that included the deleted vertices.

A **simple graph** is a graph with the property that no pair of vertices is connected more than once, and no vertex is connected to itself (no *loops*). A set cannot contain an element more than once: and so an edge, which is a 2-element set containing two vertices, cannot contain thesame vertex twice (no loops); also, no pair of vertices can be connected by an edge more than once. However, sometimes we want to consider graphs with multiple edges between vertices and loops - such graphs are called **multigraphs**. (like a multiset that can include a single element multiple times).

A graph is **connected** if we can get from any vertex to any other vertex by following a *path* (of edges).

If we add all possible edges to a graph, then the resulting graph is a **complete graph**. That is, a graph is complete if every pair of vertices is connected by an edge.

Since a graph is determined completely by which vertices are adjacent to which other vertices, there is only one complete graph with a given number of vertices. Such graphs have special names - `Kₙ` is the complete graph with `n` vertices.

Each vertex in `Kₙ` is adjacent to `n-1` other vertices. The number of edges associated with a given vertex is the **degree** of a vertex. In undirected graphs, we talk about a degree of a vertex, since an edge is as if bidirectional; in digraphs, the incoming arrows make up the **in-degree** of a vertex, and the set of outgoing arrows is its **out-degree**.

A graph `Kₙ` has `n` vertices and `n(n-1) / 2` edges, that is `C(n,2)` i.e. n-choose-2 edges.

In general, if we know the degrees of all the vertices in a graph, we can determine the number of edges: the sum of the degrees of all vertices is twice the number of edges, since each edge adds to the degree of two vertices. This also means that the sum of the degrees of vertices must be even!

**Handshake Lemma** (degree sum formula): in any graph, the sum of the degrees of vertices in the graph is always twice the number of edges (and that sum is always even).

`Σ {v ∈ V} d(v) = 2e` -> `e = 1/2 Σ {v ∈ V} d(v)` 

where `d` is the degree of vertex `v`.

One use of the Handshake lemma is to find the number of edges in a graph given the *degree sequence* for the graph (list of degrees of vertices).

In any graph, the *number of vertices with odd degree must be even*.

A bipartite graph is a graph in which the vertices can be divided into two sets, `V₁` and `V₂`, with no two vertices in `V₁` adjacent and no two vertices in `V₂` adjacent (vertices in `V₁` can be adjacent to vertices in `V₂`). If all vertices in `V₁` are adjacent to all vertices in `V₂` then it is a **complete bipartite graph**, denoted `Kₙ,ₘ`, where n = |V₁| and m = |V₂|.

Graphs with special names:
- `Kₙ`   complete graph on `n` vertices
- `Kₙ,ₘ` complete bipartite graph
- `Cₙ`   cycle on `n` vertices (a big loop)
- `Pₙ`   path on `n` edges (and thus with `n+1` vertices)


```
o--------o
│ ⟍    ⟋ │
│   ⟍⟋   │
│   ⟋⟍   │
│ ⟋    ⟍ │
o--------o
    K₄

o--------o
  ⟍    ⟋
    ⟍⟋
    ⟋⟍
  ⟋    ⟍
o--------o
   K₂,₂

o--------o
│        │
│        │
│   C₄   │
│        │
o--------o

o-----o-----o-----o P₃
```


## Terminology

**Adjacency** is the relation either between two vertices when thay are connected by an edge, or between two edges if they share a vertex.

**Walk** is a sequence of vertices such that consecutive vertices in the sequence are adjacent in the graph. {a,b,c,d,c,b,c}

**Euler path** is a *walk* which uses each edge exactly once. {a,b,c,d}
**Euler circuit** is a *Euler path* which starts and ends at the same vertex. {a,b,c,d,a}

**Trail** is a *walk* in which no edge is repeated (vertices can be repeated).

**Path** is a *walk* that doesn't repeat any vertices (or edges), except maybe the first and the last.

**Cycle** is a *path* that starts and ends at the same vertex.

**Degree of a vertex** is the number of edges incident to a vertex. In a digraph, incoming arrows make up the **in-degree** of a vertex, and outgoing arrows the **out-degree** of a vertex.

**Planar** graph can be drawn in the 2D plane without any edges crossing.

A **tree** is a connected graph containing no cycles. A **forest** is a graph containing no cycles. Note that this means that a connected forest is a tree.

**Vertex coloring** is an assignment of colors to each of the vertices of a graph. *Proper vertex coloring* is obtained if adjacent vertices are always colored differently. **Chromatic number** is the minimum number of colors required in the proper vertex coloring of a graph.

# Graphs in discrete mathematics

https://en.wikipedia.org/wiki/Graph_(discrete_mathematics)

In discrete mathematics, in graph theory, a graph is a structure consisting of a set of objects, with some pairs of objects being related. A graph is mathematical structure used to model pairwise relations between objects.

**Vertex** (node, point) is a mathematical abstractions that represents an object. **Edge** (link, line) is an abstraction representing the relation between two objects. Typically, a graph is depicted in diagrammatic form with circles for vertices, and lines that connect related nodes for edges.

**Directed edges** model a one-way relation, while **undirected edges** model the two-way relations. Edges have direction but we call such graph (un)directed as a whole. For example, if vertices represent people at a party, and edges represent "have-shook-hands" relation, this may be represented by an undirected graph. However, if the relation is "owes-money-to", then the graph has to be directed.

Graphs are sometimes referred to as **simple graph** to distinguish them from **multigraphs**, which are graphs where multiple edges are allowed between two nodes (same endpoints with multiple connections), or even **hypergraphs** that can have multiple vertices assigned to one edge (in another dimension).

A graph is an ordered pair `G = (V,E)` consisting of a finite set of vertices, `V`, and a set of edges, `E`. The set of edges, `E`, consists of *unordered pairs* in case of an undirected graph, or *ordered pairs* in case of a directed graph. These pairs are known as *edges (arcs, lines)* for an undirected graph and as *arrows (directed edges/arcs/lines)* for a directed graph.


- A graph is an ordered pair `G = (V, E)`
  - `V` is the set of vertices of `G`
  - `E` is the set of edges of `G`
- The elements of `E` are pairs of vertices, `v` and `w`
  - *ordered pairs* in *directed graphs*: `(u, v)`
  - *unordered pairs* in *undirected graphs*: `{u, v}`
- The **endpoints** of an edge `(v, w)` are `v` and `w` vertices
  - e = (v,w)
  - the endpoints of an edge `e` are **adjacent** to each other
  - the endpoints of an edge `e` are **incident** with `e`
- The **degree** of a vertex is the number of its *incident edges*
- A directed edge `(v, w)` 
  - is an **out-edge** of `v`
  - is an **in-edge**  of `w`
  - the **in-degree** of a vertex is the numbers of its in-edges
  - the **out-degree** of a vertex is the numbers of its out-edges
- A **path** from a vertex `s` to `t` is a
  - sequence of vertices (x₀ = s, x₁, ..., xₖ = t) such that:
  - x₀ = s, xₖ = t and
  - ∀i. 1<=i<=k. (xᵢ₋₁, xᵢ) is an edge of `G`
  - A **cycle** is a path from a vertex `x` back to itself (in digraphs)
  - A path or cycle is **simple** if it contains every vertex of G at most once
- A graph is **connected** if there's a path between every pair of vertices
- A **forest** is a (digraph) *without cycles*
- A **tree** is a *connected forest*
- A graph's **density** is nr. of edges divided by nr. of vertices squared
  - density, d = |E| / |V|²
  - graph is dense if nr of edges is close to nr of vertices squared


## Connected Components and Spanning Forests

> A forest is a (digraph) without cycles.

- **Connected components** of a graph are its *maximal connected subgraphs*
  - since one graph may have disjoint (disconnected) subgraphs
- **Spanning forest** of a graph G is a subgraph F, `F ⊆ G`, 
  with the same number of connected components, and it must be a forest





## Rooted Tree

A tree is a connected forest. A forest is a (digraph) without cycles.

A **rooted tree** `T`:
- is a tree,
- is a directed graph,
- has one of its vertices, `r`, designated as a *root*
- there exists a path from `r` to every vertex in `T`
- Repr:
  - Tree = root (tree handler is a pointer to the root node)
  - Every node stores:
    - an arbitrary value
    - a list of its children

Standard Tree Orderings:
* Preorder:
  * each vertex appears before its children
  * each child vertex appears before its right sibling
  * vertices in each subtree appear consecutively
  * root, left, right 
* Postorder:
  * each vertex appears after its children
  * each child vertex appears before its right sibling
  * vertices in each subtree appear consecutively
  * left, right, root
* Inorder:
  * left, root, right


> Lemma: It takes linear time to arrange the vertices of a forest in preorder or postorder.

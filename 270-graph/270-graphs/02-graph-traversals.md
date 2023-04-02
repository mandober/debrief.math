# Graphs :: Graph traversals

Relations
- Adjacency
  - edge-edge: two edges that share an enpoint are *adjacent*.
  - vertex-vertex: two connected vertices are *adjacent*.
- Incidence
  - edge-vertex: an edge is *incident* to its endpoints.
- Distinctness
  - distinct vertices imply distinct edges (not vice-versa)


A **walk** is a sequence of adjacent edges in a graph, `G = (V,E)`. Given a sequence of edges, `e₁, e₂, …, eₙ`, to determine whether it constitutes a walk, we must check if all the edges actually belong to the graph, `eᵢ ∈ E`, and then whether they are adjacent: for all `eᵢ`, whether `eᵢ` is adjacent to `eᵢ﹢₁`.

A **closed walk** is a walk with the same first and last vertex, `e₁ = eₙ`


An **open walk** is walk with distinct first and last vertex.


If `w = (e₁, …, eₙ˗₁)` is a finite walk with vertex sequence `(v₁, …, vₙ)` then `w` is said to be a walk from vertex `v₁` to the vertex `vₙ`.


A **path** in a graph is a finite or infinite *sequence of adjacent edges* which joins a sequence of vertices which, by most definitions, are all distinct (and since the vertices are distinct, so are the edges).

We call a path between two vertices with the fewest edges a **shortest path**.

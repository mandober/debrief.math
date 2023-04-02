# Properties of graphs and their components

Properties of graphs
- directedness
  - undirected graphs
  - directed graphs, digraphs
- connectivity
  - connected graphs
  - disconnected graphs


Properties of vertices
- endpoint
- adjacency
- incidence
- degree
  - in-degree
  - out-degree

Properties of edges
- adjacency

Properties of vertex-edge pairs
- incidence

Properties of traversals
- openness
  - open traversal
    - open walk
  - closed traversal
    - closed walk
    - tour
- distinctness of edges
  - walk
- distinctness of vertices (implies distinctness of edges)
  - path
  - tour



## Endpoint
Endpoints are vertices of an edge. Every edge `e = (v₁,v₂)` in a graph `G = (E,V)` has two endpoints, `v₁` and `v₂`; we say that the vertices `v₁` and `v₂` are incident to the edge `e`.

## Incidence
An incidence in a graph is a vertex-edge pair such that the vertex is an endpoint of the edge.

## Adjacency of vertices

Two vertices, `v₁` and `v₂` are adjacent 
relative to a graph `G = ⟨E,V⟩` if:
1. `v₁,v₂ ∈ V`
2. `∃e. e ∈ E ⋀ e = {v₁,v₂}` (in an undirected graph)
2. `∃e. e ∈ E ⋀ [e = ⟨v₁,v₂⟩ ⋁ e = ⟨v₂,v₁⟩]` (in a digraph)

## Degree of a vertex

In an undirected graph, each vertex has a certain degree, which is the number of edges it is an endpoint of.

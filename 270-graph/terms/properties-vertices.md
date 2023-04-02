# Properties of vertices

Properties of vertices
- endpoint
- adjacency
- incidence
- degree
  - in-degree
  - out-degree



## Endpoints

Endpoints are vertices. Every edge `e = (v₁,v₂)` in a graph `G = (E,V)` has two endpoints, `v₁` and `v₂`.

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

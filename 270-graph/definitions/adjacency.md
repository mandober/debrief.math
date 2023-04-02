# adjacency

## Adjacency of edges

Two edges, 
`e₁ = (a, b)` and 
`e₂ = (c, d)` are adjacent 
relative to the graph `G = (E,V)` if:
(a,b,c,d ∈ V)
1. `e₁, e₂ ∈ E`
2. `(a = c ⋁ a = d) ⋁ (b = c ⋁ b = d)`

## Adjacency of vertices

Two vertices, `v₁` and `v₂` are adjacent 
relative to a graph `G = ⟨E,V⟩` if:
1. `v₁,v₂ ∈ V`
2. `∃e. e ∈ E ⋀ e = {v₁,v₂}` (in an undirected graph)
2. `∃e. e ∈ E ⋀ [e = ⟨v₁,v₂⟩ ⋁ e = ⟨v₂,v₁⟩]` (in a digraph)

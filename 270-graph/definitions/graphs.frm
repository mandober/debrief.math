# Graphs :: Formulae

A graph is a pair, `G = ⟨V, E⟩`, such that `E ⊆ V²`.

A graph is an ordered pair, `G = ⟨V, E⟩`, consisting of 
a set of vertices, `V`, and a set of edges, `E`, 
with the invariant that `E ⊆ V⨯V`.

An empty graph, `G = ⟨∅, ∅⟩`.
A complete graph, `G = ⟨V, V²⟩` i.e. `G = (V, V⨯V)`.

A graph with a single vertex `v`,    `G = ({v}, ∅)`.
A graph with 2 unconnected vertices, `G = ({v₁,v₂}, ∅)`.
A complete u-graph with 2 vertices, `G = ({v₁,v₂}, {{v₁,v₂}})`.
A complete digraph with 2 vertices, `G = ({v₁,v₂}, {(v₁,v₂),(v₂,v₁)})`.
A graph with 3 unconnected vertices, `G = ({v₁,v₂,v₃}, ∅)`.

A vertex is an abstract object (abstract data type), `type Vertex a = a`.
A set of vertices, `V = {v₁, …, vₙ}`.

An edge is a connection between vertices. 
A set of edges, `E = {e₁, …, eₙ}`.

An edge may be undirected, called a line or link, 
in which case it is an unordered pair of vertices, `𝓁 = {vᵢ, vⱼ}`.

An edge may be directed, called an arc or arrow, 
in which case it is an ordered pair of vertices, `𝒶 = (vᵢ, vⱼ)`.


```hs
G = (V, E)          graph
G = (V, V⨯V)        complete graph
G = (∅, ∅)          empty graph
G = ({x}, ∅)        graph with 1 vertex
G = ({v₁, v₂}, ∅)   graph with 2 unconnected vertices

-- complete undirected graphs
G = ({v₁, v₂}, {(v₁,v₂)})
G = ({v₁, v₂, v₃}, {(v₁,v₂), (v₁,v₃), (v₂, v₃)})

-- complete digraphs
G = ({v₁, v₂}, {(v₁,v₂), (v₂,v₁)})
```





- graph
  - `G = ⟨V, E⟩` s.t. `E ⊆ V⨯V`
  - `G = ⟨ {v₁, …, vₙ}, {  e₁   , …,   eₙ   } ⟩`
  - `G = ⟨ {v₁, …, vₙ}, {⟨vᵢ,vⱼ⟩ ,…, ⟨vᵢ,vⱼ⟩} ⟩`


```
                  G = ⟨V,E⟩
                       / \
                      /   \
                     /     \
       {v₁, …, vₙ} = V      E = {e₁, …, eₙ}
                            E = {⟨vᵢ,vⱼ⟩ ,…, ⟨vᵢ,vⱼ⟩}


G = ⟨ v̅ , e̅ ⟩
G = ⟨ {vᵢ} , {eₖ} ⟩
G = ⟨ {v₁, …, vₙ}, {  e₁   , …,   eₙ   } ⟩
G = ⟨ {v₁, …, vₙ}, {⟨vᵢ,vⱼ⟩ ,…, ⟨vᵢ,vⱼ⟩} ⟩
```

- empty graph,    `G = ⟨∅, ∅⟩`
- complete graph, `G = ⟨V, V⨯V⟩`, i.e. `E = V⨯V`

- u-graph,  `G = ⟨V, E⟩`, s.t. `∀e ∈ E. e = {vᵢ, vⱼ}`, where `vᵢ,vⱼ ∈ V`
- digraph,  `G = ⟨V, E⟩`, s.t. `∀e ∈ E. e = ⟨vᵢ, vⱼ⟩`, where `vᵢ,vⱼ ∈ V`

- vertex,   `v`
- diedge,   `e = ⟨v₁,v₂⟩`
- u-edge,   `e = {v₁,v₂}`

- vertices, `V = { v₁, v₂, …, vₙ }`, vᵢ ∈ V
- edges,    `E = { e₁, e₂, …, eₙ }`, eᵢ ∈ E


```
u-graph K₃
K₃ = (V, E)
   = ({a,b,c}, {eᵃᵇ, eᵇᶜ, eᵃᶜ})
   = ({a,b,c}, {(a,b), (b,c), (a,c)})
```


`∃AB ∈ 𝓥. ∃x ∈ 𝓔. x = {A,B}`
`∃AB ∈ 𝓥. ∃x ∈ 𝓔. x = ⟨A,B⟩`

`𝓖 = ⟨𝓥, 𝓔⟩`
- `𝓥`, set of vertices
- `𝓔`, set of edges, where each edge connects 2 vertices

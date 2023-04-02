# Graph theory :: Notation

- generic graph: a set of vertices and a set of edges, `G = (V, E)`
  𝓖 = ⟨𝓥, 𝓔⟩
  - order: number of vertices, `|V|`
  - size:  number of edges, `|E|`

- sequence of vertices (v₁, v₂, …, vₙ)
- sequence of edges (e₁, e₂, …, eₙ˗₁)







- (finite, non-empty) set of vertices, `𝓥`
- (finite) set of edges, `𝓔`
- vertex:
  - vertices: `∀ V₁ V₂ ∈ 𝓥`
  - distinct: `∀ V₁ V₂ ∈ 𝓥` ⋀ `V₁ ≠ V₂`
- edges (assuming `V₁,V₂ ∈ 𝓥`):
  - directed edge is an ordered pair of vertices, `⟨V₁, V₂⟩`
  - undirected edge is an unordered pair of vertices, `{V₁, V₂}`
  - membership: `E₁ ∈ 𝓔`, for some edge `E₁ = (V₁, V₂)`
  - `𝓔 ⊆ { {A,B} | A,B ∈ 𝓥 ⋀ A ≠ B }`
  - `𝓔 ⊆ { ⟨A,B⟩ | A,B ∈ 𝓥 ⋀ A ≠ B }`



## Prime symbols

The prime symbol (`′`) is often used to modify notation for *graph invariants* so that it applies to the line graph instead of the given graph.

For instance, if 
`α(G)` is the *independence number* of a graph, then
`α′(G)` is the *matching number* of the graph, which equals the independence number of its line graph.

Similarly, 
`χ(G)` is the *chromatic number* of a graph; 
`χ ′(G)` is the *chromatic index* of the graph, which equals the chromatic number of its line graph.

# Graph formulae

- graph: (V,E)
- set of vertices, V = {v₀,v₁...,vₙ}
- set of edges,    E = {e₀,e₁...,eₘ}
- cardinality of V: `n = |V|`
- cardinality of E: `m = |E|`
- max nr of edges in undigraph: `max |E|` = mₑ = `(n²-n)÷2` = `((n-1)÷2)×v`
- graph max density 0: `d₀ = m/n`
  - graph max density: `d = m/n²` = `d₀/n`
  - d = m/n² = `(n-1) ÷ (2 * v)`
  - density converges (but never touches) to 5.0
- max edges vs density:
  - d  = `(n-1) ÷ (2 * v)`
  - Eₘ = `(n-1) ÷  2 * v`
- max number of edges in digraph is hence `n²-n` (no divison by 2)
  or, if max nr. of edges in undirgraph is already available * 2


`|V|` | `max |E|` | `d = |E| ÷ |V|²` | `d₀= |E| ÷ |V|`
------|-----------|------------------|----------------
1     |    0      | 0                |  0
2     |    1      | 0.25             |  0.5
3     |    3      | 0.333            |  1
4     |    6      | 0.375            |  1.5
5     |   10      | 0.4              |  2
6     |   15      | 0.416            |  2.5
7     |   21      | 0.428            |  3
8     |   28      | 0.437            |  3.5
9     |   36      | 0.444            |  4
10    |   45      | 0.45             |  4.5
20    |  190      | 0.475            |  9.5
50    | 1225      | 0.49             | 24.5

# Graph formulae

- `𝓖` graph
- `𝓥` set of vertices
- `𝓔` set of edges
- `ϕ` is an incidence function

- A graph is a pair comprised of the set of vertices and edges, `𝓖 = ⟨𝓥,𝓔⟩`
- A graph is an triple , `𝓖 = ⟨𝓥,𝓔,ϕ⟩`
- `ϕ` is an incidence function mapping every edge to an unordered pair (2-set) of vertices; that is, an edge is associated with two distinct vertices:   
`ϕ : 𝓔 -> { {A,B} | A,B ∈ 𝓥 ⋀ A ≠ B }`

- In a complete graph, with `v` as the number of vertices, the number of edges is `ε(v) = (v² - v) / 2`. A triangle of `n` is `Δn = (n² + n) / 2`

n |  ε |  Δ | n² | n²+n | n²-n |  n!
--|----|----|----|------|------|-----
1 |  0 |↙ 1 |  1 |   2  |  0   |   1
2 |  1 |↙ 3 |  4 |   6 ↘|↖ 2   |   2
3 |  3 |↙ 6 |  9 |  12 ↘|↖ 6   |   6
4 |  6↗| 10 | 16 |  20 ↘| 12   |  24
5 | 10↗| 15 | 25 |  30  | 20   | 120
6 | 15 | 21 | 36 |  42  | 30   | 720
7 | 21 | 28 | 49 |  56  | 42
8 | 28 | 36 | 64 |  72  | 56
9 | 36 | 45 | 81 |  90  | 72
10| 45 | 55 |100 | 110  | 90


```
ε(n) = (n² - n) / 2
Δ(n) = (n² + n) / 2
n² + n = 2Δ
n² - n = 2ε

Δ(n) = 0 + 1 + … + (n - 1) + n
ε(n) = 0 + 1 + … + (n - 1)
```




V = {A,B,C,D,E,F}

E = { {A,B}, {A,C}, {A,E},  }


```dot
digraph g {
  a -> b;
  a -> c;
  a -> d;
  b -> c;
  b -> e;
  c -> e;
  c -> d;
  d -> f;
  e -> f;
}
```

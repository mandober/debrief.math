# Graph theory :: Definitions :: Traversals

Graph traversals
- walk                      (a sequence of edges)
  - finite walk             (finite sequence of edges)
  - infinite walk           (infinite sequence of edges)
  - semi-infinite walk, ray (has first but no last vertex)
  - closed walk             (same first and last vertex)
  - open walk               (distinct first and last vertex)
  - trail                   (walk with distinct edges)
- trail (walk with distinct edges)
- path (a sequence of edges)
  - path (a walk with all distinct vertices -> distinct edges)
  - path (a trail with all distinct vertices -> distinct edges)
  - simple path (some authors): a path with all distinct vertices
  - directed path, dipath (all edges have same direction)


In an undirected graph, a **walk** is a finite or infinite *sequence of edges* which joins a sequence of vertices.

In an undirected graph, a **path** is a finite or infinite *sequence of edges* which joins a sequence of vertices.

A **trail** *is a walk* in which all edges are distinct.

A **path** *is a trail* with distinct vertices (and thus distinct edges).

A walk seems to be the simplest type of sequence in a graph since it has no further requirements unlike a path, which some authors constrain to have distinct vertices; but, distinct vertices imply distinct edges.

∃v₀v₁. ∃e. e = (v₀ v₁)
∀ v₀ v₁. v₀ ≠ v₁ -> ∀ e₀ e₁. e₀ ≠ e₁
∀ e₀ e₁. e₀ ≠ e₁


In a walk `(v₀, v₁, …, vₙ)`
- distinct vᵢ ---> distinct eᵢ 
  `∀ v₀ v₁. v₀ ≠ v₁ -> ∀ e₀ e₁. e₀ ≠ e₁`
- distinct eᵢ -/-> distinct vᵢ


In an digrph, a **directed path**, or **dipath**, is a finite or infinite sequence of edges which joins a sequence of distinct vertices, such that all the edges point in the same direction.

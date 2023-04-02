# Path

https://en.wikipedia.org/wiki/Path_(graph_theory)

>A **path** in a graph is a finite or infinite *sequence of adjacent edges* which joins a sequence of vertices which, by most definitions, are all distinct (and since the vertices are distinct, so are the edges).

A path is thus the same as a walk, so some authors further require that vertices must be distinct (and distinctness of vertices implies distinctness of edges).

A **directed path** (dipath) in a directed graph is a (finite or infinite) sequence of edges which joins a sequence of distinct vertices, but with the added restriction that the *edges be all directed in the same direction*.

Let `G = (V, E, ϕ)` be a graph. 

A **finite walk** is a sequence of edges `(e₁, e₂, …, eₙ˗₁)` 
for which there is a sequence of vertices `(v₁, v₂, …, vₙ)` 
such that `ϕ(eᵢ) = {vᵢ, vᵢ﹢₁}` for `i = 1..n−1`.  
`(v₁, v₂, …, vₙ)` is the vertex sequence of the walk.

- A **closed walk** is a walk with the same first and last vertex.
- An **open walk** is walk with distinct first and last vertex.

- An **infinite walk** is a walk without the first or last vertex.
- A **semi-infinite walk (ray)** has a first vertex but no last vertex.

- A **trail** is a walk with distinct edges.
- A **path** is a trail with distinct vertices (thus distinct edges).


If `w = (e₁, e₂, …, eₙ˗₁)` is a finite walk 
with vertex sequence `(v₁, v₂, …, vₙ)` 
then `w` is said to be a walk from `v₁` to `vₙ`.

Similarly for a trail or a path.

>If there is a finite walk between two distinct vertices 
>then there is also a finite trail and a finite path between them.

Some authors do not require that all vertices of a path be distinct; 
they use the term *simple path* for a path with all distinct vertices.

A *weighted graph* associates a value (weight) with every edge in the graph. 

*The weight of a walk* (or trail, or path) in a weighted graph is the sum of the weights of the traversed edges. Sometimes the words *cost* or *length* are used instead of weight.


```
o───────o──────o
│ ⟍     │    ⟋ │
│   ⟍   │  ⟋   │
│     ⟍ │⟋     │
o───────o──────o
```

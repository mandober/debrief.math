# Graphs :: GLOSSARY

https://en.wikipedia.org/wiki/Glossary_of_graph_theory_terms

<!-- TOC -->

- [Acyclic graph](#acyclic-graph)
- [Acyclic coloring](#acyclic-coloring)
- [Adjacency](#adjacency)
- [Adjacency matrix](#adjacency-matrix)
- [Arborescence](#arborescence)
- [Arc](#arc)
- [Arrow](#arrow)
- [Anti-arborescence](#anti-arborescence)
- [Automorphism of a graph](#automorphism-of-a-graph)
- [Balanced graph](#balanced-graph)
- [Biconnected graph](#biconnected-graph)
- [Bipartite graph](#bipartite-graph)
- [Biregular](#biregular)
- [Block of a graph](#block-of-a-graph)
- [Block-cut graph](#block-cut-graph)
- [Block graph](#block-graph)
- [Bridge](#bridge)
- [Bridge of a cycle](#bridge-of-a-cycle)
- [Bridged graph](#bridged-graph)
- [Bridgeless graph](#bridgeless-graph)
- [Butterfly graph](#butterfly-graph)
- [Butterfly network](#butterfly-network)
- [Cactus graph](#cactus-graph)
- [Chord](#chord)
- [Circuit](#circuit)
- [Clique](#clique)
- [Closed trail](#closed-trail)
- [Closed walk](#closed-walk)
- [Complete graph](#complete-graph)
- [Connected graph](#connected-graph)
- [Cost](#cost)
- [Cycle](#cycle)
- [Cycle graph](#cycle-graph)
- [Cycle space](#cycle-space)
- [Digon](#digon)
- [Directed acyclic graph](#directed-acyclic-graph)
- [Degree](#degree)
- [Directed path](#directed-path)
- [Distance](#distance)
- [Eccentricity](#eccentricity)
- [Edge](#edge)
- [Empty graph](#empty-graph)
- [Endpoint](#endpoint)
- [Eulerian graph](#eulerian-graph)
- [Euler tour](#euler-tour)
- [Euler circuit](#euler-circuit)
- [Finite walk](#finite-walk)
- [Girth of a graph](#girth-of-a-graph)
- [Graph](#graph)
- [Homomorphism degree](#homomorphism-degree)
- [Forest](#forest)
- [Incidence](#incidence)
- [Infinite walk](#infinite-walk)
- [Induced graph](#induced-graph)
- [Inverted arrow](#inverted-arrow)
- [k-cycle](#k-cycle)
- [Line](#line)
- [Line graph](#line-graph)
- [Neighbor](#neighbor)
- [Neighborhood](#neighborhood)
- [Null graph](#null-graph)
- [Open walk](#open-walk)
- [Order of a graph](#order-of-a-graph)
- [Path](#path)
- [Path graph](#path-graph)
- [Peripheral cycle](#peripheral-cycle)
- [Planar graph](#planar-graph)
- [Predecessor (vertex)](#predecessor-vertex)
- [Ray](#ray)
- [Quiver](#quiver)
- [Rooted tree](#rooted-tree)
- [Semi-infinite walk](#semi-infinite-walk)
- [Simple path](#simple-path)
- [Simple cycle](#simple-cycle)
- [Size](#size)
- [Sparse graph](#sparse-graph)
- [Spanning subgraph](#spanning-subgraph)
- [Spanning tree](#spanning-tree)
- [Strongly connected graph](#strongly-connected-graph)
- [Strongly Connected components](#strongly-connected-components)
- [Subgraph](#subgraph)
- [Subforest](#subforest)
- [Successor (vertex)](#successor-vertex)
- [Subtree](#subtree)
- [Topological order](#topological-order)
- [Tour](#tour)
- [Trail](#trail)
- [Tree](#tree)
- [Triangle](#triangle)
- [Walk](#walk)
- [Weight](#weight)
- [Weighted graph](#weighted-graph)

<!-- /TOC -->

## Acyclic graph
A graph is acyclic if it has no cycles. 
An undirected acyclic graph is also called a *forest*.

## Acyclic coloring
An acyclic coloring of an undirected graph is a *proper coloring* in which every two color classes induce a forest.

## Adjacency
Adjacency is a relation between two vertices or between two edges.
1. Two vertices are adjacent if they are the endpoints of the same edge.
2. Two edges are adjacent if they share an endpoint.

## Adjacency matrix
An adjacency matrix is a way to represent a graph, where rows (indexed by `i`) and columns (indexed by `j`) are both indexed by vertices. A cell[i][j] contains a `1` if the vertices `i` and `j` are adjacent, otherwise a `0`.

## Arborescence
A directed rooted out-tree.

## Arc
An edge in a directed graph; an arc is an ordered pairs of vertices, `⟨a,b⟩`.

## Arrow
An arrow is an ordered pair of vertices, such as an edge in a directed graph. An arrow `(x, y)` has a tail `x`, a head `y`, and a direction from `x` to `y`; `y` is said to be the direct successor to `x`, and `x` the direct predecessor to `y`. The arrow `(y, x)` is the inverted arrow of the arrow `(x, y)`.

## Anti-arborescence
A directed rooted in-tree.

## Automorphism of a graph
A graph automorphism is a symmetry of a graph; it is an isomorphism from the graph to itself.

## Balanced graph
A bipartite (multipartite) graph is balanced if each two subsets of its vertex partition have sizes within one of each other.

## Biconnected graph
A graph is called biconnected if it cannot be disconnected by removal of a single vertex. Usually a synonym for 2-vertex-connected, but sometimes includes K-2 though it is not 2-connected.

## Bipartite graph
A bipartite graph is a graph whose vertices can be divided into two disjoint sets such that the vertices in one set are not connected to each other, but may be connected to vertices in the other set. In other words, such graph is 2-colorable; or, such graph has no odd length cycles.

## Biregular
A biregular graph is a bipartite graph in which there are only two different vertex degrees, one for each set of the vertex bipartition.

## Block of a graph
1. A block of a graph `G` is a *maximal subgraph* which is either an isolated vertex, a bridge edge, or a 2-connected subgraph. If a block is 2-connected, every pair of vertices in it belong to a common cycle. Every edge of a graph belongs in exactly one block.
2. The block graph of a graph `G` is another graph whose vertices are the blocks of `G`, with an edge connecting two vertices when the corresponding blocks share an *articulation point*; that is, it is the intersection graph of the blocks of `G`. The block graph of any graph is a *forest*.

## Block-cut graph
The block-cut (or block-cutpoint) graph of a graph `G` is a bipartite graph where one partite set consists of the cut-vertices of `G`, and the other has a vertex `bᵢ Bᵢ` of `G`. When `G` is connected, its block-cutpoint graph is a tree.

## Block graph
A block graph (in connected graphs also called a *clique tree*) is a graph all of whose blocks are complete graphs. A forest is a block graph; so in particular the block graph of any graph is a block graph, and every block graph may be constructed as the block graph of a graph.

## Bridge
1. A bridge (cut edge, isthmus) is an edge whose removal would disconnect the graph.

## Bridge of a cycle
1. Especially in the context of planarity testing, a bridge of a cycle is a maximal subgraph that is disjoint from the cycle and in which each two edges belong to a path that is internally disjoint from the cycle.
2. A bridge of a cycle can also mean a path that connects two vertices of a cycle but is shorter than either of the paths in the cycle connecting the same two vertices.

## Bridged graph
A bridged graph is a graph in which every cycle of four or more vertices has a bridge.

## Bridgeless graph
A bridgeless graph is a graph that has no bridge edges; that is, a 2-edge-connected graph.

## Butterfly graph
The butterfly graph has 5 vertices and 6 edges; it is formed by 2 triangles that share a vertex.

## Butterfly network
The butterfly network is a graph used as a network architecture in distributed computing, closely related to the *cube-connected cycles*.

## Cactus graph
A cactus graph (cactus, cactus tree, Husimi tree) is a connected graph in which each edge belongs to at most one *cycle*. Its blocks are cycles or single edges. If, in addition, each vertex belongs to at most two blocks, then it is called a *Christmas cactus*.

## Chord
A chord is a one-edge bridge. 

## Circuit
A circuit is a closed trail.

## Clique
A clique is a set of mutually adjacent vertices.

## Closed trail
see Tour

## Closed walk
A walk is a sequence of edges which joins a sequence of vertices. In a closed walk the first and last vertices are the same.

## Complete graph
1. A complete graph is one in which every two vertices are adjacent: all edges that could exist are present.

## Connected graph
A graph is connected if it has a path between each pair of vertices.

## Cost
see Weight

## Cycle
A cycle is a non-empty path from a node to itself. A cycle may either refer to a closed walk (i.e. a tour), or, more specifically, to a simple cycle. In either case, the choice of the first vertex is usually considered unimportant: *cyclic permutations* of the walk produce the same cycle. Important special cases of cycles include Hamiltonian cycles, induced cycles, peripheral cycles.

## Cycle graph
A cycle graph is a graph that is itself a simple cycle; a cycle graph with `n` vertices is commonly denoted `Cn`.

## Cycle space
The cycle space is a vector space generated by simple cycles in a graph.

## Digon
A 2-cycle is a digon.

## Directed acyclic graph
Directed acyclic graph (DAG) is a directed graph without cycles. All out-trees are DAGs (but not vice versa). DAGs are used to represent structures with dependencies (scheduler, build system, compiler). Algorithms that commonly operate on DAGs include finding the shortest path and producing a topological ordering of nodes.

## Degree
The degree (valency) of a vertex in a graph is the number of its *incident edges*. In a directed graph, the *in-degree* is the number of incoming edges, and *out-degree* is the number of outgoing ones. The degree of vertex `v` in graph `G` is denoted `dG(v)`, `d(G)`, or `deg(v)`. The *maximum degree* of a graph `G` (or just the degree) is the maximum of the degrees of its vertices, often denoted `Δ(G)`. The *minimum degree* of `G` is the minimum of its vertex degrees, often denoted `δ(G)`. The *total degree* of a graph is the sum of the degrees of all its vertices (by the handshaking lemma this number is even). The *degree sequence* of a graph is the collection of degrees of all vertices, sorted from largest to smallest.

## Directed path
A path in which all the edges have the same direction. If a directed path leads from vertex `x` to vertex `y`, then `x` is a predecessor of `y` and `y` is a successor of `x`; also, `y` is said to be reachable from `x`.

## Distance
The distance between any two vertices in a graph is the length of the shortest path having the two vertices as its endpoints.

## Eccentricity
The eccentricity of a vertex is the farthest distance from it to any other vertex.

## Edge
An edge has two vertices to which it is attached, called its endpoints. A line is an undirected edge, represented as a set (unordered pair) of vertices. An arc or arrow is a directed edge, represented as an ordered pair of vertices.

## Empty graph
A graph with no edges, composed entirely of one or more vertices.

## Endpoint
Endpoints are vertices of an edge. Every edge `e = (v₁,v₂)` in a graph `G = (E,V)` has two endpoints, `v₁` and `v₂`; we say that the vertices `v₁` and `v₂` are incident to the edge `e`.

## Eulerian graph
A graph that has an Euler tour.

## Euler tour
A Euler tour or circuit is a tour that traverses all the edges of a graph.

## Euler circuit
A Euler circuit or tour is a tour that traverses all the edges of a graph.

## Finite walk
A finite walk is an finite sequence of edges, as opposed to an infinite walk that has no first or last vertex.

## Girth of a graph
The girth of a graph is the length of its shortest cycle.

## Graph
The fundamental object of study in graph theory, a system of vertices connected in pairs by edges. Often subdivided into directed graphs or undirected graphs according to whether the edges have an orientation or not. Mixed graphs include both types of edges. In graph theory, a graph is a structure consisting of a related set of *objects*, called vertices and represented by circles, and a *relation* involving a pair of objects is represented by connecting then with a line which is called an edge.

## Homomorphism degree
The homomorphism degree of a graph, or its *Hadwiger number*, is the order of the largest *clique minor*.

## Forest
A forest is an undirected graph without cycles (a disjoint union of unrooted trees), or a directed graph formed as a disjoint union of rooted trees.

## Incidence
An incidence in a graph is a vertex-edge pair such that the vertex is an endpoint of the edge.

## Infinite walk
An infinite walk is an infinite sequence of edges but with no first or last vertex.

## Induced graph
`G[S]` is the induced subgraph of a graph `G` for vertex subset `S`. An induced subgraph (full subgraph) of a graph is a subgraph formed from a subset of vertices, and from all of the edges whose endpoints belong to the vertex subset. Special cases include *induced paths* - induced subgraphs that are paths, and *induced cycles* - induced subgraphs that are cycles.

## Inverted arrow
The arrow `(y, x)` is the inverted arrow of the arrow `(x, y)`.

## k-cycle
A `k`-cycle is a cycle of length `k`.

## Line
An edge in an undirected graph; a line is unordered pairs of vertices, `{a,b}`.

## Line graph
A line graph of an undirected graph `G` is another graph `L(G)` that represents the adjacencies between edges of `G`. `L(G)` is constructed in the following way: for each edge in `G`, make a vertex in `L(G)`; for every two edges in `G` that have a vertex in common, make an edge between their corresponding vertices in `L(G)`.

## Neighbor
A vertex that is adjacent to a given vertex.

## Neighborhood
The *open neighborhood* of a vertex `v` is the subgraph induced by all vertices that are adjacent to `v`. The *closed neighbourhood* is defined in the same way but also includes `v` itself. The open neighborhood of `v` in `G` may be denoted `NG(v)` or `N(v)`, and the closed neighborhood may be denoted `NGv` or `Nv`. When the openness or closedness of a neighborhood is not specified, it is assumed to be open.

## Null graph
May refer either to the order-zero graph; alternatively, an edgeless graph or an empty graph.

## Open walk
A walk is a sequence of edges which joins a sequence of vertices. In an open walk the first and last vertices are distinct.

## Order of a graph
The order of a graph is the number of its vertices.

## Path
A path is a sequence of *adjacent* vertices and edges (a sequence from the first to the last node). This is the same as a walk, so some authors further require that all the edges are distinct.

## Path graph
A path graph (linear graph) on 3 vertices: `o-------o-------o`. Its vertices are linearly distributed along a path.

## Peripheral cycle
A peripheral cycle is a cycle with at most one bridge; it must be a face in any planar embedding of its graph.

## Planar graph
In graph theory, a planar graph is a graph that can be embedded in the plane; it can be drawn on the plane so that its edges intersect only at their endpoints. In other words, it can be drawn in such a way that no edges cross each other. Such a drawing is called a *plane graph* or *planar embedding of the graph*.

## Predecessor (vertex)
A vertex coming before a given vertex in a directed path.

## Ray
see semi-infinite walk

## Quiver
A quiver is a directed graph where loops and multiple arrows between two vertices are allowed, i.e. a multidigraph. They are commonly used in representation theory: a representation `V` of a quiver assigns a vector space `V(x)` to each vertex `x` of the quiver and a linear map `V(a)` to each arrow `a`.

## Rooted tree
A rooted tree has a designated root node, where every edge either points away from the root node (*out-tree*, *arborescence*), or towards the root node (*in-tree*, *anti-arborescene*).

## Semi-infinite walk
A semi-infinite walk, or a ray, is walk with the first vertex but without the last one.

## Simple path
Some authors do not require that all vertices of a path be distinct; they use the term "simple path" for a path with all distinct vertices.

## Simple cycle
A simple cycle is a closed walk without repeated vertices, and consequently, edges.

## Size
The size of a graph is the number of its edges.

## Sparse graph
A graph with a relatively small number of edges compared to the number of vertices is sparse. Under a stricter definition, all its subgraphs must also be sparse.

## Spanning subgraph
A spanning subgraph is a subgraph that includes all vertices of the graph.

## Spanning tree
A spanning tree `T` of an undirected graph `G` is a subgraph that is a tree which includes all of the vertices of `G`. In general, a graph may have several spanning trees, but a graph that is not connected will not contain a spanning tree. If all of the edges of `G` are also edges of a spanning tree `T` of `G`, then `G` is a tree and is identical to `T`; that is, a tree has a unique spanning tree and it is itself.

## Strongly connected graph
A directed graph is strongly-connected if there is a directed path in each direction between each pair of vertices.

## Strongly Connected components
In directed graphs, a graph is said to be strongly connected if every vertex is reachable from every other vertex. The SCCs of an arbitrary directed graph form a partition into subgraphs that are themselves strongly connected. It is possible to test the strong connectivity of a graph, or to find its SCCs, in linear time, `Θ(V+E)`.

## Subgraph
A subgraph of a graph `G` is another graph formed from a subset of the vertices and edges of `G`. The vertex subset must include all endpoints of the edge subset (it may also include additional vertices). A *spanning subgraph* is one that includes all vertices of the graph; an *induced subgraph* is one that includes all the edges whose endpoints belong to the vertex subset.

## Subforest
A subgraph of a forest.

## Successor (vertex)
A vertex coming after a given vertex in a directed path.

## Subtree
A subtree is a connected subgraph of a tree. Sometimes, for rooted trees, subtrees are defined to be a special type of connected subgraph, formed by all vertices and edges reachable from a chosen vertex.

## Topological order
A topological ordering of nodes tells you how to process the nodes of a graph (especially a DAG) so you don't perform a task before first having completed all its dependencies.

## Tour
A tour (closed trail) is a walk that starts and ends at the same vertex and has no repeated edges.

## Trail
A trail is a walk in which all edges are distinct. A *path* is a trail in which all vertices (and therefore also all edges) are distinct.

## Tree
A tree is undirected graph with no cycles. Equivalently, a tree is a connected graph with `n` nodes and `n - 1` edges.

## Triangle
A 3-cycle is a triangle.

## Walk
A walk (chain) is a sequence of edges which joins a sequence of vertices. In an open walk the first and last vertices are distinct; in a closed walk, they are the same. An infinite walk is a sequence of edges but with no first or last vertex. A semi-infinite walk (ray) has a first vertex but no last vertex. A trail is a walk in which all edges are distinct. A path is a trail in which all vertices (and therefore also all edges) are distinct.

## Weight
A generic term for (usually) numerical value assigned to vertices or edges, representing some bias (cost) that influences graph traversal. For example, while *unweighted graph* may be concerned with finding the shortest path between two points, a weighted graph may be concerned with finding the cheapest path instead. The *weight of a graph* is the sum of the weights of the vertices or edges within that graph.The *weight of a subgraph* is the sum of the weights of the vertices or edges within that subgraph.

## Weighted graph
A graph whose vertices or edges have been assigned weights; more specifically, a *vertex-weighted* graph has weights on its vertices, and an *edge-weighted* graph has weights on its edges.

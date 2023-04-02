# Vertex

https://en.wikipedia.org/wiki/Vertex_(graph_theory)

- vertex, node
- endpoint
- incidence
- adjacency
- neighborhood
- degree
  - indegree
  - outdegree
- leaf vertex
- source vertex
- sink vertex
- simplicial vertex
- universal vertex
- cut vertex
- vertex separator
- k-vertex-connected graph
- independent set of vertices
- vertex cover
- vertex space of a graph
- vertex-transitive graph
- graph enumeration
- graph isomorphism
- labeled vertex
- unlabeled vertex


A **vertex** or **node** is the fundamental unit of which graphs are formed. A graph consists of a set of vertices and a set of edges: in an undirected graph an edge is an unordered pairs of vertices, while a digraph an edge is an ordered pairs of vertices.

From the point of view of graph theory, vertices are treated as featureless and indivisible objects. Thus, in a diagram of a graph, vertices are represented as possibly labeled circles. In other fields, vertices may have additional structure (e.g. in a semantic network, nodes represent concepts or classes of objects). In graph theory, however, nodes are merely anchors for the arrows.

Two vertices forming an edge are said to be the **endpoints** of this edge, and the edge is said to be **incident to the vertices**. Two vertices that share an edge are called **adjacent vertices**. The **neighborhood of a vertex** is an induced subgraph of the graph, formed by all vertices adjacent to that vertex.

## Types of vertices

The **degree of a vertex**, denoted `δ(v)` in a graph is the number of edges incident to it. An isolated vertex (a vertex that is not an endpoint of any edge) has degree 0. A **leaf vertex** (also *pendant vertex*) has degree 1. In a directed graph, the **outdegree**, `δ+(v)`, is the number of outgoing edges. The **indegree**, `δ−(v)`, is the number of incoming edges. 

A **source vertex** is a vertex with indegree 0. 
A **sink vertex** is a vertex with outdegree 0.

A **simplicial vertex** is one whose neighbors form a **clique** - every two neighbors are adjacent.

A **universal vertex** is a vertex that is adjacent to every other vertex in the graph.

A **cut vertex** is a vertex the removal of which would disconnect the remaining graph.

A **vertex separator** is a collection of vertices the removal of which would disconnect the remaining graph into small pieces.

A **k-vertex-connected graph** is a graph in which removing fewer than `k` vertices always leaves the remaining graph connected.

In an **independent set of vertices**, there are no two adjacent vertices.

A **vertex cover** is a set of vertices that includes at least one endpoint of each edge in the graph.

The **vertex space of a graph** is a vector space having a set of basis vectors corresponding with the graph's vertices.

A **vertex-transitive graph** has symmetries that map any vertex to any other vertex.

In the context of *graph enumeration* and *graph isomorphism* it is important to distinguish between labeled vertices and unlabeled vertices. A **labeled vertex** is a vertex that is associated with extra information that enables it to be distinguished from other labeled vertices; two graphs can be considered **isomorphic** only if the correspondence between their vertices pairs up vertices with equal labels. An **unlabeled vertex** is one that can be substituted for any other vertex based only on its adjacencies in the graph and not based on any additional information.

Vertices in graphs are analogous to, but not the same as, vertices of polyhedra: the skeleton of a polyhedron forms a graph, the vertices of which are the vertices of the polyhedron, but polyhedron vertices have additional structure (their geometric location) that is not assumed to be present in graph theory. The *vertex figure* of a vertex in a polyhedron is analogous to the neighborhood of a vertex in a graph.

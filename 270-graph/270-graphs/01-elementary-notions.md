# Graphs :: Elementary notions

## Contents

- graph
- vertex (node)
  - endpoint (wrt an edge)
  - neighborhood (of a vertex)
  - adjacency (to a vertex)
  - adjacency (to an edge)
  - order (number of vertices)
- edge
  - incidence (to a vertex)
  - adjacency (to an edge)
  - size (number of edges)
- directedness
  - undirected graph
    - line (undirected edge)
  - directed graph, digraph
    - arc, arrow (directed edge)
    - arrow, wrt to its enpoints:
      - head, source, origin
      - tail, target, sink
- weightedness
  - unweighted graph
  - weighted graph
    - weight, cost



## Elementary notions

A graph is a mathematical structure used to model pairwise relations (represented by edges) between abstract math objects (represented by vertices). A graph is a network of vertices and edges that connect them.

A **graph** `G = ⟨V, E⟩` consists of a set of vertices `V` and a set of edges, `E`, with the *graph invariant* that `E ⊆ V⨯V`.

A **complete graph** is a graph in which each vertex is connected to all other vertices, `G = ⟨V, E⟩ = ⟨V, V⨯V⟩`

An **empty graph** is a graph, `G = ⟨V, E⟩ = ⟨∅, ∅⟩`.


A **vertex** or a node represents an abstract, structureless mathematical object and it can be associated with a number of edges. **Adjacent vertices** share an edge. The **neighborhood of a vertex** is formed by all vertices adjacent to that vertex. The number of vertices in a graph is its **order**.

An **edge** is an association between vertices that represents some kind of relation between the objects. An edge connects two vertices, which are called its **endpoints**. The first endpoint of a directed edge is called the *tail* and the second endpoint is the *head*. The number of edges in a graph is its **size**.

Two edges are **adjacent edges** if they share an endpoint; if they share both enpoints then they are the same (undirected) edge, but possibly two distinct edges if the graph is directed.

An edge is said to be **incident** on its two enpoints. More strictly, an incidence in a graph is a vertex-edge pair such that the vertex is an endpoint of the edge. However, often times it is also said that the vertex is incident to that edge.

The primary classification of graphs is according to the *directedness*: graphs are either undirected or directed, which is a property pertaining and determined by their edges.

In an **undirected graph**, edges are undirected and called **lines**. An edge between two vertices `v₁` and `v₂` represent the association of `v₁` to `v₂` , but also of `v₂` to `v₁`. Thus, a line is an *unordered pair of vertices*, a 2-set, `e = {v₁,v₂}`. However, in an abuse of notation, an edge is also denoted as an ordered pair, `e = (v₁,v₂)` and the context makes the intention clear.

In a **directed graph** or a **digraph**, edges are called **arcs** or **arrows** to emphasize the importance of their direction. An arc from a vertex `v₁` to `v₂` is not the same as an arc from `v₂` to `v₁`, `⟨v₁,v₂⟩ ≠ ⟨v₂,v₁⟩`. Thus, an arrow is an *ordered pair of vertices*, `⟨v₁,v₂⟩`.

Directed graphs are more general since every undirected graph can be represented as a digraph by interpreting each line as a pair of arrows, one in each direction.

Another classification of graphs is according to the **weightedness**: graphs are either unweighted or weighted, which is a property pertaining to their edges. Each edge in a weighted graph is associted with a specific weight or **cost**. The weight may be used to express the favorability of one set of edges over another with the total cost representing a metric of intereset (e.g. denseness of road traffic).

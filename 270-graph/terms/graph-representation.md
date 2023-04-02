# Graph representation

<!-- TOC -->

- [Adjacency list of verices](#adjacency-list-of-verices)
- [Adjacency list of edges](#adjacency-list-of-edges)
- [Adjacency matrix](#adjacency-matrix)
- [Incidence matrix](#incidence-matrix)
- [Dot product representation of a graph](#dot-product-representation-of-a-graph)
- [Graph-related problems](#graph-related-problems)

<!-- /TOC -->


## Adjacency list of verices

https://en.wikipedia.org/wiki/Adjacency_list

An **adjacency list** representation of a graph 
associates each vertex with 
the set of its neighbouring vertices (aka, its edges).

```js
{
  V₁ => [V₂, V₄, V₅]
  V₂ => [V₁, V₄]
  V₄ => [V₁, V₂, V₃]
}
```

One repr is as map whose keys are the nodes of the graph. For each key, the corresponding value is a list containing the nodes that are connected by a direct arc from this node.

```hs
adjacencyList =
  [ (a, {b,c,d,e})
  , (b, {a})
  , (c, {a,d})
  , (d, {a,c})
  ]
```

Cormen et al. suggest an implementation in which the vertices are represented by index numbers. Their representation uses an array indexed by vertex number, in which the array cell for each vertex points to a singly linked list of the neighboring vertices of that vertex. In this representation, the nodes of the list may be interpreted as edge objects; however, they do not store the full information about each edge (they only store one of the two endpoints of the edge) and in undirected graph there will be two different list nodes for each edge (one within the lists for each of the two endpoints of the edge).

The main operation performed by the adjacency list data structure is to *report a list of the neighbors of a given vertex*. This can be performed in constant time per neighbor. In other words, the total time to report all of the neighbors of a vertex `v` is proportional to the degree of `v`.

It is also possible, but not as efficient, to use adjacency lists to test *whether an edge exists* between two specified vertices. In an adjacency list in which the neighbors of each vertex are unsorted, testing for the existence of an edge may be performed in time proportional to the minimum degree of the two given vertices, by using a sequential search through the neighbors of this vertex. If the neighbors are represented as a sorted array, binary search may be used instead, taking time proportional to the logarithm of the degree.

## Adjacency list of edges

By default and convention, an adjacency list is considered in terms of vertices. The alternative is to form the list in terms of edges and specify only the edges, letting the set of vertices be inferred from them.

```hs
edges = [ (V₂, V₄), (V₄, V₅), (V₁, V₅), , (V₄, V₁), … ]
```

However, this representation turns out to be very ineffecient for it makes many common tasks akward to express.

## Adjacency matrix

https://en.wikipedia.org/wiki/Adjacency_matrix

The main alternative to the adjacency list is the adjacency matrix, a matrix whose rows and columns are indexed by vertices and whose cells contain a Boolean value that indicates whether an edge is present between the vertices corresponding to the row and column of the cell.

The space use of the adjacency list is proportional to the number of `E + V`, while for an adjacency matrix stored in this way the space is proportional to `V²`. However, it is possible to store adjacency matrices more space-efficiently, matching the linear space usage of an adjacency list, by using a hash table indexed by pairs of vertices rather than an array.

The other significant difference between adjacency lists and adjacency matrices is in the efficiency of the operations they perform. In an adjacency list, the neighbors of each vertex may be listed efficiently, in time proportional to the degree of the vertex. In an adjacency matrix, this operation takes time proportional to the number of vertices in the graph, which may be significantly higher than the degree. On the other hand, the adjacency matrix allows testing *whether two vertices are adjacent* to each other in constant time; the adjacency list is slower to support this operation.

## Incidence matrix

An incidence matrix is a two-dimensional array that uses rows to represent nodes and columns to represent edges. This means there can be an uneven number of rows and columns. Each column represents a unique edge, so each column has 2 entries for 2 endpoints.

The edge `A-----B` is repr by placing `1` in the rows `A` and `B`.

```
G|1 2 3 4
-|-------
a|1 0 1 1
b|1 1 0 0
c|0 1 1 0
d|0 0 0 1
```

To repr a directed graph use `-1` at the start node for the arrow's tail, and `1` at the particular row to mark the arrow's head.

```
G|  1  2  3  4
-|------------
a| -1  0 -1  1
b|  1  1  0  0
c|  0 -1  1  0
d|  0  0  0 -1
```

The arc `A----->B` is repr with `-1` at the row A (start point) and `1` at the row B (endpoint).

An incidence matrix can also repr weighted graphs by using the weight number itself instead of 0 or 1.


## Dot product representation of a graph

https://en.wikipedia.org/wiki/Dot_product_representation_of_a_graph


## Graph-related problems

- Finding the shortest path between two nodes
- Calculating the path between two nodes
- Generating the list of all paths, possibly with no cycles
- TSP
- whether an edge exists
- whether an edge exists
- report a list of the neighbors of a given vertex

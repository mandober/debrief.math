# Adjacency matrix

https://en.wikipedia.org/wiki/Adjacency_matrix

An adjacency matrix is a square matrix used to represent a finite graph. The elements of the matrix indicate whether pairs of vertices are adjacent or not in the graph.

```js
⎡ 1 0 1 0 ⎤
⎢ 0 0 1 0 ⎥
⎢ 1 1 0 1 ⎥
⎣ 0 1 0 0 ⎦

G 0 1 2 3
0 x   x
1     x
2 x x   x
3   x

Represents the graph with edges:
(0,0)       (0,2)
            (1,2)
(2,0) (2,1)       (2,3)
      (3,1)
```

In the special case of a finite simple graph, the adjacency matrix is a `(0,1)-matrix` with zeros on its diagonal.

If the graph is undirected, the adjacency matrix is symmetric.

The relationship between a graph and the eigenvalues and eigenvectors of its adjacency matrix is studied in *spectral graph theory*.

The adjacency matrix of a graph should be distinguished from its *incidence matrix*, a different matrix representation whose elements indicate whether vertex-edge pairs are incident or not, and its *degree matrix*, which contains information about the degree of each vertex.

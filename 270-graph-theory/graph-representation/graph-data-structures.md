# Graph-theoretic data structures

https://en.wikipedia.org/wiki/Graph_(abstract_data_type)
https://en.wikipedia.org/wiki/Distance_matrix

There are different ways to store graphs related to the size and other complexities of a data structure itself, along with the cost of intended graph-manipulating operations.

Theoretically, graphs are often represented using a list or matrix, but in case of practical utilities the best structure is often a combination of both.

List structures are often preferred for sparse graphs wrt memory consumption. On the other hand, matrix provides faster access for some applications but can consume huge amounts of memory in case of sparse graphs. Technics to implement an efficient sparse matrix data type, on a modern parallel architecture, are still being investigated.

List structures include:
* *Edge list* is an array of pairs of vertices
* *Adjacency list* separately lists the neighbors of each vertex: much like the edge list, each vertex has a list of which vertices it is adjacent to.

Matrix structures include:
* *Incidence matrix* is a logical matrix whose rows represent vertices and its columns represent edges.
* *Adjacency matrix* has both rows and columns indexed by vertices. A `1` indicates adjacent vertices.

In both cases, 1 indicates two adjacent objects and 0 indicates two non-adjacent objects.

* *Degree matrix* indicates the degree of vertices.
* *Laplacian matrix* is a modified form of the adjacency matrix that incorporates information about the degrees of the vertices, and is useful in some calculations such as Kirchhoff's theorem on the number of spanning trees of a graph.
* *Distance matrix*, like the adjacency matrix, has both its rows and columns indexed by vertices, but rather than containing a 0 or a 1 in each cell it contains the length of a shortest path between two vertices.

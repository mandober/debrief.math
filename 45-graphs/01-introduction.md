# Graph Theory Introduction

https://en.wikipedia.org/wiki/Graph_(discrete_mathematics)
https://en.wikipedia.org/wiki/Graph_theory


A graph is a data structure defined by two types of objects:
* A set of **nodes**, also called vertices (sn. vertex) or points
* A set of **edges** (links, lines) that connect related pair of nodes

Typically, a graph is depicted using a diagram in which the nodes are represented by circles and relations between them with lines that represent the edges.

Depending on a type of relation between two nodes, an edge may be directed or undirected, and by extension, a graph is either directed or undirected (mixed graphs are disallowed).

In **undirected graphs**, relations between nodes are symmetric (reciprocal, mutual), represented by a line connected the two related nodes. **Directed graphs** are used to describe one-sided relations between nodes, represented by arrows.

For example, if the vertices represent people at a party, undirected graph may be used to model people that have shook hands, which may be represented by a line that connects two nodes (symmetric relation). On the other hand, a directed graph may be used to model admiration: one person admiring another may very well be a one-sided relation (could be called asymmetric relation but asymmetry enforces that, if a is related to b, then b must not be related to a).

Any undirected graph can be represented as a directed graph (by converting a line connecting a and b into a couple of arrows, a to b and b to a).

An edge in a directed graph may be *labeled* or identified and denoted by an ordered pair containing the two related nodes, `(from, to)`. In an undirected graph edges may be represented as unordered pairs.

Graphs may also be weighted and **unweighted**. In a **weighted graph**, an edge is associated with a *weight*, that quantifies the relation between a pair of nodes.

Graphs are studied in discrete math, they are the basic subject of graph theory. The word "graph" was first used in this sense by James Joseph Sylvester in 1878.

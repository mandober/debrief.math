# Transitive closure

https://en.wikipedia.org/wiki/Transitive_closure

The **transitive closure** of a binary relation `R` on a set `X` is the smallest relation on `X` that contains `R` and is transitive.

For finite sets, "smallest" can be taken in its usual sense, as having the fewest related pairs. For infinite sets, it is *the unique minimal transitive superset* of `R`.

For example, if `X` is a set of airports and, for `x` and `y` in `X`, `xRy` means "there is a direct flight from airport x to airport y", then the transitive closure of `R` on `X` is the relation `R+` such that `xR+y` means "it is possible to fly from x to y in one or more flights".

Informally, the transitive closure gives you the set of all places you can get to from any starting place.

More formally, the transitive closure of a binary relation `R` on a set `X` is the transitive relation `R+` on set `X` such that `R+` contains `R` and `R+` is minimal. If the binary relation itself is transitive, then the transitive closure is that same binary relation; otherwise, the transitive closure is a different relation.

Conversely, *transitive reduction* adduces a minimal relation `S` from a given relation `R` such that they have the same closure, that is, `S+ = R+`. However, many different `S` with this property may exist.

Transitive closure and transitive reduction are also studied in graph theory.

## Contents

- Transitive relations and examples
- Existence and description
- Properties
- In graph theory
- In logic and computational complexity
- In database query languages
- Algorithms


## Transitive relations and examples

```
X  = {1,2,3,4}
R≤ = {(1,3), (2,4)}
R′ = {(1,2), (1,4), (2,3), (3,4)}
Rᐩ = R≤ ⋃ R′
```

If `X` is a set, `X = {1,2,3,4}`, and a binary relation `R≤` on `X` is a set of ordered pairs `R≤ = { (1,3), (2,4) }`. Then, a transitive closure of the binary relation `R≤` on the set `X` is `Rᐩ` i.e. the smallest relation on `X` that contains `R` and is transitive. Thus, `Rᐩ` contains `R≤`, and needs to be united with the relation `R′`, that is the set containing remaining ordered pairs, such that when united with `R≤` the minimal set that is transitive is produced: `Rᐩ = R≤ ⋃ R′`.



A relation `R` on a set `X` is transitive if `∀xyz ∈ X. (xRy ∧ yRz) -> xRz`.

Examples of transitive relations include the equality relation on any set, LE relation on any linearly ordered set, and the relation "x was born before y" on the set of all people.

An example of a *non-transitive relation* is "city x can be reached via a direct flight from city y" on the set of all cities. Simply because there is a direct flight from one city to a second city, and a direct flight from the second city to the third, does not imply there is a direct flight from the first city to the third.

The transitive closure of this relation is a different relation, namely "there is a sequence of direct flights that begins at city x and ends at city y". Every relation can be extended in a similar way to a transitive relation.

An example of a non-transitive relation with a less meaningful transitive closure is "x is the day of the week after y". The transitive closure of this relation is "some day x comes after a day y on the calendar", which is trivially true for all days of the week x and y (and thus equivalent to the Cartesian square, which is "x and y are both days of the week").

## Existence and description

...

## Properties

The **intersection** of two transitive relations is transitive.

The **union** of two transitive relations need not be transitive. To preserve transitivity, one must take the transitive closure. This occurs, for example, when taking the union of two equivalence relations or two preorders. To obtain a new equivalence relation or preorder one must take the transitive closure (reflexivity and symmetry, in the case of equivalence relations, are automatic).

## In graph theory

In computer science, the concept of transitive closure can be thought of as constructing a data structure that makes it possible to answer *reachability* questions. That is, can one get from node `a` to a node `d` in one or more hops?

A binary relation tells you only that a node `a` is connected to a node `b`, and that node `b` is connected to node `c`, etc.

After the transitive closure is constructed, we may determine that node `d` is reachable from node `a`, in one `O(1)` operation.

The data structure is typically stored as a matrix, so if `matrix[1][4] = 1`, then it is the case that node 1 can reach node 4 through one or more hops.

>The transitive closure of the adjacency relation of a directed acyclic graph (DAG) is the *reachability relation* of the DAG and a *strict partial order*.

The transitive closure of an undirected graph produces a *cluster graph*, a disjoint union of *cliques*. Constructing the transitive closure is then equivalent to the problem of finding the components of such graph.

## In logic and computational complexity

The transitive closure of a binary relation cannot, in general, be expressed in first-order logic (FOL). This means that one cannot write a formula using predicate symbols `R` and `T` that will be satisfied in any model iff `T` is the transitive closure of `R`.

In finite model theory, FOL extended with a *transitive closure operator* is usually called *transitive closure logic*, abbr. as FO(TC) or just TC.

TC is a sub-type of *fixpoint logics*. The fact that FO(TC) is strictly more expressive than FOL was discovered by Ronald Fagin in 1974. That result was then rediscovered by Alfred Aho and Jeffrey Ullman in 1979, who proposed to use fixpoint logic as a database query language. With more recent concepts of finite model theory, proof that FO(TC) is strictly more expressive than FOL follows immediately from the fact that FO(TC) is not *Gaifman-local*.

In computational complexity theory, the complexity class `NL` corresponds precisely to the set of logical sentences expressible in TC. This is because the transitive closure property has a close relationship with the `NL-complete` problem `STCON` for finding directed paths in a graph.

Similarly, the class `L` is FOL with the commutative, transitive closure. When transitive closure is added to second-order logic instead, we obtain `PSPACE`.

## In database query languages

Since the 1980s Oracle Database has implemented a proprietary SQL extension `CONNECT BY... START WITH` that allows the computation of a transitive closure as part of a declarative query.

The SQL 3 (1999) standard added a more general `WITH RECURSIVE` construct also allowing transitive closures to be computed inside the query processor.

As of 2011 the latter is implemented in IBM Db2, Microsoft SQL Server, Oracle, PostgreSQL, and MySQL (v8.0+). Datalog also implements transitive closure computations.

MariaDB implements *Recursive Common Table Expressions*, which can be used to compute transitive closures. This feature was introduced in release 10.2.2 of April 2016.

## Algorithms

Efficient algorithms for computing the transitive closure of the adjacency relation of a graph can be found in Nuutila[^Nuutila1995].

[^Nuutila1995]: `Efficient transitive closure computation in large digraphs` 1995, Esko Nuutila. ISBN 951-666-451-2.

Reducing the problem to multiplications of adjacency matrices achieves the least time complexity, viz. that of matrix multiplication (Munro 1971, Fischer & Meyer 1971), which is `O(n^2.3728596)` as of Dec 2020.

However, this approach is not practical since both the constant factors and the memory consumption for sparse graphs are high (Nuutila 1995). The problem can also be solved by the *Floyd-Warshall algorithm*, or by *repeated breadth-first search* or *depth-first search* starting from each node of the graph.

More recent research has explored efficient ways of computing transitive closure on distributed systems based on the Map-Reduce paradigm.

Given a directed graph    `G = (V, E)`
* For transitive closure:   
  construct a graph       `G′ = (V, E′)`   
    with edge `(i,j) ∈ E′`   
    iff there is a directed path    
    from `i` to `j` in `G`.   
* For transitive reduction:     
  construct a small graph `G′ = (V, E′)`   
    with a directed path   
    from `i` to `j` in `G′`   
    iff there is an edge `(i,j) ∈ E`.


Excerpt from *The Algorithm Design Manual*: Transitive closure can be thought of as establishing a data structure that makes it possible to solve reachability questions (can I get to x from y) efficiently. After the preprocessing of constructing the transitive closure, all reachability queries can be answered in constant time by simply reporting a matrix entry. Transitive closure is fundamental in propagating the consequences of modified attributes of a graph G. For example, consider the graph underlying any spreadsheet model, where the vertices are cells and there is an edge from cell i to cell j if the result of cell j depends on cell i. When the value of a given cell is modified, the values of all reachable cells must also be updated. The identity of these cells is revealed by the transitive closure of G. Many database problems reduce to computing transitive closures, for analogous reasons.


## Refs

* Stony Brook Algorithm Repository: `Transitive Closure and Reduction`
https://algorist.com/problems/Transitive_Closure_and_Reduction.html


* `Boolean matrix multiplication and transitive closure`, 1971, M.J. Fischer and A.R. Meyer
http://mercury.pr.erau.edu/~siewerts/cs332/documents/Papers/Transitive-Closure/Transitive-Closure-with-Boolean-Matrices.pdf

* `Efficient transitive closure computation in large digraphs`, 1971, Ian Munro

* Floyd Warshall Algorithm
- https://en.wikipedia.org/wiki/Floyd%E2%80%93Warshall_algorithm
- https://www.geeksforgeeks.org/floyd-warshall-algorithm-dp-16/
- https://www.programiz.com/dsa/floyd-warshall-algorithm
- Floyd Warshall in JS:
  - https://github.com/felipernb/algorithms.js/blob/master/src/algorithms/graph/floyd_warshall.js
  - https://github.com/cpettitt/graphlib/blob/master/lib/alg/floyd-warshall.js

* Transitive closure of a graph
https://www.geeksforgeeks.org/transitive-closure-of-a-graph/

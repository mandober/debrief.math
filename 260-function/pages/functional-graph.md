# Functional graph

https://en.wikipedia.org/wiki/Functional_graph
https://en.wikipedia.org/wiki/Pseudoforest#Graphs_of_functions

In a sense, *directed pseudoforests* and *endofunctions* are mathematically equivalent.

In graph theory, a pseudoforest is an undirected graph in which every connected component has at most one cycle; that is, it is a system of vertices, and edges connecting pairs of vertices, such that no two cycles of consecutive edges share any vertex with each other, nor can any two cycles be connected to each other by a path of consecutive edges.

Any function `ƒ : X → X` (an endomorphism of `X`) can be interpreted as defining a directed pseudoforest which has an edge from `x` to `y` whenever `ƒ(x) = y`. The resulting directed pseudoforest is maximal, and may include self-loops whenever some value `x` has `ƒ(x) = x`.

Alternatively, omitting the self-loops produces a non-maximal pseudoforest. In the other direction, any maximal directed pseudoforest determines a function `ƒ` such that `ƒ(x)` is the target of the edge that goes out from `x`, and any non-maximal directed pseudoforest can be made maximal by adding self-loops and then converted into a function in the same way. For this reason, maximal directed pseudoforests are sometimes called *functional graphs*.


<details><summary>Diagram 1</summary>

x | f(x)
--|------
0 | 6
1 | 6
2 | 0
3 | 1
4 | 4
5 | 3
6 | 3
7 | 4
8 | 0

Diagram 1: A function, `f : X -> X` where `X = {0,1,2,3,4,5,6,7,8}`, and the corresponding functional graph.

</details>




Viewing a function as a functional graph provides a convenient language for describing properties that are not as easily described from the function-theoretic point of view; this technique is especially applicable to problems involving *iterated functions* (which correspond to paths in functional graphs).

*Cycle detection*, the problem of following a path in a functional graph to find a cycle in it, has applications in cryptography and computational number theory, as part of Pollard's rho algorithm for integer factorization and as a method for finding collisions in cryptographic hash functions. 

In these applications, `ƒ` is expected to behave randomly; Flajolet and Odlyzko study the graph-theoretic properties of the functional graphs arising from randomly chosen mappings. 

In particular, a form of the birthday paradox implies that, in a random functional graph with `n` vertices, the path starting from a randomly selected vertex will typically loop back on itself to form a cycle within `O(√n)` steps. Konyagin et al. have made analytical and computational progress on graph statistics.

Martin, Odlyzko and Wolfram investigate pseudoforests that model the dynamics of *cellular automata*. These functional graphs, which they call *state transition diagrams*, have one vertex for each possible configuration that the ensemble of cells of the automaton can be in, and an edge connecting each configuration to the configuration that follows it according to the automaton's rule. One can infer properties of the automaton from the structure of these diagrams, such as the number of components, length of limiting cycles, depth of the trees connecting non-limiting states to these cycles, or symmetries of the diagram. For instance, any vertex with no incoming edge corresponds to a "Garden of Eden" pattern and a vertex with a self-loop corresponds to a still life pattern.

Another early application of functional graphs is in the *trains* used to study *Steiner triple systems*. The train of a triple system is a functional graph having a vertex for each possible triple of symbols; each triple `pqr` is mapped by `ƒ` to `stu`, where `pqs`, `prt`, `qru` are the triples that belong to the triple system and contain the pairs `pq`, `pr`, `qr` respectively. Trains have been shown to be a powerful invariant of triple systems although somewhat cumbersome to compute.

# Graph of a function

https://en.wikipedia.org/wiki/Graph_of_a_function

- For graphical representation, see [Plot][1].
- For a combinatorial structure, see [Graph][2].
- For a graph-theoretic representation, see [Functional graph][3].

[1]: https://en.wikipedia.org/wiki/Plot_(graphics)
[2]: https://en.wikipedia.org/wiki/Graph_(discrete_mathematics)
[3]: https://en.wikipedia.org/wiki/Functional_graph

*Directed pseudoforests* and *endofunctions* are in some sense mathematically equivalent. Any function `ƒ : X → X` from a set `X` to itself (that is, an endomorphism of `X`) can be interpreted as defining a directed pseudoforest which has an edge from `x` to `y` whenever `ƒ(x) = y`. The resulting directed pseudoforest is *maximal*, and may include self-loops whenever some value `x` has `ƒ(x) = x`. Alternatively, omitting the *self-loops* produces a *non-maximal pseudoforest*.

In the other direction, any *maximal directed pseudoforest* determines a function `ƒ` such that `ƒ(x)` is the target of the edge that goes out from `x`, and any non-maximal directed pseudoforest can be made maximal by adding self-loops and then converted into a function in the same way.

For this reason, maximal directed pseudoforests are sometimes called **functional graphs**.

Viewing a function as a functional graph provides a convenient language for describing properties that are not as easily described from the function-theoretic point of view; this technique is especially applicable to problems involving iterated functions, which correspond to paths in functional graphs.

# Graph rewriting

https://en.wikipedia.org/wiki/Graph_rewriting

**Graph rewriting** or **graph transformation** concerns the technics related to creating a new graph out of the old one algorithmically.

The applications of graph rewriting include software engineering, software design, software verification, layout algorithms, picture generation.

Graph rewriting can be used as an abstraction of computation. The basic idea is that if the state of a computation can be represented as a graph, further steps in that computation can then be represented as graph transformation rules. Such rules consist of an original graph, which is to be matched to a subgraph in the complete state, and a replacing graph, which will replace the matched subgraph.

Formally, a graph rewriting system usually consists of a set of *graph rewrite rules* of the form `L → R`, with `L` as the *pattern graph* (or LHS) and `R` as the *replacement graph* (or RHS of a rule).

A graph rewrite rule is applied to the host graph by searching for an occurrence of the pattern graph (pattern matching, thus solving the subgraph isomorphism problem) and by replacing the found occurrence by an instance of the replacement graph.

Rewrite rules can be further regulated in the case of labeled graphs, such as in string-regulated graph grammars.

Sometimes graph grammar is used as a synonym for graph rewriting system, especially in the context of formal languages; the different wording is used to emphasize the goal of constructions, like the enumeration of all graphs from some starting graph, i.e. the generation of a graph language – instead of simply transforming a given state (host graph) into a new state.

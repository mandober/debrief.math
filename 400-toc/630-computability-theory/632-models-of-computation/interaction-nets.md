# Interaction nets

https://en.wikipedia.org/wiki/Interaction_nets

Interaction nets are a *graphical model of computation* devised by Yves Lafont in 1990[^1] as a generalisation of the proof structures of linear logic.

An interaction net system is specified by
- a set of agent types
- a set of interaction rules

Interaction nets are an *inherently distributed model of computation* in the sense that computations can take place simultaneously in many parts of an interaction net, and *no synchronisation is needed*.

The latter is guaranteed by the *strong confluence* property of reduction in this model of computation. Thus interaction nets provide a natural language for massive parallelism.

Interaction nets are at the heart of many implementations of the lambda calculus, such as *efficient closed reduction*[^2] and *optimal, in Lévy's sense, Lambdascope*[^3].


[^1]: Lafont, Yves (1990). "Interaction nets".
[^2]: Mackie, Ian (2008). "An Interaction Net Implementation of Closed Reduction".
[^3]: van Oostrom, Vincent; van de Looij, Kees-Jan; Zwitserlood, Marijn (2010). "Lambdascope: Another optimal implementation of the lambda-calculus".

## Definitions

Interactions nets are graph-like structures consisting of agents and edges.

An agent of type `α` 
and with arity `ar(α) = n ≥ 0` 
has *one principal port* 
and `n` *auxiliary ports*.

- any port can be connected to at most 1 edge
- ports that are not connected to any edge are called *free ports*
- free ports together form the *interface* of an interaction net
- all agent types belong to a set `Σ` called *signature*


An interaction net that consists solely of edges 
is called a *wiring* and usually denoted as `ω`.

A *tree* `t` with its root `x` is inductively defined either as an edge `x`, or as an agent `α` with its free principal port `x` and its auxiliary ports `xᵢ` connected to the roots of other trees `tᵢ`.

Graphically, the primitive structures of interaction nets can be represented as follows:

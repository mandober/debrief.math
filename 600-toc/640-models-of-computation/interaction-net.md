# Interaction net

A very simple system of interaction combinators, with only 3 symbols and 6 rules, is a universal model of distributed computation. It is the continuation of the work on interaction nets, inspired by Girard's *proof nets* for linear logic.

The fundamental laws of computation depend on the choice of a particular model of computation, some of which are:
* *Turing machines* imitate the mathematician writing symbols on paper. There are many variants, for instance register machines and stack machines. This notion has the advantage of being simple and powerful at the same time, but it models only sequential computation.
* *Cellular automata* can be seen as discrete approximations of physical processes. This notion models distributed computation, but with a global synchronization of transitions.
* *Rewrite systems* are closer to the algebraic tradition, since a rewrite rule is just an oriented equation. An interesting example is the λ-calculus, with only one rewrite rule, `(λx.u)v -->> v[u:=x]`.

*Lambda calculus* is Turing complete and it has a nice logical interpretation, at least in the typed case. However, the substitution rule is more complicated than it seems: is it reasonable to consider substitution as an atomic operation? In this sense, a more primitive system is *combinatory logic*, with two rewrite rules: `Kxy -->> x`, `Sxyz -->> xz(yz)`. But again, is it reasonable to consider erasing and duplication as atomic operations?

Following this tradition of rewrite systems, interaction nets were introduced in [Laf90] as a model of distributed computation with local synchronization. These nets, which are related to the connection graphs of [Baw86], appeared as a generalization of Girard's proof nets for linear logic (see [Gir95,Laf95]).

By *local synchronization*, we mean that there is no need to consider a global time for computation; in other words, time is relativistic. By *distributed*, we mean that the computation is performed at several places at the same time. The interaction nets are *strongly deterministic*: not only the result, but also the computation is unique, up to trivial commutations.

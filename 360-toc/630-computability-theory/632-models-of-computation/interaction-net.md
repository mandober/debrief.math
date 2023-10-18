# Interaction net

`Interaction Combinators`, Yves Lafont, 1997
https://www.sciencedirect.com/science/article/pii/S0890540197926432?via%3Dihub

## Abstract
It is shown that a very simple system of *interaction combinators*, with only 3 symbols and 6 rules, *is a universal model of distributed computation*, in a sense that will be made precise. This paper is the continuation of the author's work on *interaction nets*, inspired by *Girard's proof nets* for linear logic, but no preliminary knowledge of these topics is required for its reading.

## Interaction Combinators

The fundamental laws of computation depend on the choice of a particular model of computation, some of which are:

* *Turing machines* imitate the mathematician writing symbols on paper. There are many variants, for instance register machines and stack machines. This notion has the advantage of being simple and powerful at the same time, but it models only sequential computation.

* *Cellular automata* can be seen as discrete approximations of physical processes. This notion models distributed computation, but with a global synchronization of transitions.

* *Rewrite systems* are closer to the algebraic tradition, since a rewrite rule is just an oriented equation.

An interesting example of a rewrite system is the λ-calculus, with only one rewrite rule

(λx.u)v -->> v[x:=u]      sometimes denoted: (λx.u)v -->> v[u/x]

lambda calculus is Turing-complete and it has a nice logical interpretation, at least in the typed case.

However, the rule is more complicated than it seems: is it reasonable to consider *substitution as an atomic operation*? In this sense, a more primitive system is CL, with 2 rewrite rules:

`Kxy -->> x`, `Sxyz -->> xz(yz)`

But again, is it reasonable to consider *erasing* (K discards the second arg) and *duplication* (S duplicates the first arg) as atomic operations?



Following this tradition of rewrite systems, **interaction nets** were introduced in [Laf90] as a *model of distributed computation with local synchronization*.

These nets, which are related to the *connection graphs* of [Baw86], appeared as a *generalization of Girard's proof nets for linear logic* (see [Gir95,Laf95]).

By *local synchronization*, we mean that there is no need to consider a global time for computation; in other words, time is *relativistic*.

By *distributed*, we mean that the *computation is performed at several places at the same time*, whereas *parallel* sometimes refers to a kind of *magical superposition*, as with `parallel-OR`:

```
T ∨ x = T
x ∨ T = T
F ∨ F = F
```

The `parallel-OR` is boolean operation that returns true if any of its arguments is true, independently of the computation taking place in the other arguments.


The interaction nets are *strongly deterministic*: not only the result, but also the computation is unique, up to trivial commutations. In particular, it is not possible to encode parallel-OR.

From the viewpoint of computability, interaction nets are equivalent to the Turing machines, but from the viewpoint of computation, there is something more, for instance parallelism (in the sense of distributed computation).

To express this rigorously, we introduce a natural notion of *translation of interaction system* preserving the *essential properties of computations*, such as the *complexity* and the *degree of parallelism*.

By definition, a **universal interaction system** has the property that any other interaction system can be translated into it.

*Turing machines* can be seen as particular interaction systems, but such systems are *intrinsically sequential* and cannot be universal in the above sense, even if they come from UTM. On the other hand, it is proved that a *system of interaction combinators is universal*. This suggests an answer to our original question, at least within the framework of interaction nets: the fundamental laws of computation are **commutation** and **annihilation**.

Our system of interaction combinators has been obtained by a kind of distillation, starting from some more complicated system suggested by Samson Abramsky for implementing the *proof boxes of linear logic* (see [Mac94]). Independently, Simon Gay has also obtained a universal system, with 8 symbols instead of 3 (see [Gay95]). Our system is simpler because it uses the same symbols for different purposes.

Among the other related systems, let us mention the infinite one introduced by John Lamping for the *optimal reduction of λ-calculus* (see [Lam90]) and the variants proposed by Georges Gonthier, Martin Abadi, and Jean-Jacques Levy, in connection with linear logic (see [GAL92a, GAL92b]).

Apart from its simplicity, the system of interaction combinators has an unexpected interpretation in terms of *reversible 2-stack machines* which seems to throw a *bridge between distributed and sequential computation* (Section 3). This section benefited from discussions with Vincent Danos and Laurent Regnier.

## 1. Interaction Nets

The origin of our favorite model of computation is explained in [Laf95]. Here, it is introduced from scratch, without explicit reference to proof theory.

### 1.1. Nets

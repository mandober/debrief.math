# Bisimulation

https://www.youtube.com/watch?v=dlGCmnZe-gs&list=PLMTONe7-tohmknhghoFoCINtO965r_f2A&index=8

Transitions systems as models of software or hardware or embedded systems.

>A **simulation** is a binary relation between *state transition systems*, associating systems that behave in the same way in that one system simulates the other. If the other system also simulates the first one, then we have a **bisimulation**.

The central question is when are two transition systems observably the same.

Bisimulation is a rich concept which appears in various areas of theoretical
computer science. Besides its origin by Park [Pa81] as a small refinement of the *behavioural equivalence* originally defined by Hennessy and Milner between basic concurrent processes [HM80] [HM85], it was independently, and earlier, defined and developed in the context of the model theory of modal logic (under the names of p-relations and zigzag relations) by Van Benthem [vB84] to give an exact account of which subfamily of first-order logic is definable in modal logic. Interestingly, to make their definition of process equivalence more palatable, Hennessy and Milner introduced a modal logic to characterize it.

[Pa81]: D. Park. Concurrency and automata on infinite sequences. 1981
[vB84]: J. van Benthem. Correspondence theory. 1984
[HM80]: M. Hennessy, R. Milner, On observing nondeterminism and concurrency. 1980
[HM85]: M. Hennessy, R. Milner. Algebraic laws for nondeterminism and concurrency. 1985


A **labeled state transition system** is a triple `(S, Λ, →)`, where
- `S` is a set of states (processes)
- `Λ` is a set of labels
- `→ ⊆ S×Λ×S` is a set of labelled transitions

A bisimulation is a binary relation `R ⊆ S×S`, such that both `R` and its converse `Rᵀ` are simulations. From this it follows that the symmetric closure of a bisimulation is a bisimulation, and that each symmetric simulation is a bisimulation. Thus some authors define bisimulation as a symmetric simulation.

A labelled transition system (LTS) is a triple `(Pr , Act, →)`, where
- `Pr` is a nonempty set of states or processes
- `Act` is a set of labels (actions)
- `→ ⊆ Pr × Act × Pr` is the transition relation

From state `s` by perfing action `a` we end up at state `s'`: `s ---a--> s'`.


**Equivalence of processes**: two processes should be equivalent if we cannot distinguish them by interacting with them.

**Bisimulation and bisimilarity**: we define bisimulation on a single LTS, because: the union of two LTSs is an LTS; we will often want to compare derivatives of the same process.

A relation `~` on processes is a bisimulation if whenever `P ~ Q`:
- `∀μ, P'. P ---μ--> P'` ⇒ `∃Q'. Q ---μ--> Q'` ∧ `P' ~ Q'`
- `∀μ, Q'. Q ---μ--> Q'` ⇒ `∃P'. P ---μ--> P'` ∧ `P' ~ Q'`

`P` and `Q` are bisimilar, `P ∼ Q`, if `P 𝓡 Q`, for some bisimulation `𝓡`.

The bisimulation diagram:
```
P    ~    Q

↓ μ     μ ↓

P'   ~    Q'
```

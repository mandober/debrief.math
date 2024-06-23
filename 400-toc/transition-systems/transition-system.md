# Transition system

https://en.wikipedia.org/wiki/Transition_system

In theoretical computer science, a transition system is a concept used in the study of computation in order to describe the potential behavior of discrete systems.

A **transition system** consists of *states* and *transitions* between states, which may be labeled with labels chosen from a set; the same label may appear on more than one transition. If the label set is a singleton, the system is essentially unlabeled, and a simpler definition that omits the labels is possible.

Transition systems coincide mathematically with *abstract rewriting systems* and *directed graphs* - transition systems can be represented as digraphs.

Transition systems differ from *FSM* in several ways:
- the set of states is not necessarily finite, or even countable
- the set of transitions is not necessarily finite, or even countable
- no initial state, nor final states given

## Contents

- 1. Formal definition
  - 1.1. Special cases
  - 1.2. Coalgebra formulation
- 2. Relation between labelled and unlabelled transition system
- 3. Comparison with abstract rewriting systems
- 4. Extensions

## Formal definition

Formally, a transition system is a pair (S,T) where S is a set of states and T, the transition relation, is a subset of S×S. We say that there is a transition from state p to state q iff (p,q)∈T, and denote it p→q.

A labelled transition system is a tuple (S,Λ,T) where S is a set of states, Λ is a set of labels, and T, the labelled transition relation, is a subset of S×Λ×S. We say that there is a transition from state p to state q with label α iff (p,α,q) ∈ T and denote it p → αq.

Labels can represent different things depending on the language of interest. Typical uses of labels include representing input expected, conditions that must be true to trigger the transition, or actions performed during the transition. Labelled transitions systems were originally introduced as named transition systems.

### Special cases

- If, for any given p and α, there exists only a single tuple (p,α,q) in T, then one says that α is deterministic (for p).
- If, for any given p and α, there exists at least one tuple (p,α,q) in T, then one says that α is executable (for p).

### Coalgebra formulation

The formal definition can be rephrased as follows.

Labelled state transition systems on `S` with labels from `Λ` correspond one-to-one with functions `S -> 𝒫(Λ×S)`, where `𝒫` is the (covariant) *powerset functor*.

Under this bijection `(S,Λ,T)` is sent to `ξᵀ : S -> 𝒫(Λ×S)`, defined by   
`p ⟼ { (α,q) ∈ Λ×S | p --α-> q }`

In other words, a labelled state transition system is a coalgebra for the functor `𝒫(Λ×−)`.


## Relation between labelled and unlabelled transition system

Relation between labelled and unlabelled transition system
There are many relations between these concepts. Some are simple, such as observing that a labelled transition system where the set of labels consists of only one element is equivalent to an unlabelled transition system. However, not all these relations are equally trivial.

## Comparison with abstract rewriting systems

As a mathematical object, an unlabeled transition system is identical with an (unindexed) abstract rewriting system. If we consider the rewriting relation as an indexed set of relations, as some authors do, then a labeled transition system is equivalent to an abstract rewriting system with the indices being the labels. The focus of the study and the terminology are different, however. In a transition system one is interested in interpreting the labels as actions, whereas in an abstract rewriting system the focus is on how objects may be transformed (rewritten) into others.

## Extensions

In model checking, a transition system is sometimes defined to include an additional labeling function for the states as well, resulting in a notion that encompasses that of Kripke structure.

Action languages are extensions of transition systems, adding a set of fluents F, a set of values V, and a function that maps F × S to V.

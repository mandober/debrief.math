# Finite-state Machine

https://en.wikipedia.org/wiki/Finite-state_machine

## Terms
- Finite-state Machine
- model of computation
- abstract machine

## Contents



## Finite-state machines

> CL ⊆ FSM ⊆ PDA ⊆ TM

A finite-state machine (FSM), a mathematical model of computation, is an abstract machine that can be in exactly one of a finite number of states at any given time.

The FSM can change from one state to another in response to some inputs; the change from one state to another is called a *transition*. An FSM is defined by a list of *states*, *the initial state*, and *the inputs* that trigger each transition. The set of transition conditions (inputs) is called an *alphabet*.

FSM have two types: DFSM and NDFSM. A deterministic finite-state machine can be constructed equivalent to any non-deterministic one.


FSM is defined by a 5-tuple consisting of an alphabet (a set of symbols), a set of states, an initial state, a set of final states and a transition function.

`FSM := (Σ, Q, q0, F, δ)`

```
(Σ, Q, q0, F, δ)

- Σ  alphabet
- δ  transition function, δ :: Q -> Σ -> S
- Q  set of states
  - q₀ initial state
  - F set of final states
```

- The set of all possible states is denoted by __Q__
  - Q is a finite, non-empty, set; e.g. Q = { S_1, S_2 }
  - in a diagram, each state is represented with a circle
- The initial state is denoted by __q₀__ where q₀ ∈ Q
  - there can be only one initial state
  - the initial state is marked by an arrow coming into it out of nowhere
  - the initial state may also be an end state
- The set of input symbols is the alphabet, __Σ__
  - it is a finite, non-empty set of symbols; e.g. Σ = { 0, 1 }
  - input symbols are drawn as arrows to/from state circles
- The set (possibly empty) of final states __F__ where F ⊆ Q
  - e.g. F = {S_1}
  - an ending state is outlined by an extra circle (double circle)
- The state-transition function __δ__ of type `δ : Q ⨯ Σ -> S`
  - `δ : Q ⨯ Σ -> S` ≅ `δ : Q -> Σ -> S`
  - a Cartesian product of the set of states and the alphabet
  - e.g. `δ S₂ 1 -> S₂`
  - δ takes a state and an input symbol and returns a state to transition to
  - the state to transition to may be the same state (remain in current state)


![][fsm]

[fsm]: https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/DFAexample.svg/500px-DFAexample.svg.png


## FSM classification

Two types of FSM:
- Deterministic finite state machines
- Non-deterministic finite state machines

A further distinction is between deterministic automata (DFA) and non-deterministic (NFA) automata.

In a *deterministic automata*, every state has exactly one transition for each possible input.

In a *non-deterministic automata*, an input can lead to one, more than one, or no transition for a given state.

The powerset construction algorithm can transform any nondeterministic automaton into a (usually more complex) deterministic automaton with identical functionality (it is often a step before simplifying that repr further).

A deterministic FSM be constructed equivalent to any non-deterministic one.

## FSM subtypes

- Acceptor (recognizer, sequence detector)
- Classifier
- Transducer
- Moore FSM
- Mealy FSM
- Generator (sequencer)

*Acceptors* (aka recognizers, sequence detectors) produce boolean output indicating if the received input is accepted.

*Classifiers* are a generalization of a FSM, similar to an acceptor, that produce a single output on termination but have more than two terminal states.

*Transducers* generate output based on a given input and/or a state using actions. They are used for control applications.
- **Moore FSM** uses only entry actions, i.e. output depends only on the state.
- **Mealy FSM** uses input actions, i.e. output depends on input and state.

*Generators* or *sequencers* are a subclass of the acceptor and transducer types that have a single-letter input alphabet. They produce only one sequence which can be seen as an output sequence of acceptor or transducer outputs.

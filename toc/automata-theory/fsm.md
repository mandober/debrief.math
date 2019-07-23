# Finite-state Machine

https://en.wikipedia.org/wiki/Finite-state_machine

A finite-state machine (FSM) is a mathematical model of computation.

It is an abstract machine that can be in exactly one of a finite number of states at any given time.

The FSM can change from one state to another in response to some external inputs; the change from one state to another is called a *transition*.

FSM is defined by a list of its states, its initial state, and the conditions for each transition.

Finite state machines are of 2 types:
- deterministic finite state machines
- non-deterministic finite state machines

A deterministic finite-state machine can be constructed equivalent to any non-deterministic one.

The behavior of state machines can be seen in vending machines, elevators, traffic lights, etc.


The finite state machine has less computational power than some other models of computation such as the Turing machine. The computational power distinction means there are computational tasks that a Turing machine can do but a FSM cannot. This is because a FSM's memory is limited by the number of states it has.

FSMs are studied in the more general field of automata theory.


---
## Finite-state machine

AKA:
- Finite-state Machine, FSM
- State Machine
- Finite-state Automaton, FSA
- Finite Automaton

FSM is an abstract machine that can be in exactly one of a finite number of states at any given time. The FSM can change from one state to another in response to some external inputs; the change from one state to another is called a transition. An FSM is defined by a list of its states, its initial state, and the conditions for each transition.

FSM subdivisions: 
- Acceptors (recognizers, sequence detectors))
  - Classifiers
- Transducers
  - Moore FSM
  - Mealy FSM
- Generators (sequencers)

## Acceptors
Acceptors (aka recognizers, sequence detectors) 
produce boolean output indicating if the received input is accepted.

## Classifier
A classifier is a generalization of a finite state machine that, similar to an acceptor, produces a single output on termination but has more than two terminal states.

## Transducers
Transducers generate output based on a given input and/or a state using actions. They are used for control applications.
- Moore FSM uses only entry actions, i.e. output depends only on the state.
- Mealy FSM uses input actions, i.e. output depends on input and state.

## Generators
Generators or sequencers are a subclass of the acceptor and transducer types that have a single-letter input alphabet. They produce only one sequence which can be seen as an output sequence of acceptor or transducer outputs.


A further distinction is between **deterministic** (DFA) and **non-deterministic** (NFA, GNFA) automata.

In a deterministic automaton, every state has exactly one transition for each possible input. In a non-deterministic automaton, an input can lead to one, more than one, or no transition for a given state. The powerset construction algorithm can transform any nondeterministic automaton into a (usually more complex) deterministic automaton with identical functionality.

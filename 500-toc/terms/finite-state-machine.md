# Finite-state Machine

https://en.wikipedia.org/wiki/Finite-state_machine

- Finite-state Machine
- model of computation
- abstract machine


## FSM
A finite-state machine (FSM), a mathematical *model of computation*, is an *abstract machine* that can be in exactly one of a finite number of states at any given time.

**Transition** is the change from one state to another, triggered as a response to an external input. The set of transition conditions (inputs) is called an **alphabet**.

FSM is defined by a 5-tuple consisting of an alphabet (a set of symbols), a set of states, an initial state, a set of final states and a transition function.
- $$FSM := (\Sigma, Q, q0, F, \delta)$$
- (set, set, atom, set, function)
- The set of all possible states is denoted by $$Q$$
  - $$Q$$ is a finite, non-empty, set; e.g. $$Q=\{S_1,S_2\}$$
  - in a diagram, each state is represented with a circle
- The initial state is denoted by $$q_0$$, where $$q_0 \in Q$$
  - there can be only one initial state; e.g. $$q_0 = S_1$$
  - the initial state is marked by an arrow coming out of nowhere
  - the initial state may also be an end state
- The set of input symbols is the alphabet, $$\Sigma$$
  - it is a finite, non-empty set of symbols; e.g. $$\Sigma = \{0,1\}$$
  - input symbols are drawn as arrows to/from state circles
- The set (possibly empty) of final states $$F$$, where $$F \subseteq Q$$
  - e.g. $$F=\{S_1\}$$
  - an ending state is outlined by an extra circle (double circle)
- The state-transition function, $$\delta$$
  - $$\delta :S\times \Sigma \rightarrow S$$
  - a Cartesian product of the set of states and the alphabet
  - $$\delta$$ function takes a state and an input symbol and returns a state to transition to
  - the state to transition to may be the same state (remain in that state)
  - e.g. $$\delta (S_2,1) \to S_2$$


![][fsm]

[fsm]: https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/DFAexample.svg/500px-DFAexample.svg.png



# Types of Finite-state Machines

https://en.wikipedia.org/wiki/Finite-state_machine


Two types of FSM:
- Deterministic finite state machines
- Non-deterministic finite state machines


A further distinction is between **deterministic** (DFA) and **non-deterministic** (NFA) automata.

In a deterministic automaton, every state has exactly one transition for each possible input. In a non-deterministic automaton, an input can lead to one, more than one, or no transition for a given state. The powerset construction algorithm can transform any nondeterministic automaton into a (usually more complex) deterministic automaton with identical functionality.


## Deterministic FSM
A deterministic finite-state machine can be constructed equivalent to any non-deterministic one.

The behavior of state machines can be seen in vending machines, elevators, traffic lights, etc.


The finite state machine has less computational power than some other models of computation such as the Turing machine. The computational power distinction means there are computational tasks that a Turing machine can do but a FSM cannot. This is because a FSM's memory is limited by the number of states it has.



# Finite-state machine subtypes

FSM subtypes:
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

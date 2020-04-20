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

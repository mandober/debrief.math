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

# Model of computation

https://en.wikipedia.org/wiki/Model_of_computation

In computability theory and computational complexity theory, a model of computation describes how an output of a mathematical function is computed given an input.

A model describes how units of computations, memories and communications are organized.

Computational complexity of an algorithm can be measured given a model of computation.

Using a model allows studying the performance of algorithms independently of the variations that are specific to particular implementations and specific technology.


## Models

Models of computation:
* Sequential models
  - Finite state machines
  - Pushdown automata
  - Turing Machine
* Functional models
  - Lambda calculus
  - Recursive functions
  - Combinatory logic
  - Cellular automaton
  - Abstract rewriting systems
* Concurrent models
  - Kahn process networks
  - Petri nets
  - Synchronous Data Flow
  - Interaction nets
  - Actor model


Models differ in their expressive power; for example, each function that can be computed by a FSM can also be computed by a Turing machine, but not vice versa.


## Uses
In the field of runtime analysis of algorithms, it is common to specify a computational model in terms of primitive operations allowed which have unit cost, or simply unit-cost operations. A commonly used example is the random access machine, which has unit cost for read and write access to all of its memory cells. In this respect, it differs from the Turing machine model.

In model-driven engineering, the model of computation explains how the behaviour of the whole system is the result of the behaviour of each of its components.

A key point which is often overlooked is that published lower bounds for problems are often given for a model of computation that is more restricted than the set of operations that one could use in practice and therefore there may be algorithms that are faster than what would naïvely be thought possible.

## Categories
There are many models of computation, differing in the set of admissible operations and their computations cost.

The two broad categories:
- *abstract machines and equivalent models* 
  (e.g. lambda calculus is equivalent to the Turing machine), 
  used in proofs of computability and 
  upper bounds on computational complexity of algorithms
- *decision tree models* 
  used in proofs of 
  lower bounds on computational complexity of algorithmic problems.

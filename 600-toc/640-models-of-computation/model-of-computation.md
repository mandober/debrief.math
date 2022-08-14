# Model of computation

https://en.wikipedia.org/wiki/Model_of_computation

(For computer models simulating complex systems, see *Computational model*:
https://en.wikipedia.org/wiki/Computational_model)

In *computability theory* and *computational complexity theory*, 
**a model of computation** describes how an output of a mathematical function 
is computed given an input. A model describes how units of computations, memories and communications are organized. Computational complexity of an algorithm can be measured given a model of computation. Using a model allows studying the performance of algorithms independently of the variations specific to particular implementation or technology.

https://en.wikipedia.org/wiki/Model_of_computation
https://en.wikipedia.org/wiki/Computational_complexity
https://en.wikipedia.org/wiki/Computational_complexity_theory
https://en.wikipedia.org/wiki/Computability_theory_(computer_science)


## Models of computation

Models of computation can be classified into 3 categories:

1. **Sequential models**
  - Finite state machines
  - Post machines (Post-Turing machines and tag machines)
  - Pushdown automata
  - Register machines
  - Random-access machines
  - Turing machines

2. **Functional models**
  - Abstract rewriting systems
  - Combinatory logic
  - General recursive functions
  - Lambda calculus
  - μ-recursive functions

3. **Concurrent models**
  - Actor model
  - Cellular automaton
  - Interaction nets
  - Kahn process networks
  - Logic gates and digital circuits
  - Petri nets
  - Synchronous Data Flow


Some of these models have both *deterministic* and *nondeterministic* variants.

*Nondeterministic models* are not useful for practical computation, but they are used in the study of computational complexity of algorithms.

Models differ in their *expressive power*; for example, each function that can be computed by a Finite state machine can also be computed by a Turing machine, but not vice versa.


## Models of computation: uses

In the field of *runtime analysis of algorithms*, it is common to specify a computational model in terms of primitive operations allowed which have unit cost, or simply *unit-cost operations*.

A commonly used example is the *random access machine*, which has unit cost for read and write access to all of its memory cells. In this respect, it differs from the Turing machine model.

In model-driven engineering, the model of computation explains how the behaviour of the whole system is the result of the behaviour of each of its components.

A key point which is often overlooked is that published lower bounds for problems are often given for a model of computation that is more restricted than the set of operations that one could use in practice and therefore there may be algorithms that are faster than what would naïvely be thought possible.

## Models of computation: categories 

There are many models of computation, differing in the set of admissible operations and their computations cost. They fall into the following broad categories:

* __Abstract Machine and Equivalent Models__    
  (e.g. LC is equivalent to TM):    
  used in proofs of computability and    
  *upper bounds* 
  on computational complexity of algorithms.

* __Decision-Tree Models__    
  used in proofs of 
  *lower bounds* 
  on computational complexity of algorithms.


Models of computation
- 1936 TM by Alan Turing
- 1941 λ-calculus by Alonzo Church
- 1943 Post system by Emil Post
- 1940's Markov algorithms by Andrei Andreivich Markov
- 1957 Wang machine by Hao Wang
- 1960's Register machines by Abraham Robinson and Calvin Elgot
- 1970's Random Access Machines by Steven Cook and Robert Rechow

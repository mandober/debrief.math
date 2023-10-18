# Model of computation

https://en.wikipedia.org/wiki/Model_of_computation
https://en.wikipedia.org/wiki/Category:Models_of_computation

>A **model of computation** describes how an output of a mathematical function is computed given some input.

Models of computation describe how units of computations, memory and communications is organized.

The most famous model of computation is probably a *Turing Machine* (TM), whose model of computation was realized in the first computers and is still the principle model behind modern computer architecture.

Another familiar model is *Lambda Calculus* (LC), invented by Church, that models computation using nothing but functions. There were even attempts to build computers that would realize the abstract machines of LC (Krivine machine, SECD machine) and optimally execute it, but they were abandoned due to the superior efficiency of the TM model.

## Categorization

Models of computation can be classified into 3 broad categories:
1. Sequential models
2. Functional models
3. Concurrent models

The *Chomsky hierarchy* describes the relations between various languages, their abstract machines and formalized logic. Since many of these models were able to model computation, Chomsky hierarchy can also be used as a classification tool.

Aspects of different models of computation
- determinism: deterministic vs nondeterministic models
- expressive power
- equivalence of models

One of the important properties pertaining to models of computation is *determinism*, and some models have both deterministic and nondeterministic variants. Nondeterministic models are not useful for practical computation, but they are used in the study of computational complexity of algorithms.

Models also differ in their *expressive power*; e.g. each function that can be computed by a Finite State Machine can also be computed by a Turing Machine, but not vice versa. On the other hand, some model have the same expressibility: Turing machine, lambda calculus, recursive functions, Post system, and some others, form a class of *computationally equivalent models*.

## Models of computation: uses

In *complexity theory* the complexity of an algorithm can be measured given a model of computation. Using a model allows studying the performance of algorithms independently of the variations specific to particular implementation or technology.

In the field of runtime *analysis of algorithms*, it is common to specify a computational model in terms of primitive operations allowed which have unit cost, or simply unit-cost operations. A commonly used example is the Random Access Machine, which has unit cost for read and write access to all of its memory cells. In this respect, it differs from the Turing machine model.

In *model-driven engineering*, the model of computation explains how the behaviour of the whole system is the result of the behaviour of each of its components.

## Models of computation: categories

The three broad categories are

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



Numerous models of computation differ in the set of admissible operations, the cost of computation, and whether they are deterministic or not. Some additional categories for their categorization may be:
- Abstract Machines and equivalent models are used in proofs of computability and *upper bounds* on computational complexity of algorithms.
- Decision-Tree models are used in proofs of *lower bounds* on computational complexity of algorithms.


Models of computation
- 1936 TM by Alan Turing
- 1941 λ-calculus by Alonzo Church
- 1943 Post system by Emil Post
- 1940's Markov algorithms by Andrei Andreivich Markov
- 1957 Wang machine by Hao Wang
- 1960's Register machines by Abraham Robinson and Calvin Elgot
- 1970's Random Access Machines by Steven Cook and Robert Rechow

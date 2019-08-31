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

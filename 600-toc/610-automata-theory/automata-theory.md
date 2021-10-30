# Automata Theory
https://en.wikipedia.org/wiki/Automata_theory

Automata theory (AT) is the study of *abstract machines* and *automata*, but also studying the computational models and problems to which they can be applied. Automata theory defines the different types of computation models, classifying their efficiency and computational power.

Automata theory is closely related to *formal language theory*, and it is a theory in theoretical computer science.

## Automaton

An *automaton* is a machine designed to follow a predefined sequence of operations automatically, making it seem as if it were self-operating. An automaton is a finite representation of a formal language that may be an infinite set. The term itself comes from the Greek `αὐτόματα`, meaning self-acting.

Automata are often classified by the class of formal languages they can recognize, typically illustrated by the *Chomsky hierarchy*, which describes the relations between various languages and kinds of formalized logic.

Automata plays a major role in *theory of computation*, *compiler construction*, *parsing*, *formal verification*, *artificial intelligence*.

## Classes of automata

Combinational logic ⊂ FSM ⊂ PDA ⊂ TM


## Computation models

- *Finite Automata*, (FA) used in text processing, compilers, hardware design.
- *Context-Free Grammars* (CFG), used to define programming languages.
- *Turing Machines* (TM), form a simple abstract model of a computer.

Regular Grammar
- Context-free grammar
- Context-sensitive grammar
- Recursively enumerable grammar

Classes of automata:
- Finite Automata
  - Combinatorial logic
  - Push-down automata
  - Finite-state machine
    - Non-deterministic Finite State Machines
    - Deterministic Finite State Machines
- Context-Free Grammars
- Turing machines



## Hierarchy in terms of powers

The following is an incomplete hierarchy in terms of powers of different types of virtual machines. The hierarchy reflects the nested categories of languages the machines are able to accept.

```
Deterministic Finite Automaton (DFA)          (lowest power)

(same power)        ≡         (same power)

Nondeterministic Finite Automaton (NFA)

(↑ weaker)          ⋂        (↓ stronger)

Deterministic Push Down Automaton (DPDA-I)
        with 1 push-down store

                    ⋂

Nondeterministic Push Down Automaton (NPDA-I)
        with 1 push-down store

                    ⋂

Linear Bounded Automaton (LBA)

                    ⋂

Deterministic Push Down Automaton (DPDA-II)
        with 2 push-down stores

                    ≡

Nondeterministic Push Down Automaton (NPDA-II)
        with 2 push-down stores

                    ≡

Deterministic Turing Machine (DTM)

                    ≡

Nondeterministic Turing Machine (NTM)

                    ≡

Probabilistic Turing Machine (PTM)

                    ≡

Multitape Turing Machine (MTM)

                    ≡

Multidimensional Turing Machine
```


(DFA ≡ NFA) ⊂ DPDA-I ⊂ NPDA-I ⊂ LBA ⊂
(DPDA-II ≡ NPDA-II ≡ DTM ≡ NTM ≡ PTM ≡ MTM ≡ MDTM)

( Deterministic Finite Automaton (DFA)
= Nondeterministic Finite Automaton (NFA)
)
⊂
(
  Deterministic Push Down Automaton (DPDA-I) with 1 push-down store
  ⊂ Nondeterministic Push Down Automaton (NPDA-I) with 1 push-down store
  ⊂ Linear Bounded Automaton (LBA)
  ⊂
  ( Deterministic Push Down Automaton (DPDA-II) with 2 push-down stores
    = Nondeterministic Push Down Automaton (NPDA-II) with 2 push-down stores
    = Deterministic Turing Machine (DTM)
    = Nondeterministic Turing Machine (NTM)
    = Probabilistic Turing Machine (PTM)
    = Multitape Turing Machine (MTM)
    = Multidimensional Turing Machine (MDTM)
  )
)

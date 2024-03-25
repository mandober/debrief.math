# Power hierarchy of automata

The following is an incomplete hierarchy in terms of power of different types of machines. The hierarchy reflects the nested categories of languages the machines are able to accept.

From least to most powerful; entries on the same line are equivalent:
- DFA, NFA
- DPDA-I
- NPDA-I
- LBA
- DPDA-II, NPDA-II, DTM, NTM, PTM, MTM, MDTM

Containment relations:

```
(DFA ≡ NFA) ⊂ DPDA-I ⊂ NPDA-I ⊂ LBA ⊂
  (DPDA-II ≡ NPDA-II ≡ DTM ≡ NTM ≡ PTM ≡ MTM ≡ MDTM)
```

## Full view

From least to most powerful

```
(DFA ≡ NFA)
⊂
Deterministic Push Down Automaton (DPDA-I) with 1 push-down store
⊂
Nondeterministic Push Down Automaton (NPDA-I) with 1 push-down store
⊂
Linear Bounded Automaton (LBA)
⊂
(
  Deterministic Push Down Automaton (DPDA-II) with 2 push-down stores
  ≡
  Nondeterministic Push Down Automaton (NPDA-II) with 2 push-down stores
  ≡
  Deterministic Turing Machine (DTM)
  ≡
  Nondeterministic Turing Machine (NTM)
  ≡
  Probabilistic Turing Machine (PTM)
  ≡
  Multitape Turing Machine (MTM)
  ≡
  Multidimensional Turing Machine (MDTM)
)
```

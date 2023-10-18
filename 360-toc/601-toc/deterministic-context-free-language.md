# Deterministic context-free language

- Finite-state automata (FSM)
  - recognizes regular languages
  - Deterministic finite-state automata (DFA)
  - Nondeterministic finite-state automata (NFA)
  - NFA ≅ DFA
- Non-regular languages
- Push-down automata (PDA)
  - Deterministic push-down automata (DPDA)
    - recognizes DCFLs
  - Nondeterministic push-down automata (NPDA)
- Context-free grammar (CFG)
  - CFG ≅ PDA
- Context-free language (CFL)
  - Deterministic context-free language (DCFL)
  - Nondeterministic context-free language (NCFL)


A **deterministic context-free language** (DCFL) is a language recognized by a deterministic push-down automaton (DPDA).

The canonical example of a DCFL is `L = {0ⁿ1ⁿ : n ≥ 0}`.

The essential idea is that DPDA is equivalent to PDA, except there is always only a single "choice" of transition from any state on a given input and with anything on the stack.

The central issue is determining whether or not a DCFL is equivalent to a Nondeterministic CFL (NCFL).

>It turns out that DCFLs are equivalent to CFLs, but is the converse true?
- All DCFLs are equivalent to CFLs ✔
- But are all CFLs equivalent to DCFLs? (DCFL ⇒ CFL) ⇒ (CFL ⇒ DCFL)?

## Intro

So far we have seen Context-Free Languages (CFL), which are described by Context-Free Grammers (CFGs) or Push-down Automata (i.e. FSMs enhanced with a stack). This is because CFGs and PDAs are equivalent to each other (CFG ⇔ PDA).

We also saw that certain languages were not context-free languages.

The question is now: Does determinism affects things? Would determinizing the model (i.e. removing nondeterminism) change things? We saw that determinism did not affect FSMs since, quite surprisingly, NFAs were found to be equivalent to DFAs (and vice versa), but now we'll investigate the influence of determinism in the context of context-free languages.

In the DPDA model, determinism implies that there is always exactly one transition that can be applied. So, for any state and for any character on top of the stack (whatever it is), there is exactly one transition defined.

What are examples of DCFLs?

> All regular languages are DCFLs.
It should be evident that all regular languages are already DCFLs. If we have a DFA, we can just add `ε → ε` to each transition (meaning skip popping and pushing anything to the stack), and then each transition would be distinguished only by the input symbol `c` (by what is being read; labelled by `c, ε → ε`). And being a DFA, each transition is uniquely determined only by the current state and the current input symbol. This shows that all regular languages are DCFLs.

>All DCFLs are CFLs.
It should be evident that all DCFLs are CFLs because DCFLs are already recognized by PDAs. It is just that DCFLs are restricted by the types of allowed transitions, whereas normal PDAs have no such restriction.


>The canonical non-regular language `{0ⁿ1ⁿ : n ≥ 0}` is DCFL.
The reason for this is that a PDA that we can construct for this language is not a DPDA.

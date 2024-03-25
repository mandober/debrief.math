# TOC :: Theory of Computation :: Areas of study

## Automata theory and Formal Language theory

The books on *Theory of Computation* usually start with *Automata theory* along with *Formal Language theory*. Considering first Automata theory, abstract machines that recognize certain types of languages are introduced. These devices are capable of recognizing, and thereby defining, a formal language, and it turns out they can only do so for regular languages. In fact, a regular language is defined as a language that can be recognized by a finite-state automata (FSM). These machines are so called because they only have a finite number of states and thus no capability of memory.

On the other hand, Formal Language Theory studies formal languages. A formal language, `L`, consists of an alphabet, `Σ`, that is a set of symbols or characters used to make strings of the language. However, of all strings that can be make using a particular alphabet only a subset makes a set of valid strings. This is where FSM come in: that set of valid or well-formed strings is defined by what an associated automaton recognizes. So a finite-state automaton defines as well as describes and enumarates all well-formed strings of a language and it turns out it can only do so for regular languages. Another formalism that can also recogninze only regular languages was invented in the form of regular expressions. Thus, there is a strong correspondence between regular languages, regular expressions (regex) and finite-state automata (FSM).

An important aspect of finite-state automata is determinism, that is, whether a string can be recognized by an abstract machine solely by following a set of rules, which in the case of automata, amount to transitions from one state to another on a particular symbol. In fact, *deterministic finite automata* (DFA) must define a transition for each possible state on each possible symbol in the alphabet, which is the fact that makes it deterministic, along with the requirement that there is only a single initial state a machine can be in. This is contrasted by *nondeterministic finite automata* (NFA), which are abstract machines that can more than one initial states, and which need not define a transition of each state on each possible input symbol, and, critically, they can have more than one transition from a state on the same input symbol, which is the biggest contributor to their nondeterminism.

Surprisingly, one of the most important finds was the discovery of equivalence between DFA and NFA! Namely, any DFA can be modelled by a NFA, and vice versa, despite the apparent indeterminism.

Operationally, a FSM consists of a finite number of states, `Q`, an alphabet `Σ`, which is a finite set of symbols (symbols of the language the FSM recognizes), a delta transition, `δ`, which describes a transition to take given a state, `q`, and an inpuit symbol, `c`. With DFA, `δ` is a transition function `δ : Q ⨯ Σ -> Q`, while with NFA `δ` is a transition relation `δ ⊆ Q ⨯ Σ ⨯ Q`. DFA must also have a single initial state, `q₀`, indicated, while NFA can have a set of starting states, `S`. Finally, both DFA and NFA have a set of accepting states, `F`.

Formally, a FMS is defined as a 5-tuple, `⟨Q, Σ, δ, S, F⟩`, except in DFA the set of initial states `S` is actually a single state, ` q₀`. In order to generalize both types, sometimes only the set `S` is specified and then it is indicated that `S = {q₀}`; but when discussing DFAs alone, the fact that there is only one initial state means `q₀ = S`.

An input string is accepted by a FSM if the final symbol of that string brings the machine to an accepting state. The crucial difference between the two types of FSMs is that a DFA must consume the current input symbol in order to make a transition into another state, while a NFA can transition into another state without consuming a symbol, that is, it can transition by consuming an empty string. Such transitions are called *ε-transitions* because the empty string is denoted by ε.

Diagrammatically, FSM are depicted using circles to represent states and arrows between them to represent transitions, with a symbol labelling each transition. The initial state(s) are indicated by an incoming arrow from out of nowhere, while the asccepting states are doubly-outlined.

Theory of Computation
1. Automata theory and Formal Language theory
  - 1.1 **Automata theory**
    - Finite-state machine (FSM)
      - a FMS `M` is a 5-tuple `M = ⟨Q, Σ, δ, S, F⟩`
        - `Q` finite set of states
        - `Σ` finite alphabet of the language
        - `δ` transition function (DFA) or transition relation (NFA)
        - `S` set of initial states; in DFA `S = {q₀}`
        - `F` set of sccepting states
      - `L(M)` is a regular language `L` recognized by automaton `M`
      - Deterministic finite automata (DFA)
        - `⟨Q, Σ, δ, q₀, F⟩`
        - `q₀` is the sole initial state
        - `δ` is the transition function, `δ : Q ⨯ Σ → Q`
      - Nondeterministic finite automata (NFA)
        - `⟨Q, Σ, δ, S, F⟩`
        - `S` is the set of initial states
        - `δ` is the transition relation, `δ ⊆ Q ⨯ Σ ⨯ Q`
        - ε-transition
      - Closures
        - ε-closure
        - closed under union, `L₁ ⋃ L₂`
        - closed under intersection, `L₁ ⋂ L₂`
        - closed under compliment, `L̅`
        - closed under reversal, `Lᵀ`
  - 1.2 **Formal Language Theory**
    - formal language (denoted by `𝓛` or `L`)
      - regular language
      - non-regular language
    - `L(M)` is a regular language `L` recognized by an automaton `M`
    - a language `L` consists of
      - an *alphabet* `Σ` consisting of a finite set of *symbols*
        - e.g. Σ = {0,1}, Σ = {[0-9]}, Σ = {[a-zA-Z0-9]}
        - that a symbol `s` belongs to an alphabet is denoted `s ∈ Σ`
      - *strings* are composed out of symbols of the alphabet
        - strings include the empty string `ε`
        - a language may or may not admit ε, ε ∉ L
      - the set of *all possible strings* over an alphabet are denoted `Σ⋆`
        - e.g. `Σ⋆ = {0,1}⋆` is the set of all binary strings
        - that a string (word) `ω` belongs to `Σ⋆` is denoted `ω ∈ Σ⋆`
        - a string always belongs to `Σ⋆` but may not belong to `L`
          - `∀ω ∈ Σ⋆ ⇒ ω ∈ L ⋁ ω ∉ L`
      - Rules that specify well-formed strings of L, `∃ω(ω ∈ Σ⋆ ⋀ ω ∈ L)`
        - rules can be defined by a FSM, grammar, etc.
         - FSMs define regular languages
         - *regular grammars* define regular but also non-regular languages
          - ω = abc suct that abc ∈ Σ and ω ≠ ε
          - ∀ω ∈ L as opposed to ∀ω ∈ Σ⋆, where Σ is alphabet of L
          - ∃ω(ω ∈ Σ⋆ ⋀ ω ∈ L)
          - L = ∃ω(ω = abc ⋀ abc ∈ Σ, ω ∈ Σ⋆ ⋀ ω ∈ L)
    - Examples of languages
      - `L = ∅`            The empty language
      - `L = {ε}`          The empty-string language
      - `L = { Σ⋆ ∖ {ε} }` Lang of all possible string over Σ excluding ε
    - Combining regular languages to get regualar languages
      - `L₁ ⋃ L₂` union
      - `L₁ ⋂ L₂` intersection
      - `L₁ • L₂` concatenation
      - `L⋆`      star operation
      - `L̅`       compliment
      - `Lᵀ`      reversal
    - Examples of language definitions
      - L = { ∀ω ⊆ {0,1}⋆ : |ω| is odd }
      - L = { ∀ω ⊆ {0,1}⋆ : |ω| is odd }
      - L = { 0ⁿ1ⁿ : n ≥ 0 }

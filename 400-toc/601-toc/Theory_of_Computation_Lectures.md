# Theory of Computation Lectures - Easy Theory

132 videos 138,324 views Last updated on Aug 3, 2022
https://www.youtube.com/channel/UC3VY6RTXegnoSD_q446oBdg?sub_confirmation=1


## TOC playlist

Theory of Computation
- Theoretical Computer Science (TCS)
- Essence of TCS
- Theory of Computation
- Limits of computation
- Models of computation
- The 3 branches of TOC
- Automata theory and Formal Language theory
- Computability theory
- Complexity theory

Automata theory
- Abstract machines
- State machines
- Finite-State Machine (FSM)

DFA
- *Deterministic Finite Automata* (DFA)
- DFA formal definition, `(Q, Σ, δ, q₀, F)`
- DFA formal analysys
- DFA computation
- DFA languages
- Q: How many possible DFAs with 3 states over Σ = {0}?
- DFA examples: recognizers for `Σ⋆`, `∅`, and other languages
- DFA example: recognizer for `a*b*c*` language
- DFA example: recognizer for language of ternary multiples of 5
- *Regular Language*
- Q: How many distinct DFAs accept any language?
- PROOF: regular languages closed under complement
- *Product Construction*
- PROOF: regular languages closed under union
- PROOF: regular languages closed under intersection
- Number of final states in product construction
- DFA's product construction: minimality and reachability
- *Regular operations*
- Q: The star of ANY unary language is regular?
- Exercise: All languages are regular (spot the proof errors)
- Exercise: Are there DFAs for concatenation and star?

NFA
- Nondeterministic Finite Automata (NFA)
- Q: How many computations are there in an NFA?
- NFA for substrings of a string `w`
- Product Construction for NFAs?
- *ε-closure* (epsilon closure)
- Conversion of NFA to DFA
- Conversion of NFA to DFA (powerset/subset construction example)
- Q: Does the NFA to DFA conversion always make more states?
- Conversion of NFA to DFA examples (powerset construction)
- Minimal NFAs are NOT unique
- Complementing NFAs ruins everything
- Closure properties of regular languages with PROOFS:
- regular languages closed under subsequences
- regular languages closed under reversal
- regular languages closed under homomorphism
- regular languages closed under suffixes
- regular languages closed under division (Sipser 1.45 solution)
- regular languages closed under "avoids" (Sipser 1.70 solution)

Regular expressions
- regular expressions
- regular expression examples
- Regular expression to NFA conversion
- Regular expression to NFA example conversion
- Conversion of NFA to Regex
- generalized NFA (gNFA) method
- NFA to regex conversion example #1, "simple" (gNFA method)
- NFA to regex conversion example #2, "more complicated" (gNFA method)
- The "general" general NFA method (NFA to regex, gNFA)
- *Brzozowski derivatives* (aka WTF is a regex derivative?!)
- Derivative of a regex?! example (Brzozowski derivative)
- Conversion of Regex to DFA Directly with Brzozowski Derivatives

Pumping Lemma for Regular Languages
- Pumping lemma for regular languages: full proof
- Pumping lemma for regular languages: 20 examples and proof strategies!
- Pumping lemma for regular languages example: voting
- Pumping lemma for regular languages example: perfect squares
- The p factorial "trick" (pumping lemma technique!)
- Pumping lemma for regular languages example: *Sparse languages* [HARD!]

Non-regular languages
- Closure properties of non-regular languages
- What is the *Myhill-Nerode equivalence relation*?
- DFA Minimization Algorithm + Example

Grammars
- What are Grammars (in Theory of Computation)?
- What is a *Regular Grammar*? NFA to Regular Grammar conversion
- A Double Conversion: Regular Grammar to NFA to Regex
- *Context-Free Grammar* (CFG)
- *Context-Free Language* (CFL)
- CFG definition: yields, ambiguity, leftmost derivation
- CFGs: 5 easy examples
- CFGs: 5 intermediate examples
- *Chomsky Normal Form*
- Chomsky Normal Form conversion example

Push-down Automata
- Push-down Automata (PDA)
- Motivation for PDA
- Pushdown Automaton (PDA) example: {0ⁿ1ⁿ : n ≥ 0}
- CFG to PDA conversion
- simple simplifications to PDAs (force the stack empty)
- analysis of stack height in PDA
- PDA to CFG conversion
- PDA to CFG conversion example
- How big is the CFG from the PDA to CFG conversion?
- CFLs are closed under intersection with regular languages
- *Parse Trees*
- Parse Trees and CFGs in Chomsky Normal Form
- Pumping Lemma for CFLs: statement and full proof
- Pumping Lemma for CFLs: 4 proofs and examples
- closure properties of CFLs
- Which of these languages is NOT context-free? (GATE 2019 Question 41)
- Context-free elections (pumping lemma for CFLs proofs too)

Deterministic Context-Free Language (DCFL)
- What is Deterministic CFL (DCFL)
- DCFL Closed under Complement
- DCFL NOT Closed Under Union or Intersection
- DCFL NOT Closed Under Concatenation

Turing Machines (TM)
- Turing Machines formal definition
- Turing Machine definitions: configuration, computation, yields, halting
- Turing Machine example and computation (Can you guess what it does?)
- DFA to TM conversion
- Stay-Put Turing Machines (STM)
- Multi-Tape Turing Machines
- Nondeterministic Turing Machine (NTM)

Computability
- Church-Turing Thesis
- What is an encoding
- Acceptance for DFAs is decidable (also what is a "high-level" description)
- Acceptance for NFAs is decidable (to convert or to not convert)
- Acceptance for regular expressions is decidable

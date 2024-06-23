# Finite-state automaton

- FSM consumes a char from input string and makes a transition
- it cannot backtrack
- it only has one shot at an input, it cannot re-read the input
- input string is accepted or rejected after processing the entire string
- it is not required that all states be reachable
- it is not required that there is a final state at all

## Definition

A finite-state automaton (FSA) or finite-state machine (FSM) is a state machine with finite number of states, defined as `M = (Σ, Q, δ, q₀, F)`, where
- `Σ`  finite alphabet, a set of characters
- `Q`  finite set of states
- `δ`  transition function, `δ : Q × Σ -> Q`
- `q₀` initial state, q₀ ∈ Q
- `F`  set of final states, F ⊆ Q

## Alphabet

- alphabet `Σ` is a finite set of symbols
- a word or string is finite sequance of symbols in Σ
- Σ⃰ is the set of all possible words
- a language is a set of words
- ϵ is the empty string of length 0
- The empty language, ∅, is a set with no words
- it is different from a singleton language, {ϵ}
- A FSM recognizes many strings but only one particular language, L
- `L(M)` is the language of M, i.e. a lang recognized by the machine `M`
- M recognizes L(M), `L(M) = { w | M accepts w }`
- A language is *regular* if there is a FSM that regonizes it



An alphabet `Σ` is a finite set of symbols (characters) from which the *words* of a language are formed. For example, `Σ = {0,1}` is an alphabet of just two symbols, binary digits 0 and 1.

The set of all possible words that can be formed from the characters of an alphabet is denoted `Σ⃰`. This is the *Kleene's star*, which signifies zero of more repetitions. When applied to an alphabet, it defines the, *possibly infinite*, set of all possible words that can be constructed as sequences of characters, including the empty string denoted by `ϵ`.

- Alphabet, Σ = {0,1}
- Set of all possible words, Σ⃰ = {0,1}⃰ =   
  { ϵ, 0, 1, 00, 01, 10, 11, 000, 001, 010, 011, 100, 101, 110, 111, … }

The "finite" qualifier in finite-state machine relates to the number of machine's states, from which it follows that the number of final states must also be finite, as well as the number of transitions defined by δ. The alphabet must also contain a finite number of symbols, and all the words must be of finite length. However, the set of all possible words, build from the symbols of the alphabet, may be, and often is, infinite.

A *word* or *string*, `w ∈ Σ⃰`, is a *finite sequance* of characters in `Σ`, e.g. w₁ = 1, w₂ = 1010, w₃ = 11111111, etc. Words may have different length.

A word is a finite sequence of characters concatenated together, `w = {c₀, c₁, …, cₙ}`, where each `cᵢ ∈ Σ`, and the *length* of `w` is `|w| = n + 1` due to zero-based indexing.




## States






## The process




The FSM M starts in its initial state,  q₀.
The current input string is fed into M.
M reads the input string, one char at the time.
The input string, w = {c₀, c₁, …, cₙ}, is composed of N chars.

>M accepts the input string `w = {c₀, c₁, …, cₙ}`, where each `cᵢ ∈ Σ`,
>if there is a sequence of states `r₀, r₁, …, rₙ ∈ Q` such that
- r₀ = q₀
- rᵢ = δ(rᵢ˗₁, cᵢ) for 1 <= i <= n
- rₙ ∈ F


Thus, M starts in its init state, q₀. It receives the first char 'c' of the input string w (w = c:cs). The transition function δ determines the next state of M given the current state and the current input symbol. M makes transiotions on each input symbol, changing states, and when it receives the final symbol of the input string, it makes the final transition into some state qₙ, if qₙ ∈ F (i.e. if qₙ is one of the final states) then the entire input string is ACCEPTED by M. If qₙ is not one of the final states, the input string is REJECTED.

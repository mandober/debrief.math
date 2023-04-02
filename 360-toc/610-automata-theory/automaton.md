# Automaton
https://en.wikipedia.org/wiki/Automata_theory#Automata

General definition of *automaton* (p. automata), which restricts a broader definition of system to one viewed as acting in discrete time-steps, with its state behavior and outputs defined at each step by unchanging functions of only its state and input.

## Informal description

An automaton runs when it is given some *sequence of inputs* in discrete (individual) time steps or steps. An automaton processes one input picked from a set of symbols or letters, which is called an *input alphabet*. The symbols received by the automaton as input at any step are a *sequence of symbols called words*. An automaton has a *set of states*. At each moment during a run of the automaton, the automaton is in one of its states. When the automaton receives new input it *transitions to another state* based on a *transition function that takes the previous state and current input symbol as params*.

At the same time, another function called the *output function* produces symbols from the *output alphabet*, also according to *the previous state and current input symbol*. The automaton reads the symbols of the input word and transitions between states until the word is read completely, if it is finite in length, at which point the automaton halts. A state at which the automaton halts is called *the final state*.

To investigate the possible state/input/output sequences in an automaton using formal language theory, a machine can be assigned a *starting state* and a set of *accepting states*. Then, depending on whether a run starting from the starting state ends in an accepting state, the automaton can be said to accept or reject an input sequence.

The set of all the words accepted by an automaton is called *the language recognized by the automaton*. A familiar example of a machine recognizing a language is an electronic lock which accepts or rejects attempts to enter the correct code.

## Formal definition

### Automaton

An automaton can be represented formally by a 5-tuple, `M = (Σ, Γ, Q, δ, λ)`   
- `Σ` finite set of symbols, called the *input* alphabet of the automaton
- `Γ` finite set of symbols, called the *output* alphabet of the automaton
- `Q` a set of *states*, `q₀` is the initial state, final state `qₙ`
- `δ` the *transition* (or next-state) function, `δ : Q × Σ → Q` 
  mapping state-input pairs to successor states
- `λ` is the *next-output* function,             `λ : Q × Σ → Γ` 
  mapping state-input pairs to outputs.

If `Q` is finite, then `M` is a *finite automaton*.

### Input word

An automaton reads a finite string of symbols, `a₁ … aₙ` where `aᵢ ∈ Σ`, which is called an *input word*. The *set of all words* is denoted by `Σ*`.

### Run

A sequence of states, `q₀ … qₙ` where `qᵢ ∈ Q` such that `qᵢ = δ (qᵢ˗₁, aᵢ)` for `0 < i <= n`, is a run of the automaton on an input `a₁ … aₙ ∈ Σ*` starting from the initial state, `q₀`. In other words, initially, an automaton is at the start state q₀ and receives input a₁.

### Acceptor

In order to study an automaton with the theory of formal languages, an automaton may be considered as an acceptor, replacing the output alphabet and function Γ and λ with
- `q₀ ∈ Q` as the start state
- `F`, a set of states of Q, `F ⊆ Q`, called *acceptor states*

This allows the following to be defined:

### Accepting word


### Recognized language

The language `L ⊆ Σ*` recognized by an automaton is the set of all the words that are accepted by the automaton, `L = { w ∈ Σ* | δ (q₀, w) ∈ F }`.

### Recognizable languages

The recognizable languages are the set of languages that are recognized by some automaton. For finite automata the recognizable languages are *regular languages*. For different types of automata, the recognizable languages are different.

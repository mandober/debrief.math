# Automaton

https://en.wikipedia.org/wiki/Automata_theory#Automata
https://en.wikipedia.org/wiki/Automaton
https://en.wikipedia.org/wiki/Automaton_(disambiguation)

>An automaton is a self-operating machine.

In mathematics, CS, and particulary automata theory, an **automaton** (pl. automata) is an abstract machine, a mathematical model of computation (a mathematical model of computer hardware and software).

A **finite-state automaton** or **finite-state machine** is a type of automaton with a finite set of states.

The two dimensions of great importance to different models of computation and abstract machines: finiteness and determinism.

*Finiteness* is manifested in a finite number of components that comprise these machines. For example, a finite-state machine has a finite set of states, a finite number of transitions, and it recognizes a language that is composed of strings of symbols from a finite alphabet.

*Determinism* is another property and a factor of classification of abstract machines into deterministic and nondeterministic types.

*Deterministic machines* are completely specified and every operation proceeds in a defined, expected manner. Each step of operation is defined and depends only on known parameters. There is no uncertainty, ambiguity, or the need to make choices. For example, a DFA has a single initial state, and for each state the transition to the next state is defined for each input symbol. Whatever state the machine is in, it knows what to do next on whatever input symbol it receives. Each transition depends solely on the current state and the current input symbol, and they are all determined, being specified in advanced.

Besides finiteness and determinism, automata are also (sub)classified by their capability to remember things, to maintain memory. For example, adding memory to finite-state automata gives rise to push-down automata. The memory is realized a stack, so a PDA can use it to push and pop symbols onto it.

On the opposite end of the specturm of finiteness is Turing machine, which is defined to have an infinite tape used for reading symbols from it or writing symbols to it.


## Informal description

An automaton consists of a (finite) set of states, where each state specifies transitions to other states which depend only on the current state and the current input symbol. That is, the output at each step is defined by an unchanging function that takes a pair of the current state and current input symbol and indicates the next state the automaton needs to transition into. The automaton is initially in the specific state, called the start state, as explicitly defined. A step consists of feeding an input symbol to the transition function (along with the current state) which then spits out the state to move into (on that particular symbol). Each transition consumes one input character. When all input characters are consumed, the state the automaton finds itself will either be marked as accepting or not. If it is one of the accepting states, then the input string (as a whole) is recognized by the automaton; otherwise, the string is rejected.

## Informal description II

An automaton is defined in terms of:
- a finite set of states `Q`
- an alphabet `Σ` is a set of symbols
- transition function `δ`
- start state `q₀`, s.t. q₀ ∈ Q
- accepting states `F` s.t. F ⊆ Q

A regular language `L` over an alphabet `Σ` of symbols (characters) may be defined in terms of the strings an automaton `M` accepts, `L(M)`. 


`L = { w ∈ {0,1}⋆ : |w| ≡ 0 (mod 2) }`



The fact that string `w` belongs to the language 
 `L`, w ∈ L



e.g. `Σ = {0,1}`, so a char `x ∈ Σ` may be x=0 or x=1; 
Also, `Σ⋆` is the set of all possible bitstrings, 
and string `w` is in `Σ⋆` if `w ∈ Σ⋆`. 
String `w` of length `k` can be decomposed into chars, `c₀c₁…cₖ` all of which are in `Σ`. 
however 



An automaton runs when it is fed a sequence of symbols, called a string, `w`, which is comprised of characters (symbols) in the specified alphabet `Σ`.

inputs in discrete (individual) steps (or time steps).

An automaton processes one input picked from a set of symbols or letters, which is called an *input alphabet*. The symbols received by the automaton as input at any step are a *sequence of symbols called words*. An automaton has a *set of states*. At each moment during a run of the automaton, the automaton is in one of its states. When the automaton receives new input it *transitions to another state* based on a *transition function that takes the previous state and current input symbol as params*.

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

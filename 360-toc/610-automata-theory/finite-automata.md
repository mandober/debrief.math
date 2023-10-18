# Finite automata

(from the book "Introduction to Automata Theory, Languages, and Computation", 3rd Edition, John E. Hopcroft, Rajeev Motwani, Jeffrey D. Ullman, 2006)

## Models of computation

Finite automata is a model of computation. Computation in finite automata involves transitions between states in response to an input symbol. The transition to the next state depends on (the current state and) the input symbol.

There are different versions of finite automata. Generally, finite automata do not produce output: they only accept or reject an input string, and in that they define the set containing all of the strings of some language. *Finite state transducers* (FST) are finite automata that does produce output. While being useful for certain kinds of tasks, finite automata have very limited computational power due to the finite number of states and because it has no memory. Adding memory to a finite automaton yields *Turing machine*.

## States, input and transitions

A key component of a finite automata is a finite collection of states and for this reason they are called *finite state machines* (FSM). The fact that the collection of states is finite is important as it limits their expressive power.

A FSM is `⟨Q, Σ, δ, S, F⟩`, where
- `Q`  is the set of states
- `Σ`  is the finite alphabet of input symbols
- `δ`  is the transition function, `δ : Q ⨯ Σ → Q`
- `S`  is the finite set of initial states; in DFA, `S = {q₀}` or jusr `q₀`
- `F`  is the set of accepting states, F ⊆ Q

*Finite set of states*, `Q`: a FSM has `n = |Q|` states (with `n >= 1`), but not all states may be interconnected; some states may be completely separate and some may be unreachable from some other states (this is rarely practical, so usually all states are reachable).

*Alphabet* `Σ`: a FMS recognizes strings formed from an alphabet `Σ`. Therefore, a FSM is said to recognize a language of strings over an alphabet Σ. That way, a FSM also defines the language `L` of string over an alphabet Σ. An alphabet is a set of symbols (characters), e.g. Σ = {0, 1}. The *input* to FSM is a string fed one character at a time.

*Language* `L` over an alphabet `Σ` is a set of all well-formed strings `w` composed of characters in Σ. A string in L may be a sequence of chars such as 01, 0110, 1001, etc. Each language specifies the rules that determine which strings are valid (well-formed). For example, a language over an alphabet Σ = {0,1} may only admit strings that have the same number of 0's and 1's. Or a language `L` may consist only of strings `w` of even length, which may be denoted in set-builder notation as `L = { w ∈ {0,1}∗ : |w| is even }`.

FSM can only recognize *regular languages*. FSM may be a DFA or a NFA, but these are equivalent, DFA ≅ NFA. Furthermore, regular expressions only describe a regular language, so there is also an equivalence **DFA ≅ NFA ≅ RE**, and they all recognize (define) regular languages only.

*Transition function*, `δ`, specifies all the transitions a FMS can make from any state. `δ : Q ⨯ Σ → Q` means that `δ` takes the current state and the current input character as arguments and gives back the state to transition to. The transition function `δ` is a total function - for each state the transition is defined for each input character. If `|Σ| = k`, then each state must have all `k` transitions (outgoing arrows) specified.

*Starting (initial) state*, `q₀`, is the state in which a FSM starts. There is always a single starting state `q₀ ∈ Q`.

*Accepting (final) states*, `F`, are all the states that accept an input string. A FSM must consume all the characters of the input string `w`, ending up (after consumming the final character of `w`) in one of the final states, so it can be said that it accepts `w`. There are usually more than 1 accepting states, but 0 is not excluded - it just doesn't make for an exciting FSM since everything is rejected. The states `Q ∖ F` are *rejecting states*.

Note: In some books, accepting states are called final states, which is misleading because the computation can continue after a final state is reached. In fact, there is nothing preventing, and it is often necessary, for an accepting state to have transitions to other states. Only if the last char was consumed and a FSM finds itself in an accepting state will the string be accepted. But if a FSM find itself in an accepting state, but the string is not yet consumed, the process proceeds normally. 


**DFA** is decidable in that any state must define a transition on each character in the alphabet Σ (it may take the same transition on multiple characters), and, it can only make a transition by consuming a character (DFA must consume an input character to take a transition). To recognize a string of length `m`, a DFA must have at least `m + 1` states.

**NFA** is undecidable in that there may be multiple transitions available on the same input character, as well as ε-transitions that enable it move between states without consuming a character. NFA can make a transition without consuming an input character - this is modelled via *ε-transitions* that may be taken by "consuming" the empty string (ε).


In a *FSM diagram*, states are modelled by circles, and transitions by arrows that connect the circles. The arrows between states are labelled by the input symbol that causes the automaton to move from the state at the tail of the arrow to the state at the head of the arrow. The initial state is indicated by an arrow coming into the initial state `q₀` out of nowhere. Final states are indicated by doubly-oulined circles. Automaton can *loop* back to the current state on a character, as indicated in a diagram by a looping (identity) arrow.


Each finite automaton *partitions the set of all possible input strings* into
two subsets: the strings that it accepts and the strings that it rejects.

The set of strings that a finite automaton `M` accepts is called the *language accepted (recognized) by `M`*, denoted `L(M)`.

The language accepted by a finite automaton is often an infinite set, even though its set of states and everything else about it is finite.

## Deterministic finite automata

A finite automaton that is deterministic is called a deterministic finite automaton (DFA).

A finite automaton is deterministic if:
- it has 1 start state
- it has exactly 1 transition from each state for each input symbol
- it has no ε-transitions

The set of input symbols allowed by a DFA is called an alphabet, and it is required to be finite. If `Σ` is an alphabet of a DFA named `M`, then `L(M)` is a subset of `Σ∗`, the set of strings including the empty string over `Σ`.

When building an DFA, it's often necessary to include non-accepting black hole states from which there is no way of reaching an accepting state. Under the *black hole convention*, such states can be omitted to simplify the diagram. This leads to a diagram in which there is at most one transition from each state for each symbol of the alphabet, rather than exactly one. In a DFA, one transition from every state is required for every symbol of the alphabet. The transitions that are absent when a black hole is omitted can easily be recreated by adding an additional state with all of the missing transitions leading to that state.

## DFA and NFA

**Nondeterministic Finite Automaton** is `⟨Q, Σ, δ, S, F⟩`
- `Q`  is the finite set of states
- `Σ`  is the finite alphabet of input symbols
- `δ`  is the *transition relation*, `δ ⊆ Q ⨯ Σ ⨯ Q`
- `S`  is the finite *set of initial states*, `S ⊆ Q`
- `F`  is the set of accepting states, `F ⊆ Q`

**Deterministic Finite Automaton** is `⟨Q, Σ, δ, S, F⟩`
- `Q`  is the finite set of states
- `Σ`  is the finite alphabet of input symbols
- `δ`  is the *transition function*, `δ : Q ⨯ Σ → Q`
- `q₀` is the *single initial state*, `S = {q₀}` (or `S = q₀`) and `S ⊆ Q`
- `F`  is the set of accepting states, `F ⊆ Q`

The difference between NFA and DFA is that NFA can have more than one starting state: it has a finite set of states `S` (where S ⊆ Q). DFA has a single start state, which usually means `S = q₀`, i.e. a single state `q₀` is mentioned instead of the set `S`. However, for generalization over the two automatons, we can say that `S = {q₀}`.

Another difference is that `δ` is a *transition relation* in NFA, `δ ⊆ Q⨯S⨯Q`, but *transition function* in DFA, `δ : Q ⨯ Σ → Q`.

## Generalizing transition relation

To unify both NFAs and DFAs, we need to generalize the transition relation of NFA and transition function of DFA. Since all functions are relations, we can generalize `δ` to be a relation, but we can also go the other way and generalize `δ` to always be a function. In case of DFA, `δ` remains a total function `δ : Q ⨯ Σ → Q`, but in case of NFA, we can express a transition relation as a function that returns a set of states, `𝒫(Q)`, instead of only a single state `Q`.

`δ : Q ⨯ Σ → 𝒫(Q)`

That is, a function `δ` will than take a pair of a state and an input char, `(qᵢ, cⱼ)`, and return a set of states, `(q₁, …, qₙ)`, each of which can be transitioned to from the state `qᵢ` on symbol `cⱼ`. The return type is the powerset of states, `𝒫(Q)`, since a NFA can have any number of transitions from one state to any and all other states. 𝒫(Q) also contains ∅ for case a state in NFA has no transitions, but also to model *ε-transitions* which consume no input (i.e. they consume the empty string, `ε`).

```hs
DFA  δ : Q ⨯ Σ → Q
NFA  δ : Q ⨯ Σ ⨯ Σ
----------------------
FSA  δ : Q ⨯ Σ → 𝒫(Q)
```

```hs
-- In DFA, δ retunrs a single state
δ :: Q ⨯ Σ → Q
δ q c | q == 0 | c == "0" = q₁
               | c == "1" = q₂
      | q == 1 | c == "0" = q₀
               | c == "1" = q₂
      | q == 2 | c == "0" = q₀
               | c == "1" = q₁

-- In DFA, δ retunrs a set of states
δ :: Q ⨯ Σ → 𝒫(Q)
δ q c | q == 0 | c == "0" = (q₁, q₃)
      | q == 1 | c == ""  = (q₀)
               | c == "0" = ()
               | c == "1" = (q₀, q₁, q₂)
      | q == 2 | c == ""  = (q₀, q₁, q₂)
```

⟨qᵢ, sⱼ⟩ ⟼ ⟨q₁, …, qₙ⟩
δ ⊆ Q ⨯ Σ ⨯ Q, δ = { (qᵢ, sₖ, qⱼ) | qⱼ is }
δ : Q ⨯ Σ → Q, δ = { ((qᵢ, sₖ), qⱼ) }
δ : Q ⨯ Σ → 𝒫(Q), δ = { ((qᵢ, sₖ), (qʲ₀, …, qʲₙ)) }


(Definition: **relation delta as function**)   
A function `δ : Q × Σ → Q` is a *relation* `δ ⊆ Q×Σ×Q` such that for each `q ∈ Q` and `a ∈ Σ`, if `(q,a,q') ∈ δ` and `(q,a,q") ∈ δ` then `q' = q"`. It is a *total function* if for each `q ∈ Q` and `a ∈ Σ`, there is some `q'` such that `(q, a, q') ∈ δ`.

The first requirement says that the diagram contains only one start state, and the second requirement says that there is one and only one transition from each state for each input symbol. It's convenient to give the transition function `δ` in the form of a table, with rows corresponding to states and columns corresponding to input symbols. Then the second requirement means there will be exactly one state in each position of the table.

What happens when a FSM `M` reads a string of symbols, and what it means for `M` to accept a string, is explained by the next definition.


(Definition: **delta star function**)    
Let `M = (Q, Σ, d, {q₀}, F)` be a DFA. Then the transition function `δ : Q × Σ → Q` is extended to a function `δ∗ : Q × Σ∗ → Q` on strings over `Σ`, including ε, as follows:
1. ∀q ∈ Q, `δ∗(q, ε) = q`
2. ∀q ∈ Q, ∀c ∈ Σ and ∀w ∈ Σ∗, `δ∗(q, c w) = δ∗(δ(q,c), w)`

A string `w ∈ Σ∗` is *accepted* by `M` iff `δ∗(q₀, w) ∈ F`.

The definition of the extended transition function `δ∗` is by recursion. The first case says what it does for ε. The second case says what it does for a string `c w` consisting of a symbol `c` followed by a string `w`, in terms of what it does for `w`: first move to the state indicated by `δ` for the symbol `c`, and then proceed from there according to `δ∗` for `w`.

Example of `M` accepting the string "aaab", one step at a time:

```hs
  δ∗(0, aaab)
= δ∗(δ(0, a), aab)   -- δ(0, a) = 1
= δ∗(1, aab)
= δ∗(δ(1, a), ab)    -- δ(1, a) = 4
= δ∗(4, ab)
= δ∗(δ(4, a), b)     -- δ(4, a) = 4
= δ∗(4, b)
= δ∗(δ(4, b), e)     -- δ(4, b) = 5
= δ∗(5, e)
= 5
```

The string `"aaab" ∈ Σ∗` is accepted because `δ∗(0, aaab) = 5` and `5 ∈ F`.


It is interesting to inspect the sequence of states that are visited by a DFA during the computation.

(Definition: **Tracing**)    
Let `M = (Q, S, d, {q0}, F)` be a DFA, and let `s = a₁a₂…aₙ` be a string in `Σ∗`, with `aᵢ ∈ Σ` for each 1 ≤ i ≤ n. The trace of `M` on `s` is the sequence `q₀, q₁, …, qₙ` of states, where
```
    a₁      a₂     aₙ
q₀ ---> q₁ ---> ⋯ ---> qₙ ∈ δ
```

For example, in the last example, the trace of `M` on "aaab" is (0,1,4,4,5). The first state in the trace is the start state q₀ and the last state in the trace is the state that is reached when the input string is exhausted. The string is accepted iff that state is an accepting state.


Definition: **Regular language**     
Let `Σ` be an alphabet. 
>Any set of strings `L ⊆ Σ∗` is called a language. 
The language accepted by a DFA `M` 
with alphabet Σ 
is the set `L(M) ⊆ Σ∗` 
of strings accepted by `M`. 
>A language `L` is regular 
>if there is some DFA `M` 
>such that `L = L(M)`.


## Complement DFA

Let a DFA `M` accept a certain language `L(M)`. One of the things we can do with `M` is combine it with other DFAs to make it accept a different language. This allows us to build complicated DFAs out of simple ones.

**Complement**: changing `M` so that it accepts the complement of `L(M)` with respect to `Σ∗`. That is, it should accept the strings in `Σ∗` that are not accepted by `M`. To do this, we just *swap accepting and rejecting states*.

The complement of a DFA `(Q, Σ, δ, S, F)` is `(Q, Σ, δ, S, Q ∖ F)`. Then `L(M)` is the complement of `L(M)` with respect to `Σ∗`. This shows that the complement of a regular language is also regular. In other words, 
>the set of regular languages is closed under complement.

## Product DFA

Given two DFAs, `M` and `Mʹ`, that accept the languages `L(M)` and `L(Mʹ)` over the same alphabet `Σ`, how can we build a FSM to accept their intersection, `L(M) ⋂ L(Mʹ)`?

The intuition behind the *product construction* is: run `M` and `Mʹ` in parallel, accepting a given string `s ∈ Σ∗` iff it is accepted by both M and Mʹ. If `s` is accepted by M then `s ∈ L(M)`, and if `s` is accepted by Mʹ then `s ∈ L(Mʹ)`, so being accepted by both means that `s ∈ L(M) ⋂ L(Mʹ)`.

We need a single DFA that simulates the actions of M and Mʹ running in parallel. The following definition shows that the set of regular languages is closed under intersection.

>Regular languages are closed under intersection.

(Definition: **Product construction**)    
The product of DFAs 
`M  = (Q, Σ, δ, {q₀}, F)` and 
`Mʹ = (Qʹ,Σ ,δʹ,{q₀ʹ},Fʹ)` 
is 
`M ⨯ Mʹ = (Q ⨯ Qʹ, Σ, δ ⨯ δʹ, {(q₀, q₀ʹ)}, F×Fʹ)`, 
where the transition function 
`δ ⨯ δʹ : (Q ⨯ Qʹ) ⨯ Σ → (Q ⨯ Qʹ)` 
is defined by 
`(δ ⨯ δʹ)((q, qʹ), a) = (δ(q, a), δʹ(qʹ, a))` 
and the set of accepting states is 
`F ⨯ Fʹ = { (q, qʹ) ∈ Q ⨯ Qʹ | q ∈ F ⋀ qʹ ∈ Fʹ }`


The states of `M ⨯ Mʹ` are pairs consisting of a state from M and a state from Mʹ. The product DFA being in state `(q, qʹ)` corresponds to M being in state q and Mʹ being in state qʹ. Then reading a symbol a ∈ Σ causes a transition to 
`(δ(q, a), δʹ(qʹ, a))`, which corresponds to M moving to state `δ(q, a)` and Mʹ moving to state `δʹ(qʹ, a)`.

Since the start state of `M×Mʹ` is `(q₀, q₀ʹ)`, and its accepting states are pairs `(q, qʹ)` such that `q ∈ F` and `qʹ ∈ Fʹ`, computations of `M×Mʹ` correspond exactly to M and Mʹ running in parallel, side by side, and accepting a string only when both M and Mʹ would have accepted it.

## Sum DFA

Given two DFAs, `M` and `Mʹ`, that accept the languages `L(M)` and `L(Mʹ)` over the same alphabet `Σ`, how can we build a FSM to accept their union, `L(M) ⋃ L(Mʹ)`?

The difference between the union and intersection machines is in the set of accepting states. In the case of the intersection of languages, in order to accept a string we needed both M and Mʹ to accept it. In the case of the union, we need either machine one to accept it.

>Regular languages are closed under union.

(Definition: **Sum construction**)    
The product of DFAs 
`M  = (Q, Σ, δ, {q₀}, F)` and 
`Mʹ = (Qʹ,Σ ,δʹ,{q₀ʹ},Fʹ)` 
is 
`M + Mʹ = (Q ⨯ Qʹ, Σ, δ ⨯ δʹ, {(q₀, q₀ʹ)}, F + Fʹ)`, 
where the transition function 
`δ ⨯ δʹ : (Q ⨯ Qʹ) ⨯ Σ → (Q ⨯ Qʹ)` 
is defined by 
`(δ ⨯ δʹ)((q, qʹ), a) = (δ(q, a), δʹ(qʹ, a))` 
and the set of accepting states is 
`F + Fʹ = { (q, qʹ) ∈ Q ⨯ Qʹ | q ∈ F ⋁ qʹ ∈ Fʹ }`

## Nondeterministic Finite Automata

The restrictions of DFAs meant that no decisions are required: there is one state to start from, and there is always one transition available from every state for each input symbol. Relaxing these restrictions gives a NFA, which can have more than one start state and where there can be any number of transitions from any state on any input symbol.

One way of thinking of NFAs is that it offers many choices, and a series of decisions is required during computation. This leads to different possible computations, having potentially different outcomes (accept or reject). *NFA accepts an input if at least one series of decisions leads it to accept*. Equivalently, we can think about NFAs as trying all the possible choices simultaneously, and accepting an input if at least one of them results in the NFA ending up in an accepting state.

Creating an NFA that accepts a given language is often much easier than creating a DFA. Surprisingly, however, it turns out that non-determinism actually gives us no additional power:
> Every NFA can be converted to a DFA that accepts the same language.

In fact, even adding more non-determinism to NFAs in the form of ε-transitions, which give us the ability to move freely between states without consuming input symbols, gives no additional power.

NFAs, the proof that every NFA can be converted to an equivalent DFA, as well as the Pumping Lemma, are due to 1976 Turing Award winners Michael Rabin and Dana Scott.

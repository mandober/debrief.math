# Deterministic finite automaton

https://en.wikipedia.org/wiki/Deterministic_finite_automaton

## DFA Computation

https://www.youtube.com/watch?v=cOITFNI53ps

The idea is to record the states of the DFA one at a time as the string is being read. Instead of thinking about a set of states visited (which cannot distinguish what the string is), the sequence of states can tell us a lot about what the DFA did on the input string.

A DFA has a set of states, but it goes through the *sequence (not set) of states* as it process some input `w`. That sequence of states is always one more than the length of `w`. Each transition must consume a char, so if the length of `w` is `n`, than `n` transitions are taken, which, counting the initial state (which does not consume a char) makes a sequence of states of length n+1.

Sometimes we can reconstruct the input from the sequence of visited states (not always, only when each state has different transitions on each char).

>A computation of a DFA `M` on a string `w ∈ Σ⃰` composed of chars `cᵢ ∈ Σ`, where `|w| = n`, is a sequence of `n+1` states `r₀, r₁, …, rₙ` such that:
- r₀ = q₀
- rᵢ = δ(rᵢ˗₁, cᵢ)   for 1<=i<=n
- rₙ ∈ F ⇒ accept; else reject

A computation is *accepting* if the last state is in the set of accepting (final) states, `rₙ ∈ F`. Otherwise it is *rejecting*.

## Languages of DFAs

>The language of a DFA is a set of all strings it accepts.

`L(M)` is the language recognized by a DFA `M`.

L(M) = { ∀w ∈ Σ⃰ | *the*¹ computation of w is accepted by M }

¹every single string has exactly one computation in any DFA

Each possible string `w ∈ Σ⃰` has a computation, but only accepted strings belong to the language `L(M)`.

## How many DFAs with 3 states and unary alphabet are possible?

Here we look at the question of how many DFAs with 3 states and unary alphabet (Σ = {0}) are possible. It turns out to be a somewhat surprising answer. We first calculate the number of possible DFAs, and then turn to the question of how many different regular languages are possible. Then we break this down into cases, depending on how many states are final and how many of those are reachable from the start state. We can then eliminate more cases by noting that DFAs that are just complements of each other (final states and non-final states flipped) only need to be considered once.

- init states: 3 possibilities
- final states: 2³ = 8 possibilities (includes the possibility that F = ∅)
- δ : Q × Σ -> Q ~ 3 × 1 -> 3 = 3³ = 27 possible transitions
So, 3×8×27 = 8×81 = 648 possible DFAs

However, considering the language they recognize, many of those 648 DFAs are equivalent. If there are no final states, then the language is ∅. Also, if no final state is reachable from the initial state, then the language is ∅.

1. Assume we can only reach 1 state: then that state must be q₀. Since we cannot leave q₀, the other two states are unreachable. So q₀ must have a loop.
- 1.1 if q₀ is a final state, the DFA accepts `Σ⃰` (incl. ϵ)
- 1.2 if q₀ is not a final state, than the language is empty, `∅`.

2. Assume we can reach 2 states, q₀ and q₁. 
Since we can reach q₁ from q₀, it means q₀ does not have a loop (since it transitions to q₁ and Σ is unary). We then consider what happens if q₁ has a loop or if it goes back to q₀ (mult by final states possibilities).
- 2.1 `q₁` has a loop:
  - 2.1.1 q₀,q₁ ∉ F ⇒ `∅`
  - 2.1.2 q₀ ∈ F    ⇒ `ε` only, {ε}, i.e. |w| = 0 for all w
  - 2.1.3 q₁ ∈ F    ⇒ `Σ⃰ ∖ {ε}`, i.e. |w| >= 1 for all w
  - 2.1.4 q₀,q₁ ∈ F ⇒ `Σ⃰`
- 2.2 `q₁` goes back to q₀:
  - 2.2.1 q₀,q₁ ∉ F ⇒ `∅`
  - 2.2.2 q₀ ∈ F    ⇒ even length strings, including ε
  - 2.2.3 q₁ ∈ F    ⇒ odd length strings, excluding ε
  - 2.2.4 q₀,q₁ ∈ F ⇒ `Σ⃰`

3. Assume all states are reachable:
- 3.1 no final state     ⇒ `∅`
- 3.2 all states final   ⇒ `Σ⃰`
- 3.3 two final states   ⇒ complement of some 1-state DFA's language (..)
- 3.4 one state is final ⇒ (see below)

(3.4) For all 3 states to be reachable, q₀ must go either to q₁ or q₂, which in turn must go to the third (remaining) state. Only that third (remaining) state can have a loop. Thus, there are 2 forms of what is possible:
- (3.4.1) q₀ ----> q₁ ----> q₂
- (3.4.2) q₀ ----> q₂ ----> q₁

At this point, there are 3 choices what the third state (q₂ or q₁) can do:
- (3.4.1)    _q₀ ----> q₁ ----> q₂_
  - (3.4.1.1)                    ----> q₀
  - (3.4.1.2)                    ----> q₁
  - (3.4.1.3)                    ----> q₂ (loop)
- (3.4.2)    _q₀ ----> q₂ ----> q₁_
  - (3.4.2.1)                    ----> q₀
  - (3.4.2.2)                    ----> q₁ (loop)
  - (3.4.2.3)                    ----> q₂

So, there are 6 possibile configurations for (3.4), i.e. when one state is final, but all states are reachable.


```
q₀ ----> q₁            q₀ ----> q₁            q₀ ----> q₁  
↑       .                      .                      ↗    
│     .                      .                      .      
│   .                      .                      .        
│ ↙                      ↙                      ↙          
q₂                     q₂                     q₂           
```

The config 3.4.1.1 (and 3.4.2.1) accept langs whose strings are `mod 3`:   
(the final state is depicted in cursive font, `𝓺`)

```
↓                      ↓                      ↓
𝓺₀ ----> q₁            q₀ ----> 𝓺₁           q₀ ----> q₁   
↑       .              ↑       .              ↑       .     
│     .                │     .                │     .       
│   .                  │   .                  │   .         
│ ↙                    │ ↙                    │ ↙           
q₂                     q₂                     𝓺₂            
                                                            
|w| = 0 mod 3          |w| = 1 mod 3          |w| = 2 mod 3 

ε                      0                      00
000                    0000                   00000
000'000                000'000'0              000'000'00
000'000'000            000'000'000'0          000'000'000'00
```

## Examples of regular languages

Examples of regular languages over alphabet Σ = {0,1}
- `Σ⃰`
- `{ε}`
- `∅`
- `Σ⃰ \ {ε}`
- `∅*` ≠ ∅ = {ε}
- `{ε}⃰` = {ε}

## How many DFAs accept a given language L

How many DFAs accept a certain language `L`, which can be anything?

If L is not regular, then clearly there is no DFA for L. But if L is regular, the number is at least 1. For some languages, we can build an infinite amount of DFAs by adding "unreachable" states, but is this true in general? It is.

## DFA Minimization Algorithm

https://www.youtube.com/watch?v=7W2lSrt8r-0

We consider the problem of minimizing the number of states in a DFA.

The key here is to identify pairs of states that are "distinguishable", in the sense that reading any string from both of them eventually will lead to an accept state in one case, and a non-accept state in the other case. Then we build the definition of distinguishable states recursively.

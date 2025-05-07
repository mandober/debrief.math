# DFA

A DFA is a 5-tuple, `(S, s₀, Σ, δ, F)`
- `S` is a set of states
- `s₀ ∈ S` is the initial state
- `Σ` is an alphabet
- `δ : S × Σ → S` is a transition function
- `F ⊆ S` is a set of final (accepting) states

Formalizing acceptence: `δ⋆ : S × Σ⋆ → S` is a function that takes the current state and the entire input string and outputs the eventual state. It is defined by induction on the length of `Σ⋆`.
- δ⋆(s, ε) = s
- δ⋆(s, w∙a) = δ(δ⋆(s,w), a), for all a ∈ Σ

`L(A) = { w ∈ Σ⋆ | δ⋆(s₀, w) ∈ F }` is a language accepted (recognized) by automaton `A`. Such a language is called **regular**.

Let `M` be a finite monoid, `F` a finite subset of `M`, and `h : Σ⋆ → M` be a homomorphism. Then, `L(M, F, h) := { w ∈ Σ⋆ | h(w) ∈ F }` is the *language of monoid* `M`.

Thm. A language is regular iff it is recognized by some triple `(M, F, h)`.

Given `L ⊆ Σ⋆`, we define an *equivalence relation* `≡ʟ`:    
`∀z ∈ Σ⋆. xz ∈ L ⇔ yz ∈ L` ⇒ `x ≡ʟ y`.

An equivalence relation that respect the algebraic structure is called a **congruence relation**. So, we read `≡ʟ` as congruence; e.g. `x ≡ʟ y` is read "x is congruent to y".

`x ≡ʟ y` and `u ≡ʟ z` then `xu ≡ʟ yv`.

`Σ⋆ / ≡ʟ` is a well-defined monoid. Once we got a monoid and a language, we can get another monoid by quotienting that language. Regular languages have useful properties that can be explored by studying this monoid.

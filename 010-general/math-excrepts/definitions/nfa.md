# NFA

A NFA is a 4-tuple `(Q, Q₀, F, Δ)`, where
- Q       finite set of states
- Q₀ ⊆ Q  finite set of initial states
- F ⊆ Q   finite set of accepting states
- Δ : Q × Σ → 2^Q  transition relation

A NFA + ε (`ε` is an epsilon transitions)
- Δ : Q × (Σ ∪ {ε}) → 2^Q  transition relation

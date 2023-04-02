# Type Theory :: Type Systems

λ-calculi:
- Untyped λ-calculus
- Typed λ-calculi
  - Implicitly typed λ-calculi (typing à la Curry)
    - Simply typed λ-calculus
    - Second-order λ-calculus
    - Hindley-Milner type theory
    - System of intersection types, `λ⋂` (no à la Church-typed counterpart)
  - Explicitly typed λ-calculi (typing à la Church)
    - Simply-typed λ-calculus (STLC) `λ→`, `λ͢`
    - Second-order λ-calculus
    - λ-cube
      - λ-cube  = { λ͢ , λ͢², λ͢ω̱, λ͢Π, λ͢²ω, λ͢²Π, λ͢Πω, λ͢²Πω }
      - λ-cube² = { λ͢ , λ2, λω, λΠ, λ2ω, λ2Π, λΠω, λ2Πω }
    - Pure type systems
    - UTT-Σ
    - Calculus of Constructions, `λC` (no à la Curry-typed counterpart)

Typing:
- Typing à la Church (explicit typing)
  - λ-Church
  - λC Calculus of constructions (no à la Curry-typed counterpart)
- Typing à la Curry (implicit typing)
  - λ-Curry
  - λ⋂ Intersection types (no à la Church-typed counterpart)

Misc type theories and their (possible) type system:
- Ramified Type Theory (RTT), first formulation of a theory of types by Russell, highly influenced by Frege's concept of types. RTT have a double hierarchy: one of orders and the other of types. Ramified types had limitations and for this reason, the controversal axiom of reducibility was added.
- *Simple Theory of Types* (STT) as envisaged by Ramsey, 1926 (and also independently by Hilbert and Ackermann) which is a simplification of the ramified theory of types by removing the orders.
- ITT intuitionistic
- CTT constructive
- Per Martin-Lof (several favors)
  - MLTT

Opposing pairs of type systems:
- untyped vs typed
- staic vs dynamic
- explicitly vs implicitly-typed (typing à la Church vs à la Curry)
- structural vs nominal



Exotic (and less so) types found across type systems:
- Quantified types
- Linear types
- Refinement types
- Affine types
- Relevance types
- Session types (typestates)



* Foundations of Functional Programming
https://en.wikiversity.org/wiki/Foundations_of_Functional_Programming

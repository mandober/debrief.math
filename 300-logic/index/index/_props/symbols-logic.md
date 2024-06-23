# Logic :: Index :: Logic symbols

Logic symbols
- constants (nullary connectives)
  - truth values (T and F, 1 and 0, ⟙ and ⟘)
  - tautology, ⟙
  - contradiction, ⟘ ⊥
- logical connectives
  - ¬ ∧ ∨ ⇒ , ⇔ ⊕
- quantifiers, ∀ ∃
- entailment, ⊢ ⊨
- equality, =
- equivalence, ≡
- biconditional, ⇔


Logic symbols by arity
- nullary
  - constants
- unary
  - unary connectives
- binary
  - binary connectives




⟶ ⟷ ⟻ ⟼  ⟸ ⟹ ⟺ ⟽ ⟾  ⟿ ⟰ ⟱  ➡ ⬅ ➔ 
↖ ↑ ↗ ← → ↙ ↓ ↘  ↦   ⊤ ⟂ ⊢ ⊨ ⊃ ∋ ⋯ ≝ ≟ ≡ ⇔ ⇒
¬  ∨ ∧  ⊕ ⊗  ↔   ⇍ ⇎ ⇏ ⇐ ⇒ ⇔  ⤂ ⤃ ⤄  ⇷ ⇹ ⇸  Ꞩ Ꞧ


## Grammar

Grammar of a formal language: although similar in many aspects, the right grammer is different from the one on the right in one key aspect - it restricts negation so that only literals can be negated; in the grammer on the left, any arbitrary term can be negated.

```
constants,   κ := 1 | 0
vars,        ν := p, q, r, …
connectives, ω := ⋀ | ⋁ | -> | ⇔ | ⊕ | ↑ | ↓
literals,    λ := ν | κ

terms,       τ := λ                  T := λ
                | ¬ τ                   | ¬ λ
                | τ ω τ                 | T ω T
                | ( τ )                 | ( T )

example terms:
               ¬0                       ¬0
               ¬p                       ¬p
               ¬(p ∧ q)                 ✘
               ¬(p → (q ∨ s))           ✘

               0, 1
               p, q, r
               (0), (1)
               (p)
               ¬(p)
               ¬0, ¬1
               ¬p, ¬q
               ¬p ∧ ¬q
               (¬p ∧ ¬q)
              ¬(¬p ∧ ¬q)
```





definitional introductions:
-    p -> q ≡ ¬p ∨ q
-    p -> q ≡ ¬q -> ¬p
- ¬(p -> q) ≡ p ∧ ¬q
-   ¬p -> q ≡ p ∨ q
-   p -> ¬q ≡ ¬p ∨ ¬q
-   p -> ¬q ≡ ¬(p ∧ q)

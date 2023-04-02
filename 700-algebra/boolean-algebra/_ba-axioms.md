# Axioms in Boolean Algebra

```js
              a ∧ T = a                     {∧ identity}
              a ∨ F = a                     {∨ identity}
              a ∧ a = a                     {∧ idempotence}
              a ∨ a = a                     {∨ idempotence}
              a ∧ F = F                     {∧ null} annihilation
              a ∨ T = T                     {∨ null} absorbtion
              a ∧ b = b ∧ a                 {∧ commutative}
              a ∨ a = b ∨ a                 {∨ commutative}
        (a ∧ b) ∧ c = a ∧ (b ∧ c)           {∧ associative}
        (a ∨ b) ∨ c = a ∨ (b ∨ c)           {∨ associative}
        a ∧ (b ∨ c) = (a ∧ b) ∨ (a ∧ c)     {∧ distributes over ∨}
        a ∨ (b ∧ c) = (a ∨ b) ∧ (a ∨ c)     {∨ distributes over ∧}
           ¬(a ∧ b) = ¬a ∨ ¬b               {DeMorgan's law}
           ¬(a ∨ b) = ¬a ∧ ¬b               {DeMorgan's law}
                 ¬T = F                     {negate T}
                 ¬F = T                     {negate F}
              ¬(¬a) = a                     {double negation}
             a ∧ ¬a = F                     {∧ complement} NCL
             a ∨ ¬a = T                     {∨ complement} LEM

                  a → a ∨ b                 {∨ implication} weakening
              a ∧ b → a                     {∧ implication} ∧El
              a ∧ b → b                     {∧ implication} ∧Er

          →     ≡     →     ≡     ∨
        a →  b  ≡  ¬b → ¬a  ≡  ¬a ∨  b      {implication}
       ¬a →  b  ≡  ¬b →  a  ≡   a ∨  b
        a → ¬b  ≡   b → ¬a  ≡  ¬a ∨ ¬b
       ¬a → ¬b  ≡   b →  a  ≡   a ∨ ¬b

              a → b ≡ ¬a ∨ b                {implication}
              a → b ≡ ¬b → ¬a               {contrapositive}

        a ∧ (a → b) ⇒ b                     {Modus Ponens}   a, a → b ⊢ b
  (a → b) ∧ ¬b      ⇒ ¬a                    {Modus Tollens}  a → b, ¬b ⊢ ¬a
  (a ∨ b) ∧ ¬a      ⇒ b                     {∨ syllogism}    (a ∨ b), ¬a ⊢ b
  (a → b) ∧ (b → c) ⇒ a → c                 {→ chain} transitivity
  (a → b) ∧ (c → d) ⇒ (a ∧ c) → (b ∧ d)     {→ combination}

        (a ∧ b) → c ≡ a → (b → c)           {Currying}
 (a → b) ∧ (a → ¬b) ≡ ¬a                    {absurdity}
              a ↔ b ≡ (a → b) ∧ (b → a)     {equivalence}
```

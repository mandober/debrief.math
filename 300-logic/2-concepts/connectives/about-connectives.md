# Logic :: Logical connectives :: About

**Logical connectives** or **logical operators** are constant logical symbols used to join propositions.

A logical constant (constant logical symbol) of a formal language is a symbol that has the same semantic value under every interpretation of that language.

Besides logical connectives, logical constants also include logical quantifiers, and sometimes entities from other syntactic categories, like the equality predicate (=), which is treated as a constant in many systems of logic.

Logical connectives classification
- by arity
  - unary
  - binary (majority of connectives)
  - ternary
- by logic
  - connectives of propositional logic (propositional connectives)
  - connectives in quantified logic
  - connectives in modal logic
  - connectives in linear logic
- by associativity
  - almost all connectives are left-associative except implication
  - p → (d → ((q → d) → (e → j))) = p → d → (q → d) → e → j
- by precedence (from highest to lowest)
  - NOT
  - AND
  - OR
  - IMP
  - BIC
  - p ∧ q ∨ s → t ⇔ ¬(r ∧ d) → s ∨ ¬w = 
    (((p ∧ q) ∨ s) → t) ⇔ (¬(r ∧ d) → (s ∨ ¬w))

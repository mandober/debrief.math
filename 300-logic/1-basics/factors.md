# 

The fundamental principles of predication:
- The laws of thought
  - The Law of Non-Contradiction (LNC), `¬(p ∧ ¬p)`
  - The Law of Excluded Middle   (LEM), `p ∨ ¬p`
  - The Law of Identity          (LID), `p → p`
    - identity of indescernables
    - indescernability of ideticals
    - Leibniz law, Leibniz equality, `∀x∀y(Px ⇔ Py) → x = y`
- The Principle of Bivalence (POB)
- The Principle of Explosion (EFQ), i.e. Ex Falsum Quidlibet
  - everything follows from contradiction, `⊥ ⊢ p`
  - brings about trivialization of a theory
  - brings about trivialization of truth values
- Contradictions
  - contradiction, bottom, falsity
  - handling contradiction
  - paraconsistent logics
  - dialetheism
  - inconsistency
  - inconsistent theory: a theory that gives rise to a contradiction
- Entailment
  - logical consequence
  - multiple levels that exhibit entailment:
    - implication, `→`
      - material implication, `→`
      - strict implication, `-≺`strict
      - if-then constructions
    - syntactic entailment, `⊢`
    - semantic entailment,  `⊨`
    - inference line
  - Logical entailment
    - syntactic entailment, `⊢`
    - semantic entailment,  `⊨`
    - semantic entailment entails syntactic entailment, `⊨ → ⊢`
  + Idempotency of entailment
  + Monotonicity of entailment
- Logical equivalences
  - Logical identities
  - transformation
  - substitution
- Material conditional
  - logical implication
  - sufficient and necessary conditions
  - square of opposition
    - implication, `p → q`
    - negated implication, `¬(p → q)`
    - contraposition, `¬q → ¬p`
    - inverse (reverse implication), `q → p`
    - converse (reverse contraposition), `¬p → ¬q`
  - equivalence of `p → q` ≡ `¬p ∨ q`
    - negated conditional, why this holds?
- Rules of inference
  - Rules of inference
    - introduction, I
    - elimination, E
    - I and E must correspond to each other, i.e. the amount of information extracted must match the amount of info introduced, and vice versa.
  - assumption
    - law of identity, `p → p`
  - *conjunction*
    - conjunction introduction, ∧I
      - from `p` and `q` derive `p ∧ q`
      - `p, q ⊢ p ∧ q`
    - conjunction elimination, ∧E
      - from `p ∧ q` derive `p`, `p ∧ q ⊢ p`, ∧E₁
      - from `p ∧ q` derive `q`, `p ∧ q ⊢ q`, ∧E₂
      - from conjunction, `p ∧ q`, to each conjunct: derive `p`, derive `q`
      - `p ∧ q ⊢ p ∨ q` i.e. `p, q ⊢ p, q`
    - ∧I followed by ∧E must correspond to each other:
      ```
      p ∧ q       p ∧ q
      ----- ∧E₁   ----- ∧E₂
        p           q
      ----------------- ∧I
            p ∧ q
      ```
    + in quantum logic, both ∧I and ∧E can fail:
      - `p, q ⊬ p ∧ q`
      - `p ∧ q ⊬ p`

  - *negation*
    - negation introduction
      - reduction ad absurdum
      - contradiction
    - negation elimination
  - double negation
    - double negation introduction (DNI), `Γ ⊢ A` ⇒ `Γ ⊢ ¬¬A`
    - Double negation elimination (DNE), `Γ ⊢ ¬¬A` ⇒ `Γ ⊢ A`
- Structural rules of inference
  - weakening
  - exchange
  - permutation
- Axioms
  - associativity of connectives
  - Transformations
    - commutativity of connectives
    - distributivity of particular connectives over particular connectives
    - de Morgan's dualities
      - `¬(p ∧ q) ⇔ ¬p ∨ ¬q`
        - `¬p ∨ q ⇔ ¬(p ∧ ¬q)`
        - `p ∨ ¬q ⇔ ¬(¬p ∧ q)`
      - `¬(p ∨ q) ⇔ ¬p ∧ ¬q`
- Reasoning
  - proposition, `p`, loosely:
    - proposition, `p` is true: `p`
    - proposition, `p` is false: `¬p`
    - proposition, `p`, is equal to itself, `p = p`
    - proposition, `p`, implies itself, `p → p`



⊬ ⊭ ⇍ ⇏

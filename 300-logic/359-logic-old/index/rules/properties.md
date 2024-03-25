

* Laws
  - POB, {0, 1}
  - ID, `p → p` (= ¬p ∨ p in classical)
  - LEM, `p ∨ ¬p`
  - LNC, `¬(p ∧ ¬p)`
  - DNE, `¬¬p ≡ p`, ¬¬p → p
  - DNI, `p ≡ ¬¬p`, p → ¬¬p
  - DML, ¬(p • q) = ¬p •̅ ¬q
    - `¬p ∧ ¬q ⇔ ¬(p ∨ q)` (CL)
    - `¬p ∨ ¬q ⇔ ¬(p ∧ q)` (CL)
    -  ¬p ∧ ¬q ⇔ ¬(p ∨ q)  (IL) same as in CL
    -  ¬p ∨ ¬q ⇒ ¬(p ∧ q)  (IL) only as implication (only in right direction)
    - `¬p ∨ ¬q ⇍ ¬(p ∧ q)` (IL) not as converse (not in left direction)
  - ASS, (p • q) • r = p • (q • r)
  - COMM, p • q = q • p
  - DIST, p • (q ∘ r) = (p • q) ∘ (p • r)
    - (p ∨ q) → r ≡ (p → r) ∨ (q → r)
  - EFQ, ⊥ → p, 0 → 1
  - ADD, p → p ∨ q
  - SIMP, p ∧ q ⊢ p, q
  - r → (p ∨ q) ≡ (r → p) ∧ (r → q)
  - MP, p → q, p ⊢ q
  - MT, p → q, ¬q ⊢ ¬p
  - DS, p ∨ q, ¬p ⊢ q
  - iNEG, ¬p := p → ⊥

* Conditionals
  - material implication
  - strict conditional
  - conditional negation in connexive logic
  - paradoxes of material implication
  - necessity and possibility
  - entailment
  - monotonicity of entailment
  - idempotence of entailment
  - logical consequence
  - logical truth

* Constructivity
  - LEM, `p ∨ ¬p`
  - DNE, `¬¬p ⇔ p`
  - DML
    -  ¬p ∧ ¬q ⇔ ¬(p ∨ q)  (IL) same as in CL
    -  ¬p ∨ ¬q ⇒ ¬(p ∧ q)  (IL) only as implication (only in right direction)
    - `¬p ∨ ¬q ⇍ ¬(p ∧ q)` (IL) not as converse (not in left direction)
    -  ¬(p ∧ q) ⇏ ¬p ∨ ¬q  (distributivity of conjunction negation doesn't hold)
    - weaker (than LEM) nonconstructive axioms
      - principle of the weak excluded middle (WPEM), `¬p ∨ ¬¬p`
      - limited principle of omniscience (LPO)
        - For any sequence `a₀, a₁, …` such that each `aᵢ` is either 0 or 1, the following holds: either `aᵢ = 0` for all `i`, or there is a `k` with `aₖ=1`.
        - That is, LPO holds if either all terms are false,
                            or there is at least one true term (?).
          (If all terms are 0, the exp is 0; if at least one is 1, the exp is 1)
        - The second disjunct can be expressed as `∃k.aₖ ≠ 0` and is constructively stronger than the negation of the first, `¬∀k.aₖ = 0`.
        - The weak schema in which the former is replaced with the latter is called *WLPO* and represents particular instances of excluded middle.
      - lesser limited principle of omniscience (LLPO)
        a₀, a₁, a₂, …, aₙ
        0 ∨ 0 = 0
        1 ∨ 0 = 1
        0 ∨ 0 ∨ 0 ∨ … ∨ 0 = 0
        1 ∨ 0 ∨ 0 ∨ … ∨ 0 = 1
        a₀ ∨ a₁ ∨ a₂ ∨ … ∨ aₙ
        0 ∨ 0 ∨ 0 ∨ … ∨ 1 = 1


* *Connexive logics* are a class of non-classical logics designed to exclude the paradoxes of material implication. The characteristic that separates connexive logic from other non-classical logics is the admittance of the Aristotle's thesis, i.e. `¬(¬p → p)` as a logical truth. **Aristotle's thesis** asserts that no statement follows from its own denial.
* *Stronger connexive logics* also accept **Boethius' thesis**, that is the formula `(p → q) → ¬(p → ¬q)`, which states that if a statement implies one thing, it does not imply its opposite.
* *Relevance logic* is another logical theory that tries to avoid the paradoxes of material implication.

# Formal language

https://en.wikipedia.org/wiki/Formal_language


We'll define a formal language for expressing propositions that we'll name LP.

The first step in constructing LP is to *choose a set of symbols that can stand for propositions*. This set is called **propositional signature** (or just signature). The symbols in the signature are called **propositional symbols** or **propositional variables** and they are usually selected to be lower-case letters beginning with "p" (p for proposition), optionally with subscripts, superscripts, and other decorators that will make the signature an infinite set, thus making sure we never run out of the fresh variables.

(1) truth function symbols: ∧ ∨ → ↔ ¬ ⊥    
(2) parentheses: ( )    
(3) the signature, σ = {p, q, r, s ...}

For each choice of signature σ there is a dialect LP(σ) of LP.

* The **lexicon** of LP(σ) is the set of symbols consisting of the truth function symbols (1), the parentheses (2) and the symbols in σ (3)

* An **expression** of LP(σ) is a string of one or more symbols from the lexicon of LP(σ). The length of the expression is the number of occurrences of symbols in it (often the same symbol occurs more than once).

When dealing with a language, we need to distinguish between an **object language** L and a **meta language** M, like English, that we use to discuss the object language. We can use **metavariables** (usually Greek letters such as φ, ψ, χ, etc.) that range over the expressions of L, so we can state some constructs in L more succintly (sorta like an axiom scheme).

We need to say which statements of LP(σ) are "grammatically" correct expressions. These expressions are known as **formulas**.

We state what are the valid formulas by a set of rules:
- ⊥ is a formula of LP(σ), and so is every symbol in σ.
- If φ is a formula of LP(σ) then so is (¬φ).
- If φ and ψ are formulas of LP(σ), then so are:
  - (φ ∧ ψ)
  - (φ ∨ ψ)
  - (φ → ψ)
  - (φ ↔ ψ)
- Nothing else is a formula of LP(σ)

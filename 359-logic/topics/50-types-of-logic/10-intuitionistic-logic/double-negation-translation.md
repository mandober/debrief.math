# Double-negation translation

https://en.wikipedia.org/wiki/Double-negation_translation

In proof theory, double-negation translation (negative translation), is a general approach for embedding classical logic into intuitionistic logic.

It is typically done by translating formulas to formulas which are classically equivalent but intuitionistically inequivalent.

Particular instances of double-negation translation include *Glivenko's translation* for propositional logic, and the *Gödel-Gentzen translation* and *Kuroda's translation* for first-order logic.

## Propositional logic

The easiest double-negation translation to describe comes from Glivenko's theorem, proved by Valery Glivenko in 1929. It maps each classical formula `φ` to its double negation `¬¬φ`.

>Glivenko's theorem:
>If φ is a propositional formula, then φ is a classical tautology if and only if ¬¬φ is an intuitionistic tautology.

Glivenko's theorem implies the more general statement:  
>If T is a set of propositional formulas and φ a propositional formula, then T ⊢ φ in classical logic if and only if T ⊢ ¬¬φ in intuitionistic logic.

That is, a set of propositional formulas is *intuitionistically consistent* 
iff it is *classically satisfiable*.


## First-order logic

The Gödel-Gentzen translation (named after Kurt Gödel and Gerhard Gentzen) associates, with each formula `φ` in a first-order language, another formula `φᴺ`, which is defined inductively:
- if `φ` is atomic, then `φᴺ` is `¬¬φ`
- `(φ ∧ θ)ᴺ` is      `φᴺ ∧ θᴺ`
- `(φ ∨ θ)ᴺ` is   `¬(¬φᴺ ∧ ¬θᴺ)`
- `(φ → θ)ᴺ` is      `φᴺ → θᴺ`
-    `(¬φ)ᴺ` is     `¬φᴺ`
-  `(∀x φ)ᴺ` is  `∀x  φᴺ`
-  `(∃x φ)ᴺ` is `¬∀x ¬φᴺ`

This translation has the property that `φᴺ` is classically equivalent to `φ`. 

The fundamental soundness theorem states: If `T` is a set of axioms and `φ` is a formula, then `T` proves `φ` using classical logic iff `Tᴺ` proves `φᴺ` using intuitionistic logic. Here `Tᴺ` consists of the double-negation translations of the formulas in `T`.

A sentence `φ` may not imply its negative translation `φᴺ` in intuitionistic FOL. In 1988, Troelstra and van Dalen give a description (due to Leivant) of formulas that do imply their Gödel-Gentzen translation.

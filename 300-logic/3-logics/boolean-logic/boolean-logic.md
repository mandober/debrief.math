
# Boolean logic

Boolean logic
https://en.wikipedia.org/wiki/Boolean_logic

* Boolean algebra
https://en.wikipedia.org/wiki/Boolean_algebra

Boolean algebra is the branch of algebra in which the values of the variables are the truth values (true and false, usually denoted 1 and 0). Instead of elementary algebra, where the values of the variables are numbers and the prime operations are addition and multiplication, the main operations of Boolean algebra are the conjunction (∧), the disjunction (∨) and the negation (¬). It is thus a formalism for describing logical operations, in the same way that elementary algebra describes numerical operations.

* Boolean algebras canonically defined
https://en.wikipedia.org/wiki/Boolean_algebras_canonically_defined

* Axiomatization_of_Boolean_algebras
https://en.wikipedia.org/wiki/Axiomatization_of_Boolean_algebras

* Boolean polynomial
https://en.wikipedia.org/wiki/Boolean_polynomial

* Field of sets
https://en.wikipedia.org/wiki/Field_of_sets

https://en.wikipedia.org/wiki/Indexed_family
https://en.wikipedia.org/wiki/Index_set

* De Morgan algebra
https://en.wikipedia.org/wiki/De_Morgan_algebra

A De Morgan algebra is a structure A = `(A, ∨, ∧, 0, 1, ¬)` such that:
- `(A, ∨, ∧, 0, 1)` is a bounded distributive lattice
- `¬` is a De Morgan involution: `¬(x ∧ y) = ¬x ∨ ¬y` and `¬¬x = x`
  (i.e. an involution that additionally satisfies De Morgan's laws)

In a De Morgan algebra, the laws
- `¬x ∨ x = 1` i.e. The Law Of The Excluded Middle (LEM)
- `¬x ∧ x = 0` i.e. The Law Of Noncontradiction (LNC)

do not always hold. In the presence of the De Morgan laws, either law implies the other, and an algebra which satisfies them becomes a *Boolean algebra*.

If the lattice is defined in terms of the order instead, i.e. `(A, ≤)` is a bounded partial order with a lub and glb for every pair of elements, and the meet and join operations so defined satisfy the distributive law, then the complementation can also be defined as an involutive anti-automorphism, that is, a structure A = `(A, ≤, ¬)` such that:
- `(A, ≤)` is a bounded distributive lattice
- `¬¬x = x`
- `x ≤ y → ¬y ≤ ¬x`

If a De Morgan algebra additionally satisfies `x ∧ ¬x ≤ y ∨ ¬y`, it is called a *Kleene algebra*.



**Propositional logic** is a logical system that is intimately connected to Boolean algebra. Many syntactic concepts of Boolean algebra carry over to propositional logic with only minor changes in notation and terminology, while the semantics of propositional logic are defined via Boolean algebras in a way that the tautologies (theorems) of propositional logic correspond to equational theorems of Boolean algebra.

Syntactically, every Boolean term corresponds to a propositional formula of propositional logic. In this translation between Boolean algebra and propositional logic, Boolean variables (x, y, …). become propositional variables or atoms (P, Q, …). Boolean terms such as `x ∨ y` become propositional formulas `P ∨ Q`, 0 becomes false or `⊥`, and 1 becomes true or `⊤`. It is convenient when referring to generic propositions to use Greek letters (Φ, Ψ,...) as metavariables (variables outside the language of propositional calculus, used when talking about propositional calculus) to denote propositions.

The semantics of propositional logic rely on truth assignments. The essential idea of a truth assignment is that the propositional variables are mapped to elements of a fixed Boolean algebra, and then the truth value of a propositional formula using these letters is the element of the Boolean algebra that is obtained by computing the value of the Boolean term corresponding to the formula. In classical semantics, only the two-element Boolean algebra is used, while in Boolean-valued semantics arbitrary Boolean algebras are considered. A tautology is a propositional formula that is assigned truth value 1 by every truth assignment of its propositional variables to an arbitrary Boolean algebra (or, equivalently, every truth assignment to the two element Boolean algebra).

These semantics permit a translation between tautologies of propositional logic and equational theorems of Boolean algebra.

Every tautology `Φ` of propositional logic can be expressed as the Boolean equation `Φ = 1`, which will be a theorem of Boolean algebra.

Conversely every theorem `Φ = Ψ` of Boolean algebra corresponds to the tautologies `(Φ ∨ ¬Ψ) ∧ (¬Φ ∨ Ψ)` and `(Φ ∧ Ψ) ∨ (¬Φ ∧ ¬Ψ)`. 

If `→` is in the language these last tautologies can also be written as `(Φ → Ψ) ∧ (Ψ → Φ)`, or as two separate theorems `Φ → Ψ` and `Ψ → Φ`.

If `≡` is available then the single tautology `Φ ≡ Ψ` can be used.

One motivating application of propositional calculus is the analysis of propositions and deductive arguments in natural language.

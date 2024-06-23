# HoTT book

HoTT book > I FOUNDATIONS > 1. Type theory > 1.1 Type theory vs set theory

- Set theory has 2 layers:
  1. FOL deductive system (propositions)
  2. Axioms of the system (sets)

- Set theory is formulated inside a superstructure (like FOL).
- Propositions are statements with a truth value.
- Set theory is not only about sets, but about the interplay between sets 
  (the objects of 2. layer) and propositions (the objects of 1. layer).
- Instead of two basic notions of set theory (sets and propositions), 
  type theory has only one basic notion, types.
- Propositions are identified with particular types via CHI
- Proving a theorem is object construction; an inhabitant of the type (object)
  represents a proposition. If the type is inhabited the proposition is true.

- In type theory, a proposition is a statement susceptible to proof, 
  and a theorem (lemma, corollary) is a proven statement.
- A deductive system is a collection of rules for deriving judgments.
- We can also consider a deductive system as an algebraic theory, 
  with judgments as elements (like elements of a group) 
  and deductive rules as the operations (like the group multiplication).
- Logically, judgments are construed as external statements, living in 
  the metatheory, as opposed to internal statements of the theory itself.
- FOL as a deductive system of set theory has only one kind of judgment: 
  that a given proposition has a proof. Each proposition P entails the judgment of the form "P has a proof"; this form is common to all judgments.

- The basic judgment is `a : A`, i.e. term `a` has type `A`.
- When `A` is a type repr'ing a proposition, then `a` is a witness to the
  provability of `A`, or an evidence of the truth of `A`, or even proof of `A`.

- Equality is a proposition (it has a truth value).
- In type theory, propositions are types, so equality is a type
- for elements `a,b : A`, we have a type `a =ᴀ= b`
- when `a =ᴀ= b` is inhabited, then `a` and `b` are propositionally equal.
- Definitional equality exists at the same level as the judgment `x : A`.
- definitional (judgmental) equality is `a ≡ b : A` or just `a ≡ b`.
- Whether two exp are equal by definition is a matter of expanding the defs

- Type theory is a deductive system based on forms of judgment
- `a : A`, `a` is an object of type `A`
- `a ≡ b : A`, `a` and `b` are definitionally equal objects of type `A`

- To show that a proposition is true, we produce an element of the type 
  that corresponding to that proposition (unless uninhabited).
- A proposition is not merely true or false, but also a collection of all
  possible witnesses of its truth.

- Proofs are math objects per se, and since types classify math objects 
  and govern how they behave, propositions are just special types, 
  i.e. types whose elements are proofs.

- according to the propositions-as-types concept, the proposition that two 
  elements of the same type `a, b : A` are equal must correspond to a type. Since this proposition depends on what `a` and `b` are, the identity (equality) types must be type families dependent on two copies of `A`.
  `data _≡_ A : A → A → Set`
  `data _≡_ A → A : A → Set`

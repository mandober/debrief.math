# Logical symbols


List of common symbols used in various logics.

- The verum: ⊤
  - _true, top, tee_, `T`
  - tautology, unconditional truth
- The falsum: ⊥ 
  - _false, bottom, falsity_, `⊥`
  - contradiction, unconditional falsity, absurdity
- The hook: \lnot
  - _negation_, _NOT_, `¬`
  - logical negation
- The wedge: \land
  - _ascending wedge, AND, ac, atque_, `∧`
  - logical conjunction
- The vel: \lor
  - _descending wedge, OR, vee_, `v`
  - logical disjunction
- The arrow:
  - arrows: \to, \Rightarrow, \implies
  - glyphs: `→`, `⇒`, `⟹`
  - read as "_implies_", "_if...then_"
  - logical (material) implication
  - bigger arrows may represent higher precedence
- The double arrow:
  - "_if and only if_"
  - logical biconditional, \iff
  - material equivalence, \Leftrightarrow,`⇔`
  - equivalence, \leftrightarrow, ` ↔`
  - logical equivalence, \equiv, `≡`
  - bigger arrows may represent higher precedence
- The turnstile: \vdash
  - glyph`⊢`
  - "right tack", "tee", "assertion sign" symbol
  - "_yields_", "_proves_", "_satisfies_", "_entails_"
  - symbol for assertion, entailment, implication
  - syntactic consequence
- The double turnstile, \models
  - "_entails_", "_models_", "_makes true_", "_is stronger than_", "_is a semantic consequence of_", `⊨`
  - semantic consequence
  - "A is a model of φ": `⊨A φ`
- The for all: \forall
  - "_for all_", `∀`
  - universal quantifier
- The there exists: \exists
  - "_there is_", "_there exists_", `∃`
  - existential quantifier
  - unique existential quantifier: `∃!`
- Other symbols:
  - "_has the same cardinality as_": `≈`
  - "_has smaller cardinality than_": `≺`
  - "_x maps to y_" (functions): `x ↦ y`





## The turnstile
- Represents: binary relation, assertion symbol
- Commonly seen in sequent calculus
- Often read as "_yields_", "_proves_", "_satisfies_", "_entails_"
- Created by Gottlob Frege in 1879
- Judgement of some content e.g. \vdash A could be read as "I know A is true".
- A conditional assertion P\vdash Q could be read as "From P, I know that Q".
- In **proof theory** represents provability: if T is a formal theory and S is a particular sentence in the language of the theory then T\vdash S means that S is provable from T.
- In the **typed lambda calculus** the turnstile is used to separate typing assumptions from the typing judgment.
- In **category theory**, a reversed turnstile, as in F\dashv G, is used to indicate that the functor F is left adjoint to the functor G. It is rarely used as F\vdash G to indicate that the functor F is right adjoint to the functor G.

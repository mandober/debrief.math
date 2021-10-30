# Boolean algebra

https://en.wikipedia.org/wiki/Boolean_algebra

- Boolean values
  - truth values
  - basic operations
  - secondary operations
- Laws
  - monotonicity, monotone laws
  - nonmonotone laws
  - completeness
  - duality principle, de Morgan laws
- Diagrammatic representations
  - Venn diagrams
  - Digital logic gates
- Boolean algebras
  - Concrete Boolean algebras
  - Subsets as bit vectors
  - The prototypical Boolean algebra
  - Boolean algebras: the definition
  - Representable Boolean algebras
- Axiomatizing Boolean algebra
  - Propositional logic
  - Deductive systems for propositional logic
  - Sequent calculus
  - Two-valued logic
  - Boolean operations
  - Boolean searches
- References


## Overview

Boolean algebras are algebras where the carrier set is the Boolean domain, denoted by `𝔹`, a two-element set consisting of truth values:
- TRUE  (1, ●, T, ■, `⟙`, ◆) and
- FALSE (0, ○, F, □, `⟘`, ◇)

Unlike elementary algebra where variables range over numbers and operations are arithmetical (+, ⨯, -), in Boolean algebra variables range over truth values and operations are logical (disjunction, conjunction, negation).

Boolean algebra is thus a formalism for describing logical operations, in the same way that elementary algebra describes numerical operations.

## History

Boolean algebra was introduced by George Boole in his 1847's book "The Mathematical Analysis of Logic" and developed further in his 1854's book "An Investigation of the Laws of Thought".

Boole's algebra predated the modern developments in abstract algebra and mathematical logic; it is however seen as connected to the origins of both fields.

In an abstract setting, Boolean algebra was perfected in the late 19th century by Jevons, Schröder, Huntington and others, until it reached the modern conception of an abstract mathematical structure.

For example, the empirical observation that one can manipulate expressions in the algebra of sets, by translating them into expressions in Boole's algebra, is explained in modern terms by saying that the algebra of sets is a Boolean algebra (note the indefinite article). In fact, M. H. Stone proved in 1936 that *every Boolean algebra is isomorphic to a field of sets*.

In the 1930s, while studying switching circuits, Claude Shannon observed that one could also apply the rules of Boole's algebra in this setting, and he introduced switching algebra as a way to analyze and design circuits by algebraic means in terms of logic gates. In modern circuit engineering settings, there is little need to consider other Boolean algebras, thus "switching algebra" and "Boolean algebra" are often used interchangeably.

https://en.wikipedia.org/wiki/Two-element_Boolean_algebra






The theory of Boolean algebras, which may be loosely described as "everything you can say about a two-element set", provided you confine yourself to the language of universal algebra.

There are various ways to present Boolean algebra:
- 2 nullary operations:
  - ⊤ (true)
  - ⊥ (false)
- 1 unary operation:
  - ¬ (not)
- 4 binary operations:
  - ∧ (and)
  - v (or)
  - ⇒ (implies)
  - ⇔ (iff)

The set 𝔹 = {0, 1} is given a structure for this operational type by setting:

```
⊤ = 1
⊥ = 0
¬a = 1 - a
a ∧ b = min(a, b) = a * b
a ∨ b = max(a, b) = a ⨥ b


a ∧ b = a * b
a ∨ b = a ⨢ ⨥ ⨧ ⨤ ⨣ ⨦ b
```



---

Boolean Algebra
- variables range over the set of *truth values*, 𝔹 = {⊤, ⊥}
  - *true*, **T**, 1, ⊤
  - *false*, **F**, 0, ⊥)
- primary ops:
  - conjunction, ∧, *and*
  - disjunction, ∨, *or*
  - negation,    ¬, *not*

Boolean Algebra is a formalism for describing *logical operations* in the same way that Elementary Algebra describes numerical operations. Boolean Algebra was first introduced by George Boole in 1847, then evaborated on more fully in 1854. Boolean Algebra has been fundamental in the development of digital electronics, particularly in the advancement of computer development, so it's not surprising that it is implemented and available in almost any programming language.



One can manipulate expressions in the *algebra of sets* by translating them into logical expressions, which is explained in modern terms by saying that *the algebra of sets is a Boolean algebra*. M. H. Stone proved in 1936 that every Boolean algebra is isomorphic to a field of sets.

Logic sentences that can be expressed in classical propositional calculus have an equivalent expression in Boolean algebra. Thus, Boolean logic is sometimes used to denote propositional calculus performed in this way. But Boolean algebra is not sufficient to capture logic formulas using quantifiers.

*Boolean satisfiability problem (SAT)* is the problem of determining whether the variables of a given Boolean propositional formula can be assigned in such a way as to make the formula evaluate to true. SAT is of importance to theoretical CS, being the first problem shown to be *NP-complete*.


## Values

We need to find appropriate algebraic operations that correspond to the behavior of Boolean values under the operations of NOT and either one of AND, OR and XOR.

> For a long time, the minimal set of logic connectives from which all others could be derived was thought to be two: `{-# MINIMAL ¬, (∨) | (∧) #-}`. Sheffer showed that one connective is good enough, either NAND or NOR. However, in defining a logic system it is easier to admit a few, then to derive others from a single one.


- Multiplication correspons to AND operation perfectly: $$p ∧ q = pq$$
- Addition almost corresponds to OR and XOR, except for the case when both variables are true, when it corresponds to neither.
  - $$1 + 1 = 2$$, addition
  - $$1 ∨ 1 = 1$$, OR
  - $$1 ⊕ 1 = 0$$, XOR
  - $$1 ⨢ 1 = 1$$, saturated (upper-bounded) addition corresponds to OR
  - $$1+1=2 ≡ 0 \pmod 2$$, integer arithmetic modulo 2, `⨧`, corresponds to XOR


a | b | ∧ | ∨ | ⊕| ⨯ | ⨢ | ⨧
--|---|---|---|---|---|---|---
0 | 0 | 0 | 0 | 0 | 0 | 0 | 0
0 | 1 | 0 | 1 | 1 | 0 | 1 | 1
1 | 0 | 0 | 1 | 1 | 0 | 1 | 1
1 | 1 | 1 | 1 | 0 | 1 | 1 | 0


## Boolean algebra as a tuple

Boolean algebra is a 6-tuple $$(\mathbb{B}, \land, \lor, \lnot, \bot, \top)$$:

- the carrier set $$\mathbb{B}$$, equipped with operations:
- **join**        (and)   binary operator    , $$\land$$
- **meet**        (or)    binary operator    , $$\lor$$
- **complement**  (not)   unary operator     , $$\lnot$$
- **bottom**      (least)    element         , $$\bot$$ (or $$0$$)
- **top**         (greatest) element         , $$\top$$ (or $$1$$)

such that $$\forall (a,b,c) \in B$$ these axioms hold:

- associativity : a ∨ (b ∨ c) = (a ∨ b) ∨ c, a ∧ (b ∧ c) = (a ∧ b) ∧ c
- commutativity : a ∨ b = b ∨ a, a ∧ b = b ∧ a
- distributivity: a ∨ (b ∧ c) = (a ∨ b) ∧ (a ∨ c), a ∧ (b∨c) = (a∧b) ∨ (a∧c)
- identity :      a ∨ 0 = a,  a ∧ 1 = a
- absorption:     a ∨ (a ∧ b) = a, a ∧ (a ∨ b) = a
- complement:     a ∨ ¬a = 1, a ∧ ¬a = 0



```
NOT
¬¬a = a
¬0 = 1, ¬1 = 0

AND
a ∧ a = a
a ∧¬a = 0
a ∧ 1 = a
a ∧ 0 = 0

OR
a ∨ a = a
a ∨¬a = 1
a ∨ 1 = 1
a ∨ 0 = a

AND, OR
a ∧ a = a ∨ a = a
a ∧ 1 = a ∨ 1 = a
a ∧ 0 = a ∨ 0 = 0

DE MORGAN
¬(a ∧ b) = ¬a ∨ ¬b
¬(a ∨ b) = ¬a ∧ ¬b
```


https://en.wikipedia.org/wiki/Boolean_algebra_(structure)

https://en.wikipedia.org/wiki/Boolean_algebra#Duality_principle

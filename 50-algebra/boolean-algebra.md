# Boolean algebra

https://en.wikipedia.org/wiki/Boolean_algebra

Boolean algebra is a branch of algebra in which the values of variables are the truth values, *true* (1) and *false* (0).

The main operations in Boolean algebra:
- negation: *not*, ¬, latex: $$\lnot$$
- conjunction: *and*, ∧, latex: $$\land$$
- disjunction: *or*, ∨, latex: $$\lor$$

Boolean algebra is a formalism for describing logical relations in the same way that elementary algebra describes numerical relations.


## History

Boolean algebra was introduced by **George Boole** in 1847, in his book "The Mathematical Analysis of Logic", and further developed in his 1854 book "An Investigation of the Laws of Thought". Boolean algebra is fundamental in the development of digital electronics. It is available in all programming languages. It is also used in set theory and statistics.

Boole's algebra predated the modern developments in abstract algebra and mathematical logic, however, it is seen as connected to the origins of both fields.

In an abstract setting, Boolean algebra was perfected in the late XIX century by Jevons, Schröder, Huntington, and others, until it reached the modern conception of an abstract *mathematical structure*. For example, the empirical observation that one can manipulate expressions in the *algebra of sets* by translating them into expressions in Boole's algebra is explained in modern terms by saying that *the algebra of sets is a Boolean algebra*. In fact, M. H. Stone proved in 1936 that every Boolean algebra is isomorphic to a field of sets.

Logic sentences that can be expressed in *classical propositional calculus* have an equivalent expression in Boolean algebra. Thus, Boolean logic is sometimes used to denote propositional calculus performed in this way. But Boolean algebra is not sufficient to capture logic formulas using quantifiers, like those from first order logic.

Although the development of mathematical logic did not follow Boole's program, the connection between his algebra and logic was later put on firm ground in the setting of *algebraic logic*, which also studies the algebraic systems of many other logics.

**Boolean SATisfiability problem (SAT)** is the problem of determining whether the variables of a given Boolean, propositional, formula can be assigned in such a way as to make the formula evaluate to true. SAT is of importance to theoretical CS, being the first problem shown to be *NP-complete*.

## Values

In Boolean algebra elementary expressions denote the truth values *false* and *true*, represented with the bits 0 and 1, respectively. This set is often denoted by $$\mathbb{B} = \{0,1\}$$.

Now we need to find appropriate algebra operations that correspond to the behavior of Boolean values under the operations of NOT and either one of AND, OR and XOR.

- Multiplication correspons to AND operation perfectly: $$p ∧ q = pq$$
- Addition almost corresponds to OR and XOR, except of course for the case when both variables are true, then it corresponds to neither.
  - $$1 + 1 = 2$$, addition
  - $$1 ∨ 1 = 1$$, OR
  - $$1 ⊕ 1 = 0$$, XOR
  - $$1 ⨢ 1 = 1$$, saturated (upper-bounded) addition corresponds to OR
  - $$1+1=2 ≡ 0 \pmod 2$$, integer arithmetic modulo 2, `⨧`, corresponds to XOR

a | b | ∧ | ∨ | ⊕
--|---|---|---|---
0 | 0 | 0 | 0 | 0
0 | 1 | 0 | 1 | 1
1 | 0 | 0 | 1 | 1
1 | 1 | 1 | 1 | 0

a | b | ⨯ | ⨢| ⨧
--|---|---|---|---
0 | 0 | 0 | 0 | 0
0 | 1 | 0 | 1 | 1
1 | 0 | 0 | 1 | 1
1 | 1 | 1 | 1 | 0



## Boolean algebra as a tuple

Boolean algebra is a 6-tuple $$(B, \land, \lor, \lnot, \bot, \top)$$:
- the set $$B=\{0,1\}$$, equipped with operations:
- **join** (and) binary operator, $$\land$$
- **meet** (or) binary operator, $$\lor$$
- **complement** (not) unary operator, $$\lnot$$
- **bottom** (least) element, $$\bot$$ (or $$0$$)
- **top** (greatest) element, $$\top$$ (or $$1$$)

such that $$\forall (a,b,c) \in B$$ these axioms hold
- associativity : a ∨ (b ∨ c) = (a ∨ b) ∨ c, a ∧ (b ∧ c) = (a ∧ b) ∧ c
- commutativity : a ∨ b = b ∨ a, a ∧ b = b ∧ a
- distributivity: a ∨ (b ∧ c) = (a ∨ b) ∧ (a ∨ c), a ∧ (b∨c) = (a∧b) ∨ (a∧c)
- identity :      a ∨ 0 = a,  a ∧ 1 = a
- absorption:     a ∨ (a ∧ b) = a, a ∧ (a ∨ b) = a
- complement:     a ∨ ¬a = 1, a ∧ ¬a = 0


## NOT
¬¬a = a
¬0 = 1, ¬1 = 0

## AND
a ∧ a = a
a ∧¬a = 0
a ∧ 1 = a
a ∧ 0 = 0

# OR
a ∨ a = a
a ∨¬a = 1
a ∨ 1 = 1
a ∨ 0 = a


**and, or**    
a ∧ a = a ∨ a = a
a ∧ 1 = a ∨ 1 = a
a ∧ 0 = a ∨ 0 = 0

**de morgan**    
¬(a ∧ b) = ¬a ∨ ¬b
¬(a ∨ b) = ¬a ∧ ¬b

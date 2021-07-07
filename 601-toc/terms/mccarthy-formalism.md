# McCarthy Formalism

https://en.wikipedia.org/wiki/McCarthy_Formalism

In computability (recursion) theory 
the **McCarthy Formalism** (1963), 
of computer scientist John McCarthy, 
clarifies the notion of recursive functions 
by use of the *if-then-else* construction, 
together with 4 of the operators 
of primitive recursive functions: 
zero, successor, composition and equality of numbers.

The *conditional operator* replaces both *primitive recursion* and the *mu-operator*, μ.

## McCarthy's conditional expression

Marvin Minsky describes The McCarthy Formalism in his 1967's book "Computation: Finite and Infinite Machines":

Practical computer languages do not lend themselves to formal mathematical treatment - they are not designed to make it easy to prove theorems about the procedures they describe. In a paper by McCarthy from 1963, we find a formalism that enhances the practical aspect of the recursive-function concept, while preserving and improving its mathematical clarity. McCarthy introduces conditional expressions of the form:

$$f = (\text{ if } p_1 \text{ then } e_1 \text{ else } e_2)$$

where the $$e_i$$ are expressions and $$p_1$$ is a statement (or equation) that may be true or false.

The McCarthy formalism is like the general recursive (Kleene) system, in being based on some basic functions, composition, and equality, but with the conditional expression alone replacing both the primitive-recursive scheme and the minimization operator.

Minsky uses the following operators in his demonstrations:
- Zero
- Successor
- Equality of numbers
- Composition (substitution, replacement, assignment)
- Conditional expression

From these he shows how to derive the predecessor function; with this tool he derives the minimization operator necessary for "general" recursion, as well as primitive-recursive definitions.


## Expansion of IF-THEN-ELSE to the CASE operator

Stephen Kleene provides a definition of what it means to be a primitive recursive function:



## The conditional operator

Most programmers are used to the so-called McCarthy conditional:   
`if p then x else y`

Alternative denotation:   
`x ◁ p ▷ y`

This operator is known as the *conditional choice* and it was introduced by Tony Hoare.


### The laws of conditional operator

(x ◁ p ▷ y  ⇔  if p then x else y ⇔  x ◀ p ▶ y)

- Idempotency:
  - l ◁ p ▷ r ⇔ l
- Identity
  - Left : l ◀ True ▶ r ⇔ l
  - Right: l ◁ False ▷ r ⇔ r
- Distributivity
  - Left:   x ◁ p ▷ (a ◁ y ▷ b) ⇔ (x ◁ p ▷ a) ◁ y ▷ (x ◁ p ▷ b)
  - Right: (x ◁ p ▷ a) ◁ y ▷ b  ⇔ (x ◁ y ▷ b) ◁ p ▷ (a ◁ y ▷ b)
- Symmetry:
  - l ◁ p ▷ r  ⇔  r ◁ ¬p ▷ l
- Associativity
  - Conjunction: (x ◁ p ▷ y) ◁ q ▷ z  ⇔  x ◁ p ∧ q ▷ (y ◁ q ▷ z)
  - Disjunction:  x ◁ p ▷ (y ◁ q ▷ z) ⇔ (x ◁ p ▷ y) ◁ p ∨ q ▷ z
- Collapse
  - Conjunction:  x ◁ p ▷ (y ◁ p ∧ q ▷ z) ⇔ x ◁ p ▷ z
  - Disjunction: (x ◁ p ∨ q ▷ y) ◁ q ▷ z  ⇔ x ◁ q ▷ z
- Abiding (Interchange):
  - x ⊛ y ◀ p ▶ v ⊛ w   ⇔   (x ◁ p ▷ v) ⊛ (y ◁ p ▷ w)


---

https://en.wikipedia.org/wiki/Primitive_recursive_function
https://en.wikipedia.org/wiki/%CE%9C_operator

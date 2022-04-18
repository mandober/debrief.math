# Conjunction

https://en.wikipedia.org/wiki/Logical_conjunction


Logical conjunction is the truth-functional connective (operator).

`A ⋀ B` is true iff A is true and B is true, 
`A ⋀ B 𝚝𝚛𝚞𝚎` ⟺ `A 𝚝𝚛𝚞𝚎 and B 𝚝𝚛𝚞𝚎`

The operation is called *conjunction*, and each operand is called *conjunct*.

`and` of a set of operands is true iff all of its operands are true.

## Notation

*AND* is usually denoted by an infix operator, commonly `⋀`.

- psudo-formally
  - `AND`, e.g. P AND Q
- in mathematics and logic
  - denoted by `∧`, `&` or `×`
- formal symbolic language of logic
  - `∧` (wedge), p ∧ q
  - `⋀` (n-ary wedge), p ⋀ q (higher precedence)
- in Łukasiewicz's prefix notation
  - the operator is `K`, Kpq = p ⋀ q
- in Boolean algebra and electronics
  - sign `⋅`, e.g. p ⋅ q
  - or as juxtaposition, pq

In logic and beyond, conjunction refers to similar concepts:
- in a natural language, corresponds to English "and"
- in programming languages, `&`, `&&`, or `and`
  - short-circuiting operator
  - logical control structure
- in predicate logic, generalized into universal quantification, 
  `∀xPx` ≡ `Px₁ ⋀ Px₂ ⋀ …Pxₙ`
- in set theory, corresponds to intersection, `⋂`
- in lattice theory, corresponds to greatest lower bound, `⩘`


## Definition

Logical conjunction is an operation on two logical values, typically the values of two propositions, that produces a value of TRUE if and only if both of its operands are TRUE.

`A ⋀ B 𝚝𝚛𝚞𝚎` ⟺ `A 𝚝𝚛𝚞𝚎 and B 𝚝𝚛𝚞𝚎`

The conjunctive identity is TRUE, which is to say that AND-ing an expression with TRUE will never change the value of the expression:

`p ⋀ T = p`

In keeping with the concept of vacuous truth, when conjunction is defined as an operator or function of arbitrary arity, the empty conjunction (AND-ing over an empty set of operands) is often defined as having the result TRUE:

- ⋀() = TRUE

- ⋀(P,Q,R) = TRUE, iff P true and Q true and R true


### Truth table

p q | p ⋀ q | ¬(¬p ⋁ ¬q) | ¬(p -> ¬q)
----|-------|------------|------------
1 1 |   1   | 1          | 1
1 0 |   0   | 0          | 0
0 1 |   0   | 0          | 0
0 0 |   0   | 0          | 0


* Binary conjunction (AND-2) is true if exactly 2 operands are true.
* n-ary conjunction (AND-N where N > 2) is true if all operands are true.

### In terms of other connectives

In systems where logical conjunction is not a primitive, it may be defined in terms of other connectives.

Conjunction in terms of
- disjunction, `p ∧ q := ¬(¬p ∨ ¬q)`
- implication, `p ∧ q := ¬(p → ¬q)`


## Properties of conjunction

* associativity: `p ⋀ (q ⋀ r)` = `(p ⋀ q) ⋀ r` = `p ⋀ q ⋀ r`
* commutativity: `p ⋀ q` = `q ⋀ p`
* idempotence:   `p ⋀ p = p`
* monotonic:     `(p -> q) => ((p ⋀ s) -> (q ⋀ s))`
* truth-preserving:     if all operands are T so is the result
* falsehood-preserving: if all operands are F so is the result
* has indetity TRUE, `p ⋀ T = p = T ⋀ p`
* distributive over
  * conjunction, `(p ⋀ (q ⋀ r)) ⟺ ((p ⋀ q) ⋀ (p ⋀ r))`
  * disjunction, `(p ⋀ (q ⋁ r)) ⟺ ((p ⋀ q) ⋁ (p ⋀ r))`
  * xor,         `(p ⋀ (q ⊕ r)) ⟺ ((p ⋀ q) ⊕ (p ⋀ r))`
  * material nonimplication: `(p ⋀ (q ⇏ r)) ⟺ ((p ⋀ q) ⇏ (p ⋀ r))`

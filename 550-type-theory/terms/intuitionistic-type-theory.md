# Intuitionistic type theory

https://en.wikipedia.org/wiki/Intuitionistic_type_theory

- intuitionistic (constructive, Martin-Löf) type theory
- intuitionistic intensional/extensional type theory
- intuitionistic predicative type theory
- Girard's paradox
- constructive logic
- dependent types
- inductive types
- unbounded data structures
- judgement, context, conclusion, turnstile


In 1972, a Swedish mathematician and philosopher Per Martin-Löf founded a type theory that corresponded to predicate logic, called *intuitionistic type theory* or constructive type theory, or, as it is frequently refered to, Martin-Löf type theory (MTT).

MTT introduced *dependent types* and used *inductive types* to represent unbounded data structures, such as natural numbers. One of its key features is that it unifies set theory and logic.

- term : type ~ element : set
- `A : Type` denotes that A is a type
- `a : A` denotes that a is term of type A

A judgement is asserting knowledge of/about a mathematical object. It is a string of symbols that may or may not be provable from the rules of tt. A judgement always contains the turnstile symbol, separating *context* from the *conclusion*. For example, a judgement that zero is a natural number is denoted by `|- 0 : ℕ`. Judgements can also assert that something is a type, e.g. `|- ℕ : Type`.


## Type theory

Intuitionistic type theory has *3 finite types*, which are then composed using *5 type constructors*.

Unlike set theories, type theories are not built on top of a logic like Frege's. So, each feature of the type theory does double duty as a feature of both math and logic.

### 0 type, 1 type and 2 type

There are 3 finite types:
- the 0 type contains 0 terms
- the 1 type contains 1 canonical term
- the 2 type contains 2 canonical terms

Because the **0 type** contains 0 terms, it is also called *the empty type*. It is used to represent anything that cannot exist. It is also written as `⊥` and represents anything unprovable, that is, a proof of it cannot exist. As a result, negation is defined as a function to it: ¬A := A -> ⊥

Likewise, the **1 type** contains 1 canonical term and represents existence. It also is called *the unit type*. It often represents *propositions* that can be proven and is, therefore, sometimes written `⊤` (top).

Finally, the **2 type** contains 2 canonical terms. It represents a definite choice between two values. It is used for Boolean values but not propositions. Propositions are considered the 1 type and may be proven to never have a proof (the 0 type), or may not be proven either way.

### Type constructors

5 type ctors:
- `Σ` type constructor
- `Π` type constructor
- `=` type constructor
- Inductive types
- Universe types

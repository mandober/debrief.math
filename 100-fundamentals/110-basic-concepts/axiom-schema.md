# Axiom schema

https://en.wikipedia.org/wiki/Axiom_schema

metalanguage
metalinguistic construct
axiomatic system
term
formula, subformula
variable
free variable
axiom schema/schemata
schematic variable
instance of a schema


An **axiom schema** is a formula in the metalanguage of an axiomatic system, in which one or more *schematic variables* occur. These variables are metalinguistic constructs that may stand for any term or subformula of the axiomatic system, possibly imposing additional constraints (like requiring that certain variables appear unbounded, or that a certain term is free of particular variables).

A **schema** is a linguistic "template" together with its rule of deployment; it is used to specify, a potentially infinite, number of phrases, sentences or arguments, known as the *instances of the schema*.

Schemas are used in logic to specify rules of inference, in mathematics to describe theories with infinitely many related axioms, in semantics to give adequacy conditions for definitions of truth. In TPL, a schema somewhat resembles a type parameter, that stands for any type, and which is eventually instantiated with some concrete type or type expression.

In TPL, the meta epression (schema) `α -> α` implies that the instances (substituted expressions) must be the same (repated), e.g. `(F a b -> F a b)` or `(b -> c) -> (b -> c)`. On the other hand, the following logic schema does not have such constraint - this is expressed with two distinct meta-vars: 
`¬φ ∨ ψ` may be instantiated as `¬(p ∧ q) ∨ r` or `¬(p -> q) ∨ (q ∧ p ∧ r)`, but also as `¬p ∨ p`, i.e. both meta-vars instantiated as the same expression.

Given that the number of possible terms that can be inserted in place of a schematic variable is countably infinite, an axiom schema stands for a countably infinite set of axioms (that is usually defined recursively). A theory that can be axiomatized without schemata is said to be *finitely axiomatized* (often such theories are considered more elegant, despite being less practical for deductive work).

All theorems of ZFC are also theorems of von Neumann-Bernays-Gödel set theory, but the latter can be finitely axiomatized. The set theory New Foundations can be finitely axiomatized, but only with some loss of elegance.

Schematic variables in first-order logic are usually trivially eliminable in second-order logic, because a schematic variable is often a placeholder for a property or relation over the individuals of the theory. In first-order logic, a variable may range over individual elements of the domain of discourse, while in higher-order logic variables may range over all possible properties or relations.





https://en.wikipedia.org/wiki/Well-formed_formula
https://en.wikipedia.org/wiki/Metalanguage
https://en.wikipedia.org/wiki/Axiomatic_system
https://en.wikipedia.org/wiki/Schematic_variable
https://en.wikipedia.org/wiki/First-order_logic#Formation_rules
https://en.wikipedia.org/wiki/First-order_logic

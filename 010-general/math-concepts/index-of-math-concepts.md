# Index of Math Concepts

## Sets and logic

- set
- element
- subset
- set membership 
- set equality
- set union
- set intersection
- set difference
- mathematical logic
- set theory is a part of mathematical logic
- formal symbolic language
- formal system
  - objects collected in a set (domain of discourse, DOD)
  - constants: individual concrete objects, 0, 1, 5
  - variables: range over objects in DOD
  - a variable may take on any value in the domain, x=4
  - a predicate, P, takes an argument, e.g. `P(x)` takes an object as an arg
  - predicates have no truth values by themselves; `P` or `P(x)` has no truth value until it is applied to a suitable arg. `P(1)` is true if P represents an odd number; `P(0)` is then false. `P(x)` is neither.
  - P(x) is a unary predicate - it takes 1 argument.
  - ∈(x, X) is a binary predicate - it takes 2 arguments.
  - ∈ is heterogenous - it takes 2 args of different types (object and set)
  - ⊆ is a homogenous predicate - it takes 2 arguments of the same type (set)
  - When a predicate is applied to a suitable argument it becomes saturated, and only then obtains a truth value.
  - A saturated predicate is an applied predicate, so it has a truth value.
  - predicates (P, Q, …) or may have symbolic names (∈, ⊆, …)
  - predicate `∈` takes 2 args: an object and a set, `∈(x, X)`
  - `∈(x, X)` usually as infix `x ∈ X`; it takes two args: an object `a` and a set `A`, so `a ∈ A` is true when `a` is indeed in the set `A`, and false otherwise. If we know `a` is not in `A`, we can denote this by `a ∉ A` which is true just in case `a` is really not in set `A`.
  it is true when an object
  - `⊆(X, Y)` aka `X ⊆ Y`; it takes two sets A and B as args, and A ⊆ B is true when A is a subset of B
- proposition: logical statement (sentence) with a truth value
- statement
- expression
- term
- formula, closed, wff
- predicate, propositional form, P(x) on set S s.t. x ∈ S
- truth value: true or false
- classical logic (CL) is bivalent: it has 2 truth values
- in CL, a proposition is either true or false; never none or neither.
- so in CL, every proposition has a truth value although we may not know it
- some propositions are paradoxical having both truth values - contradiction
- set membership: object a is an element of set S, a ∈ S
- negation of set membership: a ∉ S
- subset, A ⊆ B, A ⊆ A
- 1 ∈ S (proposition), 1 ⊆ S (meaningless)
- set equality, A = B
- equality in terms of subsets: A ⊆ B ∧ B ⊆ A ⇒ A = B
- set builder notation, { x ∈ S | P(x) }
- set theory
  - ordered pair
    - first component
    - second component
    - (x, y) = { {{x}}, {{x, y}} }
    - (x, y) = { {x}, {{x, y}} }
    - (x, y) = { {x}, {x, y} }
    - Kuratowski pair definition
- meaning
  - `1/0 = 5` is meaningless rather than false
  - division by zero is not defined
  - `1/0` does not name any object
- logical connectives: ∧, ∨, ¬ (and, or, not)
- logical symbols:
  - implication ⇒
  - iff, biconditional, ⇔
  - set non/membership ∈, ∉
  - in/equality, =, ≠
- equality: =, ≠
  - ∀x(x = x) refl
  - ∀x∀y(x=y ⇒ y=x) sym
  - ∀x∀y∀z(x=y ∧ y=z ⇒ x=z) trans
- equivalence relation
- substitution property of equality
- Leibniz property of equality
- empty set, ∅, contains nothing. Thus, it is unique.
- sets are identified by their members (thus ∅ is a unique set)
- universal set, 𝒰, contains all objects of the domain
- all objects in a discussion belong to 𝒰
- but 𝒰 is tricky: it also contains all sets in a discussion
- all sets in a discussion also belong to 𝒰
- but 𝒰 is not the set of all sets: that would lead to the Russell's paradox
- instead, 𝒰 contains all the sets in a discussion, and other sets and subsets are defined by carving them up from 𝒰
- thus `{ x ∈ A | P(x) }` actually means `{ x ∈ A | A ∈ 𝒰, P(x) }`
- subset predicate `⊆`, `⊆(A,B)` or `A ⊆ B`, is true when all elements of A are also in B (but B may have extra elements)
  - { x | x ∈ A ∨ x ∈ B } = A ∪ B, union
  - { x | x ∈ A ∧ x ∈ B } = A ∩ B, intersection
  - { x | x ∈ A ∧ x ∉ B } = A ∖ B, relative difference
  - { x | x ∉ A ∧ x ∈ B } = B ∖ A, relative difference
  - { x | (x∈A ∧ x∉B) ∨ (x∉A ∧ x∈B) } = A Δ B = A∖B ∪ B∖A, absolute diff
  - { x | x ∉ A ∧ x ∉ B } = ∅ empty set
  - complement
    - ∀X(X̅ = 𝒰∖X)
    - ∀X(Xᶜ = 𝒰∖X)
    - ∀X((Xᶜ)ᶜ = X)
    - Aᶜ = A̅ = 𝒰∖A
    - 𝒰ᶜ = 𝒰̅ = ∅
    - ∅ᶜ = ∅̅ = 𝒰
    - A = 𝒰∖X̅
  - subset
    - ∀X(X ⊆ X)
    - ∀X(X ⊆ 𝒰)
    - ∀X(∅ ⊆ X)
    - ∀X∀Y(X ⊂ Y ⇒ X ⊆ Y ∧ X ≠ Y)
  - union
    - ∀X(X ∪ X) = X
    - ∀X(X ∪ 𝒰) = 𝒰
    - ∀X(X ∪ ∅) = X
  - membership
    - ∀X(X ∈ 𝒰), A ∈ 𝒰, ∅ ∈ 𝒰
    - ∀X(X ∉ X), A ∉ A, 𝒰 ∉ 𝒰, ∅ ∉ ∅
  - intersection
    - ∀X(X ∩ X) = X
    - ∀X(X ∩ 𝒰) = ∅
    - ∀X(X ∩ ∅) = X
- intensional vs extensional
  - extensionally, two sets are equal if they contain the same elements
    - {1,2,3} = {2,1,3,1}
  - intensionally, two sets are equal wrt their definition
    - { a ∈ A | a ∉ A } = ∅ = { a ∈ A | a ∉ a }
- types of entities:
  - objects (math obj may be members of a set; sets are also objects)
  - sets (contain elements; although ∅ contains nothing)
  - ordered pairs (defined as sets)
- ordered pair
- Cartesian product
- Functions
  - as rules
  - ordered triple (A,f,B) is a function with domain A and codomain B
  - and the middle element `f` is the graph of the function (set of ord. pairs)
  - f : A → B
  - two functions are equal iff they have the same domain, codomain and rule
  - `f,g:A→B`, the rule `f` is the same as rule `g` iff `f(a)=g(a)`, ∀a ∈ A
  - we write `f(a) = b` instead of `(a,b) ∈ f`
  - if `f(x) = (x+5)(x-2)` and `g(x) = x² + 3x - 10`, 
    then `f = g` extensionally but not intensionally
  - in practice, it is next to impossible figuring out the equality of functions



## Number theory

- Numbers
- number
- fundamental number sets: ℕ ℤ ℚ ℝ ℂ ∅ ℝᐩ ℝ⃰
- prime numbers




## Calculus
- Differential equations
  - order of differential equation (largest derivative)
  - ordinary differential equation (ODE)
  - partial differential equation (PDE)
  - linear differential equation
  - non-linear differential equation

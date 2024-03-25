# First-order logic

First-order logic (FOL)
  first-order predicate calculus
  predicate logic
  quantificational logic
FOL is a collection of formal systems
FOL is based on propositional logic
FOL introduces
  domain of discourse (DOD)
    individuals, individual entities, objects
  terms
    variables
    constants
  variables
    quantified variables over non-logical objects
    quantified variables range over individuals in DOD (i.e. sets)
semantic components
  interpretation
  assignment function, domain to value
syntactic components
  term
  proposition (has a truth value)
  sentence
  atomic sentence
  formula
quantifiers
  universal
  existential
  domain-bounded quantification
predicate: yields a proposition
  - constant predicate, `P`, is like a whole sentence in QL, a proposition
  - unary predicate is a property, `P(x)`
  - binary predicate, `P(x,y)`
  - ternary predicate, `P(x,y,z)`
  - all predicates are also relations, esp. polyadic predicates (n ≥ 2)
  - n-ary predicate takes n args
  - args are terms
  - terms `t₀, …, tₙ` are: vars, constants
functions:
  - yield elements of DOD
  - nullary function, `f: () → D` yields logic constants, 
    i.e. concrete elemenets of DOD
  - unary function, `f: D → D`
  - n-ary function, `f: Dⁿ → D`
  - take n-args (args are terms), `f(t₀, …, tₙ)`
  - constant function = logical constant 'true' or 'false'


Any mathematical "theory", such as set theory, includes
  - domain of discourse (DOD) over which the quantified variables range
  - finitely many functions (from DOD to DOD), `f: Dⁿ → D`, `f(t₀, …, tₙ)`
  - finitely many predicates (defined on the DOD), `P(t₀, …, tₙ)`
  - terms `t₀, …, tₙ` are vars and constants
  - set of axioms (believed to hold)
  - "theory" also means "a set of FOL sentences"

FOL vs HOL
  In FOL, quantification only over individuals/set
  In FOL, predicates are interpreted as sets
  In FOL, predicates can have terms as args
  In HOL, quantification also over predicates and functions is allowed
  In HOL, predicates are interpreted as sets of sets
  In HOL, predicates can have predicates or functions as args


FOL models

FOL deductive systems
  - sound (all provable statements are true in all models)
  - complete (all statements which are true in all models are provable)
  - logical consequence relation is semidecidable
  - FOL satisfies metalogical theorems:
    - Löwenheim-Skolem theorem
    - Compactness theorem

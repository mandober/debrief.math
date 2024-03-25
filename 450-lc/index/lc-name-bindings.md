# Index :: Name binding

* Name binding strategies wrt substitution
  - Naive substitution
  - Barendregt convention
  - Name-capture avoiding substitution
  - De Bruijn indices
    - Well-scoped de Bruijn indices
    - De Bruijn levels
  - Locally nameless
  - Director strings
  - nominal techniques
  - Abstract Syntax
    - Abstract Syntax Notation One
    - First-order abstract syntax FOAS
    - Higher-order abstract syntax HOAS
    - Parametric higher-order abstract syntax PHOAS
  - Well-scoped names
  - Nameless, Painless
    - NomPa
  - Scope graphs
  - Co-de Bruijn indices


## Q

Techs =
  { Bare, DeBr, LoNa, Nom,
    PHOAS, WTDB, WTDB+N,
    FreshL, NaPa, ASG,
    NomPa, CoDB, CoDB+N
  }

First-order representation: does the representation avoid the use of meta-level functions as part of the data structure? If not, it can be difficult or impossible to do things like checking equality of terms or pretty-printing.

Named variables: When I write down a piece of syntax, are variables represented by their names or anonymously? This provides some measure of readability by humans.

Enforces α-equivalence: Does the representation enforce that two α-equivalent terms are treated in the same way?

Enforces well-scopedness: Does the representation enforce that names can only be used when they are in fact in scope?

No mixing of scopes: Does the representation enforce that a name that comes from one scope is not used in a different scope?

Abstract interface: Does the representation provide an abstract interface that can be instantiated in different ways?

Enforces freshness: Does the representation allow us to require that names must be fresh at certain positions in the syntax?

Strengthening is no-op: Can we remove unused names from the scope without having to change the syntax?


## Refs

- Co-de Bruijn indices - Conor McBride 
  https://arxiv.org/abs/1807.04085v1

- Nameless, Painless
  http://doi.acm.org/10.1145/2034773.2034817

- Scope graphs
  https://doi.org/10.1145/3276484

- Programs Using Syntax with First-Class Binders
  https://www.cs.mcgill.ca/~bpientka/papers/esop17_ferreira.pdf


- https://en.wikipedia.org/wiki/De_Bruijn_index
- https://en.wikipedia.org/wiki/De_Bruijn_index#Barendregt's_variable_convention
- https://en.wikipedia.org/wiki/De_Bruijn_notation

- https://en.wikipedia.org/wiki/Nominal_techniques
- https://en.wikipedia.org/wiki/Nominal_terms_(computer_science)

- https://en.wikipedia.org/wiki/Higher-order_abstract_syntax
- https://en.wikipedia.org/wiki/Abstract_Syntax_Notation_One

- https://en.wikipedia.org/wiki/Abstract_syntax
- https://en.wikipedia.org/wiki/Name_resolution_(programming_languages)
- https://en.wikipedia.org/wiki/Nominal_terms_(computer_science)

- https://en.wikipedia.org/wiki/First-order_abstract_syntax
- https://en.wikipedia.org/wiki/Higher-order_abstract_syntax
- https://proofassistants.stackexchange.com/questions/1491/what-is-a-weak-function-space-and-what-does-it-have-to-do-with-hoas



* Jesper Cockx - 1001 Representations of Syntax with Binding
https://jesper.sikanda.be/posts/1001-syntax-representations.html

* Scopes as types | Proceedings of the ACM on Programming Languages
https://dl.acm.org/doi/10.1145/3276484

* Parametric Higher-Order Abstract Syntax for Mechanized Semantics
http://adam.chlipala.net/papers/PhoasICFP08/

* topics/PHOAS.agda at master · jyp/topics
https://github.com/jyp/topics/blob/master/PHOAS/PHOAS.agda

* PHOAS For Free - School of Haskell | School of Haskell
https://www.schoolofhaskell.com/user/edwardk/phoas

* PHOAS Meaning - What does PHOAS mean? - PHOAS Definition
https://acronym24.com/phoas-meaning/

* Parametric Compositional Data Types - NASA/ADS
https://ui.adsabs.harvard.edu/abs/2012arXiv1202.2917B/abstract

* coq - How to tell a dependent match two nats are equal - Stack Overflow
https://stackoverflow.com/questions/59187932/how-to-tell-a-dependent-match-two-nats-are-equal

* programming languages - Why does higher-order abstract syntax need an inverse to define catamorphisms? - Computer Science Stack Exchange
https://cs.stackexchange.com/questions/115738/why-does-higher-order-abstract-syntax-need-an-inverse-to-define-catamorphisms

* Twelf - Wikipedia
https://en.wikipedia.org/wiki/Twelf

* type theory - What is a weak function space and what does it have to do with HOAS? - Proof Assistants Stack Exchange
https://proofassistants.stackexchange.com/questions/1491/what-is-a-weak-function-space-and-what-does-it-have-to-do-with-hoas

* Category:Programming language design - Wikipedia
https://en.wikipedia.org/wiki/Category:Programming_language_design

* Nominal terms (computer science) - Wikipedia
https://en.wikipedia.org/wiki/Nominal_terms_(computer_science)

* De Bruijn notation - Wikipedia
https://en.wikipedia.org/wiki/De_Bruijn_notation

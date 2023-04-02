abstract rewriting
abstraction
abstraction operator
alpha-conversion
alpha-equivalence
alpha-reduction
alpha-renaming
anonymous function
application
applicative computing system
applicative order
Apply operator
Ariola and Felleisen's call-by-need λ-calculus
B, C, K, W system
Barendregt's hygiene condition
beta conversion
beta normal form
beta reduction
binding context
binding structure of programs
Böhm tree
bound variable
Calculus of constructions
call-by-need
call-by-push-value
call-by-sharing
call-by-value
call-by-value linear lambda calculus
capture-avoiding substitution
Cartesian closed category
Church encoding
Church numerals
Church-Rosser theorem
Church-Turing thesis
CK+ machine
closed lambda term
combinators
Combinatory logic
computing
consistency of the λ-calculus
context change potential
conversion between λ-calculus and let expressions
conversion without lifting
currying
De Bruijn index
De Bruijn notation
Deductive lambda calculus
demand-driven substitution
Director string
duplicated parameter
encoding datatypes
eta-conversion
eta-expansion
eta-reduction
evaluation context
evaluation strategy
explicit substitution
fixed-point combinator
free variable
functional abstraction
higher-order function
Hindley-Milner type system
Intersection type discipline
Kleene-Rosser paradox
Krivine machine
Lambda abstraction
lambda application
lambda calculi
Lambda calculus
lambda cube
Lambda expression
Lambda kalkül
Lambda lifting
Lambda programming
lambda term
Lambda-calculus
Lambda-definable function
Lambda-mu calculus
Lambda-recursive function
leftmost innermost redex
leftmost outermost redex
let expression
let-binding
lexical address
lexical index of a variable
Logic à la Church
Logic à la Curry
memoization
Mogensen-Scott encoding
Montague grammar
multi-argument operation
non-extensionality
normal form
normal head form
normal order
normalisation by evaluation
normalising term
normalization property
one-at-a-time substitution
optimal reduction
other notions of reduction
Parigot encoding
Pattern calculus
Pure type system
redex
reduction
reduction strategies
reduction strategy
Rho calculus
righttmost innermost redex
righttmost outermost redex
Scott encoding
Scott encoding
Scott-Curry theorem
Semantics of λ-calculus
Simply-typed lambda calculus
SKI combinator calculus
strongly normalizing
substitution
supercombinator
System F
System F-sub
System U
Type inhabitation
Type-free lambda calculus
typed lambda calculi
untyped lambda calculus
variable dereference
variable occurrence
weak reduction strategies
α-conversion
α-equivalence
α-reduction
α-renaming
β-conversion
β-reduction
β-substitution
η-conversion
η-reduction
δ-conversion
δ-reduction
δ-expansion
λ-abstraction
λ-calculus
λ-reduction
λ-terms
λ-theories
ρ-calculus

lambda application
lambda abstraction
name binder
  lambda-binder, λ-binder
  iota-binder, ι-binder
lambda term
lambda expression
variable
  free variable
  bound variable
  binding occurrence (of variable)
  applied occurrence (of variable)
evaluation
  evaluation relation
reduction
  alpha-equivalence
  beta-reduction
    substitution
      trivial substitution with named variables
      trivial substitution with de Bruijn indices (for variables)
      Barendregt convention
      explicit substitution
      HOAS
      PHOAS
  eta-reduction
    eta-expansion
    eta-contraction
reduction strategy
  normal order
  applicative order
  full beta-reduction, reduction under lambda
  reduction under lambda
normal form
  weak normal form
  weak-head normal form
  canonical form
evaluation strategy
  call by name
  call by need
  call by value
  strict evaluation
  non-strict evaluation, lazy evaluation
semantics
  small-step semantics
  big-step semantics
typing relation
syntax
  grammar
    literals
    functions
  statics
  dynamics
value
  constant
  lambda abstraction
lambda encodings
  encoding scheme
  Church encoding
    Church Booleans
    Church Numerals
      Church Naturals
      Church Integers
      Church Rationals
    Church Pair
    Church List
    Church Successor
    Kleene's Predecessor
  Scott encoding
  Parigot encoding
  Mogenssen-Scott encoding
  Bohm-Beraducci encoding

Church encoding
representing data and operators
Church numerals
lambda notation
Alonzo Church
encoding data
integers
booleans
pairs
lists
tagged unions
higher-order functions
Church-Turing thesis 
computable operator
untyped lambda calculus
primitive data type (function)
# Lambda Calculus: OUTLINE

λ-calculus: descriptions
λI-calculus

* Syntax of lambda calculus
  - variables
  - lambda abstraction
  - lambda application

* Introduction to lambda calculus
  - Lambda calculus
  - Lambda terms
  - Alonzo Church

* Definition
  - function abstraction
  - function application
      - Substitution
      - α-conversion
      - β-reduction
      - η-conversion
      - δ-reduction
      - ξ-equality
      - de Bruijn indexing
  - Forms of lambda terms
      - Redex
      - Beta normal form
      - Normal form
      - WHNF
* confluence
  - ground confluence
  - local confluence
  - Church-Rosser property
  - semi-confluence
  - strong confluence


## Category:Lambda_calculus

https://en.wikipedia.org/wiki/Category:Lambda_calculus

https://en.wikipedia.org/wiki/Apply

Lambda calculus
Anonymous function
Applicative computing systems
Apply
B, C, K, W system
Beta normal form
Böhm tree
Calculus of constructions
Call-by-push-value
Cartesian closed category
Church encoding
Church-Rosser theorem
Combinatory logic
Currying
De Bruijn index
De Bruijn notation
Deductive lambda calculus
Director string
Divergence (computer science)
Explicit substitution
Fixed-point combinator
Higher-order function
Hindley-Milner type system
Intersection type discipline
Kleene-Rosser paradox
Knights of the Lambda Calculus
Krivine machine
Lambda calculus definition
Lambda cube
Lambda lifting
Lambda-mu calculus
Let expression
Mogensen-Scott encoding
Montague grammar
Normalisation by evaluation
Normalization property (abstract rewriting)
Pattern calculus
Pure type system
Reduction strategy
Rho calculus
Scott-Curry theorem
Simply typed lambda calculus
SKI combinator calculus
Supercombinator
System F
System F-sub
System U
Type inhabitation
Typed lambda calculus
Untyped lambda calculus
Η-conversion


# LC Topics

* Lambda calculus: people
  - Alonzo Church
  - Steven Kleene
  - Rosser
  - Haskell Curry

* Lambda calculus
  - AKA: λ-calculus, untyped λ-calculus
  - formalism in math logic

* Introduction to λ-calculus
  - Lambda Calculus
    - Combinatory logic
  - LC as a formal mathematical logic
  - LC as a model of computation
    - universal model of computation
    - Church-Turing thesis
  - LC as a FPL

* Definition of λ-calculus
  - function abstraction
  - function application
  - variables

* Elements of λ-calculus
  - formal notation
    - de Bruijn notation
    - de Bruijn indexing
  - lambda expression
  - lambda term
    - reducible term (redex)
    - open term
    - closed term (combinator)
  - Lambda forms
    - normal form, NF
    - weak-head normal form, WHNF


* LC axioms
  - α-conversion
  - β-reduction
  - η-conversion
λ-calculus
α-conversion
β-reduction
η-conversion
η-reduction
η-expansion



* Lambda variables
  - bound variables
  - free variables
  - binding occurence of variables
  - applied occurence of variables

* LC operations
  - name binding
    - variable binding
    - binder
    - binding context
    - binder scope
    - defining occurance, binding occurence
    - applied occurence
  - variable substitution
    - Reduction
    - Capture-avoiding substitution, name capture
    - fresh variable, fresh name
    - α-conversion, renaming of free variables
    - de Bruijn indexing

* Evaluation
  - Order of evaluation
    - normal
    - applicative

* Techniques
  - Named constants
  - Recursion
  - fixed point combinators
  - Standard terms
  - Abstraction elimination
  - lambda lifting
  - lambda dropping

* Type systems
  - untyped λ-calculus
  - simply-typed λ-calculus
  - typed λ-calculi

* Variations and extensions
  - let-expressions
  - Typed Lambda Calculi
  - λI-calculus
  - λ→
  - PCF
  - ρ-calculus, integrates rewriting and lambda calculus

* Encoding schemes
  - Common Encoding schemes
    - Church encoding
      - Church Boleans
      - Church numerals
      - Church pair
    - Scott encoding
    - Mogensen-Scott encoding
    - Parigot encoding
  - Encoding logic
  - Encoding predicates
  - Encoding numbers
  - Encoding arithmetic
  - Encoding datatypes
    - Encoding pairs
    - Encoding lists

* MISC
  - denotational semantics
  - Church-Turing thesis
  - Church-Rosser theorem
  - confluence property
  - Standardization Theorem
  - Curry-Howard isomorphism
  - weak and strong normalization
  - type inference
  - canonym (canonical names)
  - complete partial orders
  - Computable functions and lambda calculus
  - Undecidability of equivalence, ξ-conversion
  - Semantics
  - relation to combinatorial logic
    - relation to SKI combinators
  - fixpoint operator
  - Deductive lambda calculus
  - Kleene-Rosser paradox
  - Curry paradox
# λ-calculus: TERMS ABC

Lambda-calculus
λ-calculus
Λ-calculus
LC
L-calculus
Untyped lambda calculus
Type-free lambda calculus
Lambda calculi
Lambda kalkül
Lambda language
Lambda programming
Lambda term
Lambda expression


λ-reductions

α-conversion
α-equivalence
α-reduction
α-renaming
Alpha-conversion
Alpha-equivalence
Alpha-reduction
Alpha-renaming
AlphaRenaming

β-reduction
β-conversion
β-substitution
Capture-avoiding substitution
Beta reduction
Beta conversion

η-conversion
eta-conversion
η-reduction
eta-reduction
η-expansion
eta-expansion

λ-abstraction
Lambda abstraction
Abstraction
Abstraction operator
Functional abstraction
Lambda-definable function
Lambda-recursive function





lambda cube
call-by-value
call-by-value linear lambda calculus
call-by-need λ-calculus
Ariola and Felleisen's call-by-need λ-calculus
leftmost-outermost
call-by-need λ calculus, the de Bruijn version
call-by-need evaluation strategy
call-by-name strategy
call-by-sharing
Optimal reduction
Weak reduction strategies
normalising term
Normal order
leftmost outermost redex
Applicative order
leftmost innermost redex
normal forms

Multi-argument operations
Non-Extensionality
Syntax
Variables, bound and free
Combinators
Brief history of λ-calculus
Reduction
Other notions of reduction
Reduction strategies
λ-theories
The basic theory λ
Extending the basic theory λ
Consistency of the λ-calculus
Semantics of λ-calculus
Extensions and Variations
Combinatory logic
Adding types
Applications
Logic à la λ
Computing
Relations

memoized
call-by-sharing
duplicated variables
call-by-name strategy
call-by-need evaluation strategy
variable occurrence
Ariola and Felleisen's call-by-need λ-calculus
variable dereference
one-at-a-time substitution
binding structure of programs
lexical index of a variable
CK+ machine
binding context
de Bruijn's notation
lexical address
β-reduction
demand-driven substitution
let-binding
leftmost-outermost
evaluation context
free variable
reduction
λ-calculus terms
substitution
de Bruijn indices
Barendregt's hygiene condition
lambda lifting
conversion without lifting
let expression
let expression
rules for conversion between lambda calculus and let expressions
deductive lambda calculus
fixed-point combinator
Church-Turing thesis
Encoding_datatypes
Mogensen-Scott_encoding
Church_encoding
list in Scott encoding
alpha equivalence
α-equivalence
Anonymous function
Applicative computing systems
Apply
B, C, K, W system
beta normal form
Beta normal form
beta reduction
Böhm tree
Calculus of constructions
Call-by-push-value
Cartesian closed category
Church encoding
Church encoding
Church numerals
Church-Rosser theorem
closed lambda term
Combinatory logic
Context change potential
Currying
De Bruijn index
De Bruijn notation
Deductive lambda calculus
Director string
Divergence (computer science))
eta conversion
Explicit substitution
Fixed-point combinator
free variable
Higher-order function
Hindley-Milner type system
Intersection type discipline
Kleene-Rosser paradox
Knights of the Lambda Calculus
Krivine machine
lambda abstraction
lambda application
lambda calculi
lambda calculus
Lambda calculus
Lambda calculus definition
Lambda cube
Lambda lifting
lambda term
Lambda-mu calculus
Let expression
Mogensen-Scott encoding
Montague grammar
normal head form
Normalisation by evaluation
Normalization property (abstract rewriting))
Parigot encoding
Pattern calculus
Pure type system
redex
Reduction strategy (lambda calculus))
Rho calculus
Scott encoding
Scott-Curry theorem
Simply typed lambda calculus
simply-typed lambda calculus
SKI combinator calculus
strongly normalizing
Supercombinator
System F
System F-sub
System U
Type inhabitation
typed lambda calculi
Typed lambda calculus
untyped lambda calculus
Untyped lambda calculus

λ-calculus
α-conversion
β-reduction
η-conversion
η-reduction
η-expansion

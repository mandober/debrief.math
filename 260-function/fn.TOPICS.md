# Function theory :: TOPICS

- Function: fundamentals
  - functions in mathematics
    - function
    - map, mapping
    - transformation
    - correspondence
  - history of functions
  - development of functions
    - equations
    - parameters of function
    - varibles of function
    - parameterization
  - function notation
    - function as equation
    - function as multipart equations
  - the concept of function
    - function as set
    - function as relation
    - function as subset of catesian product
    - function as graph
    - function as rule
    - function as machine (black box)
    - function as table (tabular function)


- Function: elements (components)
  - function definition
  - function declaration
  - function specification
  - function variables
  - parameters
  - formal parameters
  - free parameters
  - bound parameters
  - declaration occurences of parameters
  - applicaiton occurences of parameters
  - arguments
  - local variables
  - scope
  - function head
  - function body
  - domain: set
  - codomain: set
  - range: set, subset of cod
  - image: set, subset, or an element
  - pre-image: set (dom), subset (of dom), or an element
  - function graph
  - function space
  - a function `f : A -> B` where `f(a) = b`
    - like rels, each f is a subset of Cartesian product, `f ⊆ A⨯B`
    - like rels, each f is an element in `f ∈ 𝒫(A⨯B)`
    - each function can be turned into a corresponding relation
      by appending the return value to the tuple of input values
      in each pair in the function's graph (set of ordered pairs):
      - `f = {(a,b) | ∀a ∈ A. ∃b ∈ B. f(a) = b}`
      f: `f(a₀, a₁, … aₙ) = b` ==> 
      R𝟋: `f = { (a₀, a₁, … aₙ, b) | ∀aᵢ ∈ A. ∃b ∈ B. f(a₀, a₁, … aₙ) = b }`
  - binary function `f : A ⨯ B -> C` where `f(a,b) = c`
    - a pair (2-tuple) of inputs is an element in dot product, `(a,b) ∈ A⨯B`
    - the fn itself is a subset of `f ⊆ A⨯B⨯C`
    - the fn itself is an element of `f ∈ 𝒫(A⨯B⨯C)`
    - `f : A ⨯ B -> C` curryied into `f : A -> (B -> C)`


- Function: properties
  - fn arrow binds to the right
    - `f : A -> (B -> C)` = `f : A -> B -> C`
  - Currying
    - `f : A ⨯ B -> C` ← un / curryied → `f : A -> B -> C`
  - fn type
  - fn type signature
  - fn prototype
  - fn equality
  - fn identification
    - fn name + input args and their types only (no return type)
  - fn name
  - arity
  - surjection
  - injection
  - bijection
  - partial function
  - diverging function
  - general recursive function
  - μ-recursion
  - total function
  - primitive recursive function
  - recursion
  - recursive functions
  - iteration
  - base case vs rec case
  - recursion vs induction
  - structural recursion
  - mutual recursion
  - monotonicity
  - monotonically increasing
  - monotonically decreasing
  - idempotency
  - idempotent
  - nilpotent
  - omnipotent
  - equality of functions
    - intensional
    - extensional
    - referential
  - equivalence relations
    - currying
    - uncurrying
    - `a ⨉ b -> c` ≅ `a -> b -> c` ≅ `b -> a -> c`

- Operators
  - symbolically named fns
  - application positions
  - prefix position
  - infix position
  - suffix position
  - fixity
  - precedence
  - associativity

- Function: types
  - closed forms
    - combinators (no free vars)
  - open forms
  - identity function
  - constant function
  - zero function
  - successor function
  - projection function
  - recursive function
  - primitive recursive function
  - general recursive function
  - partial function

- Function: *ejections*
  - function
    - main property: each preimage is assoc to exactly 1 image
      - each preimage is assoc to exactly 1 image
      - no preimage is assoc to more than 1 image
      - each domain elem has a unique mapping
      - each domain elem has a unique image
      - left-unique
      - one-to-many
  - total function
    - main property: complete coverage of dom
    - aux property: possible coverage of cod
  - partial function
    - main property: incomplete coverage of dom
    - aux property: possible coverage of cod
  - injective function
    - 1-to-1 unique mapping
    - semi-invertable
      - inverted codomain is not a total function
      - inverted range is a function
    - generalized to monomorphisms
  - surjective function
    - main property: entire codomain is covered
    - cod = ran
    - not invertable
      - inverted so cod (ran) is a domain = not a function but rel
    - generalized to epimorphisms
  - bijective function
    - fully invertable
    - generalized to isomorphisms
  - *composition of jections*
    - bijection is "neutral", composition amounts to the other jection:
      - bij ∘ bij = bij
      - inj ∘ bij = inj
      - sur ∘ bij = sur
    - whatever comes after surjection remains surjective:
      - bij ∘ sur = sur
      - inj ∘ sur = sur
      - sur ∘ sur = sur
    - __bij < inj < sur__
      - bij ∘ inj = inj
      - inj ∘ inj = inj
      - sur ∘ inj = sur
    - sur makes composition remain sur as it collapses elems
    - on a homogeneous finite set
      - every injection is bijection




- Function: operations
  - function application
  - function composition
  - inverse of a function
    - involution
  - currying
    - currying,   `a ⨉ b -> c` ≅ `a -> b -> c`
    - uncurrying, `a -> b -> c` ≅ `a ⨉ b -> c`
    - equivalence
  - lambda lifting
  - lambda dropping
  - iterated function, folding
  - limits
    - limit
    - limit of a function
    - limit of a sequence
  - special points
    - fixed points, fixpoint
    - least fixpoint
    - greatest fixpoint
    - toggles between two values
    - periodic point (iterated functions)
    - zero of a function
    - x-intersect
    - y-intersect

- Visualizing functions
  - set rooster
  - set comprehension
  - table
  - graph (plotting)
  - drawing sets as ovals, elements as dots, and arrows
  - wiring diagrams
  - fibres
  - bouquets
  - graphs
  - ontology logs
  - categories



- Function in math vs CS
  - function name
  - function sig
  - polymorphic functions
  - overloaded functions



## Composition of jections

A | B | C | compo | r
--|---|---|-------|----
1 | 1 | 9 | b ∘ b | b
2 | 4 | 6 | i ∘ b | i
3 | 7 | 1 | s ∘ b | s
4 | 2 | 2 | b ∘ s | s
5 | 5 | 3 | i ∘ s | s
6 | 8 | 4 | s ∘ s | s
7 | 3 | 7 | b ∘ i | i
8 | 6 | 8 | i ∘ i | i
9 | 9 | 5 | s ∘ i | s

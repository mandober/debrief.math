# Set Theory :: Hierarchy

===============================================================================


* Set theory
  * Set history
    - The FOM
    + Georg Cantor
    - Gottlieb Frege
    - Bernard Russel
    + Principia mathematica
    * Set paradoxes, antymonies
      - Richard's paradox (semantics)
      - Berry paradox
      - Russell's paradox
  * Set: basic concepts
    - set as a math primitive
    - fundamental sets
    * Set representations
      - rooster
      - comprehension
  * Set types
    + The empty set
    - singleton set
  * Set properties
    * Characteristic properties
      - unordered collection
      - uniqueness of elements
    * Basic relations
      - set membership
      - set inclusion
      + Overlapping sets
      - disjoint sets
    * Set equality
      - intension equality
      - extension equality
      - subset, superset
      - proper subset, proper superset
    * Cardinality
      - equal set
      - equivalent set
      - equinumerosity
      + The empty set
      - singleton set
      - unordered pair
      - n-set, n-element set
      + Finite set
      + Infinite set
        - infinite countable set
        - infinite uncountable set
  * Set elements
    - object
    - set
    - element, member
    - nested set
    - urelement
    + Class
    - proper class
  * Set operations
    - set union
    - set intersection
    - set relative difference
    - set absolute difference
    - set compliment
  * Set constructions
    + Ordered pair
    - powerset
    + Carthesian product
    + Family of sets
    - indexed sets
    - partitioning
  * Set axioms
    - Axiom of comprehension
    - Axiom of restriction
    - Axiom of the powerset
  * Set theories
    - Naive set theory
    + Axiomatic set theory
  * Set: advanced concepts
    + Equaliser
    - kernel
    + Reflection principle
    - Characteristic function
    - Bell number
    - Pairwise disjoint sets
  * Beyond sets
    * collections
      - multiset
      - multiplicity
      - sequence, list
    * further topics …
      - relation
      - order
      - function


===============================================================================
- Primitive mathematical collections
  - properties of collections
    - ordering
      - ordered collection
      - unordered collection
    - uniqueness vs multiplicity (of elements)
    - uniqueness
      - unique elements in collection
      - nonunique elements in collection, multiplicity
  - types of collections: set, bag, multiset, …
    - set             (unordered,    unique)
    - bag, multiset   (unordered, nonunique)
    - list, sequence  (  ordered, nonunique)
    - unique list     (  ordered,    unique)

- Set as a collection and as an object
  - set is a primitive mathematical object
  - sets are mathematical object in their own right
  - set as a collection of mathematical objects
  - set as a collection of objects/elements
  - set as a container: set containing other sets
  - set as an element: set contained in another set
    - urelement
    - object, element/member
  - hierarchy of collections based on sets:
    - set
    - proper set
    - class
    - proper class
    - conglomerate

- Fundamental set properties
  - unordered collection
  - uniqueness of elements
  - multiplicity
  - cardinality
    - finite sets
    - infinite sets
    - enumerable (countable) set
    - innumerable (uncountable) set

===============================================================================
- Set notation
  - specifications of sets
  - set comprehension
    - comprehension axioms in naive set theory
  - intensional representation
    - natural language
  - extensional representation
    - roster
    - set-builder notation

- Set cardinality
  - Finite sets
    - the empty set
    - nonempty set
    - singleton set
    - (unordered) pair
    - all finite sets are enumerable sets
  - Infinite sets
    - countable sets
    - Infinite enumerable set
    - Infinite innumerable set
  - Universal set
    - 𝓤 is a proper class (always a set, never an element)
    - 𝓤 contains everything
    - ∅ contains nothing
    - Relations between the universal and empty set
      - `𝓤 ⋃ ∅ = 𝓤`, `𝓤 ⋂ ∅ = ∅`, `𝓤 ∖ ∅ = 𝓤`, `𝓤' = ∅`, `∅' = 𝓤`
    - Relations between the universal and any set
      - `𝓤 ⋃ A = 𝓤`, `𝓤 ⋂ A = A`, `𝓤 ∖ A = A'`, `𝓤 = A ⋃ A'`

- Set equality
  - intensional equality
  - extensional equality
  - equal sets
  - equivalent sets
  - equinumerousity
  - isomorphisms
  - equivalence relation

- Set operations
  - complement (inverse): `A' = A⁻¹`
  - union, `A ⋃ B`
  - disjoint union, 
  - intersection, `A ⋂ B`
  - difference, `A \ B`
  - Set complement (negation), `A'`
  - Cartesian product, `A ⨯ B`, `A ⨯ A = A²`
  - Set partitioning
  - Set covering

- Set constructions
  - the empty set
  - singleton
  - unordered pair
  - ordered pair
  - Number of proper subsets
  - Bell Numbers
  - Natural numbers in terms of sets
  - ordered pairs
  - union
  - intersection
  - complement
  - powerset
  - set family
  - indexed set family


- Set relations
  - membership relation
  - inclusion relation
    - disjoint sets
      - pair-wise disjoint sets
    - overlapping sets
      - subset (superset)
        - powerset
      - proper subset (proper superset)
  - ordered pair
    - Cartesian product
    - family of sets
      - indexed set
      - indexing set
      - index
  - Set predicates
    - is empty
    - is subset/superset
    - is proper subset/superset
    - is set
    - is urelement
    - is element
    - are disjoint
    - are overlapping
    - is product
    - is sum

- Types of sets
  - Fundamental types of sets
    - the empty set
    - non-empty sets
    - finite sets
    - infinite sets
    - singleton set
    - indexed set
    - set of prdered pairs
    - class: set containing sets only
    - pure set: set containing urelements only
  - Fundamental number sets
    - ℕ The set of natural numbers
    - ℤ The set of integers
    - ℚ The set of rational numbers
    - ℝ The set of real numbers
    - ℂ The set of complex numbers



===========================================================================
- History of set theory
  - Georg Cantor
  - Frege
  - Russell
  - paradoxes of set theory

- Sets (elements)
  - the empty set, `∃S (∀x (x ∉ S) → S = ∅)`
  - nonempty set,  `∃S (∃x (x ∈ S) ⋀ S ≠ ∅)`
  - inhabited set
    - in classical math: `inhabited S ⟺ S = ∅`
    - in constructive math:
      - `A empty -------> ∀x(x ∉ A)`
      - `A nonempty --> ¬(∀x(x ∉ A))`
          ¬(∀x(x ∉ A))
        = ¬(∀x(¬(x ∈ A))
        = ¬(∀x(x ∉ A))
        = ¬∀x(¬(x ∉ A))
        =  ∃x(¬¬(x ∉ A))
        =  ∃x(x ∉ A)
      - A is nonempty if A is not empty
      - nonempty A -> A ≠ ∅

- Set algebras
  - Monoid, `(S, ⋃, ∅)`
  - Monoid, `(S, ⋂, ∅)`
  - Group, `(S, ⋃, ∅)`, complement as inverse S' = S⁻¹
  - Group, `(S, ⋂, ∅)`, complement as inverse
  - Axioms of set algebras
    - set axioms, identities, laws, principles
    - closure
    - associativity
    - identity (∅)
    - inverse (complement)
    - idempotency
    - absorption, annihilation, domination
    - commutativity
    - distributivity

- Mathematics and set theory
  - implementation of mathematics in set theory
  - set theoretical implementation of ℕ
  - set theory as the FOM

- Subfields of set theory
  - set theory
  - relation theory
  - order theory
  - domain theory
  - function theory
  - representation theory

==============================================================================
- Types of set theory
  - naive set theory
  - axiomatic set theory

- Set paradoxes
  - Richard's paradox
  - Russell's paradox

- Concrete set theories
  - ZFC set theory
    - ZF, Zermelo-Fraenkel
    - ZFC, Zermelo-Fraenkel and the Axiom of choice
    - ZF set theory
    - Axioms of ZFC set theory
      - Axiom of Extension
      - Axiom of Specification
      - Axiom of the Empty Set (assert ∅ exists)
      - Axiom of Pairing, A and A = {A, A} = {A}
      - Axiom of Choice, AC
  - Theory of Types: Russell and Whitehead
  - NF, New Foundations, 1937, Quine, simplification of Russell's Type Theory
  - ML, Mathematical Logic: 1940, Quine's extension of NF, introduces Classes
  - MK, Morse-Kelley
  - NBG, von Neumann-Bernays-Gödel
  - Zermelo's
  - Kripke-Platek
  - General set theory that Burgess (2005) calls "ST"
  - CUS Church's set theory
  - Positive Set Theory (school around Roland Hinnion @Universite Bruxelles)
  - Bernays set theory

- Theorems
  - Cantor's Theorem
  - Cantor's diagonalization argument
  - Zorn's Lemma
  - Schröder-Bernstein Theorem
  - Cintinuum hypothesis

==============================================================================


- Cardinal numbers
  - continuum
  - cardinal arithmetic
  - cardinal numbers
  - `ℵ₀`
  - `ω`, number after all cardinals

- Ordinal numbers
  - ordinal number ,`α`
  - well-ordering principle
  - well-ordered set
  - infinite descent
  - infinite chain of self-containment
  - set of ordinal numbers
  - ordinal arithmetic
  - transfinite recursion

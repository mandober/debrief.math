# Set Theory :: Hierarchy

* General introduction
* Informal introduction
* Set types
* Naive set theory
* Set theories
* Axiomatic set theories
* Advanced topics
* Beyond sets

===============================================================================

* General introduction
  * History of set theory
    - The FOM
    - Georg Cantor
    - Gottlieb Frege
    - Bernard Russel
    - Principia mathematica
  - General
    - Cantor's notion of set
    - Defining math in terms of sets
    - Sets as FOM
    - Arise of axiomatic set theories
    - ZFC prevails
    - Set vs other theories in FOM
  * Informal introduction
    - A perspective on sets
    - Set as a mathematical primitive
    - Set theory as FOM
    - The issue of self-containment
    - Infinite descending chains
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
  - Sets as primitive mathematical objects
    - set is a primitive mathematical object
    - sets are mathematical object in their own right
    - set as a collection of mathematical objects
    - set as a container - set containing other sets
    - set as an element - set contained in another set

* Fundamental number sets
  - 𝔹 The set of Boolean values
  - ℕ The set of natural numbers
    - ℕᐩ The set of naturals excluding 0
    - ℕ₀ The set of naturals including 0
    - ℙ The set of prime numbers
    - 𝔼ᐩ The set of even naturals
    - 𝕆ᐩ The set of odd naturals
  - ℤ The set of integers
    - ℤᐩ The set of positive (nonnegative) integers
    - ℤ⁻ The set of negative (nonpositive) integers
    - ℤ⋆ The set of integers excluding 0, ℤ ∖ {0}
    - 𝔼 The set of even integers
    - 𝕆 The set of odd integers
  - ℚ The set of rational numbers
    - ℚᐩ The set of positive rational numbers
  - ℝ The set of real numbers
  - ℂ The set of complex numbers
  - ℍ The set of quaternions
  - 𝕊 The set of sedenions
  - 𝕆 The set of octonions
  * Other number sets
    - 𝔸 The set of algebraic numbers
    - 𝕀 The set of imaginary numbers

* Set types
  - subset, superset, proper
  - subclass, superclass, proper
  - pure set (set containing only urelements)
  - pure class (class containing only sets)
  - conglomerate
  - urelement
  - universe
  - disjoint sets
  - pairwise disjoint sets
  - overlapping sets
  - empty set
  - nonempty set, inhabited set
  - singleton set
  - unordered pair
  - ordered pair
  - k-element set
  - powerset
  - equivalence class
  - quotient set
  - inductive set
  - equinumerous sets
  - finite set
    - bounded set
    - unbounded set
  - infinite set
    - Dedekind-infinite set
    - infinitely countable set
    - infinitely uncountable set
    - countable sets, enumerable set
    - uncountable sets, innumerable set
  - family of sets
    - indexed set
    - indexing set
    - indexed family of sets
  - compact set
  - supercomplete set (transitive + swollen)
    - transitive set
    - swollen set
  - ordered set (set + ordering relation)
  - well-ordered set
  - fuzzy set
  - amorphous
  - hereditarily set
    - hereditarily finite set
  - filter
    - prefilters
    - base filter
    - subbase filter
    - ultrafilter
  - computable
  - decidable
  - recursive


* Naive set theory
  * Basic concepts
    - object
    - element, member
    - set
    - subset
    - powerset
    - nested sets
    - urelement
    - class
    - proper class
    - universe
    - Venn diagram
    - Euler diagram
  * Naive appraoch
    - Set as a collection
    - Set properties
    - universal set containing all others?
    - paradoxes arising
    - approaches to avoiding paradoxes
    - have produced numerous set theories
    - Defining Peano numbers in terms of sets
    - Defining math in terms of sets
    - the empty set, ∅
    - universe, 𝒰
  * Set notation
    - Types of notation
      - rooster specification
      - set-builder notation, set comprehension notation
      - semantic specification
    - Set comprehension
      - unrestricted set comprehension
      - restricted set comprehension
      - comprehension axioms in naive set theory
      - intensional representation
      - extensional representation
  * Set properties
    - unordered collection
    - uniqueness of elements
    - well-ordering
    - all finite sets are enumerable sets
  * Basic relations
    - set membership
    - set inclusion
      - inclusion relation
      - strict inclusion relation
    - overlapping sets
    - disjoint sets
    - pairwise disjoint sets
    - set equality relation
    - set equivalence relation
    - set isomorphism
    - compactness
  * Set equality
    - intensional equality
    - extensional equality
    - equinumerosity
    - equipotency
  * Cardinality
    - equality of sets
    - equal sets
    - equivalent sets
    - equinumerous sets
    - unordered pair
    - ordered pair
    - finite set
      - empty set
      - singleton set
      - unordered pair
      - nonempty set
    - universe
    - infinite set
      - infinite countable set
      - infinite uncountable set
    - using bijections
  * Set operations
    - set pairing, {A, B}
    - ordered pair, (a, b) := {{a}, {a,b}}
      - n-tuples, (a, b,c,d,e,…) :=
        - right-associative: (((((a, b),c),d),e),…)
        - left-associative: (a, (b,(c,(d,(e,…)))))
    - set union, A ∪ B
      - n-ary set union, ⋃{Sᵢ}
    - set disjoint union, A ⊌ B
      - n-ary set disjoint union, ⨄{Sᵢ}
    - set intersection, A ∩ B
      - n-ary set intersection, ⋂{Sᵢ}
    - relative differences, set differences, A ∖ B, B ⊝ A
    - symmetric difference, A Δ B
    - set compliment, A̅
    - powerset, 𝒫(A)
    - Carthesian product, A ⨯ B
      - n-ary Carthesian product, ∏ Aᵢ = A₀ ⨯ A₁ ⨯ … ⨯ Aₙ
  * Set identities
    - De Morgan's laws
    - Algebra of sets
  * Set constructions
    - family of sets, {S₀, S₁, …, Sₙ}
    - indexed set, {Sᵢ}{ᵢ∊ɪ}
    - indexed family of sets
    - set partitioning
    - equivalence classes, [x]~
    - quotient sets, [x]
    - set covering
      - set cover
      - overcover
      - minimal cover
      - compactness

* Set combinatorics
  - number of subsets
  - number of proper subsets
  - number of ordered pairs
  - number of relations
  - number of functions
  - number of bijections
  - number of injections
  - number of surjections
  - number of partial functions
  - number of reflexive relations
  - number of symmetric relations
  - number of transitive relations

* Set theories
  - Naive set theory
  - Axiomatic set theory
  * ZF set theory (standard)
    - standard set theory
    - non-standard set theory
    - conservative extensions of ZF
    - non-conservative extensions of ZF
  * Set paradoxes (antymonies)
    - Richard's paradox (semantics)
    - Berry's paradox
    - Russell's paradox
  * Set axioms
    - Axiom of ZF set theory
      - Axiom of the Empty Set (AE)
      - Axiom of Pairing (AP)
      - Axiom of Union
      - Axiom of the Powerset
      - Axiom of Replacement
      - Axiom of Foundation
      - Axiom of Choice (AC)
    - Axiom of other set theories
    - Axiom of Comprehension
    - Axiom of Restriction
    - Axiom of Extension
    - Axiom of Specification

* Axiomatic set theories
  - Zermelo-Fraenkel (ZF) set theory
  - Zermelo-Fraenkel with the Axiom of choice (ZFC)
  - Theory of Types by Russell and Whitehead in PM
  - New Foundations (NF), 1937, Quine, simplification of Russell's Type Theory
  - Mathematical Logic: 1940, Quine's extension of NF, introduces Classes
  - Morse-Kelley (MK) set theory
  - vonNeumann-Bernays-Gödel (NBG) set theory
  - Zermelo (Z) set theory
  - Kripke-Platek (KP) set theory
  - General set theory that Burgess (2005) calls "ST"
  - CUS Church's set theory
  - Positive Set Theory (school around Roland Hinnion @Universite Bruxelles)
  - Bernays set theory

* Advanced
  - characteristic function
  - Bell number
  - well-ordering
  - reflection principle
  - equaliser
  - kernel
  - set hierarchies
  - set universes
    - von Neumann universe
    - Grothendick universe
  - filters
  - ultrafilters
  - transfinite induction
  - transfinite recursion
  - Axiom of Choice
  - Zorn's Lemma

  - forcing [scary!]
  * Mathematical constructions in terms of sets
    - construction of naturals
    - construction of integers
    - construction of rationals
    - construction of reals
      - Cauchy sequence
      - Dedekind cut
  * Theorems re sets
    - Cantor's Theorem
    - Cantor's diagonalization argument
    - Zorn's Lemma
    - Schröder-Bernstein Theorem
    - Continuum hypothesis
    - Rice's theorem
  * Cardinal numbers
    - continuum
    - cardinal arithmetic
    - cardinal numbers
    - `ℵ₀`
    - `ω`, number after all cardinals
  * Ordinal numbers
    - ordinal number ,`α`
    - well-ordering principle
    - well-ordered set
    - infinite descent
    - infinite chain of self-containment
    - set of ordinal numbers
    - ordinal arithmetic
    - transfinite recursion


* Beyond sets
  - Primitive mathematical collections
  - Properties of collections
    - ordering
    - ordered collection
    - unordered collection
    - uniqueness vs multiplicity (of elements)
    - uniqueness
    - unique elements in collection
    - nonunique elements in collection, multiplicity
  * Types of collections
    - set             (unordered,    unique)
    - bag, multiset   (unordered, nonunique)
    - list, sequence  (  ordered, nonunique)
    - unique list     (  ordered,    unique)
    - multiset, bag
    - multiplicity
    - list
    - sequence
    - series
  * Further topics
    - relations
    - orders
    - functions
    - algebras
    - Algebra of sets
    - Axioms of algebras of sets
      - axioms, identities, laws, principles, properties
      - closure
      - associativity
      - commutativity
      - identity
      - distributivity
      - idempotency
      - inverse, complement
      - absorption, annihilation
      - domination, cancellation

===============================================================================

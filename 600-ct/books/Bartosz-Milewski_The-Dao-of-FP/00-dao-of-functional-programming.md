# Dao of FP

The book `The Dao of Functional Programming`, Bartosz Milewski, 2022

Programming is merely the continuation of mathematics with other means.   
-- Paraphrasing von Clausewitz

## Contents

- 1. Clean Slate
  - 1.1 Types and Functions
  - 1.2 Yin and Yang
  - 1.3 Elements
  - 1.4 The Object of Arrows
- 2. Composition
  - 2.1 Composition
  - 2.2 Function application
  - 2.3 Identity
- 3. Isomorphisms
  - 3.1 Isomorphic Objects
  - 3.2 Naturality
  - 3.3 Reasoning with Arrows
  - 3.4 Reversing the Arrows
- 4. Sum Types
  - 4.1 Bool
  - 4.2 Enumerations
  - 4.3 Sum Types
    - Maybe
    - Logic
  - 4.4 Cocartesian Categories
    - One Plus Zero
    - Something Plus Zero
    - Commutativity
    - Associativity
    - Functoriality
    - Symmetric Monoidal Category
- 5. Product Types
  - Logic
  - Tuples and Records
  - 5.1 Cartesian Category
    - Tuple Arithmetic
    - Functoriality
  - 5.2 Duality
  - 5.3 Monoidal Category
    - Monoids
- 6. Function Types
  - Elimination rule
  - Introduction rule
  - Currying
  - Relation to lambda calculus
  - Modus ponens
  - 6.1 Sum and Product Revisited
    - Sum types
    - Product types
    - Functoriality revisited
  - 6.2 Functoriality of the Function Type
  - 6.3 Bicartesian Closed Categories
    - Distributivity
- 7. Recursion
  - 7.1 Natural Numbers
    - Introduction Rules
    - Elimination Rules
    - In Programming
  - 7.2 Lists
    - Elimination Rule
  - 7.3 Functoriality
- 8. Functors
  - 8.1 Categories
    - Category of sets
    - Opposite and product categories
  - 8.2 Functors
    - Functors between categories
  - 8.3 Functors in Programming
    - Endofunctors
    - Bifunctors
    - Contravariant functors
    - Profunctors
  - 8.4 The Hom-Functor
  - 8.5 Functor Composition
    - Category of categories
- 9. Natural Transformations
  - 9.1 Natural Transformations Between Hom-Functors
  - 9.2 Natural Transformation Between Functors
  - 9.3 Natural Transformations in Programming
  - 9.4 The Functor Category
    - Vertical composition of natural transformations
    - Horizontal composition of natural transformations
    - Whiskering
    - Interchange law
  - 9.5 Universal Constructions Revisited
    - Picking objects
    - Cospans as natural transformations
    - Functoriality of cospans
    - Sum as a universal cospan
    - Product as a universal span
    - Exponentials
  - 9.6 Limits and Colimits
  - 9.7 The Yoneda Lemma
    - Yoneda lemma in programming
    - The contravariant Yoneda lemma
  - 9.8 Yoneda Embedding
  - 9.9 Representable Functors
    - The guessing game
    - Representable functors in programming
  - 9.10 2-category Cat
  - 9.11 Useful Formulas
- 10. Adjunctions
  - 10.1 The Currying Adjunction
  - 10.2 The Sum and the Product Adjunctions
  - The diagonal functor
  - The sum adjunction
  - The product adjunction
  - 10.3 Adjunction between functors
  - 10.4 Limits and Colimits
  - 10.5 Unit and Counit of Adjunction
  - Triangle identities
  - The unit and counit of the currying adjunction
  - 10.6 Distributivity
  - 10.7 Free/Forgetful Adjunctions
  - The category of monoids
  - Free monoid
  - Free monoid in programming
  - 10.8 The Category of Adjunctions
  - 10.9 Levels of Abstraction
11. Dependent Types
  11.1 Dependent Vectors
  11.2 Dependent Types Categorically
  Fibrations
  Type families as fibrations
  Slice categories
  Coslice categories
  Pullbacks
  Base-change functor
  11.3 Dependent Sum
  Existential quantification
  11.4 Dependent Product
  Dependent product in Haskell
  Dependent product of sets
  Dependent product categorically
  Universal quantification
  11.5 Equality
  Equational reasoning
  Equality vs isomorphism
  Equality types
  Introduction rule
  β-reduction and η-conversion
  Induction principle for natural numbers
  Equality elimination rule
12. Algebras
  12.1 Algebras from Endofunctors
  12.2 Category of Algebras
  Initial algebra
  12.3 Lambek's Lemma and Fixed Points
  Fixed point in Haskell
  12.4 Catamorphisms
  Examples
  Lists as initial algebras
  12.5 Initial Algebra from Universality
  12.6 Initial Algebra as a Colimit
13. Coalgebras
  13.1 Coalgebras from Endofunctors
  13.2 Category of Coalgebras
  13.3 Anamorphisms
  Infinite data structures
  13.4 Hylomorphisms
  The impedance mismatch
  13.5 Terminal Coalgebra from Universality
  13.6 Terminal Coalgebra as a Limit
14. Monads
  14.1 Programming with Side Effects
  Partiality
  Logging
  Environment
  State
  Nondeterminism
  Input/Output
  Continuation
  14.2 Composing Effects
  14.3 Alternative Definitions
  14.4 Monad Instances
  Partiality
  Logging
  Environment
  State
  Nondeterminism
  Continuation
  Input/Output
  14.5 Do Notation
  14.6 Monads Categorically
  Substitution
  Monad as a monoid
  14.7 Free Monads
  Category of monads
  Free monad
  Stack calculator example
  14.8 Monoidal Functors
  Lax monoidal functors
  Functorial strength
  Applicative functors
  Closed functors
  Monads and applicatives
15. Monads from Adjunctions
  15.1 String Diagrams
  String diagrams for the monad
  String diagrams for the adjunction
  15.2 Monads from Adjunctions
  15.3 Examples of Monads from Adjunctions
  Free monoid and the list monad
  The currying adjunction and the state monad
  M-sets and the writer monad
  Pointed objects and the Maybe monad
  The continuation monad
  15.4 Monad Transformers
  State monad transformer
  15.5 Monad Algebras
  Eilenberg-Moore category
  Kleisli category
16. Comonads
  16.1 Comonads in Programming
  The Stream comonad
  16.2 Comonads Categorically
  Comonoids
  16.3 Comonads from Adjunctions
  Costate comonad
  Comonad coalgebras
  Lenses
17. Ends and Coends
  17.1 Profunctors
  Collages
  Profunctors as relations
  Profunctor composition in Haskell
  17.2 Coends
  Extranatural transformations
  Profunctor composition using coends
  17.3 Ends
  Natural transformations as an end
  17.4 Continuity of the Hom-Functor
  17.5 Fubini Rule
  17.6 Ninja Yoneda Lemma
  Yoneda lemma in Haskell
  17.7 Day Convolution
  Applicative functors as monoids
  Free Applicatives
  17.8 The Bicategory of Profunctors
  Monads in a bicategory
  Prearrows as monads in Prof
  17.9 Existential Lens
  Existential lens in Haskell
  Existential lens in category theory
  Type-changing lens in Haskell
  Lens composition
  Category of lenses
  17.10 Lenses and Fibrations
  Transport law
  Identity law
  Composition law
  Type-changing lens
  17.11 Important Formulas
18. Tambara Modules
  18.1 Tannakian Reconstruction
  Monoids and their Representations
  Tannakian reconstruction of a monoid
  Cayley's theorem
  Proof of Tannakian reconstruction
  Tannakian reconstruction in Haskell
  Pointed getter
  Tannakian reconstruction with adjunction
  18.2 Profunctor Lenses
  Iso
  Profunctors and lenses
  Tambara module
  Profunctor lenses
  Profunctor lenses in Haskell
  18.3 General Optics
  Prisms
  Traversals
  18.4 General Optics
19. Kan Extensions
  19.1 Closed Monoidal Categories
  Internal hom for Day convolution
  Powering and co-powering
  19.2 Inverting a functor
  19.3 Right Kan extension
  Limits as Kan extensions
  Right Kan extension as an end
  Left adjoint as a right Kan extension
  Codensity monad
  19.4 Left Kan extension
  Colimits as Kan extensions
  Left Kan extension as a coend
  Right adjoint as a left Kan extension
  Day convolution as a Kan extension
  Kan extensions and optics
  19.5 Useful Formulas
20. Enrichment
  20.1 Enriched Categories
  Set-theoretical foundations
  Hom-Objects
  Enriched Categories
  Examples
  Preorders
  Self-enrichment
  20.2 V-Functors
  The Hom-functor
  Enriched co-presheaves
  Functorial strength and enrichment
  20.3 V-Natural Transformations
  20.4 Yoneda Lemma
  20.5 Weighted Limits
  20.6 Ends as Weighted Limits
  20.7 Kan Extensions
  20.8 Useful Formulas

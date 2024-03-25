# Type Theory :: Index :: Equality in type theory

- Notions of equality
  - The 3 main types of equality
    - definitional equality, `≡`
      - analitic
      - sense
    - denotational equality, `=`
      - synthetic
      - reference
      - propositional equality
      - notational equality
    - equivalence, `≅`
      - synthetic
      - homotopy
  * Other types of equality
    - propositional equality
    - judgemental equality
      - judgements can assert that terms are judgementally equal, 
        (roughly, "equal by definition")
      - `a : A ⊢ a ≡ a : A`
      - `⊢ (λx. 2 + x)(3) ≡ 2 + 3 : ℕ`
    - Martin-Löf identity
    - Leibniz equality
    - substitutional equality
    - intensional equality
    - extensional equality
    - equivalence relation
      - reflexivity
      - symmetry
      - transitivity
      - connex (totality)
    - congruence relation
    - isomorphism
    - syntactic equality
    - semantic equality
    - observational equality
    - value equality
      - equality of primitives
      - equality of compounds
      - class `Eq` of types that can be compared for equality
      - using comparison operator, `==`
      - equality of functions
        - undecidable in general
          - requires comparing tuples of `(A,f,B)` that define functions:
            so not only comparing two entire graphs (sets of ordered pairs)
            but also their domains and their codomains. Infeasible.
        - decidable only in very special cases
        - extensional equality of total functions on compact spaces possible
    - type equality
      - equality of type functions
        - decidable since they are very special
      - lifted homogeneous equality, `(~)`    (equal types)
      - lifted heterogeneous equality, `(~~)` (equal types, equal kinds)
    - kind equality


## Refs

## Equality

* [type_theory] - Why values can not be replaced with their extensionally equal values in an intensional system?
https://cs.stackexchange.com/questions/112615/why-values-can-not-be-replaced-with-their-extensionally-equal-values-in-an-inten?rq=1

* [type_theory] Definition of extensional and propositional equality in Martin-Lof extensional type theory
https://cs.stackexchange.com/questions/112555/definition-of-extensional-and-propositional-equality-in-martin-lof-extensional-t

* [type_theory] Definitional equality of two propositions about propositional equality
https://cs.stackexchange.com/questions/112501/definitional-equality-of-two-propositions-about-propositional-equality?noredirect=1&lq=1

* [type_theory] Doubts on the behavior of Unit Type in a type system
https://cs.stackexchange.com/questions/125233/doubts-on-the-behavior-of-unit-type-in-a-type-system?rq=1

* [programming_languages] How to understand equivalence of indexes of a family of types that are not definitionally equal
https://cs.stackexchange.com/questions/41978/how-to-understand-equivalence-of-indexes-of-a-family-of-types-that-are-not-defin?rq=1

* [programming_languages] What is the difference between `a → a` & `∀a. a → a`
https://cs.stackexchange.com/questions/116298/what-is-the-difference-between-alpha-to-alpha-vs-forall-alpha-alpha?rq=1



## Injectivity of constructors

* *Injectivity in Agda* | The Agda Wiki
  https://wiki.portal.chalmers.se/agda/Main/Injectivity

* *Injectivity in Idris*
  Proof of Void using type constructor injectivity
  Issue #3687 · idris-lang/Idris-dev
  https://github.com/idris-lang/Idris-dev/issues/3687

* *Injectivity in OCaml*
  injectivity.pdf
  https://v2.ocaml.org/meetings/ocaml/2013/proposals/injectivity.pdf

* *Injectivity in Coq*
  How do we know all Coq constructors are injective and disjoint
  https://stackoverflow.com/questions/32662889/how-do-we-know-all-coq-constructors-are-injective-and-disjoint

* *Injectivity in Java*
  Are type constructors always injectives even in presence of quantified type variables (subtyping)?
  https://cs.stackexchange.com/questions/59347/are-type-constructors-always-injectives-even-in-presence-of-quantified-type-vari

* Distinctness: Injectivity - Counterexamples in Type Systems
  https://counterexamples.org/distinctness-injectivity.html

* *Injectivity in Haskell*
  eq/Type.hs at master · ekmett/eq
  https://github.com/ekmett/eq/blob/master/src/Data/Eq/Type.hs#L114

* 6.4.9. Type families - Glasgow Haskell Compiler 9.3.20220306 User's Guide
  https://ghc.gitlab.haskell.org/ghc/doc/users_guide/exts/type_families.html

* 6.4.7. Declaring data types with explicit constructor signatures
  Glasgow Haskell Compiler 9.3.20220306 User's Guide
  https://ghc.gitlab.haskell.org/ghc/doc/users_guide/exts/gadt_syntax.html#gadt-style

* 6.4.6. Existentially quantified data constructors
  Glasgow Haskell Compiler 9.3.20220306 User's Guide
  https://ghc.gitlab.haskell.org/ghc/doc/users_guide/exts/existential_quantification.html#existential-quantification

## Agda

* Dependent types - Logic in computer science lecture notes
  http://www.andrej.com/zapiski/ISRM-LOGRAC-2022/02-dependent-types.lagda.html

* Programming Language Foundations in Agda - Relations
  https://plfa.github.io/Relations/

* Semantics for the derivability relation - YouTube
  https://www.youtube.com/watch?v=AShrCMs7msw&list=PLtMyCt65_Zw4--hs_4Lbqbyqf1TDFDAHO&index=43

* Agda by Example: Sorting
  https://mazzo.li/posts/AgdaSort.html#fnref1

* Intuitionistic type theory - Wikipedia
  https://en.wikipedia.org/wiki/Intuitionistic_type_theory#Extensional_versus_intensional

* Simply Typed Lambda Calculus in Agda, Without Shortcuts (1 May 2013)
  https://gergo.erdi.hu/blog/2013-05-01-simply_typed_lambda_calculus_in_agda,_without_shortcuts/

* stlc-agda/Embedded.agda at blog · gergoerdi/stlc-agda
  https://github.com/gergoerdi/stlc-agda/blob/blog/STLC/Embedded.agda

* Oleg's gists - Linear Lambda Calculus in Agda
  https://oleg.fi/gists/posts/2018-07-12-llc-in-agda.html

* msla2014/LinearLogic.agda at master · wenkokke/msla2014
  https://github.com/wenkokke/msla2014/blob/master/src/LinearLogic.agda

* Oleg's gists - Notes on Agda's termination checker
  https://oleg.fi/gists/posts/2018-08-29-agda-termination-checker.html

* Topological sorting - Wikipedia
  https://en.wikipedia.org/wiki/Topological_sorting

* Queer Types - Simply Typed Lambda Calculus in Agda
  https://queertypes.com/posts/51-sltc-in-agda.html

* Programming in Agda - Lecture 2 - Ulf Norell - YouTube
  https://www.youtube.com/watch?v=X0JWsoWTWnI&list=PLMTONe7-tohlDkYQWPd-JTUMsit469m7P&index=2&t=3s

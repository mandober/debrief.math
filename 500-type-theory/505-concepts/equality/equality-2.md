# Type Theory :: Pages :: Equality

# Equality in type theory

Equality in type theory
- notational equality
  - "equal by abbreviation"
  - e.g. `c2 : Nat := S S Z`
- definitional equality
  - "equal by definition"
  - "equal by computation"
  - judgemental equality has computation content, `x ≡ y`
  - e.g. `x + (1 + 4) ≡ x + (2 + 3)` which auto-reduces
    into `x + 5 ≡ x + 5`
  - computational == definitional == judgemental equality
- propositional equality
  - identity type == equality type
  - identity type `Idᴀ(x,y)` or `Eqᴀ(x,y)`
+ Observational equality


* Properties of equality in type theory
  * Involved entities
    - terms,      (x y : A)
    - types,      (A B : Set)
    - functions,  (f : A → B)
    - predicates, C
  * classic relational properties
    - reflexivity
      - 'refl'
      - `x ≡ x`
    - symmetry
      - 'symm'
      - `x ≡ y` -> `y ≡ x`
    - transitivity
      - 'trans'
      - `x ≡ y` -> `y ≡ z` -> `x ≡ z`
  * additional useful properties
    - congruence
      - 'cong'
      - 'context'
      - `x ≡ y` -> `f x ≡ f y`
    - substitution
      - 'subst'
      - Leibniz equality
      - `x ≡ y` -> `C x ≡ C y`
  * restricted properties
    - contra-substitution: only if `f` bijective
      - 'contrasub'
      - `f x ≡ f y` -> `x ≡ y`

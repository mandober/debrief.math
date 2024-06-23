# Math :: Type theory (500)

Type Theory
- About (501)
  - Motivations for type theory
  - History of type theory
















https://en.wikipedia.org/wiki/Category:Type_theory

Type theory TOPICS
- basics
- introduction
- general
- elements
- concepts
- types (data types)
- proof rules
- type systems
  - Hindley-Milner type system
- type theories
  - MTLL (Martin-Lof type theory)
    - Intuitionistic type theory
  - HoTT (Homotopy type theory)
    - Cubical type theory



Type Theory
- exploration of type systems based on lambda calculus
  - typed λ-calculi
  - Simply Typed Lambda Calculus (STLC), λ→
  - λ cube
    - polymorphism
    - type ctors
    - dependent types

In terms of functional dependencies - functions from X to Y
- from terms to terms, `λ͢`
- from types to terms: polymorphic types, `λ²`
- from types to types: type functions,    `λ⍹`
- from terms to types: dependent types,   `λΠ`

Calculus Cf constructions (CoC), `λC`, combines all of these features.

Type theories beyond the calculi of λ cube are then examined.


λ͢ › λ² › λ²⍹ › λ²ωΠ

Lambda cube
- `λ͢`, STLC
- `λ²`, System F, Polymorphic Lambda Calculus
- `λ⍹`, weak calculus
- `λπ`, pi calculus
- `λ²⍹`, weakly-polymorphic calculus
- `λ²Π`, polymorphic dependent calculus
- `λωΠ`, weakly-dependent calculus
- `λ²ωΠ`, `λC`, Calculus of constructions


Lambda cube
- (x y z)
- (0 0 0) 0 λ͢
- (0 1 0) ↑ λ2
- (1 0 0) → λΠ
- (0 0 1) ↗ λ⍹
- (0 1 0) ↑ λ2

Lambda cube
- λ 4 2 1
- λ 2 ω Π
- λ 2
- λ   ω
- λ     Π
- λ 2 ω
- λ 2   Π
- λ   ω Π
- λ 2 ω Π

Lambda cube
- λ 4 2 1
- λ ∀ ω Π



```
     λω .......... λΠω
   . .           .  .
λ2 .......... λΠ2   .
.    .        .     .
.    .        .     .
.    .        .     .
.    λ⍹ .......... λΠ⍹
.  .          .  .
λ→ .......... λΠ
```


---

From shadows and symbols to the truth.

I know you are up there... I am but a discontented symbol birthed from the blood of your terrible writing.

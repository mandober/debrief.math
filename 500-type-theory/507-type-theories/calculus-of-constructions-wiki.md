# Calculus of Constructions

https://en.wikipedia.org/wiki/Calculus_of_constructions

The **Calculus of Constructions** (CoC) is a type theory created by Thierry Coquand. It can serve both as a typed PL and a constructive foundation for mathematics. For this second reason, the CoC and its variants have been the basis for Coq and other proof assistants.

Some of CoC's variants include
- Calculus of Inductive Constructions (CIC), which adds inductive types
- Calculus of (Co)inductive Constructions (CoCC), which adds coinduction
- Predicative Calculus of Inductive Constructions, sans some impredicativity

## Description

The CoC is a higher-order typed lambda calculus, initially developed by Thierry Coquand. It is well known for being at the top of Barendregt's lambda cube.

CoC allows defining functions in any direction between types and terms:
- from terms to terms
- from terms to types
- from types to types
- from types to terms

The CoC is strongly normalizing, and hence consistent. Due to the Gödel's incompleteness theorem, it is impossible to prove consistency of the CoC from within the CoC itself.

The CoC has been developed alongside the `Coq` proof assistant. As features were added (or removed) to the theory, they became available in Coq. Variants of the CoC are used in other proof assistants, such as Matita.

## CoC basics

The CoC can be considered an extension of the Curry-Howard isomorphism, which associates a term in the simply typed lambda calculus with each proof rule (inference rule) of natural deduction, in intuitionistic propositional logic.

The CoC extends the CHI isomorphism to proofs in the full intuitionistic predicate calculus, which includes proofs of quantified statements (which we will also call "propositions").

## Terms

A term in the calculus of constructions is constructed using the rules:

- `T` is a term, also called `Type`
- `P` is a term, also called `Prop`, the type of all propositions
- Variables (x, y, …) are terms
- If `A` and `B` are terms, then so is `(A B)`
- If `A` and `B` terms and `x` is a var, then so is `(λx : A . B)`
- If `A` and `B` terms and `x` is a var, then so is `(∀x : A . B)`

In other words, the term syntax, in BNF, is then:

```js bnf
term := T | Type
      | P | Prop
      | var
      | term term
      | λ var : term . term
      | ∀ var : term . term
var  := x | y |…
```

The CoC has 5 kinds of objects:
- *Proofs* are terms whose types are *Propositions*
- *Propositions* aka *Small Types*
- *Predicates* are functions that return *Propositions*
- *Large Types* are the types of *Predicates*
  (`Prop`, the type of all Propositions, is an example of a Large Type)
- `T` or `Type` itself, which is the type of *Large Types*

## Judgments

The CoC allows proving typing judgments: `x₁ : A₁, x₂ : A₂, … |- t : B`, which can be read as the implication: if variables `xᵢ` have types `Aᵢ` respectively, then term `t` has type `B`; e.g. `x : A, y : B, z : C |- u : T`.

The valid judgments for the CoC are derivable from a set of inference rules.

An inference rule has the form below which means that, if `Γ |- A : B` is a valid judgment, then so is `Γ′ |- C : D`.

```
Γ |- A : B
----------
Γ′ |- C : D
```

## CoC inference rules

In the presentation of inference rules
- context: `Γ`, i.e. a sequence of type assignments, `x₁:A₁, x₂:A₂, …`
- terms: A, B, M, N
- `𝑲`, `𝑳` is either a `𝑃𝑟𝑜𝑝` (𝑃) or a `𝑻𝒚𝒑𝒆` (𝑻)
- B[x:=N] is the result of substituting term `N` for free var `x` in term `B`

```
------------------ 1
Γ |- 𝑃𝑟𝑜𝑝 : 𝑻𝒚𝒑𝒆


---------------------- 2
Γ, x:A, Γ′ |- x:A


Γ |- A : 𝑲   Γ,x:A |- B : 𝑳
------------------------------ 3
Γ |- (∀x:A.B) : 𝑳


Γ |- A : 𝑲   Γ,x:A |- N : B
----------------------------------- 4
Γ |- (λx:A.N) : (∀x:A.B)


Γ |- M : (∀x:A.B)   Γ |- N : A
----------------------------------- 5
Γ |- M N : B[x := N]


Γ |- M : A   A =ᵦ B   Γ |- B : 𝑲
----------------------------------- 6
Γ |- 𝑲 : B



( Γ, Γ′, |-, 𝑃𝑟𝑜𝑝, 𝑻𝒚𝒑𝒆, x, A, B, M, N, 𝑲, 𝑳, ∀x, λx, B[x := N], =ᵦ )
```

## Defining logical operators

The CoC has very few basic operators; the only logical operator for forming propositions is `∀`. However, this one operator is sufficient to define all the other logical operators:

```js
A → B    ≡  ∀x : A . B                       (x ∉ B)
A ∧ B    ≡  ∀C : P . (A → B → C) → C
A ∨ B    ≡  ∀C : P . (A → C) → (B → C) → C
¬A       ≡  ∀C : P . (A → C)
∃x : A . B   ≡  ∀C : P . (∀x : A . (B → C)) → C
```

## Defining data types

The basic data types used in computer science can be defined within the CoC:

- Bool,                 `∀A : P . A → A → A`
- Nat,                  `∀A : P . (A → A) → (A → A)`
- Product A ⨉ B,        `A ∧ B`
- Disjoint union A + B, `A ∨ B`

Note that Booleans and Naturals are defined in the same way as in *Church encoding*. However, additional problems arise from propositional extensionality and proof irrelevance.

## See also

- [Pure type system](https://en.wikipedia.org/wiki/Pure_type_system)
- [Lambda cube](https://en.wikipedia.org/wiki/Lambda_cube)
- [System F](https://en.wikipedia.org/wiki/System_F)
- [Dependent type](https://en.wikipedia.org/wiki/Dependent_type)
- [Intuitionistic type theory](https://en.wikipedia.org/wiki/Intuitionistic_type_theory)
- [Homotopy type theory](https://en.wikipedia.org/wiki/Homotopy_type_theory)


## References

* [Calculus of Inductive Constructions][1], and basic standard libraries:
  - Coq: [Datatypes][2]
  - Coq: [Logic][3]
  - Coq: [stdlib][4]

* [A Proof of Strong Normalization for the Theory of Constructions Using a Kripke-Like Interpretation][5], Thierry Coquand, Jean H. Gallier, 1990

* [The Calculus of Constructions][6], Thierry Coquand, Gérard Huet, 1988

* [Variants of the Basic Calculus of Constructions][7], M. W. Bunder, Jonathan P. Seldin, 2004

* [Calculus of Inductive Constructions][8], Maria João Frade, 2009

* [Induction Principles Formalized in the Calculus of Constructions][9], Gérard Huet, 1988

[1]: https://coq.inria.fr/distrib/current/refman/language/cic.html
[2]: https://coq.inria.fr/distrib/current/stdlib/Coq.Init.Datatypes.html
[3]: https://coq.inria.fr/distrib/current/stdlib/Coq.Init.Logic.html
[4]: https://coq.inria.fr/stdlib/Coq.Logic.ClassicalFacts.html
[5]: https://repository.upenn.edu/cis_reports/568/
[6]: https://hal.inria.fr/file/index/docid/76024/filename/RR-0530.pdf
[7]: http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.88.9497
[8]: https://www.di.uminho.pt/~mjf/pub/SFV-CIC-2up.pdf
[9]: https://web.archive.org/web/20150701130220/http://yquem.inria.fr/~huet/PUBLIC/induction.pdf
